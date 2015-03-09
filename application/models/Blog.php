<?php

class Blog extends CI_Model {
    
    // constructor
    function __construct() {
        
        parent::__construct();
    }
    
    // return all blog posts, descending order by post date
    function all() {
        
        $this->db->order_by("id", "desc");
        $query = $this->db->get('blogposts');
        return $query->result_array();
    }
    
    // return the 3 newest blog posts
    function newest() {
        
        $this->db->order_by("id", "desc");
        $this->db->limit(3);
        $query = $this->db->get('blogposts');
        return $query->result_array();
    }
    
    //create a new function
}