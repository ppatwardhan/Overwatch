$('document').ready(function() {

    function getData(player, hero) {
        fetch('https://ow-api.com/v1/stats/pc/us/' + player + '/heroes/' + hero)
            .then(function(resp) { return resp.json() }) // Convert data to json
            .then(function(data) {
                console.log(data);
                fillTable(data, hero, player);

            })
            .catch(function() {
                // catch any errors
            });
    }
    $("#searchform").submit(function(e) {
        e.preventDefault();
        getData($('#searchPlayer').val(), $('#hero option:selected').text());

    });

    function fillTable(data, hero, player) {
        console.log('empty');
        var dmg = data["competitiveStats"]['careerStats'][hero]['average']['allDamageDoneAvgPer10Min'];
        var death = data["competitiveStats"]['careerStats'][hero]['average']['deathsAvgPer10Min'];
        var obj = data["competitiveStats"]['careerStats'][hero]['combat']['objectiveTime'];
        var acc = data["competitiveStats"]['careerStats'][hero]['combat']['weaponAccuracy'];
        var crit = data["competitiveStats"]['careerStats'][hero]['combat']['criticalHits'];
        $('#your-player').text(player);
        $("#your-player-dmg").text(dmg);
        $("#your-player-death").text(death);
        $("#your-player-obj").text(obj);
        $("#your-player-acc").text(acc);
        $("#your-player-crit").text(crit);
    }
})