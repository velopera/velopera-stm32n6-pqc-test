include_directories( 
    ${CMAKE_CURRENT_SOURCE_DIR}/pqclean/common
	${CMAKE_CURRENT_SOURCE_DIR}/mupq/common
	${CMAKE_CURRENT_SOURCE_DIR}/pqm4/common 
	${CMAKE_CURRENT_SOURCE_DIR}/pq-edhoc/inc 
	${CMAKE_CURRENT_SOURCE_DIR}/zcbor/include 
	)


add_library(pqm4 STATIC 
	pqm4/common/aes-encrypt.S  
	pqm4/common/aes-keyschedule.S  
	pqm4/common/aes-publicinputs.S  
	pqm4/common/keccakf1600.S
	pqm4/common/aes.c
	pqm4/common/aes-publicinputs.c
	pqm4/common/aestest.c
	pqm4/common/crypto_hashblocks_sha512.c
##	pqm4/common/hal-mps2.c
##	pqm4/common/hal-opencm3.c
#	pqm4/common/keccaktest.c
	pqm4/common/randombytes.c
#	pqm4/common/test.c
#	pqm4/common/testfast.c
    )

add_library(pq-edhoc STATIC 
    pq-edhoc/src/common/byte_array.c  
    pq-edhoc/src/common/crypto_wrapper.c  
    pq-edhoc/src/common/memcpy_s.c  
    pq-edhoc/src/common/print_util.c

    pq-edhoc/src/edhoc/associated_data_encode.c
    pq-edhoc/src/edhoc/bstr_encode_decode.c
    pq-edhoc/src/edhoc/cert.c
    pq-edhoc/src/edhoc/ciphertext.c
    pq-edhoc/src/edhoc/edhoc_cose.c
    pq-edhoc/src/edhoc/edhoc_exporter.c
    pq-edhoc/src/edhoc/edhoc_method_type.c
    pq-edhoc/src/edhoc/hkdf_info.c
    pq-edhoc/src/edhoc/initiator.c
    pq-edhoc/src/edhoc/int_encode_decode.c
    pq-edhoc/src/edhoc/okm.c
    pq-edhoc/src/edhoc/plaintext_decode.c
    pq-edhoc/src/edhoc/plaintext_encode.c
    pq-edhoc/src/edhoc/prk.c
    pq-edhoc/src/edhoc/responder.c
    pq-edhoc/src/edhoc/retrieve_cred.c
    pq-edhoc/src/edhoc/runtime_context.c
    pq-edhoc/src/edhoc/signature_or_mac_msg.c
    pq-edhoc/src/edhoc/suites.c
    pq-edhoc/src/edhoc/th.c
    )
