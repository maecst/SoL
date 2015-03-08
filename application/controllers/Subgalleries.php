<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Subgalleries extends Application {
    
    public function people(){
        //Grabs photo information from database and puts it into array.
        $this->db->where('category', 'people');
        $query = $this->db->get("photos");
        $pictures = $query->result_array();

        //Parses the database information into a cell array.
        foreach ($pictures as $picture) {
            $cells[] = $this->parser->parse('_cell', (array) $picture, true);
        }

        //Sets up and puts the picture information into a link.
        $this->load->library('table');
        $parms = array(
            'table_open' => '<a class="gallery">',
            "cell_start" => '<td class="oneimage">',
            "cell_alt_start" => '<td class="oneimage">'
            );
        $this->table->set_template($parms);

        $rows = $this->table->make_columns($cells, 6);

        //Generates pictures in the location.
        $this->data['thetable'] = $this->table->generate($rows);
        
        $this->data['title'] = "People";
        $this->data['firstLocation'] = "places";
        $this->data['firstName'] = "Places";
        $this->data['secondLocation'] = "nature";
        $this->data['secondName'] = "Nature";
        $this->data['thirdLocation'] = "Black & White";
        $this->data['thirdName'] = "blackwhite";
        
        //Renders body.
        $this->data['pagebody'] = 'subgalleries';
        $this->render();
    }
    
    
   
}

