$('document').ready(function () {

    function getData(player, hero) {
        fetch('https://ow-api.com/v1/stats/pc/us/' + player + '/heroes/' + hero)
            .then(function (resp) { return resp.json() }) // Convert data to json
            .then(function (data) {
                console.log(data);
                fillTable(data, hero);

            })
            .catch(function () {
                // catch any errors
            });
    }
    $("#searchform").submit(function (e) {
        e.preventDefault();
        getData($('#searchPlayer').val(), $('#hero option:selected').text());
    
    });

    function fillTable(data, hero) {
        console.log('empty');
        var dmg = data["competitiveStats"]['careerStats'][hero]['average']['allDamageDoneAvgPer10Min'];
        console.log(dmg);
        $("#left-player-dmg").text(dmg);
    }
})
