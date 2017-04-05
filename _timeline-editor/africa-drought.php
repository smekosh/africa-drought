<?php


class timeline_renderer_africa_drought extends timeline_renderer {
    public $name = 'Africa drought';
    public $folder = "renderers/africa-drought/";
    
    // 2016-06-19: new feature addition
    public $chronological = false;
    
    function declare_options() {
        
        // gah, superfix for superincludes bla
        $this->xfolder = "renderers/unexpected-americans/";

        $this->folder = realpath($this->folder);

        $this->options[] = 
            new timeline_renderer_option( array(
                "label" => "folder/template.tpl",
                "name" => "template"
            ));
            /*
        $this->options[] = 
            new timeline_renderer_option( array(
                "label" => "RSS URL",
                "name" => "rss_url"
            ));
            */
            /*
        $this->options[] = 
            new timeline_renderer_option( array(
                "label" => "Language (JS)",
                "name" => "js_lang"
            ));         
            
            */

        $yes_no = array(
            "Yes" => "yes",
            "No" => "no"
        );

        $status_array = array(
            "Catastrophe/Famine" => "Catastrophe/Famine",
            "Emergency" => "Emergency",
            "Crisis" => "Crisis",
            "Stressed" => "Stressed",
            "None or minimal" => "None or minimal"
        );


        $this->add_custom_field( "title", "title_label_nav", "Navbar label (may be the same as the title)" )->type_textarea();
        $this->add_custom_field( "title", "title_label_countries", "Navbar label: Countries" )->type_textarea();
        $this->add_custom_field( "title", "title_label_coverage", "Navbar label: Coverage" )->type_textarea();
        $this->add_custom_field( "title", "title_tagline", "Tagline: How drought and conflict have put millions on the verge of famine" )->type_textarea();
        $this->add_custom_field( "title", "title_image", "Banner image url (via Pangea)" )->type_textarea();

        /*
        $this->add_custom_field( "title", "title_label_recent_headlines", "Label: Recent headlines" )->type_textarea();
        $this->add_custom_field( "title", "title_label_featured_video", "Label: Featured video" )->type_textarea();
        $this->add_custom_field( "title", "title_label_featured_story", "Label: Featured story" )->type_textarea();
        $this->add_custom_field( "title", "title_label_country_profiles", "Label: Country profiles" )->type_textarea();
        */

        $this->add_custom_field( "title", "title_metrics_year", "Metrics: Year" )->type_textarea();
        $this->add_custom_field( "title", "title_metrics_month", "Metrics: Month" )->type_textarea();
        $this->add_custom_field( "title", "title_metrics_date", "Metrics: Date" )->type_textarea();
        $this->add_custom_field( "title", "title_metrics_day", "Metrics: Day" )->type_textarea();
        $this->add_custom_field( "title", "title_metrics_byline", "Metrics: Byline" )->type_textarea();
        $this->add_custom_field( "title", "title_metrics_slug", "Metrics: Slug" )->type_textarea();

        $this->add_custom_field( "video", "video_url", "YouTube video id (e.g. 4TDYtqbz4II)" )->type_textarea();
        $this->add_custom_field( "video", "video_byline", "Byline" )->type_textarea();



        $this->add_custom_field( "country", "country_risk_level", "Current risk for famine status" )->type_radio($status_array);
        $this->add_custom_field( "country", "country_population", "Country population" )->type_textarea();

       




        /*
        //$this->add_custom_field( "cabinet", "cabinet_nominated", "Nominated" )->type_radio($yes_no);//if this is no/false then there won't be a headline/description/link/image. It's primarily for the map.
         */


        $this->options[] = 
            new timeline_renderer_option_select( array(
                "label" => "Language",
                "name" => "language",
                "default" => "Yes",
                "options" => array(
                    "en" => "English",
                    "yue" => "Cantonese",
                    "lo" => "Lao",
                    "ht" => "Creole",
                    "id" => "Indonesian",
                    "km" => "Khmer",
                    "ko" => "Korean",
                    "es" => "Spanish",
                    "vi" => "Vietnamese",
                    "my" => "Burmese",
                    "prs" => "Dari",
                    "ps" => "Pashto",
                    "ru" => "Russian",
                    "tr" => "Turkish",
                    "zh" => "Mandarin",
                    "ar" => "Arabic - RTL test"
                )
            ));

    }











    function before_publish( $preview = true ) {
        // wrapped for compatibility
        $this->new_before_publish();
    }
    
    // standard pre-publish will generate $this->files['json']
    function publish( $preview = true ) {
        global $VOA;

        // json is an object by default, true switch makes an array
        $slides = json_decode(file_get_contents( $this->files['json'] ), true);

        $VOA->assign( 'title', $this->title );
        $VOA->assign( 'options', $this->saved_options );
        $VOA->assign( 'slides', $slides );
        $VOA->assign( 'timeline_id', $this->timeline_id );
        
        $this->files['all'] = "{$this->folder}timeline_{$this->timeline_id}.js";
        
        // file_put_contents( $this->files['all'], $VOA->fetch( "unexpected-americans/template.tpl") );
        file_put_contents( $this->files['all'], $VOA->fetch( $this->saved_options->template ) );
        # file_put_contents( $this->files['all'], print_r($this->saved_options->template,true) );
        
        if( $preview === false ) {
            // $this->upload( $this->files['all'], basename($this->files['all']) );
        }
    }
    
        
    // normally this function would upload a file via ftp, but, not anymore
    function embed_code( $preview = true ) {
        return( file_get_contents($this->files['all']) );
    }
}
