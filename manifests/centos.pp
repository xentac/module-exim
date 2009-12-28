class exim::centos inherits exim::base {
    File['/etc/exim/exim.conf'] {
        source => [ "puppet://$server/site-exim/${fqdn}/exim.conf",
                    "puppet://$server/site-exim/${exim_type}/exim.conf",
                    "puppet://$server/site-exim/exim.conf",
                    "puppet://$server/exim/exim.conf" ],
        owner => root, group => exim, mode => 0640
    }
    File['/etc/exim/conf.d'] {
        source => "puppet://$server/common/empty",
        owner => root, group => exim, mode => 0640
    }
}
