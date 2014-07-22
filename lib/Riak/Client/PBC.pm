#
# This file is part of Riak-Client
#
# This software is copyright (c) 2014 by Damien Krotkine.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
package Riak::Client::PBC;
{
  $Riak::Client::PBC::VERSION = '1.93';
}

##
## This file was generated by Google::ProtocolBuffers (0.09)
##  on Sun Jun 29 15:03:36 2014 from file /Users/dkrotkine/Devel/riak-client/pbc/riak.proto
##

use strict;
use warnings;
use Google::ProtocolBuffers;
{
    unless (RpbIndexReq::IndexQueryType->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_enum(
            'RpbIndexReq::IndexQueryType',
            [
               ['eq', 0],
               ['range', 1],

            ]
        );
    }
    
    unless (RpbIndexResp->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbIndexResp',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'keys', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    'RpbPair', 
                    'results', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'continuation', 3, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'done', 4, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbIndexReq->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbIndexReq',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'bucket', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'index', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    'RpbIndexReq::IndexQueryType', 
                    'qtype', 3, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'key', 4, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'range_min', 5, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'range_max', 6, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'return_terms', 7, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'stream', 8, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'max_results', 9, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'continuation', 10, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbGetResp->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbGetResp',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    'RpbContent', 
                    'content', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'vclock', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'unchanged', 3, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbBucketProps->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbBucketProps',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'n_val', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'allow_mult', 2, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbGetReq->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbGetReq',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'bucket', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'key', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'r', 3, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'pr', 4, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'basic_quorum', 5, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'notfound_ok', 6, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'if_modified', 7, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'head', 8, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'deletedvclock', 9, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbPutReq->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbPutReq',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'bucket', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'key', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'vclock', 3, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    'RpbContent', 
                    'content', 4, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'w', 5, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'dw', 6, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'return_body', 7, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'pw', 8, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'if_not_modified', 9, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'if_none_match', 10, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'return_head', 11, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbPutResp->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbPutResp',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    'RpbContent', 
                    'contents', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'vclock', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'key', 3, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbGetBucketReq->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbGetBucketReq',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'bucket', 1, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbListKeysResp->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbListKeysResp',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'keys', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'done', 2, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbPair->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbPair',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'key', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'value', 2, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbListKeysReq->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbListKeysReq',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'bucket', 1, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbGetBucketResp->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbGetBucketResp',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    'RpbBucketProps', 
                    'props', 1, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbDelReq->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbDelReq',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'bucket', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'key', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'rw', 3, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'vclock', 4, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'r', 5, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'w', 6, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'pr', 7, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'pw', 8, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'dw', 9, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbContent->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbContent',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'value', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'content_type', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'charset', 3, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'content_encoding', 4, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'vtag', 5, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    'RpbLink', 
                    'links', 6, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'last_mod', 7, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'last_mod_usecs', 8, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    'RpbPair', 
                    'usermeta', 9, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    'RpbPair', 
                    'indexes', 10, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'deleted', 11, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbSetBucketReq->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbSetBucketReq',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'bucket', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    'RpbBucketProps', 
                    'props', 2, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbMapRedResp->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbMapRedResp',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'phase', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'response', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BOOL(), 
                    'done', 3, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbErrorResp->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbErrorResp',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'errmsg', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_UINT32(), 
                    'errcode', 2, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbMapRedReq->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbMapRedReq',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'request', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_REQUIRED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'content_type', 2, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbLink->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbLink',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'bucket', 1, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'key', 2, undef
                ],
                [
                    Google::ProtocolBuffers::Constants::LABEL_OPTIONAL(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'tag', 3, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

    unless (RpbListBucketsResp->can('_pb_fields_list')) {
        Google::ProtocolBuffers->create_message(
            'RpbListBucketsResp',
            [
                [
                    Google::ProtocolBuffers::Constants::LABEL_REPEATED(), 
                    Google::ProtocolBuffers::Constants::TYPE_BYTES(), 
                    'buckets', 1, undef
                ],

            ],
            { 'create_accessors' => 1,  }
        );
    }

}
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Riak::Client::PBC

=head1 VERSION

version 1.93

=head1 AUTHOR

Damien Krotkine <dams@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Damien Krotkine.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
