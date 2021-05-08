Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web08.9736.1620498334705506362
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 May 2021 11:25:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m1hwzRJk;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id g24so7087838pji.4
        for <yocto@lists.yoctoproject.org>; Sat, 08 May 2021 11:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+hRlLKI+SkyTl/GVmpOYuO5pxiR9Tk4df+/TKF1rCe0=;
        b=m1hwzRJkRWQ4ODGwDaXVcRV7c6pG3UXoy2Ja0jehJIOIp6swEbyBi7lvXsVxeDY43o
         zJ7E5ssasimvinYCkyI/HwX3N9eBsMxWubI1ZL7xGfpplqjPvHNxUp5TustxwIHwpFFz
         ah2/KptkcgaFvndmtCzVts5KbkRDqxrb4SjWR4SUTGm/NwhuM4A6d4um+TWx9jlLMwjP
         6379isPc4GSxqITpOeNeg4cbrGZwbU5/DChAZYMXfmzdhJ7oNEL8O+E1Ws6fHUHKMO70
         MPZNNAXT6ZbGouWAi9dZEeQCYx6Uny3IxGrNuuA7Cg0nWL62qalx895WV0sgotXr48Ri
         vbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+hRlLKI+SkyTl/GVmpOYuO5pxiR9Tk4df+/TKF1rCe0=;
        b=FsiFG2HZFSbT70K8G/mLnjIeTazW9ROo8KnYFMlXKzwxnKo7SL61vXuYErNpL9pVdW
         207cS0E8AP8Iw5nAFXb+cQguumyjiKCFZpExZFdvE2r46lR9gkN0mw+fmXWiTeQr9j0n
         gbwo/AMF/aGhCvj7pdMW6gbK7c0tTafcT8q982MX4vwEi0KH8j0LJgFsGjYYdA1ziuiB
         mvn09hl2chvIS8CPJGJFSECsSz+6xNyJklcdMNYbNBwGoN7ycxp/WIe7+TJNiKm4ZldT
         LUJdG+uKB73xyBnF7SfCZE1ny2MThn6Hq2kQt9lJyZ5xjFhkxKEqKrcu+YGExc+UTuAs
         aUHw==
X-Gm-Message-State: AOAM532XNFQhKTlDPwj6suK46iiOPEX6CfhfT2Pww599bGCiBpmDrjLu
	F7a5YPJlRvoK0MAvCLBxrPuHvmtkXACmcQ==
X-Google-Smtp-Source: ABdhPJwMGPaX7AQvmGj5OfZe5lASNX6eqQtkKk0ppGuwTgBxT8bkzVYzd0A9gIUu3XFIT5/ZHGExmg==
X-Received: by 2002:a17:902:7616:b029:e9:a757:b191 with SMTP id k22-20020a1709027616b02900e9a757b191mr16591392pll.74.1620498333734;
        Sat, 08 May 2021 11:25:33 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id p1sm7342108pfp.137.2021.05.08.11.25.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 May 2021 11:25:33 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] tpm2-pkcs11: Update to 1.6.0
Date: Sat,  8 May 2021 18:25:31 +0000
Message-Id: <20210508182531.1549666-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508182531.1549666-1-akuster808@gmail.com>
References: <20210508182531.1549666-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Includes gcc11 fix.
Added p11-kit
Minor cleanup

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-pkcs11/files/677.patch  | 295 ++++++++++++++++++
 ...2-pkcs11_1.5.0.bb => tpm2-pkcs11_1.6.0.bb} |  27 +-
 2 files changed, 314 insertions(+), 8 deletions(-)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-pkcs11/files/677.patch
 rename meta-tpm/recipes-tpm2/tpm2-pkcs11/{tpm2-pkcs11_1.5.0.bb => tpm2-pkcs11_1.6.0.bb} (76%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/files/677.patch b/meta-tpm/recipes-tpm2/tpm2-pkcs11/files/677.patch
new file mode 100644
index 0000000..5c91a5e
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/files/677.patch
@@ -0,0 +1,295 @@
+From 2b74d3df9b3b6932052ace627b21ff1352aa2932 Mon Sep 17 00:00:00 2001
+From: William Roberts <william.c.roberts@intel.com>
+Date: Wed, 5 May 2021 13:32:05 -0500
+Subject: [PATCH 1/4] test: fix build for gcc11
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Fixes 0 size regions by ignoring them. The test code intentionally does
+bad things.
+
+test/unit/test_twist.c: In function ‘test_twistbin_aappend_twist_null’:
+test/unit/test_twist.c:327:18: error: ‘twistbin_aappend’ accessing 16 bytes in a region of size 0 [-Werror=stringop-overflow=]
+  327 |         actual = twistbin_aappend(expected, (binarybuffer *) 0xDEADBEEF, 0);
+      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+Signed-off-by: William Roberts <william.c.roberts@intel.com>
+
+Upstream-Status: Pending
+Fix out for merge to offical repo
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ test/unit/test_twist.c | 12 ++++++++++++
+ 1 file changed, 12 insertions(+)
+
+diff --git a/test/unit/test_twist.c b/test/unit/test_twist.c
+index ec66f69f..58d4530a 100644
+--- a/test/unit/test_twist.c
++++ b/test/unit/test_twist.c
+@@ -244,15 +244,23 @@ void test_twistbin_create(void **state) {
+ void test_twistbin_new_overflow_1(void **state) {
+     (void) state;
+ 
++#pragma GCC diagnostic push
++#pragma GCC diagnostic ignored "-Wpragmas"
++#pragma GCC diagnostic ignored "-Wstringop-overflow"
+ 	twist actual = twistbin_new((void *) 0xDEADBEEF, ~0);
+ 	assert_null(actual);
++#pragma GCC diagnostic pop
+ }
+ 
+ void test_twistbin_new_overflow_2(void **state) {
+     (void) state;
+ 
++#pragma GCC diagnostic push
++#pragma GCC diagnostic ignored "-Wpragmas"
++#pragma GCC diagnostic ignored "-Wstringop-overflow"
+ 	twist actual = twistbin_new((void *) 0xDEADBEEF, ~0 - sizeof(void *));
+ 	assert_null(actual);
++#pragma GCC diagnostic pop
+ }
+ 
+ void test_twistbin_new_overflow_3(void **state) {
+@@ -318,8 +326,12 @@ void test_twistbin_aappend_twist_null(void **state) {
+ 	twist actual = twistbin_aappend(expected, NULL, 42);
+ 	assert_ptr_equal((void * )actual, (void * )expected);
+ 
++#pragma GCC diagnostic push
++#pragma GCC diagnostic ignored "-Wpragmas"
++#pragma GCC diagnostic ignored "-Wstringop-overflow"
+ 	actual = twistbin_aappend(expected, (binarybuffer *) 0xDEADBEEF, 0);
+ 	assert_ptr_equal((void * )actual, (void * )expected);
++#pragma GCC diagnostic pop
+ 
+ 	twist_free(actual);
+ }
+
+From 5bea05613e638375b73e29e5d56a9dabcfd2269d Mon Sep 17 00:00:00 2001
+From: William Roberts <william.c.roberts@intel.com>
+Date: Wed, 5 May 2021 11:52:23 -0500
+Subject: [PATCH 2/4] utils: fix stringop-overread in str_padded_copy
+
+cc1: all warnings being treated as errors
+| make: *** [Makefile:1953: src/lib/slot.lo] Error 1
+| make: *** Waiting for unfinished jobs....
+| In file included from src/lib/mutex.h:10,
+| from src/lib/session_ctx.h:6,
+| from src/lib/digest.h:13,
+| from src/lib/tpm.c:28:
+| In function 'str_padded_copy',
+| inlined from 'tpm_get_token_info' at src/lib/tpm.c:742:5:
+| src/lib/utils.h:42:5: error: 'strnlen' specified bound 32 exceeds source size 5 [-Werror=stringop-overread]
+| 42 | memcpy(dst, src, strnlen((char *)(src), dst_len));
+| | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+| src/lib/utils.h: In function 'tpm_get_token_info':
+| src/lib/tpm.c:739:19: note: source object declared here
+| 739 | unsigned char manufacturerID[sizeof(UINT32)+1] = {0}; // 4 bytes + '\0' as temp storage
+| | ^~~~~~~~~~~~~~
+| cc1: all warnings being treated as errors
+| make: *** [Makefile:1953: src/lib/tpm.lo] Error 1
+| WARNING: exit code 1 from a shell command.
+
+Fixes #676
+
+Signed-off-by: William Roberts <william.c.roberts@intel.com>
+---
+ src/lib/general.c | 8 ++++----
+ src/lib/general.h | 2 +-
+ src/lib/slot.c    | 4 ++--
+ src/lib/token.c   | 4 ++--
+ src/lib/tpm.c     | 7 +++----
+ src/lib/utils.h   | 6 ++++--
+ 6 files changed, 16 insertions(+), 15 deletions(-)
+
+diff --git a/src/lib/general.c b/src/lib/general.c
+index 9b7327c1..eaddaf82 100644
+--- a/src/lib/general.c
++++ b/src/lib/general.c
+@@ -19,8 +19,8 @@
+   #define VERSION "UNKNOWN"
+ #endif
+ 
+-#define LIBRARY_DESCRIPTION (CK_UTF8CHAR_PTR)"TPM2.0 Cryptoki"
+-#define LIBRARY_MANUFACTURER (CK_UTF8CHAR_PTR)"tpm2-software.github.io"
++static const CK_UTF8CHAR LIBRARY_DESCRIPTION[] = "TPM2.0 Cryptoki";
++static const CK_UTF8CHAR LIBRARY_MANUFACTURER[] = "tpm2-software.github.io";
+ 
+ #define CRYPTOKI_VERSION { \
+            .major = CRYPTOKI_VERSION_MAJOR, \
+@@ -78,8 +78,8 @@ CK_RV general_get_info(CK_INFO *info) {
+ 
+     static CK_INFO *_info = NULL;
+     if (!_info) {
+-        str_padded_copy(_info_.manufacturerID, LIBRARY_MANUFACTURER, sizeof(_info_.manufacturerID));
+-        str_padded_copy(_info_.libraryDescription, LIBRARY_DESCRIPTION, sizeof(_info_.libraryDescription));
++        str_padded_copy(_info_.manufacturerID, LIBRARY_MANUFACTURER);
++        str_padded_copy(_info_.libraryDescription, LIBRARY_DESCRIPTION);
+ 
+         parse_lib_version(&_info_.libraryVersion.major,
+                 &_info_.libraryVersion.minor);
+diff --git a/src/lib/general.h b/src/lib/general.h
+index 14a18e46..356c142d 100644
+--- a/src/lib/general.h
++++ b/src/lib/general.h
+@@ -10,7 +10,7 @@
+ #define TPM2_TOKEN_LABEL                "TPM2 PKCS#11 Token"
+ #define TPM2_TOKEN_MANUFACTURER         "Intel"
+ #define TPM2_TOKEN_MODEL                "TPM2 PKCS#11"
+-#define TPM2_TOKEN_SERIAL_NUMBER        "0000000000000000"
++static const CK_UTF8CHAR TPM2_TOKEN_SERIAL_NUMBER[] = "0000000000000000";
+ #define TPM2_TOKEN_HW_VERSION           { 0, 0 }
+ #define TPM2_TOKEN_FW_VERSION           { 0, 0 }
+ 
+diff --git a/src/lib/slot.c b/src/lib/slot.c
+index 548d22b5..6db5bb93 100644
+--- a/src/lib/slot.c
++++ b/src/lib/slot.c
+@@ -119,8 +119,8 @@ CK_RV slot_get_info (CK_SLOT_ID slot_id, CK_SLOT_INFO *info) {
+         return CKR_GENERAL_ERROR;
+     }
+ 
+-    str_padded_copy(info->manufacturerID, token_info.manufacturerID, sizeof(info->manufacturerID));
+-    str_padded_copy(info->slotDescription, token_info.label, sizeof(info->slotDescription));
++    str_padded_copy(info->manufacturerID, token_info.manufacturerID);
++    str_padded_copy(info->slotDescription, token_info.label);
+ 
+     info->hardwareVersion = token_info.hardwareVersion;
+     info->firmwareVersion = token_info.firmwareVersion;
+diff --git a/src/lib/token.c b/src/lib/token.c
+index 6d7ebd27..c7211296 100644
+--- a/src/lib/token.c
++++ b/src/lib/token.c
+@@ -317,8 +317,8 @@ CK_RV token_get_info (token *t, CK_TOKEN_INFO *info) {
+     }
+ 
+     // Identification
+-    str_padded_copy(info->label, t->label, sizeof(info->label));
+-    str_padded_copy(info->serialNumber, (unsigned char*) TPM2_TOKEN_SERIAL_NUMBER, sizeof(info->serialNumber));
++    str_padded_copy(info->label, t->label);
++    str_padded_copy(info->serialNumber, TPM2_TOKEN_SERIAL_NUMBER);
+ 
+ 
+     // Memory: TODO not sure what memory values should go here, the platform?
+diff --git a/src/lib/tpm.c b/src/lib/tpm.c
+index 1639df48..7f9f052a 100644
+--- a/src/lib/tpm.c
++++ b/src/lib/tpm.c
+@@ -740,15 +740,14 @@ CK_RV tpm_get_token_info (tpm_ctx *ctx, CK_TOKEN_INFO *info) {
+     unsigned char manufacturerID[sizeof(UINT32)+1] = {0}; // 4 bytes + '\0' as temp storage
+     UINT32 manufacturer = ntohl(tpmProperties[TPM2_PT_MANUFACTURER - TPM2_PT_FIXED].value);
+     memcpy(manufacturerID, (unsigned char*) &manufacturer, sizeof(uint32_t));
+-    str_padded_copy(info->manufacturerID, manufacturerID, sizeof(info->manufacturerID));
++    str_padded_copy(info->manufacturerID, manufacturerID);
+ 
+     // Map human readable Manufacturer String, if available,
+     // otherwise 4 byte ID was already padded and will be used.
+     for (unsigned int i=0; i < ARRAY_LEN(TPM2_MANUFACTURER_MAP); i++){
+         if (!strncasecmp((char *)info->manufacturerID, TPM2_MANUFACTURER_MAP[i][0], 4)) {
+             str_padded_copy(info->manufacturerID,
+-                            (unsigned char *)TPM2_MANUFACTURER_MAP[i][1],
+-                            sizeof(info->manufacturerID));
++                            (unsigned char *)TPM2_MANUFACTURER_MAP[i][1]);
+         }
+     }
+ 
+@@ -758,7 +757,7 @@ CK_RV tpm_get_token_info (tpm_ctx *ctx, CK_TOKEN_INFO *info) {
+     vendor[1] = ntohl(tpmProperties[TPM2_PT_VENDOR_STRING_2 - TPM2_PT_FIXED].value);
+     vendor[2] = ntohl(tpmProperties[TPM2_PT_VENDOR_STRING_3 - TPM2_PT_FIXED].value);
+     vendor[3] = ntohl(tpmProperties[TPM2_PT_VENDOR_STRING_4 - TPM2_PT_FIXED].value);
+-    str_padded_copy(info->model, (unsigned char*) &vendor, sizeof(info->model));
++    str_padded_copy(info->model, (unsigned char*) &vendor);
+ 
+     return CKR_OK;
+ }
+diff --git a/src/lib/utils.h b/src/lib/utils.h
+index 81c61fae..cf357464 100644
+--- a/src/lib/utils.h
++++ b/src/lib/utils.h
+@@ -39,9 +39,11 @@
+ 
+ int str_to_ul(const char *val, size_t *res);
+ 
+-static inline void str_padded_copy(CK_UTF8CHAR_PTR dst, const CK_UTF8CHAR_PTR src, size_t dst_len) {
++#define str_padded_copy(dst, src) _str_padded_copy(dst, sizeof(dst), src, strnlen((const char *)src, sizeof(src)))
++static inline void _str_padded_copy(CK_UTF8CHAR_PTR dst, size_t dst_len, const CK_UTF8CHAR *src, size_t src_len) {
+     memset(dst, ' ', dst_len);
+-    memcpy(dst, src, strnlen((char *)(src), dst_len));
++    memcpy(dst, src, src_len);
++    LOGE("BILL(%zu): %.*s\n", dst_len, dst_len, dst);
+ }
+ 
+ twist utils_hash_pass(const twist pin, const twist salt);
+
+From afeae8a3846e06152fafb180077fbad4381a124d Mon Sep 17 00:00:00 2001
+From: William Roberts <william.c.roberts@intel.com>
+Date: Wed, 5 May 2021 14:09:27 -0500
+Subject: [PATCH 3/4] general: drop unused macros
+
+Signed-off-by: William Roberts <william.c.roberts@intel.com>
+---
+ src/lib/general.h | 10 ----------
+ 1 file changed, 10 deletions(-)
+
+diff --git a/src/lib/general.h b/src/lib/general.h
+index 356c142d..b3089554 100644
+--- a/src/lib/general.h
++++ b/src/lib/general.h
+@@ -7,17 +7,7 @@
+ 
+ #include "pkcs11.h"
+ 
+-#define TPM2_TOKEN_LABEL                "TPM2 PKCS#11 Token"
+-#define TPM2_TOKEN_MANUFACTURER         "Intel"
+-#define TPM2_TOKEN_MODEL                "TPM2 PKCS#11"
+ static const CK_UTF8CHAR TPM2_TOKEN_SERIAL_NUMBER[] = "0000000000000000";
+-#define TPM2_TOKEN_HW_VERSION           { 0, 0 }
+-#define TPM2_TOKEN_FW_VERSION           { 0, 0 }
+-
+-#define TPM2_SLOT_DESCRIPTION           "Intel TPM2.0 Cryptoki"
+-#define TPM2_SLOT_MANUFACTURER          TPM2_TOKEN_MANUFACTURER
+-#define TPM2_SLOT_HW_VERSION            TPM2_TOKEN_HW_VERSION
+-#define TPM2_SLOT_FW_VERSION            TPM2_TOKEN_FW_VERSION
+ 
+ CK_RV general_init(void *init_args);
+ CK_RV general_get_func_list(CK_FUNCTION_LIST **function_list);
+
+From 8b43a99c5ff604d890bdc23fd2fa5f98aa087d83 Mon Sep 17 00:00:00 2001
+From: William Roberts <william.c.roberts@intel.com>
+Date: Wed, 5 May 2021 14:11:04 -0500
+Subject: [PATCH 4/4] token: move TPM2_TOKEN_SERIAL_NUMBER local to use
+
+Signed-off-by: William Roberts <william.c.roberts@intel.com>
+---
+ src/lib/general.h | 2 --
+ src/lib/token.c   | 2 ++
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/src/lib/general.h b/src/lib/general.h
+index b3089554..9afd61ec 100644
+--- a/src/lib/general.h
++++ b/src/lib/general.h
+@@ -7,8 +7,6 @@
+ 
+ #include "pkcs11.h"
+ 
+-static const CK_UTF8CHAR TPM2_TOKEN_SERIAL_NUMBER[] = "0000000000000000";
+-
+ CK_RV general_init(void *init_args);
+ CK_RV general_get_func_list(CK_FUNCTION_LIST **function_list);
+ CK_RV general_get_info(CK_INFO *info);
+diff --git a/src/lib/token.c b/src/lib/token.c
+index c7211296..63a9a71b 100644
+--- a/src/lib/token.c
++++ b/src/lib/token.c
+@@ -20,6 +20,8 @@
+ #include "token.h"
+ #include "utils.h"
+ 
++static const CK_UTF8CHAR TPM2_TOKEN_SERIAL_NUMBER[] = "0000000000000000";
++
+ void pobject_config_free(pobject_config *c) {
+ 
+     if (c->is_transient) {
diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.5.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.6.0.bb
similarity index 76%
rename from meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.5.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.6.0.bb
index d53d4fa..63ec18d 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.5.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.6.0.bb
@@ -4,13 +4,15 @@ SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=0fc19f620a102768d6dbd1e7166e78ab"
 
-DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2-tools libyaml python3-setuptools-native"
+DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2-tools libyaml p11-kit python3-setuptools-native"
 
-SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git;branch=1.X \
+SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git;branch=master \
            file://bootstrap_fixup.patch \
-           file://0001-remove-local-binary-checkes.patch"
+           file://0001-remove-local-binary-checkes.patch \
+           file://677.patch \
+           "
 
-SRCREV = "5d583351028eebd470f50ec35db5dcf00533df31"
+SRCREV = "c2d53cc1af6b9df13c832715442853b21048c273"
 
 S = "${WORKDIR}/git"
 
@@ -26,6 +28,10 @@ do_compile_append() {
 }
 
 do_install_append() {
+    install -d ${D}${libdir}/pkcs11
+    install -d ${D}${datadir}/p11-kit
+    rm -f ${D}${libdir}/pkcs11/libtpm2_pkcs11.so
+
     cd ${S}/tools
     export PYTHONPATH="${D}${PYTHON_SITEPACKAGES_DIR}"
     ${PYTHON_PN} setup.py install --root="${D}" --prefix="${prefix}" --install-lib="${PYTHON_SITEPACKAGES_DIR}" --optimize=1 --skip-build
@@ -33,12 +39,17 @@ do_install_append() {
     sed -i -e "s:${PYTHON}:${USRBINPATH}/env ${PYTHON_PN}:g" "${D}${bindir}"/tpm2_ptool
 }
 
-RDEPNDS_${PN} = "tpm2-tools"
-
 PACKAGES =+ "${PN}-tools"
-RDEPENDS_${PN}-tools += "${PYTHON_PN}-setuptools ${PYTHON_PN}-pyyaml ${PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
 
 FILES_${PN}-tools = "\
     ${bindir}/tpm2_ptool \
     ${libdir}/${PYTHON_DIR}/* \
-"
+    "
+
+FILES_${PN} += "\
+    ${libdir}/pkcs11/* \
+    ${datadir}/p11-kit/* \
+    "
+
+RDEPNDS_${PN} = "tpm2-tools"
+RDEPENDS_${PN}-tools += "${PYTHON_PN}-setuptools ${PYTHON_PN}-pyyaml ${PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
-- 
2.25.1

