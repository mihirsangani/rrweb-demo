fetch("http://localhost:3000/events")
    .then((response) => response.json())
    .then((events) => {
        console.log("events: ", events[0])
        let myEvents = events[0].map((obj) => {
            return JSON.parse(obj.event_data)
        })
        console.log(myEvents)
        const replayer = new rrweb.Replayer(myEvents, {
            root: document.getElementById("rrweb-player")
        })
        replayer.play()
    })
