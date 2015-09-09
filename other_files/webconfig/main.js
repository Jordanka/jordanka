(function($, Hbars){
	//URLs
	var baseURL = '/library/';
    var listURL = baseURL + "api.php?action=list";

	//_________Side Menu__________
	var $menuBtn = $('.menu-btn');
	var $menuCont = $('#menu-container');
	var $subMenuBtn = $('.sub-menu-btn');
	var $subMenuCont = $('.sub-menu-container');
	var $menuBg = $('.menu-bg');

	$menuBtn.on('click', function(e){

    	e.preventDefault();
    	
    	// toggle open class
    	$menuCont.toggleClass("open");
    	bgWidth = $(window).width()+'px';
    	bgHeight = $(window).height()+'px';

    	$menuBg.width(bgWidth);
    	$menuBg.height(bgHeight);
    	$menuBg.toggleClass("hide");
    	
    	// slide menu
    	if ($menuCont.hasClass("open")) {
	    	$menuCont.animate({
		    	left: "0px"
	    	});	
    	} else {
	    	$menuCont.animate({
		    	left: -$menuCont.width()
	    	}, 250);	
    	}
    });

    $subMenuBtn.on('click', function(event) {

    	event.preventDefault();

    	// update click class
    	$subMenuCont.each( function() {		
    		$(this).removeClass('click');
		});

    	var $subMenuContClick = $(this).next('.sub-menu-container').addClass('click');
    	
    	// close all open class but clicked
    	$subMenuCont.each (function() {
    		
    		if (!($(this).hasClass('click')) && $(this).hasClass('open')) { 		

    			$(this).removeClass('open');

    			$(this).animate({
			    	left: -$(this).width(),
		    	}, 250, function() {	
			    	$(this).toggleClass("hide");
		    	});
    		}
		});

		// toggle open class
    	$subMenuContClick.toggleClass("open");
    	
    	// open or close the clicked menu
    	if ($subMenuContClick.hasClass("open")) {
			$subMenuContClick.toggleClass("hide");
	    	$subMenuContClick.delay( 250 ).animate({
		    	left: "0px"
	    	});	

    	} else {
	    	$subMenuContClick.animate({
		    	left: -$subMenuContClick.width(),
	    	}, 250, function() {	
		    	$subMenuContClick.toggleClass("hide");
	    	});
    	}
    });

	$subMenuCont.find('a').each( function() {	
		$(this).on('click', function(e){
	    	$menuCont.animate({
		    	left: -$menuCont.width()
	    	}, 250);
	    	$menuCont.toggleClass("open");
	    	$menuBg.toggleClass("hide");
	    	window.location.href = $(this).attr("href");
		});
	});

	//_________Slider__________

	var $sliderLeft = $('#slider .icon-arrow:first-child');
	var $sliderRight = $('#slider .icon-arrow:last-child');
	var $sliderImg = $('#slider .cont-7');
	var $sliderH1 = $('#slider-h1');
	var $sliderP = $('#slider-p');
	var $sliderA = $('#slider-a');

	var textWebApps = '_Diseño de interfaces gráficas con metodología UX, wireframing y  \
						testeo con usuarios. Diseño visual pensado para multi-dispositivos.  \
						Diseño UI y animaciones. Desarrollo frontend responsive HTML5/CSS3/JS para webs y aplicaciones.';

	var textIndustrial = 'Diseño de productos y packagings, prototipos y documentación técnica.  \
						Modelado CAD para impresión 3d de moldes.  \
						Diseño de stands y POP, modelos 3d y planos constructivos. \
						Diseño de interiores y planos de mobiliario e iluminación';

	var textGraphic = 'Branding e identidad visual. Diseño editorial, catálogos y folletería. \
			       		Diseño para campañas de email marketing o redes sociales. \
			       		Gigantografías para stands y POP. Diseño de gráfica aplicada a productos y packagings.';

	var cleanSlide = function () {
		$sliderImg.removeClass('slider');
		$sliderH1.removeClass('slider');
		$sliderP.removeClass('slider');
		$sliderA.removeClass('slider');
		$sliderP.empty();
	}

	var displaySlide = function (slide, nextSlide, oldName, name, text, url, color) {
		$sliderImg.removeClass(slide);

		setTimeout(function() {
		    $sliderImg.addClass(nextSlide);
		    $sliderImg.addClass('slider');
		    
		    setTimeout(function() {
		    	console.log($sliderH1.find('span').text());
		    	$sliderH1.find('span').text(function(i, oldText) {
			        return oldText === oldName ? name : oldText;
			    });
				$sliderH1.addClass('slider');
				$sliderH1.css( "color", color );  

			    setTimeout(function() {
					$sliderP.text(text);
					$sliderP.addClass('slider');

					setTimeout(function() {

						$sliderA.attr("href", url);
						$sliderA.addClass('slider');
					}, 100);
				}, 100);		
			}, 200);
		}, 100);
	}

	$sliderRight.on('click', function(e) {
		event.preventDefault();
		cleanSlide();

		if ($sliderImg.hasClass("slider-1")) {
			displaySlide('slider-1', 'slider-2', 'Web/Apps', 'Gráfico', textGraphic, 'works.html#graphichash', '#064285');

		} else if ($sliderImg.hasClass("slider-2")){
			displaySlide('slider-2', 'slider-3', 'Gráfico', 'Industrial', textIndustrial, 'works.html#industrialhash', '#008da7');

		} else if ($sliderImg.hasClass("slider-3")){
			displaySlide('slider-3', 'slider-1', 'Industrial', 'Web/Apps', textWebApps, 'works.html#webhash', '#23bf8d');
		}
	});


	$sliderLeft.on('click', function(e) {
		event.preventDefault();
		cleanSlide();

		if ($sliderImg.hasClass("slider-1")) {
			displaySlide('slider-1', 'slider-3', 'Web/Apps', 'Industrial', textIndustrial, 'works.html#industrialhash');

		} else if ($sliderImg.hasClass("slider-2")){
			displaySlide('slider-2', 'slider-1', 'Gráfico', 'Web/Apps', textWebApps, 'works.html#webhash');

		} else if ($sliderImg.hasClass("slider-3")){
			displaySlide('slider-3', 'slider-2', 'Industrial', 'Gráfico', textGraphic, 'works.html#graphichash');
		}
	});

	//_________Accordion__________

	var category = new Array;
	
	$('.category').each(function() {		
		category.push(this);
	});

	var cleanSubcat = function(li1, li2){

		if($(li1).find('ul').hasClass('subcat') == true){
			$(li1).find('ul').removeClass(' subcat');
		}

		if($(li2).find('ul').hasClass('subcat') == true){
			$(li2).find('ul').removeClass(' subcat');
		}
	}

	$('.category').on("click", function(e) {

		if(category[0] == this){
			cleanSubcat(category[1], category[2]);

			$(category[0]).find('ul').toggleClass('subcat');					 
			$(category[1]).toggleClass('accordion');
			$(category[2]).removeClass( " accordion" );


		} else if (category[1] == this){
			cleanSubcat(category[0], category[2]);
			
			$(category[1]).find('ul').toggleClass('subcat');
			$(category[2]).toggleClass('accordion');
			$(category[1]).removeClass( ' accordion' );

		} else {			
			cleanSubcat(category[0], category[1]);

			$(category[2]).find('ul').toggleClass('subcat');
			$(category[2]).removeClass(' accordion');
			$(category[1]).removeClass( ' accordion' );
		}
	});

	//_________MIXITUP General__________

	var $webSec = $('#web-apps');
	var $graphicSec = $('#graphic');
	var $industrialSec = $('#industrial');
	var $webCont = $('#WebApps');
	var $graphicCont = $('#Graphic');
	var $industrialCont = $('#Industrial');
	var $homeCont = $('#Container');

	var secciones = {
		'Diseño Web/Apps' :  {
			ss1 : 'webs',
			ss2 : 'apps',
			ss3 : 'ux'
		},

		'Diseño Gráfico' :  {
			ss1 : 'branding',
			ss2 : 'editorial',
			ss3 : 'online'
		},

		'Diseño Industrial' :  {
			ss1 : 'pendrives',
			ss2 : 'products',
			ss3 : 'stands'
		}
	};

	$.urlParam = function(name){
	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	    if (results==null){
	       return null;
	    }
	    else{
	       return results[1] || 0;
	    }
	}

	var filterUrl = $.urlParam('filter');	

	//_________Works view more__________

	$dwMoreBtn = $webSec.find('.small-view-more');
	$dgMoreBtn = $graphicSec.find('.small-view-more');
	$diMoreBtn = $industrialSec.find('.small-view-more');

	$dwMore = $('#dw-more');
	$dgMore = $('#dg-more');
	$diMore = $('#di-more');

	$dwMoreBtn.on("click", function(e) {
		$dwMore.toggleClass('hide');
	});

	//___________AJAX____________

	//Trae la info de la bd e itera llamando a homeWork y portfolioWork
	var listWorks = function(){
        $.ajax(listURL, {
            type : 'GET',
            dataType : 'json'
        }).done(function(res){
            if(!res.error){
                var works = res.data.works;
                switch (window.location.pathname ){
					case '/' :
					case '/index.html' :
						$.each(works, function( index, work ) {
							work.min = "";
							work.large = "";
							for(var i=1; i <= work.imagenes; i++){
								work.min = work.min + '<img src="assets/works/'+work.subseccion+'/'+work.miniatura+'0'+ i +'_min.jpg">';
								work.large = work.large + '<img src="assets/works/'+work.subseccion+'/'+work.miniatura+'0'+ i +'_large.jpg">';
							}
							work.miniatura = work.subseccion+'/'+work.miniatura+'.jpg';
		                    homeWork(work);
		                });
		                mixit($homeCont,8,'random');
		                boxesEvents();
						break;
					case '/works.html' :
						$.each(works, function( index, work ) {
							work.min = "";
							work.large = "";
							for(var i=1; i <= work.imagenes; i++){
								work.min = work.min + '<img src="assets/works/'+work.subseccion+'/'+work.miniatura+'0'+ i +'_min.jpg">';
								work.large = work.large + '<img src="assets/works/'+work.subseccion+'/'+work.miniatura+'0'+ i +'_large.jpg">';
							}
							work.miniatura = work.subseccion+'/'+work.miniatura+'.jpg';
		                  	portfolioWork(work);
		                });
		                mixit($webCont,4,'asc');
		                mixit($graphicCont,4,'asc');
						mixit($industrialCont,4,'asc');
						boxesEvents();
		                filterBtns();
						break;
				}
            }else{
                showErrorMessage("No se pudo ontener la lista de proyectos");
            }
        });
    }

    //___________Templates HandleBars____________

	//Inserta la data de cada thumb en un template y este a su vez en el DOM
	var portfolioWork = function(work){
		console.log(work.seccion);
		if (work.seccion=='Diseño Web/Apps'){
			var source = $("#web-template").html();
	        var template = Hbars.compile(source);
	        var div = template(work);
	        $webCont.append(div);

		} else if (work.seccion=='Diseño Gráfico'){
			var source = $("#graphic-template").html();
	        var template = Hbars.compile(source);
	        var div = template(work);
	        $graphicCont.append(div);

		} else if (work.seccion=='Diseño Industrial'){
			var source = $("#industrial-template").html();
	        var template = Hbars.compile(source);
	        var div = template(work);
	        $industrialCont.append(div);
		} 
    };

    //Inserta la data de cada thumb en un template y este a su vez en el DOM
	var homeWork = function(work){   	
        var source = $("#thumbs-template").html();
        var template = Hbars.compile(source);
        var div = template(work);
        $homeCont.append(div);
    };

	//_________Configuración del MixItUp__________

    var mixit = function (cont, num, sort){
		cont.mixItUp({
		    load: {
		       	filter: 'all',
		       	sort: sort,
		    },

		    pagination: {
				limit: num,
			    prevButtonHTML: "",
			    nextButtonHTML: ""
			},

			callbacks: {
		      onMixFail: function(){
		        alert('No items were found matching the selected filters.');
		      }
		    }
		});
	} 

    //_________Botones de Filtros__________

    var loopFilter = function(secCont, mixCont, sec) {
    	secCont.find('.allss').on("click", function(e){
			e.preventDefault();	  
			mixCont.mixItUp('filter', 'all');
			secCont.find('button').removeClass('click');
			$(this).addClass('click');
		});

		secCont.find('.allss').text('TODOS');

		$.each(sec, function( index, ss ) {
			if (ss == filterUrl) {
				mixCont.mixItUp('filter', '.'+ss);
				secCont.find('.'+index).addClass('click');
			};
			
			secCont.find('.'+index).on("click", function(e){
				e.preventDefault();	  
				mixCont.mixItUp('filter', '.'+ss);
				secCont.find('button').removeClass('click');
				$(this).addClass('click');
			});

			secCont.find('.'+index).text(ss.toUpperCase());
        });
    }

    var filterBtns = function() {
		$.each(secciones, function( indexSec, sec ) {
			switch(indexSec) {
				case 'Diseño Web/Apps' : 
					loopFilter($webSec, $webCont, sec);
	                break;

	            case 'Diseño Gráfico' : 
					loopFilter($graphicSec, $graphicCont, sec);
	                break; 	

	            case 'Diseño Industrial' : 
					loopFilter($industrialSec, $industrialCont, sec);
	                break;				
			}
        });	
	}

	//_________MIX HOVER__________

	var boxesEvents = function () {
		$('.container img').each(function() {
	    	$(this).on("mouseover", function(){
	        	var $thumb = $(this).closest('.mix').find('.thumb-hover');
	        	$thumb.removeClass('hide'); 
		    });

		    $(this).on("mouseout", function(){
	        	var $thumb = $(this).closest('.mix').find('.thumb-hover');
	        	$thumb.addClass('hide'); 
		    });

		    $(this).on("click", function(){
	        	var $lightbox = $(this).closest('.mix').find('.project_cont');
	        	$lightbox.css({height: $( document ).height()});
	        	$lightbox.css({top: 0});
	        	$( document ).scrollTop(0)

	        	hash = $(this).closest('section').find('.hash').attr('id');
	        	$lightbox.removeClass('hide'); 
	        	window.location.hash = "";       	
		    });

			var $projectClose = $('.project_cont').find('.icon-close');

		    $projectClose.on('click', function(e){
		    	event.preventDefault();
		    	window.location.hash = hash;
		    	$(this).closest('.project_cont').addClass('hide');
			});
		});
	}

	//_________Hash Animation__________

	$('a[href*=#]:not([href=#])').click(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
		  var target = $(this.hash);
		  target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
		  if (target.length) {
		    $('html,body').animate({
		      scrollTop: target.offset().top
		    }, 1000);
		    return false;
		  }
		}
	});

	//On Load
    listWorks();
	
})(jQuery, Handlebars);