$(() => {
    window.addEventListener('message', (event) => {
        let v = event.data



        if (v.action == 'hudvida') {
            $('.vida').css({'width': Math.round(v.vida) + '%'})
        } 


        if (v.action == 'velocimetro') {
            $('#chud').html(Math.round(v.velocimetro) + ' km/h')
            $('#chud').css('opacity', '1')
        } else {
            $('#chud').css('opacity', '0')
        }


        if (v.activo == true) {
            $('.logo').attr('src', v.logo)
        }


    })
})
