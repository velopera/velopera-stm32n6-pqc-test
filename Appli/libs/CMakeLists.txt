include_directories( 
    ${CMAKE_CURRENT_SOURCE_DIR}/pqclean/common
	${CMAKE_CURRENT_SOURCE_DIR}/mupq/common
	${CMAKE_CURRENT_SOURCE_DIR}/pqm4/common 
	${CMAKE_CURRENT_SOURCE_DIR}/pq-edhoc/inc 
	${CMAKE_CURRENT_SOURCE_DIR}/zcbor/include 

    ${CMAKE_CURRENT_SOURCE_DIR}/pqm4/crypto_kem/ml-kem-512/m4fstack/
    )

add_definitions(
    -DHAWK_LEVEL_1
    -DPQM4
    )

# sources per crypto algo variant
set(PQM4_ML_KEM_512_SRC 
    pqm4/crypto_kem/ml-kem-512/m4fstack/cmov_int16.S
    pqm4/crypto_kem/ml-kem-512/m4fstack/fastaddsub.S
    pqm4/crypto_kem/ml-kem-512/m4fstack/fastbasemul.S
    pqm4/crypto_kem/ml-kem-512/m4fstack/fastinvntt.S
    pqm4/crypto_kem/ml-kem-512/m4fstack/fastntt.S
    pqm4/crypto_kem/ml-kem-512/m4fstack/matacc_asm.S
    pqm4/crypto_kem/ml-kem-512/m4fstack/poly_asm.S
    pqm4/crypto_kem/ml-kem-512/m4fstack/reduce.S

    pqm4/crypto_kem/ml-kem-512/m4fstack/cbd.c
    pqm4/crypto_kem/ml-kem-512/m4fstack/indcpa.c
    pqm4/crypto_kem/ml-kem-512/m4fstack/kem.c
    pqm4/crypto_kem/ml-kem-512/m4fstack/matacc.c
    pqm4/crypto_kem/ml-kem-512/m4fstack/ntt.c
    pqm4/crypto_kem/ml-kem-512/m4fstack/poly.c
    pqm4/crypto_kem/ml-kem-512/m4fstack/polyvec.c
    pqm4/crypto_kem/ml-kem-512/m4fstack/symmetric-fips202.c
    pqm4/crypto_kem/ml-kem-512/m4fstack/verify.c
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

    ${PQM4_ML_KEM_512_SRC}
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
