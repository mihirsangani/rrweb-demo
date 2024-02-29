const express = require("express")
const bodyParser = require("body-parser")
const mysql = require("mysql2/promise") // Assuming you're using mysql2 with Promise support
const cors = require("cors")
const app = express()
const port = 3000

app.use(bodyParser.json())

// Enable all CORS requests
app.use(cors())

const pool = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "inspect_demo"
})

async function saveEventsToDatabase(events) {
    const sessionId = generateSessionId() // Implement this function or generate it another way
    const connection = await pool.getConnection()
    try {
        await connection.beginTransaction()
        const query = "INSERT INTO rrweb_event (session_id, event_data) VALUES (?, ?)"
        for (const event of events) {
            await connection.query(query, [sessionId, JSON.stringify(event)])
        }
        await connection.commit()
    } catch (error) {
        await connection.rollback()
        throw error
    } finally {
        connection.release()
    }
}

async function getEventsFromDatabase() {
    const connection = await pool.getConnection()
    try {
        await connection.beginTransaction()
        const query = "SELECT * FROM rrweb_event ORDER BY id"
        let response = await connection.query(query)
        await connection.commit()
        return response
    } catch (error) {
        await connection.rollback()
        throw error
    } finally {
        connection.release()
    }
}

app.post("/save", cors(), async (req, res) => {
    const events = req.body
    console.log("Backend: \n", events)
    try {
        await saveEventsToDatabase(events)
        res.status(200).send("Events saved")
    } catch (error) {
        console.error("Failed to save events:", error)
        res.status(500).send("Failed to save events")
    }
})

app.get("/events", cors(), async (req, res) => {
    try {
        const response = await getEventsFromDatabase()
        res.status(200).send(response)
    } catch (error) {
        console.error("Failed to save events:", error)
        res.status(500).send("Failed to save events")
    }
})

app.listen(port, () => {
    console.log(`Server running on port ${port}`)
})

function generateSessionId() {
    // Simple example. Replace with your actual session ID generation logic
    return `session_${Date.now()}`
}
