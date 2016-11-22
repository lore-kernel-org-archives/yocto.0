Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17663E00CCD; Tue, 22 Nov 2016 11:32:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CD5AE00CD0
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 11:32:42 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,682,1473145200"; d="scan'208";a="34448016"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by orsmga005.jf.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Nov 2016 11:35:46 -0800
Message-Id: <1479843349-195099-4-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
References: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
Subject: [PATCH 3/6][rmc] use internal definitions for types in project
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Nov 2016 19:32:47 -0000

EFI Clients linked to rmc may or may not include standard header
files, and these definitions could be different too.

The existing macros like 'WORD' also bring ambiguity among
processor architectures, so we replace them with the new internal
data types.

This change takes whatever defined for types in user space since
we need standard header files anyway, but defines data types for
EFI context.

Everything inside rmc uses internal data types as consolidation.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 inc/rmc_api.h         |  4 ++--
 inc/rmc_types.h       | 33 +++++++++++++++--------------
 inc/rmc_util.h        | 10 ++++-----
 inc/rmcl.h            | 34 +++++++++++++++---------------
 inc/rsmp.h            | 58 +++++++++++++++++++++++++--------------------------
 src/lib/api.c         | 44 +++++++++++++++++++-------------------
 src/lib/common/rmcl.c | 38 ++++++++++++++++-----------------
 src/lib/common/rsmp.c | 18 ++++++++--------
 src/lib/efi_api.c     | 16 ++++++++------
 src/lib/rmc_efi.h     | 43 +++++++++++++++++++-------------------
 src/rmc.c             | 20 +++++++++---------
 src/util/util.c       | 20 +++++++++---------
 12 files changed, 172 insertions(+), 166 deletions(-)

diff --git a/inc/rmc_api.h b/inc/rmc_api.h
index 2d1e05b..a484389 100644
--- a/inc/rmc_api.h
+++ b/inc/rmc_api.h
@@ -96,7 +96,7 @@ extern void rmc_free_file(rmc_file_t *fp);
  *
  * return           : 0 for success, non-zeor for failures
  */
-extern int read_file(const char *pathname, char **data, size_t* len);
+extern int read_file(const char *pathname, char **data, rmc_size_t* len);
 
 /*
  * utility function to write data into file.
@@ -107,7 +107,7 @@ extern int read_file(const char *pathname, char **data, size_t* len);
  *
  * return          : 0 when successfully write all data into file, non-zeor for failures
  */
-int write_file(const char *pathname, void *data, size_t len, int append);
+int write_file(const char *pathname, void *data, rmc_size_t len, int append);
 
 #else
 /* 2 - API for UEFI context */
diff --git a/inc/rmc_types.h b/inc/rmc_types.h
index e960a7e..28bea84 100644
--- a/inc/rmc_types.h
+++ b/inc/rmc_types.h
@@ -11,6 +11,14 @@
 #include <stdint.h>
 #include <stddef.h>
 #include <string.h>
+
+typedef uint8_t rmc_uint8_t;
+typedef uint16_t rmc_uint16_t;
+typedef uint32_t rmc_uint32_t;
+typedef uint64_t rmc_uint64_t;
+typedef size_t rmc_size_t;
+typedef ssize_t rmc_ssize_t;
+
 #else
 /* we specify -nostdinc in C flag and provide these in rmc
  * for EFI applications that don't want to use standard headers.
@@ -19,29 +27,22 @@
 #ifndef NULL
 #define NULL 0
 #endif
-typedef unsigned int            uint32_t;
-typedef unsigned short int      uint16_t;
-typedef unsigned char           uint8_t;
+typedef unsigned int            rmc_uint32_t;
+typedef unsigned short int      rmc_uint16_t;
+typedef unsigned char           rmc_uint8_t;
 #ifdef __x86_64__
-typedef unsigned long int       uint64_t;
+typedef unsigned long int       rmc_uint64_t;
 #elif defined(__i386__)
 __extension__
-typedef unsigned long long int  uint64_t;
+typedef unsigned long long int  rmc_uint64_t;
 #else
 #error "rmc only supports 32 and 64 bit x86 platforms"
 #endif
 #else
 #error "rmc needs gcc compiler"
-#endif
-
-typedef unsigned long size_t;
-typedef long ssize_t;
-#endif
-
-typedef uint8_t BYTE;
-typedef uint16_t WORD;
-typedef uint32_t DWORD;
-typedef uint64_t QWORD;
-
+#endif /* __GNUC__ */
+typedef unsigned long rmc_size_t;
+typedef long rmc_ssize_t;
+#endif /* RMC_EFI */
 
 #endif /* INC_RMC_TYPES_H_ */
diff --git a/inc/rmc_util.h b/inc/rmc_util.h
index d1512e2..15a6102 100644
--- a/inc/rmc_util.h
+++ b/inc/rmc_util.h
@@ -7,16 +7,16 @@
 #define INC_RMC_UTIL_H_
 #include <rmc_types.h>
 
-void *memset(void *s, BYTE c, size_t n);
+void *memset(void *s, rmc_uint8_t c, rmc_size_t n);
 
-char *strncpy(char *dest, const char *src, size_t n);
+char *strncpy(char *dest, const char *src, rmc_size_t n);
 
 char *strcpy(char *dest, const char *src);
 
-size_t strlen(const char *s);
+rmc_size_t strlen(const char *s);
 
-void *memcpy(void *dest, const void *src, size_t n);
+void *memcpy(void *dest, const void *src, rmc_size_t n);
 
-int strncmp(const char *s1, const char *s2, size_t n);
+int strncmp(const char *s1, const char *s2, rmc_size_t n);
 
 #endif
diff --git a/inc/rmcl.h b/inc/rmcl.h
index 52b9964..4123819 100644
--- a/inc/rmcl.h
+++ b/inc/rmcl.h
@@ -28,8 +28,8 @@
  * preferred as long as possible.
  */
 typedef struct rmc_finger {
-    BYTE type;
-    BYTE offset;
+    rmc_uint8_t type;
+    rmc_uint8_t offset;
     char *name;
     char *value;
 } rmc_finger_t;
@@ -79,14 +79,14 @@ static __inline__ void initialize_fingerprint(rmc_fingerprint_t *fp) {
  * RMC Database (packed). A RMC DB contains records
  */
 typedef struct rmc_db_header {
-    BYTE signature[RMC_DB_SIG_LEN];
-    BYTE version;
-    QWORD length;
+    rmc_uint8_t signature[RMC_DB_SIG_LEN];
+    rmc_uint8_t version;
+    rmc_uint64_t length;
 } __attribute__ ((__packed__)) rmc_db_header_t;
 
 /* signature is the computation result of fingerprint and what's packed in record */
 typedef union rmc_signature {
-    BYTE raw[32];
+    rmc_uint8_t raw[32];
 } __attribute__ ((__packed__)) rmc_signature_t;
 
 /*
@@ -94,17 +94,17 @@ typedef union rmc_signature {
  */
 typedef struct rmc_record_header {
     rmc_signature_t signature;     /* computation result from finger print */
-    QWORD length;
+    rmc_uint64_t length;
 } __attribute__ ((__packed__)) rmc_record_header_t;
 
 /*
  * RMC Database Meta (packed)
  */
 typedef struct rmc_meta_header {
-    BYTE type;      /* type 0 command line; type 1 file blob*/
-    QWORD length;   /* covers cmdline_filename and blob blocks. */
+    rmc_uint8_t type;      /* type 0 command line; type 1 file blob*/
+    rmc_uint64_t length;   /* covers cmdline_filename and blob blocks. */
     /* char *cmdline_filename : Invisible, null-terminated string packed in mem */
-    /* BYTE *blob : Invisible, binary packed in mem */
+    /* rmc_uint8_t *blob : Invisible, binary packed in mem */
 } __attribute__ ((__packed__)) rmc_meta_header_t;
 
 /*
@@ -114,11 +114,11 @@ typedef struct rmc_meta_header {
 #define RMC_POLICY_CMDLINE 0
 #define RMC_POLICY_BLOB 1
 typedef struct rmc_file {
-    BYTE type;              /* RMC_POLICY_CMDLINE or RMC_POLICY_BLOB*/
+    rmc_uint8_t type;              /* RMC_POLICY_CMDLINE or RMC_POLICY_BLOB*/
     char *cmdline_name;     /* file name of blob (type 1) or command line fragment (type 0) */
     struct rmc_file *next;  /* next rmc file, or null as terminator for the last element */
-    size_t blob_len;         /* number of bytes of blob, excluding length of name */
-    BYTE *blob;             /* blob of policy file, treated as binary, UNNECESSARILY Null terminated */
+    rmc_size_t blob_len;         /* number of bytes of blob, excluding length of name */
+    rmc_uint8_t *blob;             /* blob of policy file, treated as binary, UNNECESSARILY Null terminated */
 } rmc_file_t;
 
 /*
@@ -126,8 +126,8 @@ typedef struct rmc_file {
  * Also as input when generating rmc db with records.
  */
 typedef struct rmc_record_file {
-    BYTE *blob;              /* record raw data blob */
-    size_t length;
+    rmc_uint8_t *blob;              /* record raw data blob */
+    rmc_size_t length;
     struct rmc_record_file *next;  /* next rmc record file, or null as terminator for the last element */
 } rmc_record_file_t;
 
@@ -150,7 +150,7 @@ extern int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_file_t *poli
  * (out) len            : length of returned rmc db
  * (ret) 0 for success, RMC error code for failures. content of rmc_db is NULL for failures.
  */
-extern int rmcl_generate_db(rmc_record_file_t *record_files, BYTE **rmc_db, size_t *len);
+extern int rmcl_generate_db(rmc_record_file_t *record_files, rmc_uint8_t **rmc_db, rmc_size_t *len);
 
 /*
  * Query a RMC database blob provided by caller, to get kernel command line fragment or a policy file blob.
@@ -165,6 +165,6 @@ extern int rmcl_generate_db(rmc_record_file_t *record_files, BYTE **rmc_db, size
  * return               : 0 when rmcl found a meta in record which has matched signature of fingerprint. non-zero for failures. Content of
  *                        policy is not determined when non-zero is returned.
  */
-extern int query_policy_from_db(rmc_fingerprint_t *fingerprint, BYTE *rmc_db, BYTE type, char *blob_name, rmc_file_t *policy);
+extern int query_policy_from_db(rmc_fingerprint_t *fingerprint, rmc_uint8_t *rmc_db, rmc_uint8_t type, char *blob_name, rmc_file_t *policy);
 
 #endif /* INC_RMCL_H_ */
diff --git a/inc/rsmp.h b/inc/rsmp.h
index c4258cd..5be768e 100644
--- a/inc/rsmp.h
+++ b/inc/rsmp.h
@@ -17,33 +17,33 @@
 typedef union smbios_ep {
     /* */
     struct {
-        BYTE ep_anchor[4];
-        BYTE ep_chksum;
-        BYTE ep_len;
-        BYTE major_ver;
-        BYTE minor_ver;
-        WORD max_struct_size;
-        BYTE ep_rev;
-        BYTE fmt_area[5];
-        BYTE interm_anchor[5];
-        BYTE interm_chksum;
-        WORD struct_tbl_len;
-        DWORD struct_tbl_addr;
-        WORD struct_num;
-        BYTE bcd_rev;
+        rmc_uint8_t ep_anchor[4];
+        rmc_uint8_t ep_chksum;
+        rmc_uint8_t ep_len;
+        rmc_uint8_t major_ver;
+        rmc_uint8_t minor_ver;
+        rmc_uint16_t max_struct_size;
+        rmc_uint8_t ep_rev;
+        rmc_uint8_t fmt_area[5];
+        rmc_uint8_t interm_anchor[5];
+        rmc_uint8_t interm_chksum;
+        rmc_uint16_t struct_tbl_len;
+        rmc_uint32_t struct_tbl_addr;
+        rmc_uint16_t struct_num;
+        rmc_uint8_t bcd_rev;
     } ep_32;
 
     struct {
-        BYTE ep_anchor[5];
-        BYTE ep_chksum;
-        BYTE ep_len;
-        BYTE major_ver;
-        BYTE minor_ver;
-        BYTE doc_rev;
-        BYTE ep_rev;
-        BYTE reserved;
-        DWORD max_struct_size;
-        QWORD struct_tbl_addr;
+        rmc_uint8_t ep_anchor[5];
+        rmc_uint8_t ep_chksum;
+        rmc_uint8_t ep_len;
+        rmc_uint8_t major_ver;
+        rmc_uint8_t minor_ver;
+        rmc_uint8_t doc_rev;
+        rmc_uint8_t ep_rev;
+        rmc_uint8_t reserved;
+        rmc_uint32_t max_struct_size;
+        rmc_uint64_t struct_tbl_addr;
 
     } ep_64;
 } __attribute__ ((__packed__)) smbios_ep_t;
@@ -52,9 +52,9 @@ typedef union smbios_ep {
  * SMBIOS structure header
  */
 typedef struct smbios_struct_hdr {
-    BYTE type;
-    BYTE len;
-    WORD handle;
+    rmc_uint8_t type;
+    rmc_uint8_t len;
+    rmc_uint16_t handle;
 }  __attribute__ ((__packed__)) smbios_struct_hdr_t;
 
 
@@ -70,7 +70,7 @@ typedef struct smbios_struct_hdr {
  *
  * retrun: 0 for success; non-zero for failures
  */
-extern int rsmp_get_smbios_strcut(uint8_t *start, uint64_t *struct_addr, uint16_t *struct_len);
+extern int rsmp_get_smbios_strcut(rmc_uint8_t *start, rmc_uint64_t *struct_addr, rmc_uint16_t *struct_len);
 
 /*
  * get board RMC fingerprint from smbios structure tabe (not entry table)
@@ -80,6 +80,6 @@ extern int rsmp_get_smbios_strcut(uint8_t *start, uint64_t *struct_addr, uint16_
  *
  * return: retrun: 0 for success; non-zero for failures
  */
-extern int rsmp_get_fingerprint_from_smbios_struct(BYTE *addr, rmc_fingerprint_t *fp);
+extern int rsmp_get_fingerprint_from_smbios_struct(rmc_uint8_t *addr, rmc_fingerprint_t *fp);
 
 #endif /* INC_RSMP_H_ */
diff --git a/src/lib/api.c b/src/lib/api.c
index a3abe63..b7bc663 100644
--- a/src/lib/api.c
+++ b/src/lib/api.c
@@ -17,13 +17,13 @@
 #define EFI_SYSTAB_PATH "/sys/firmware/efi/systab"
 #define SYSTAB_LEN 4096         /* assume 4kb is enough...*/
 
-int read_file(const char *pathname, char **data, size_t* len) {
+int read_file(const char *pathname, char **data, rmc_size_t* len) {
     int fd = -1;
     struct stat s;
     off_t total = 0;
     void *buf = NULL;
-    size_t byte = 0;
-    ssize_t tmp = 0;
+    rmc_size_t byte = 0;
+    rmc_ssize_t tmp = 0;
 
     *data = NULL;
     *len = 0;
@@ -55,7 +55,7 @@ int read_file(const char *pathname, char **data, size_t* len) {
             return 1;
         }
 
-        byte += (size_t)tmp;
+        byte += (rmc_size_t)tmp;
     }
 
     *data = buf;
@@ -65,10 +65,10 @@ int read_file(const char *pathname, char **data, size_t* len) {
     return 0;
 }
 
-int write_file(const char *pathname, void *data, size_t len, int append) {
+int write_file(const char *pathname, void *data, rmc_size_t len, int append) {
     int fd = -1;
-    ssize_t tmp = 0;
-    size_t total = 0;
+    rmc_ssize_t tmp = 0;
+    rmc_size_t total = 0;
     int open_flag = O_WRONLY|O_CREAT;
 
     if (!data || !pathname)
@@ -85,13 +85,13 @@ int write_file(const char *pathname, void *data, size_t len, int append) {
     }
 
     while (total < len) {
-        if ((tmp = write(fd, (BYTE *)data + total, len - total)) < 0) {
+        if ((tmp = write(fd, (rmc_uint8_t *)data + total, len - total)) < 0) {
             perror("rmc: failed to write file");
             close(fd);
             return 1;
         }
 
-        total += (size_t)tmp;
+        total += (rmc_size_t)tmp;
     }
 
     close(fd);
@@ -103,7 +103,7 @@ int write_file(const char *pathname, void *data, size_t len, int append) {
  * Read smbios entry table address from sysfs
  * return 0 when success
  */
-static int get_smbios_entry_table_addr(uint64_t* addr){
+static int get_smbios_entry_table_addr(rmc_uint64_t* addr){
 
     char *entry_buf = NULL;
     char *tmp;
@@ -166,17 +166,17 @@ void rmc_free_file(rmc_file_t *file) {
 int rmc_get_fingerprint(rmc_fingerprint_t *fp) {
 
     int fd = -1;
-    uint64_t entry_addr = 0;
-    uint8_t *smbios_entry_map = NULL;
+    rmc_uint64_t entry_addr = 0;
+    rmc_uint8_t *smbios_entry_map = NULL;
     long pg_size = 0;
     long pg_num = 0;
-    uint8_t *smbios_entry_start = NULL;
-    size_t entry_map_len = 0;
-    size_t struct_map_len = 0;
-    WORD smbios_struct_len = 0;
-    uint64_t smbios_struct_addr = 0;
-    uint8_t *smbios_struct_map = NULL;
-    uint8_t *smbios_struct_start = NULL;
+    rmc_uint8_t *smbios_entry_start = NULL;
+    rmc_size_t entry_map_len = 0;
+    rmc_size_t struct_map_len = 0;
+    rmc_uint16_t smbios_struct_len = 0;
+    rmc_uint64_t smbios_struct_addr = 0;
+    rmc_uint8_t *smbios_struct_map = NULL;
+    rmc_uint8_t *smbios_struct_start = NULL;
     int ret = 1;
     int i;
     int j;
@@ -271,10 +271,10 @@ err:
 }
 
 int rmc_query_file_by_fp(rmc_fingerprint_t *fp, char *db_pathname, char *file_name, rmc_file_t *file) {
-    BYTE *db = NULL;
-    size_t db_len = 0;
+    rmc_uint8_t *db = NULL;
+    rmc_size_t db_len = 0;
     int ret = 1;
-    BYTE *blob = NULL;
+    rmc_uint8_t *blob = NULL;
 
     /* ToDo: We should use file seeking when traversing a database
      * file instead of load whole DB into mem.
diff --git a/src/lib/common/rmcl.c b/src/lib/common/rmcl.c
index 1e5839e..e6be585 100644
--- a/src/lib/common/rmcl.c
+++ b/src/lib/common/rmcl.c
@@ -10,7 +10,7 @@
 #include <rmc_util.h>
 #endif
 
-static const BYTE rmc_db_signature[RMC_DB_SIG_LEN] = {'R', 'M', 'C', 'D', 'B'};
+static const rmc_uint8_t rmc_db_signature[RMC_DB_SIG_LEN] = {'R', 'M', 'C', 'D', 'B'};
 
 /* compute a finger to signature which is stored in record
  * (in) fingerprint : of board, usually generated by rmc tool and rsmp
@@ -20,10 +20,10 @@ static const BYTE rmc_db_signature[RMC_DB_SIG_LEN] = {'R', 'M', 'C', 'D', 'B'};
  */
 static int generate_signature_from_fingerprint(rmc_fingerprint_t *fingerprint, rmc_signature_t *signature) {
 
-    size_t sig_len = sizeof(signature->raw);
-    size_t i = 0;
-    size_t p = 0;
-    size_t q = 0;
+    rmc_size_t sig_len = sizeof(signature->raw);
+    rmc_size_t i = 0;
+    rmc_size_t p = 0;
+    rmc_size_t q = 0;
 
     if (!signature || !fingerprint)
         return 1;
@@ -62,10 +62,10 @@ static int generate_signature_from_fingerprint(rmc_fingerprint_t *fingerprint, r
 int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_file_t *policy_files, rmc_record_file_t *record_file) {
 
     rmc_file_t *tmp = NULL;
-    QWORD cmd_len = 0;
-    size_t record_len = 0;
-    BYTE *blob = NULL;
-    BYTE *idx = NULL;
+    rmc_uint64_t cmd_len = 0;
+    rmc_size_t record_len = 0;
+    rmc_uint8_t *blob = NULL;
+    rmc_uint8_t *idx = NULL;
     rmc_record_header_t *record = NULL;
     rmc_meta_header_t *meta = NULL;
 
@@ -133,12 +133,12 @@ int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_file_t *policy_file
     return 0;
 }
 
-int rmcl_generate_db(rmc_record_file_t *record_files, BYTE **rmc_db, size_t *len) {
+int rmcl_generate_db(rmc_record_file_t *record_files, rmc_uint8_t **rmc_db, rmc_size_t *len) {
 
     rmc_record_file_t *tmp = NULL;
-    QWORD db_len = sizeof(rmc_db_header_t);
+    rmc_uint64_t db_len = sizeof(rmc_db_header_t);
     rmc_db_header_t *db = NULL;
-    BYTE *idx = NULL;
+    rmc_uint8_t *idx = NULL;
     int i;
 
     if (!record_files || !len)
@@ -170,7 +170,7 @@ int rmcl_generate_db(rmc_record_file_t *record_files, BYTE **rmc_db, size_t *len
     db->version = 0x1;
 
     db->length = db_len;
-    idx = (BYTE *)db;
+    idx = (rmc_uint8_t *)db;
     idx += sizeof(rmc_db_header_t);
 
     tmp = record_files;
@@ -182,7 +182,7 @@ int rmcl_generate_db(rmc_record_file_t *record_files, BYTE **rmc_db, size_t *len
         tmp = tmp->next;
     }
 
-    *rmc_db = (BYTE *)db;
+    *rmc_db = (rmc_uint8_t *)db;
     *len = db_len;
 
     return 0;
@@ -198,14 +198,14 @@ static int match_record(rmc_record_header_t *r, rmc_signature_t* sig) {
     return strncmp((const char *)r->signature.raw, (const char *)sig->raw, sizeof(r->signature.raw));
 }
 
-int query_policy_from_db(rmc_fingerprint_t *fingerprint, BYTE *rmc_db, BYTE type, char *blob_name, rmc_file_t *policy) {
+int query_policy_from_db(rmc_fingerprint_t *fingerprint, rmc_uint8_t *rmc_db, rmc_uint8_t type, char *blob_name, rmc_file_t *policy) {
     rmc_meta_header_t meta_header;
     rmc_db_header_t *db_header = NULL;
     rmc_record_header_t record_header;
     rmc_signature_t signature;
-    QWORD record_idx = 0;   /* offset of each reacord in db*/
-    QWORD meta_idx = 0;     /* offset of each meta in a record */
-    QWORD policy_idx = 0;   /* offset of policy in a meta */
+    rmc_uint64_t record_idx = 0;   /* offset of each reacord in db*/
+    rmc_uint64_t meta_idx = 0;     /* offset of each meta in a record */
+    rmc_uint64_t policy_idx = 0;   /* offset of policy in a meta */
 
     if (!fingerprint || !rmc_db || !policy)
         return 1;
@@ -251,7 +251,7 @@ int query_policy_from_db(rmc_fingerprint_t *fingerprint, BYTE *rmc_db, BYTE type
 
                         return 0;
                     } else if (type == RMC_POLICY_BLOB && !strncmp(blob_name, (char *)&rmc_db[policy_idx], strlen(blob_name) + 1)) {
-                        ssize_t cmd_name_len = strlen((char *)&rmc_db[policy_idx]) + 1;
+                        rmc_ssize_t cmd_name_len = strlen((char *)&rmc_db[policy_idx]) + 1;
                         policy->blob = &rmc_db[policy_idx + cmd_name_len];
                         policy->blob_len = meta_header.length - sizeof(rmc_meta_header_t) - cmd_name_len;
                         policy->next = NULL;
diff --git a/src/lib/common/rsmp.c b/src/lib/common/rsmp.c
index a112537..8e6a4c8 100644
--- a/src/lib/common/rsmp.c
+++ b/src/lib/common/rsmp.c
@@ -16,12 +16,12 @@
  *
  * return: address of string.
  */
-static BYTE * get_string_from_struct_table(smbios_struct_hdr_t *header, BYTE offset){
+static rmc_uint8_t * get_string_from_struct_table(smbios_struct_hdr_t *header, rmc_uint8_t offset){
 
-    BYTE str_idx = *((BYTE *)header + offset);
-    BYTE *start = (BYTE *)header + header->len;
-    BYTE i;
-    BYTE *end = start;
+    rmc_uint8_t str_idx = *((rmc_uint8_t *)header + offset);
+    rmc_uint8_t *start = (rmc_uint8_t *)header + header->len;
+    rmc_uint8_t i;
+    rmc_uint8_t *end = start;
 
     for (i = 0; i < str_idx; i++) {
         /* search strings in unformatted area, but don't move head if it is what we are looking for */
@@ -42,9 +42,9 @@ static BYTE * get_string_from_struct_table(smbios_struct_hdr_t *header, BYTE off
  *
  *return: starting address of next structure.
  */
-static BYTE * forward_to_next_struct_table(smbios_struct_hdr_t *header) {
+static rmc_uint8_t * forward_to_next_struct_table(smbios_struct_hdr_t *header) {
 
-    BYTE *str_area = (BYTE *)header + header->len;
+    rmc_uint8_t *str_area = (rmc_uint8_t *)header + header->len;
 
     for (; !(*str_area == '\0' && *(str_area + 1) == '\0'); str_area++)
         ;
@@ -52,7 +52,7 @@ static BYTE * forward_to_next_struct_table(smbios_struct_hdr_t *header) {
     return (str_area + 2);
 }
 
-int rsmp_get_smbios_strcut(uint8_t *start, uint64_t *struct_addr, uint16_t *struct_len){
+int rsmp_get_smbios_strcut(rmc_uint8_t *start, rmc_uint64_t *struct_addr, rmc_uint16_t *struct_len){
     smbios_ep_t *ep = (smbios_ep_t *)start;
 
     /* a 64bit machine can still have 32 bit entry defined by older SMBIOS versions than 3.0,
@@ -71,7 +71,7 @@ int rsmp_get_smbios_strcut(uint8_t *start, uint64_t *struct_addr, uint16_t *stru
     return 1;
 }
 
-int rsmp_get_fingerprint_from_smbios_struct(BYTE *addr, rmc_fingerprint_t *fp){
+int rsmp_get_fingerprint_from_smbios_struct(rmc_uint8_t *addr, rmc_fingerprint_t *fp){
 
     smbios_struct_hdr_t *header = (smbios_struct_hdr_t *)addr;
     int fp_idx;
diff --git a/src/lib/efi_api.c b/src/lib/efi_api.c
index 6ce8733..c4535c8 100644
--- a/src/lib/efi_api.c
+++ b/src/lib/efi_api.c
@@ -32,7 +32,7 @@ static int compare_guid (EFI_GUID *guid1, EFI_GUID *guid2) {
 
 static void *get_smbios_entry(void * sys_config_table) {
     EFI_SYSTEM_TABLE *systab = (EFI_SYSTEM_TABLE *)sys_config_table;
-    UINTN i;
+    rmc_uintn_t i;
     EFI_CONFIGURATION_TABLE *entry;
 
     if (!systab)
@@ -51,8 +51,9 @@ static void *get_smbios_entry(void * sys_config_table) {
 
 int rmc_get_fingerprint(void *sys_table, rmc_fingerprint_t *fp) {
     void *smbios_entry = NULL;
-    UINT64 smbios_struct_addr = 0;
-    UINT16 smbios_struct_len = 0;
+    rmc_uint64_t smbios_struct_addr = 0;
+    rmc_uint16_t smbios_struct_len = 0;
+    rmc_uint8_t *smbios_struct_start = NULL;
 
     if (!fp)
         return 1;
@@ -65,14 +66,17 @@ int rmc_get_fingerprint(void *sys_table, rmc_fingerprint_t *fp) {
     if (rsmp_get_smbios_strcut(smbios_entry, &smbios_struct_addr, &smbios_struct_len))
         return 1;
 
-    return rsmp_get_fingerprint_from_smbios_struct((BYTE *)smbios_struct_addr, fp);
+    /* To avoid compiler warning for 32 bit build */
+    smbios_struct_start += smbios_struct_addr;
+
+    return rsmp_get_fingerprint_from_smbios_struct(smbios_struct_start, fp);
 }
 
-int rmc_query_file_by_fp(rmc_fingerprint_t *fp, BYTE *db_blob, char *file_name, rmc_file_t *file) {
+int rmc_query_file_by_fp(rmc_fingerprint_t *fp, rmc_uint8_t *db_blob, char *file_name, rmc_file_t *file) {
     return query_policy_from_db(fp, db_blob, RMC_POLICY_BLOB, file_name, file);
 }
 
-int rmc_gimme_file(void *sys_table, BYTE *db_blob, char *file_name, rmc_file_t *file) {
+int rmc_gimme_file(void *sys_table, rmc_uint8_t *db_blob, char *file_name, rmc_file_t *file) {
     rmc_fingerprint_t fp;
 
     if (!sys_table || !db_blob || !file_name || !file)
diff --git a/src/lib/rmc_efi.h b/src/lib/rmc_efi.h
index a70f7c0..be7f3cb 100644
--- a/src/lib/rmc_efi.h
+++ b/src/lib/rmc_efi.h
@@ -6,9 +6,10 @@
  * configuration table to get SMBIOS data.
  *
  * We don't want to bring such dependency for rmc's sake to a
- * client which is based on a different EFI implementation.
+ * client which is based on a different EFI implementation or
+ * compile setup.
  *
- * We have to be more self-contained at this point...
+ * This header file shall be internally used in rmc.
  */
 
 #ifndef INC_RMC_EFI_H_
@@ -17,33 +18,33 @@
 #ifdef RMC_EFI
 #include <rmc_types.h>
 
-typedef unsigned long int UINTN;
-typedef uint64_t UINT64;
-typedef uint32_t UINT32;
-typedef uint16_t UINT16;
-typedef uint16_t CHAR16;
-typedef uint8_t UINT8;
+typedef unsigned long int rmc_uintn_t;
+typedef rmc_uint64_t rmc_uint64_t;
+typedef rmc_uint32_t rmc_uint32_t;
+typedef rmc_uint16_t rmc_uint16_t;
+typedef rmc_uint16_t rmc_uint16_t;
+typedef rmc_uint8_t rmc_uint8_t;
 
 typedef void * EFI_HANDLE;
 typedef struct {
-    UINT32 d1;
-    UINT16 d2;
-    UINT16 d3;
-    UINT8 d4[8];
+    rmc_uint32_t d1;
+    rmc_uint16_t d2;
+    rmc_uint16_t d3;
+    rmc_uint8_t d4[8];
 } EFI_GUID;
 
-/* Fake place holder for pointers */
+/* Pointers as place holders */
 typedef void * EFI_SIMPLE_TEXT_INPUT_PROTOCOL_P;
 typedef void * EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL_P;
 typedef void * EFI_RUNTIME_SERVICES_P;
 typedef void * EFI_BOOT_SERVICES_P;
 
 typedef struct {
-    UINT64 Signature;
-    UINT32 Revision;
-    UINT32 HeaderSize;
-    UINT32 CRC32;
-    UINT32 Reserved;
+    rmc_uint64_t Signature;
+    rmc_uint32_t Revision;
+    rmc_uint32_t HeaderSize;
+    rmc_uint32_t CRC32;
+    rmc_uint32_t Reserved;
 } EFI_TABLE_HEADER;
 
 typedef struct {
@@ -53,8 +54,8 @@ typedef struct {
 
 typedef struct {
     EFI_TABLE_HEADER Hdr;
-    CHAR16 *FirmwareVendor;
-    UINT32 FirmwareRevision;
+    rmc_uint16_t *FirmwareVendor;
+    rmc_uint32_t FirmwareRevision;
     EFI_HANDLE ConsoleInHandle;
     EFI_SIMPLE_TEXT_INPUT_PROTOCOL_P ConIn;
     EFI_HANDLE ConsoleOutHandle;
@@ -63,7 +64,7 @@ typedef struct {
     EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL_P StdErr;
     EFI_RUNTIME_SERVICES_P RuntimeServices;
     EFI_BOOT_SERVICES_P *BootServices;
-    UINTN NumberOfTableEntries;
+    rmc_uintn_t NumberOfTableEntries;
     EFI_CONFIGURATION_TABLE *ConfigurationTable;
 } EFI_SYSTEM_TABLE;
 #endif
diff --git a/src/rmc.c b/src/rmc.c
index 4086928..d4eb203 100644
--- a/src/rmc.c
+++ b/src/rmc.c
@@ -122,8 +122,8 @@ typedef enum read_fingerprint_state {
  */
 static int read_fingerprint_from_file(const char* pathname, rmc_fingerprint_t *fp, void **raw) {
     char *file = NULL;
-    size_t len = 0;
-    size_t idx = 0;
+    rmc_size_t len = 0;
+    rmc_size_t idx = 0;
     int i = 0;
     int ret = 1;
     read_fingerprint_state_t state = TYPE;
@@ -221,7 +221,7 @@ read_fp_done:
  */
 static rmc_file_t *read_policy_file(char *pathname, int type) {
     rmc_file_t *tmp = NULL;
-    size_t policy_len = 0;
+    rmc_size_t policy_len = 0;
     int ret;
     char *path_token;
 
@@ -309,7 +309,7 @@ static rmc_record_file_t *read_record_file(char *pathname) {
 int main(int argc, char **argv){
 
     int c;
-    uint16_t options = 0;
+    rmc_uint16_t options = 0;
     char *output_path = NULL;
     /* -C and -d could be present in a single command, with different database files specified.  */
     char *input_db_path_cap_c = NULL;
@@ -323,9 +323,9 @@ int main(int argc, char **argv){
     rmc_file_t *policy_files = NULL;
     rmc_record_file_t *record_files = NULL;
     void *raw_fp = NULL;
-    BYTE *db = NULL;
-    BYTE *db_c = NULL;
-    BYTE *db_d = NULL;
+    rmc_uint8_t *db = NULL;
+    rmc_uint8_t *db_c = NULL;
+    rmc_uint8_t *db_d = NULL;
     int ret = 1;
     int i;
     int arg_num = 0;
@@ -437,7 +437,7 @@ int main(int argc, char **argv){
 
     /* sanity check for -o */
     if (options & RMC_OPT_O) {
-        uint16_t opt_o = options & (RMC_OPT_CAP_D | RMC_OPT_CAP_R | RMC_OPT_CAP_F | RMC_OPT_CAP_B);
+        rmc_uint16_t opt_o = options & (RMC_OPT_CAP_D | RMC_OPT_CAP_R | RMC_OPT_CAP_F | RMC_OPT_CAP_B);
         if (!(opt_o)) {
             fprintf(stderr, "\nWRONG: Option -o cannot be applied without -B, -D, -R or -F\n\n");
             usage();
@@ -466,7 +466,7 @@ int main(int argc, char **argv){
     /* get cmdline */
     if (options & RMC_OPT_CAP_C) {
 
-        size_t db_len = 0;
+        rmc_size_t db_len = 0;
         rmc_fingerprint_t fp;
         rmc_file_t cmd_policy;
 
@@ -519,7 +519,7 @@ int main(int argc, char **argv){
         int record_idx = 0;
         rmc_record_file_t *record = NULL;
         rmc_record_file_t *current_record = NULL;
-        size_t db_len = 0;
+        rmc_size_t db_len = 0;
 
         /* if user doesn't provide pathname for output database, set a default value */
         if (output_path == NULL)
diff --git a/src/util/util.c b/src/util/util.c
index da63093..5482779 100644
--- a/src/util/util.c
+++ b/src/util/util.c
@@ -1,13 +1,13 @@
 #include <rmc_util.h>
 
-void *memset(void *s, BYTE c, size_t n) {
-    BYTE *p = (BYTE *)s;
+void *memset(void *s, rmc_uint8_t c, rmc_size_t n) {
+    rmc_uint8_t *p = (rmc_uint8_t *)s;
     while (n--)
         *p++ = c;
     return s;
 }
 
-int strncmp(const char *s1, const char *s2, size_t n) {
+int strncmp(const char *s1, const char *s2, rmc_size_t n) {
     while (n--) {
         if (*s1 == '\0' || *s1 != *s2)
             return *s1 - *s2;
@@ -18,9 +18,9 @@ int strncmp(const char *s1, const char *s2, size_t n) {
     return 0;
 }
 
-void *memcpy(void *d, const void *s, size_t n) {
-    BYTE *p = d;
-    BYTE *q = (BYTE *)s;
+void *memcpy(void *d, const void *s, rmc_size_t n) {
+    rmc_uint8_t *p = d;
+    rmc_uint8_t *q = (rmc_uint8_t *)s;
 
     while (n--)
         *p++ = *q++;
@@ -28,16 +28,16 @@ void *memcpy(void *d, const void *s, size_t n) {
     return d;
 }
 
-size_t strlen(const char *s) {
-    size_t ret = 0;
+rmc_size_t strlen(const char *s) {
+    rmc_size_t ret = 0;
 
     while (*s++ != '\0')
       ret++;
     return ret;
 }
 
-char *strncpy(char *d, const char *s, size_t n) {
-    size_t i;
+char *strncpy(char *d, const char *s, rmc_size_t n) {
+    rmc_size_t i;
 
     for (i = 0; i < n && s[i] != '\0'; i++)
         d[i] = s[i];
-- 
2.7.4


