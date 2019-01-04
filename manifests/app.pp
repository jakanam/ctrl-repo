node 'node1' {
    include base
    
    class {'::tomcat':
		xms    => '60m',
		#user   => 'root',
		group  => 'root',
	}
     
     #tomcat::deploy {"sysfoo":
		#deploy_url     => 'https://yourWARfileURLfromCIRCLEci',
		#checksum_value => 'yejdhyejdhyehdjh',	

    #}
}

node 'default' {
    
    notify{'no_node_def':
        message     => "
        Default Node Definition BLOCK
        "
    }
}

node 'node2' {
    include base
    include tomcat
   # include java::install
   # include tomcat::install
   # include tomcat::service
}
