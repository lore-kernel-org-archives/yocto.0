Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27466E00CC0; Tue, 22 Nov 2016 11:32:48 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 750E2E00CC0
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 11:32:42 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,682,1473145200"; d="scan'208";a="34448015"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by orsmga005.jf.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Nov 2016 11:35:45 -0800
Message-Id: <1479843349-195099-3-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
References: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
Subject: [PATCH 2/6][rmc] refactoring work (APIs, build dependency, ... etc)
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
X-List-Received-Date: Tue, 22 Nov 2016 19:32:48 -0000

This is a major re-work in rmc with several key changes:

To query board-specific data in a rmc database, developers
now can take advantage of new defined APIs, either using
single-action APIs for a better performance of multiple
queries or simply calling a double-action API, which is
sufficient to perform a query in one step, to reduce the
footprint in code at client side. (Refer to inc/rmc_api.h.)

rmc tool itself is modified to use new APIs.

Memory map and allocated data can be released after use in user
space. In EFI context, rmc doesn't allocate memory for anything
returned.

In EFI build, necessary data types are defined in rmc in order
to get rid of dependency on any EFI implementation.

Miscellaneous fixes are also included when we move the pieces
around.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 Makefile              |   6 +-
 Makefile.efi          |  24 +---
 inc/rmc_api.h         | 158 ++++++++++++++++++++++++
 inc/rmc_types.h       |  20 ++-
 inc/rmcl.h            |  10 +-
 src/lib/api.c         | 327 ++++++++++++++++++++++++++++++++++++++++++++++++++
 src/lib/common/rmcl.c |   6 +-
 src/lib/common/rsmp.c |   8 +-
 src/lib/efi_api.c     |  88 ++++++++++++++
 src/lib/rmc_efi.h     |  70 +++++++++++
 src/rmc.c             | 325 ++++++-------------------------------------------
 11 files changed, 718 insertions(+), 324 deletions(-)
 create mode 100644 inc/rmc_api.h
 create mode 100644 src/lib/api.c
 create mode 100644 src/lib/efi_api.c
 create mode 100644 src/lib/rmc_efi.h

diff --git a/Makefile b/Makefile
index 365dfac..c5e1d11 100644
--- a/Makefile
+++ b/Makefile
@@ -5,10 +5,10 @@ TOPDIR = $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)
 RMC_TOOL_SRC := $(wildcard src/*.c)
 RMC_TOOL_OBJ := $(patsubst %.c,%.o,$(RMC_TOOL_SRC))
 
-RMC_LIB_SRC := $(wildcard src/lib/common/*.c)
+RMC_LIB_SRC := $(wildcard src/lib/common/*.c) src/lib/api.c
 RMC_LIB_OBJ := $(patsubst %.c,%.o,$(RMC_LIB_SRC))
 
-RMC_INSTALL_HEADERS := inc/rmcl.h inc/rsmp.h
+RMC_INSTALL_HEADERS := $(wildcard inc/*.h)
 
 RMC_INSTALL_PREFIX := /usr
 
@@ -16,7 +16,7 @@ RMC_INSTALL_BIN_PATH := $(RMC_INSTALL_PREFIX)/bin/
 
 RMC_INSTALL_LIB_PATH := $(RMC_INSTALL_PREFIX)/lib/
 
-RMC_INSTALL_HEADER_PATH := $(RMC_INSTALL_PREFIX)/include/
+RMC_INSTALL_HEADER_PATH := $(RMC_INSTALL_PREFIX)/include/rmc/
 
 ALL_OBJS := $(RMC_TOOL_OBJ) $(RMC_LIB_OBJ)
 
diff --git a/Makefile.efi b/Makefile.efi
index a94b964..73a7ac1 100644
--- a/Makefile.efi
+++ b/Makefile.efi
@@ -2,34 +2,18 @@
 
 TOPDIR = $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)
 
-RMC_LIB_SRC := $(wildcard src/lib/common/*.c) \
+RMC_LIB_SRC := $(wildcard src/lib/common/*.c) src/lib/efi_api.c \
                $(wildcard src/util/*.c)
 
 RMC_LIB_OBJ := $(patsubst %.c,%.efi.o,$(RMC_LIB_SRC))
 
-RMC_INSTALL_HEADERS := inc/rmcl.h inc/rmc_types.h inc/rsmp.h inc/rmc_util.h
 RMC_INSTALL_LIBS := src/lib/librmcefi.a
 
-ifeq ($(strip $(RMC_EFI_ARCH)),)
-$(error "Missing: You must specify RMC_EFI_ARCH (ia32 or x86_64) for host")
-else ifeq ($(strip $(RMC_EFI_ARCH)),ia32)
-RMC_EFI_ARCH := ia32
-else ifeq ($(strip $(RMC_EFI_ARCH)),x86_64)
-RMC_EFI_ARCH := x86_64
-else
-$(error "Unknown RMC_EFI_ARCH $(RMC_EFI_ARCH): it must be ia32 or x86_64")
-endif
-
-ifeq ($(strip $(RMC_EFI_HEADER_PREFIX)),)
-RMC_EFI_HEADER_PREFIX := /usr/include/efi/
-endif
-
 RMC_INSTALL_PREFIX := /usr
-RMC_INSTALL_HEADER_PATH := $(RMC_INSTALL_PREFIX)/include/rmc/efi/
+
 RMC_INSTALL_LIB_PATH := $(RMC_INSTALL_PREFIX)/lib/
 
-CFLAGS := -DRMC_EFI -Wall -O2 -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90 \
-	   -I$(RMC_EFI_HEADER_PREFIX) -I$(RMC_EFI_HEADER_PREFIX)/$(RMC_EFI_ARCH) $(RMC_CFLAGS)
+CFLAGS := -DRMC_EFI -Wall -O2 -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90 $(RMC_CFLAGS)
 
 all: librmcefi
 
@@ -45,7 +29,5 @@ clean:
 .PHONY: clean librmcefi
 
 install:
-	@mkdir -p $(RMC_INSTALL_HEADER_PATH)
-	@install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
 	@mkdir -p $(RMC_INSTALL_LIB_PATH)
 	@install -m 644 $(RMC_INSTALL_LIBS) $(RMC_INSTALL_LIB_PATH)
diff --git a/inc/rmc_api.h b/inc/rmc_api.h
new file mode 100644
index 0000000..2d1e05b
--- /dev/null
+++ b/inc/rmc_api.h
@@ -0,0 +1,158 @@
+/* Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
+ *
+ * header file of RMC APIs for clients to call at run time
+ */
+
+#ifndef INC_RMC_API_H_
+#define INC_RMC_API_H_
+
+#include <rmcl.h>
+#include <rsmp.h>
+
+/*
+ * Introduction: RMC APIs
+ *
+ * RMC clients like programs or libraries call these APIs to query files specific to
+ * the type of board on client software at runtime. The APIs are grouped by contexts
+ * (Linux user space or UEFI). API are designed to provide very similar forms and
+ * effects across contexts, in order to ease the learning curve at client side. But
+ * please refer to the description for an API to learn the difference in behaviors.
+ *
+ * Single VS double-action:
+ * A Single-action API only performs one step of the whole procedure to query files.
+ * That means you have to call them in a series of statements. But you have a chance
+ * to reuse intermediate data (e.g. fingerprint) without bothering a previous step in
+ * the following queries. This should bring some advantage on performance when a client
+ * needs to perform multiple queries.
+ *
+ * Double-action APIs can be regarded as one-stop wrappers of single-action APIs. One
+ * function call is enough to perform a query with basic parameters provided by callers.
+ * They help to reduce the size of change in code when a client software only needs to
+ * fetch a file and then do little with RMC in the rest of live cycle.
+ *
+ * Eventually, calling all single-action APIs one by one has the same effect as calling
+ * a double action API for a single query.
+ *
+ * A group of helper APIs is also provided specific for a context if they are needed by
+ * clients.
+ */
+
+#ifndef RMC_EFI
+/* 1 - APIs for Linux user space */
+
+/* 1.1 - Single-action APIs */
+
+/* get board's RMC fingerprint
+ * (out) fp: fingerprint data to be filled. Allocated internal data in
+ *           the returned fp can be freed with rmc_free_fingerprint()
+ *           if the call successes (ret = 0)
+ *           But caller needs to allocate and free memory for fp structure itself.
+ * return: 0 for success, non-zero for failures.
+ */
+extern int rmc_get_fingerprint(rmc_fingerprint_t *fp);
+
+/* query a file in a RMC database file associated to a provided fingerprint
+ * (in) fp: fingerprint generated by rmc_get_fingerprint() for the running board
+ * (in) db_pathname: The path and file name of a RMC database file generated by RMC tool
+ * (in) file_name: The name of a file blob to be queried in the database
+ * (out) file: Holds the content of successfully retrieved from the database. Caller is
+ *             responsible to free the _internal_ data allocated in file by calling
+ *             rmc_free_file();
+ * return: 0 for success, non-zero for failures.
+ */
+extern int rmc_query_file_by_fp(rmc_fingerprint_t *fp, char *db_pathname, char *file_name, rmc_file_t *file);
+
+/* 1.2 - Double-action API */
+
+/* query a file in a RMC database file associated to the board we run on
+ * (in) db_pathname: The path and file name of a RMC database file generated by RMC tool
+ * (in) file_name: The name of a file blob to be queried in the database
+ * (out) file: Holds the content of successfully retrieved from the database. Caller is
+ *             responsible to free the _internal_ data allocated in file by calling
+ *             rmc_free_file();
+ * return: 0 for success, non-zero for failures.
+ */
+extern int rmc_gimme_file(char* db_pathname, char *file_name, rmc_file_t *file);
+
+/* 1.3 - Helper APIs */
+
+/* Free allocated data referred in a fingerprint
+ * Note: It does NOT free memory of fignerprint itself
+ * (in) fp: fingerprint structure allocated by caller
+ */
+extern void rmc_free_fingerprint(rmc_fingerprint_t *fp);
+
+/* Free allocated data referenced in a RMC file structure
+ * Note: It does NOT free memory of RMC file structure itself
+ * (in) file: RMC file structure
+ */
+extern void rmc_free_file(rmc_file_t *fp);
+
+/*
+ * utility function to read a file into mem. This function allocates memory
+ * (in)  pathname   : file pathname to read
+ * (out) data       : address of point that points to the data read
+ * (out) len        : pointer of total number of bytes read from file
+ *
+ * return           : 0 for success, non-zeor for failures
+ */
+extern int read_file(const char *pathname, char **data, size_t* len);
+
+/*
+ * utility function to write data into file.
+ * (in) pathname   : file pathname to write
+ * (in) data       : pointer of data buffer
+ * (in) len        : total number of bytes to write
+ * (in) append     : 0 to write from file's beginning, non-zero to write data from file's end.
+ *
+ * return          : 0 when successfully write all data into file, non-zeor for failures
+ */
+int write_file(const char *pathname, void *data, size_t len, int append);
+
+#else
+/* 2 - API for UEFI context */
+
+/* EFI applications are using different UEFI implementations and libraries. For example, APIs
+ * provided by gun-efi have equivalent but different interfaces in grub-efi's own UEFI code.
+ * We have to leave some low-level work (file operations, allocate/free memory, etc) to
+ * callers at this point until we have a universal EFI solution in RMC to achieve the
+ * convenience in Linux user space.
+ *
+ * RMC UEFI APIs do NOT allocate and memory. The returned data pointers actually reference to
+ * the addresses in system tables and memory regions of a read database file. Generally, these
+ * regions should be treated as "read-only".
+ */
+
+/* 2.1 - Single-action APIs */
+
+/* get board's RMC fingerprint
+ * (in) sys_table: address of UEFI system configuration table
+ * (out) fp: fingerprint data to be filled.
+ * return: 0 for success, non-zero for failures.
+ */
+extern int rmc_get_fingerprint(void *sys_table, rmc_fingerprint_t *fp);
+
+/* query a file in a RMC database file associated to a provided fingerprint
+ * (in) fp: fingerprint from rmc_get_fingerprint()
+ * (in) db_blob: memory chunk of raw data of whole database provided by callers.
+ * (in) file_name: The name of a file blob to be queried in the database
+ * (out) file: Holds the content of successfully retrieved from the database.
+ *
+ * return: 0 for success, non-zero for failures.
+ */
+extern int rmc_query_file_by_fp(rmc_fingerprint_t *fp, unsigned char *db_blob, char *file_name, rmc_file_t *file);
+
+/* 2.2 Double-action APIs */
+
+/* query a file in a RMC database file associated to the board we run on
+ * (in) sys_table: address of UEFI system configuration table
+ * (in) db_blob: memory chunk of raw data of whole database provided by callers.
+ * (in) file_name: The name of a file blob to be queried in the database
+ * (out) file: Holds the content of successfully retrieved from the database.
+ *
+ * return: 0 for success, non-zero for failures.
+ */
+extern int rmc_gimme_file(void *sys_table, unsigned char *db_blob, char *file_name, rmc_file_t *file);
+
+#endif
+#endif /* INC_RMC_API_H_ */
diff --git a/inc/rmc_types.h b/inc/rmc_types.h
index 9154231..e960a7e 100644
--- a/inc/rmc_types.h
+++ b/inc/rmc_types.h
@@ -12,10 +12,28 @@
 #include <stddef.h>
 #include <string.h>
 #else
-#include <efi.h>
 /* we specify -nostdinc in C flag and provide these in rmc
  * for EFI applications that don't want to use standard headers.
  */
+#ifdef __GNUC__
+#ifndef NULL
+#define NULL 0
+#endif
+typedef unsigned int            uint32_t;
+typedef unsigned short int      uint16_t;
+typedef unsigned char           uint8_t;
+#ifdef __x86_64__
+typedef unsigned long int       uint64_t;
+#elif defined(__i386__)
+__extension__
+typedef unsigned long long int  uint64_t;
+#else
+#error "rmc only supports 32 and 64 bit x86 platforms"
+#endif
+#else
+#error "rmc needs gcc compiler"
+#endif
+
 typedef unsigned long size_t;
 typedef long ssize_t;
 #endif
diff --git a/inc/rmcl.h b/inc/rmcl.h
index a7aa2a2..52b9964 100644
--- a/inc/rmcl.h
+++ b/inc/rmcl.h
@@ -113,13 +113,13 @@ typedef struct rmc_meta_header {
  */
 #define RMC_POLICY_CMDLINE 0
 #define RMC_POLICY_BLOB 1
-typedef struct rmc_policy_file {
+typedef struct rmc_file {
     BYTE type;              /* RMC_POLICY_CMDLINE or RMC_POLICY_BLOB*/
     char *cmdline_name;     /* file name of blob (type 1) or command line fragment (type 0) */
-    struct rmc_policy_file *next;  /* next rmc policy file, or null as terminator for the last element */
+    struct rmc_file *next;  /* next rmc file, or null as terminator for the last element */
     size_t blob_len;         /* number of bytes of blob, excluding length of name */
     BYTE *blob;             /* blob of policy file, treated as binary, UNNECESSARILY Null terminated */
-} rmc_policy_file_t;
+} rmc_file_t;
 
 /*
  * output of a rmc record file generated by rmcl.
@@ -140,7 +140,7 @@ typedef struct rmc_record_file {
  * (out) rmc_record     : generated rmc record blob with its length
  * (ret) 0 for success, RMC error code for failures. content of rmc record is undefined for failure.
  */
-extern int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_policy_file_t *policy_files, rmc_record_file_t *record_file);
+extern int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_file_t *policy_files, rmc_record_file_t *record_file);
 
 /*
  * Generate RMC database blob (This function allocate memory)
@@ -165,6 +165,6 @@ extern int rmcl_generate_db(rmc_record_file_t *record_files, BYTE **rmc_db, size
  * return               : 0 when rmcl found a meta in record which has matched signature of fingerprint. non-zero for failures. Content of
  *                        policy is not determined when non-zero is returned.
  */
-extern int query_policy_from_db(rmc_fingerprint_t *fingerprint, BYTE *rmc_db, BYTE type, char *blob_name, rmc_policy_file_t *policy);
+extern int query_policy_from_db(rmc_fingerprint_t *fingerprint, BYTE *rmc_db, BYTE type, char *blob_name, rmc_file_t *policy);
 
 #endif /* INC_RMCL_H_ */
diff --git a/src/lib/api.c b/src/lib/api.c
new file mode 100644
index 0000000..a3abe63
--- /dev/null
+++ b/src/lib/api.c
@@ -0,0 +1,327 @@
+/* Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
+ *
+ * RMC API implementation for Linux user space
+ */
+
+#include <stdio.h>
+#include <unistd.h>
+#include <errno.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+#include <sys/mman.h>
+
+#include <rmcl.h>
+#include <rsmp.h>
+
+#define EFI_SYSTAB_PATH "/sys/firmware/efi/systab"
+#define SYSTAB_LEN 4096         /* assume 4kb is enough...*/
+
+int read_file(const char *pathname, char **data, size_t* len) {
+    int fd = -1;
+    struct stat s;
+    off_t total = 0;
+    void *buf = NULL;
+    size_t byte = 0;
+    ssize_t tmp = 0;
+
+    *data = NULL;
+    *len = 0;
+
+    if (stat(pathname, &s) < 0) {
+        perror("rmc: failed to get file stat");
+        return 1;
+    }
+
+    total = s.st_size;
+
+    if ((fd = open(pathname, O_RDONLY)) < 0) {
+        perror("rmc: failed to open file to read");
+        return 1;
+    }
+
+    buf = malloc(total);
+
+    if (!buf) {
+        perror("rmc: failed to alloc read buf");
+        return 1;
+    }
+
+    while (byte < total) {
+        if ((tmp = read(fd, buf + byte, total - byte)) < 0) {
+            perror("rmc: failed to read file");
+            free(buf);
+            close(fd);
+            return 1;
+        }
+
+        byte += (size_t)tmp;
+    }
+
+    *data = buf;
+    *len = byte;
+
+    close(fd);
+    return 0;
+}
+
+int write_file(const char *pathname, void *data, size_t len, int append) {
+    int fd = -1;
+    ssize_t tmp = 0;
+    size_t total = 0;
+    int open_flag = O_WRONLY|O_CREAT;
+
+    if (!data || !pathname)
+        return 1;
+
+    if (append)
+        open_flag |= O_APPEND;
+    else
+        open_flag |= O_TRUNC;
+
+    if ((fd = open(pathname, open_flag, 0644)) < 0) {
+        perror("rmc: failed to open file to read");
+        return 1;
+    }
+
+    while (total < len) {
+        if ((tmp = write(fd, (BYTE *)data + total, len - total)) < 0) {
+            perror("rmc: failed to write file");
+            close(fd);
+            return 1;
+        }
+
+        total += (size_t)tmp;
+    }
+
+    close(fd);
+
+    return 0;
+}
+
+/*
+ * Read smbios entry table address from sysfs
+ * return 0 when success
+ */
+static int get_smbios_entry_table_addr(uint64_t* addr){
+
+    char *entry_buf = NULL;
+    char *tmp;
+    FILE *f;
+
+    if ((f = fopen(EFI_SYSTAB_PATH, "r")) == NULL) {
+        perror("rmc: Cannot get systab");
+        return 1;
+    }
+
+    entry_buf = malloc(SYSTAB_LEN);
+
+    if (!entry_buf) {
+        perror("cannot allocate entry buffer");
+        goto malloc_err;
+    }
+
+    while (fgets(entry_buf, SYSTAB_LEN, f) != NULL) {
+
+        if (strncmp(entry_buf, "SMBIOS", 6))
+            continue;
+
+        /* found SMBIOS entry table */
+        if ((tmp = strstr(&entry_buf[6], "=")) == NULL)
+            continue;
+
+        errno = 0;
+        *addr = strtoull(++tmp, NULL,16);
+        if (errno) {
+            perror("strtoll() falled to convert address");
+            *addr = 0;
+            continue;
+        } else
+            break;
+    }
+
+    free(entry_buf);
+
+malloc_err:
+    fclose(f);
+
+    return 0;
+
+}
+
+void rmc_free_fingerprint(rmc_fingerprint_t *fp) {
+    int fp_idx;
+
+    if(!fp)
+        return;
+
+    for (fp_idx=0; fp_idx < RMC_FINGER_NUM; fp_idx++)
+        free(fp->rmc_fingers[fp_idx].value);
+}
+
+void rmc_free_file(rmc_file_t *file) {
+    free(file->blob);
+}
+
+int rmc_get_fingerprint(rmc_fingerprint_t *fp) {
+
+    int fd = -1;
+    uint64_t entry_addr = 0;
+    uint8_t *smbios_entry_map = NULL;
+    long pg_size = 0;
+    long pg_num = 0;
+    uint8_t *smbios_entry_start = NULL;
+    size_t entry_map_len = 0;
+    size_t struct_map_len = 0;
+    WORD smbios_struct_len = 0;
+    uint64_t smbios_struct_addr = 0;
+    uint8_t *smbios_struct_map = NULL;
+    uint8_t *smbios_struct_start = NULL;
+    int ret = 1;
+    int i;
+    int j;
+
+    if (!fp)
+        return 1;
+
+    /* get SMBIOS entry address */
+
+    if (get_smbios_entry_table_addr(&entry_addr)) {
+        fprintf(stderr, "Cannot get valid entry tab address\n");
+        return 1;
+    }
+
+    if ((fd = open("/dev/mem", O_RDONLY)) < 0) {
+        perror("cannot open /dev/mem");
+        return 1;
+    }
+
+    pg_size = sysconf(_SC_PAGESIZE);
+    pg_num = entry_addr / pg_size;
+    entry_map_len = entry_addr % pg_size + SMBIOS_ENTRY_TAB_LEN;
+
+    smbios_entry_map = mmap(NULL, entry_map_len, PROT_READ, MAP_SHARED, fd,
+            pg_num * pg_size);
+
+    if (smbios_entry_map == MAP_FAILED) {
+        perror("mmap for entry table on /dev/mem failed");
+        goto err;
+    }
+
+    smbios_entry_start = smbios_entry_map + entry_addr % pg_size;
+
+    /* parse entry point struct, call rsmp */
+    ret = rsmp_get_smbios_strcut(smbios_entry_start, &smbios_struct_addr,
+            &smbios_struct_len);
+
+    if (munmap(smbios_entry_map, entry_map_len) < 0)
+        perror("munmap smbios entry failed, ignore");
+
+    if (ret) {
+        fprintf(stderr, "Cannot parse smbios entry tab\n");
+        goto err;
+    }
+
+    /* mmap physical memory region of smbios struct table */
+    pg_num = smbios_struct_addr / pg_size;
+    struct_map_len = smbios_struct_addr % pg_size + smbios_struct_len;
+
+    smbios_struct_map = mmap(NULL, struct_map_len, PROT_READ, MAP_SHARED, fd,
+            pg_num * pg_size);
+
+    if (smbios_struct_map == MAP_FAILED) {
+        perror("mmap for struct table on /dev/mem failed");
+        goto err;
+    }
+
+    smbios_struct_start = smbios_struct_map + smbios_struct_addr % pg_size;
+
+    /* get fingerprint, call rsmp */
+    ret = rsmp_get_fingerprint_from_smbios_struct(smbios_struct_start, fp);
+
+    if (ret) {
+        fprintf(stderr, "Cannot get board's fingerprint\n");
+        goto err_unmap;
+    }
+
+    /* what rsmp returned for a finger's value is on stack. We duplicate them here
+     * before unmap the memory and caller can free them with rmc_free_fingerprint() later
+     * The other fields are hardcoded in initialize_fingerprint(), not in mapped region,
+     * so we don't copy them.
+     */
+    for (i = 0; i < RMC_FINGER_NUM; i++) {
+        fp->rmc_fingers[i].value = strdup(fp->rmc_fingers[i].value);
+        if (!fp->rmc_fingers[i].value) {
+            perror("insufficient memory for obtained fingerprint");
+            for (j = 0; j < i; j++)
+                free(fp->rmc_fingers[j].value);
+            ret = 1;
+            break;
+        }
+    }
+
+err_unmap:
+    if (munmap(smbios_struct_map, struct_map_len) < 0)
+        perror("munmap smbios struct failed, ignore");
+
+err:
+    close(fd);
+
+    return ret;
+}
+
+int rmc_query_file_by_fp(rmc_fingerprint_t *fp, char *db_pathname, char *file_name, rmc_file_t *file) {
+    BYTE *db = NULL;
+    size_t db_len = 0;
+    int ret = 1;
+    BYTE *blob = NULL;
+
+    /* ToDo: We should use file seeking when traversing a database
+     * file instead of load whole DB into mem.
+     *
+     * read rmc database file
+     */
+    if (read_file(db_pathname, (char **)&db, &db_len)) {
+        fprintf(stderr, "Failed to read database file for command line\n\n");
+        return ret;
+    }
+
+    /* query policy in database */
+    if(query_policy_from_db(fp, db, RMC_POLICY_BLOB, file_name, file))
+        goto free_db;
+
+    /* the returned file blob is actually in db memory region,
+     * we need to copy the data to a buffer which will be returned
+     *  to the caller, so that we can free the db memory safely here
+     */
+    blob = malloc(file->blob_len);
+
+    if (blob) {
+        memcpy(blob, file->blob, file->blob_len);
+        file->blob = blob;
+        ret = 0;
+    } else
+        perror("insufficient memory for the queried file");
+
+free_db:
+    free(db);
+
+    return ret;
+}
+
+int rmc_gimme_file(char* db_pathname, char *file_name, rmc_file_t *file) {
+    rmc_fingerprint_t fp;
+    int ret = 1;
+
+    /* get board fingerprint */
+    if (rmc_get_fingerprint(&fp)) {
+        fprintf(stderr, "-B Failed to generate fingerprint for this board\n\n");
+        return ret;
+    }
+
+    ret = rmc_query_file_by_fp(&fp, db_pathname, file_name, file);
+
+    rmc_free_fingerprint(&fp);
+
+    return ret;
+}
diff --git a/src/lib/common/rmcl.c b/src/lib/common/rmcl.c
index ffb6bd6..1e5839e 100644
--- a/src/lib/common/rmcl.c
+++ b/src/lib/common/rmcl.c
@@ -59,9 +59,9 @@ static int generate_signature_from_fingerprint(rmc_fingerprint_t *fingerprint, r
 }
 
 #ifndef RMC_EFI
-int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_policy_file_t *policy_files, rmc_record_file_t *record_file) {
+int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_file_t *policy_files, rmc_record_file_t *record_file) {
 
-    rmc_policy_file_t *tmp = NULL;
+    rmc_file_t *tmp = NULL;
     QWORD cmd_len = 0;
     size_t record_len = 0;
     BYTE *blob = NULL;
@@ -198,7 +198,7 @@ static int match_record(rmc_record_header_t *r, rmc_signature_t* sig) {
     return strncmp((const char *)r->signature.raw, (const char *)sig->raw, sizeof(r->signature.raw));
 }
 
-int query_policy_from_db(rmc_fingerprint_t *fingerprint, BYTE *rmc_db, BYTE type, char *blob_name, rmc_policy_file_t *policy) {
+int query_policy_from_db(rmc_fingerprint_t *fingerprint, BYTE *rmc_db, BYTE type, char *blob_name, rmc_file_t *policy) {
     rmc_meta_header_t meta_header;
     rmc_db_header_t *db_header = NULL;
     rmc_record_header_t record_header;
diff --git a/src/lib/common/rsmp.c b/src/lib/common/rsmp.c
index cd2ea28..a112537 100644
--- a/src/lib/common/rsmp.c
+++ b/src/lib/common/rsmp.c
@@ -82,11 +82,11 @@ int rsmp_get_fingerprint_from_smbios_struct(BYTE *addr, rmc_fingerprint_t *fp){
     initialize_fingerprint(fp);
 
     while (header->type != END_OF_TABLE_TYPE) {
-       for (fp_idx=0; fp_idx < RMC_FINGER_NUM; fp_idx++)
-           if (header->type == fp->rmc_fingers[fp_idx].type)
-               fp->rmc_fingers[fp_idx].value = (char*)get_string_from_struct_table(header, fp->rmc_fingers[fp_idx].offset);
+        for (fp_idx = 0; fp_idx < RMC_FINGER_NUM; fp_idx++)
+            if (header->type == fp->rmc_fingers[fp_idx].type)
+                fp->rmc_fingers[fp_idx].value = (char*)get_string_from_struct_table(header, fp->rmc_fingers[fp_idx].offset);
 
-       header = (smbios_struct_hdr_t *)forward_to_next_struct_table(header);
+        header = (smbios_struct_hdr_t *) forward_to_next_struct_table(header);
     }
 
     return 0;
diff --git a/src/lib/efi_api.c b/src/lib/efi_api.c
new file mode 100644
index 0000000..6ce8733
--- /dev/null
+++ b/src/lib/efi_api.c
@@ -0,0 +1,88 @@
+/* Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
+ *
+ * RMC API implementation for EFI context
+ */
+
+
+#include <rmcl.h>
+#include <rsmp.h>
+#include "rmc_efi.h"
+
+static EFI_GUID smbios3_guid = { 0xf2fd1544, 0x9794, 0x4a2c, \
+                               {0x99, 0x2e, 0xe5, 0xbb, 0xcf, 0x20, 0xe3, 0x94}};
+static EFI_GUID smbios_guid = {0xeb9d2d31,0x2d88,0x11d3, \
+                              {0x9a, 0x16, 0x00, 0x90, 0x27, 0x3f, 0xc1, 0x4d}};
+/* Compare if two GUIDs
+ * return: 0 when they are identical
+ */
+static int compare_guid (EFI_GUID *guid1, EFI_GUID *guid2) {
+    return (guid1->d1 - guid2->d1 \
+            || guid1->d2 - guid2->d2 \
+            || guid1->d3 - guid2->d3 \
+            || guid1->d4[0] - guid2->d4[0] \
+            || guid1->d4[1] - guid2->d4[1] \
+            || guid1->d4[2] - guid2->d4[2] \
+            || guid1->d4[3] - guid2->d4[3] \
+            || guid1->d4[4] - guid2->d4[4] \
+            || guid1->d4[5] - guid2->d4[5] \
+            || guid1->d4[6] - guid2->d4[6] \
+            || guid1->d4[7] - guid2->d4[7] \
+    );
+}
+
+static void *get_smbios_entry(void * sys_config_table) {
+    EFI_SYSTEM_TABLE *systab = (EFI_SYSTEM_TABLE *)sys_config_table;
+    UINTN i;
+    EFI_CONFIGURATION_TABLE *entry;
+
+    if (!systab)
+        return NULL;
+
+    entry = systab->ConfigurationTable;
+
+    for (i = 0; i < systab->NumberOfTableEntries && entry; i++, entry++) {
+        if (!compare_guid(&smbios3_guid, &entry->VendorGuid) \
+            || !compare_guid(&smbios_guid, &entry->VendorGuid))
+            return entry->VendorTable;
+    }
+
+    return NULL;
+}
+
+int rmc_get_fingerprint(void *sys_table, rmc_fingerprint_t *fp) {
+    void *smbios_entry = NULL;
+    UINT64 smbios_struct_addr = 0;
+    UINT16 smbios_struct_len = 0;
+
+    if (!fp)
+        return 1;
+
+    smbios_entry = get_smbios_entry(sys_table);
+
+    if (!smbios_entry)
+        return 1;
+
+    if (rsmp_get_smbios_strcut(smbios_entry, &smbios_struct_addr, &smbios_struct_len))
+        return 1;
+
+    return rsmp_get_fingerprint_from_smbios_struct((BYTE *)smbios_struct_addr, fp);
+}
+
+int rmc_query_file_by_fp(rmc_fingerprint_t *fp, BYTE *db_blob, char *file_name, rmc_file_t *file) {
+    return query_policy_from_db(fp, db_blob, RMC_POLICY_BLOB, file_name, file);
+}
+
+int rmc_gimme_file(void *sys_table, BYTE *db_blob, char *file_name, rmc_file_t *file) {
+    rmc_fingerprint_t fp;
+
+    if (!sys_table || !db_blob || !file_name || !file)
+        return 1;
+
+    if (rmc_get_fingerprint(sys_table, &fp))
+        return 1;
+
+    if (rmc_query_file_by_fp(&fp, db_blob, file_name, file))
+        return 1;
+    else
+        return 0;
+}
diff --git a/src/lib/rmc_efi.h b/src/lib/rmc_efi.h
new file mode 100644
index 0000000..a70f7c0
--- /dev/null
+++ b/src/lib/rmc_efi.h
@@ -0,0 +1,70 @@
+/* Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
+ *
+ * EFI Definitions
+ * It doesn't mean we have an EFI implementation in RMC.
+ * We only provide what we need for EFI work (e.g. parsing sys
+ * configuration table to get SMBIOS data.
+ *
+ * We don't want to bring such dependency for rmc's sake to a
+ * client which is based on a different EFI implementation.
+ *
+ * We have to be more self-contained at this point...
+ */
+
+#ifndef INC_RMC_EFI_H_
+#define INC_RMC_EFI_H_
+
+#ifdef RMC_EFI
+#include <rmc_types.h>
+
+typedef unsigned long int UINTN;
+typedef uint64_t UINT64;
+typedef uint32_t UINT32;
+typedef uint16_t UINT16;
+typedef uint16_t CHAR16;
+typedef uint8_t UINT8;
+
+typedef void * EFI_HANDLE;
+typedef struct {
+    UINT32 d1;
+    UINT16 d2;
+    UINT16 d3;
+    UINT8 d4[8];
+} EFI_GUID;
+
+/* Fake place holder for pointers */
+typedef void * EFI_SIMPLE_TEXT_INPUT_PROTOCOL_P;
+typedef void * EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL_P;
+typedef void * EFI_RUNTIME_SERVICES_P;
+typedef void * EFI_BOOT_SERVICES_P;
+
+typedef struct {
+    UINT64 Signature;
+    UINT32 Revision;
+    UINT32 HeaderSize;
+    UINT32 CRC32;
+    UINT32 Reserved;
+} EFI_TABLE_HEADER;
+
+typedef struct {
+    EFI_GUID VendorGuid;
+    void *VendorTable;
+} EFI_CONFIGURATION_TABLE;
+
+typedef struct {
+    EFI_TABLE_HEADER Hdr;
+    CHAR16 *FirmwareVendor;
+    UINT32 FirmwareRevision;
+    EFI_HANDLE ConsoleInHandle;
+    EFI_SIMPLE_TEXT_INPUT_PROTOCOL_P ConIn;
+    EFI_HANDLE ConsoleOutHandle;
+    EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL_P ConOut;
+    EFI_HANDLE StandardErrorHandle;
+    EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL_P StdErr;
+    EFI_RUNTIME_SERVICES_P RuntimeServices;
+    EFI_BOOT_SERVICES_P *BootServices;
+    UINTN NumberOfTableEntries;
+    EFI_CONFIGURATION_TABLE *ConfigurationTable;
+} EFI_SYSTEM_TABLE;
+#endif
+#endif /* INC_RMC_EFI_H_ */
diff --git a/src/rmc.c b/src/rmc.c
index ef6f6df..4086928 100644
--- a/src/rmc.c
+++ b/src/rmc.c
@@ -10,16 +10,8 @@
 #include <stdio.h>
 #include <unistd.h>
 #include <ctype.h>
-#include <rmcl.h>
-#include <rsmp.h>
-#include <sys/types.h>
-#include <sys/stat.h>
 #include <fcntl.h>
-#include <errno.h>
-#include <sys/types.h>
-#include <sys/stat.h>
-#include <sys/mman.h>
-
+#include <rmc_api.h>
 
 #define USAGE "RMC (Runtime Machine configuration) Tool\n" \
     "NOTE: Most of usages require root permission (sudo)\n" \
@@ -68,253 +60,10 @@
 #define RMC_OPT_B       (1 << 8)
 #define RMC_OPT_D       (1 << 9)
 
-#define EFI_SYSTAB_PATH "/sys/firmware/efi/systab"
-#define SYSTAB_LEN 4096         /* assume 4kb is enough...*/
-
-
-/*
- * utility function to read a file into mem. This function allocates memory
- * (in)  pathname   : file pathname to read
- * (out) data       : address of point that points to the data read
- * (out) len        : pointer of total number of bytes read from file
- *
- * return           : 0 for success, non-zeor for failures
- */
-static int read_file(const char *pathname, char **data, size_t* len) {
-    int fd = -1;
-    struct stat s;
-    off_t total = 0;
-    void *buf = NULL;
-    size_t byte = 0;
-    ssize_t tmp = 0;
-
-    *data = NULL;
-    *len = 0;
-
-    if (stat(pathname, &s) < 0) {
-        perror("rmc: failed to get file stat");
-        return 1;
-    }
-
-    total = s.st_size;
-
-    if ((fd = open(pathname, O_RDONLY)) < 0) {
-        perror("rmc: failed to open file to read");
-        return 1;
-    }
-
-    buf = malloc(total);
-
-    if (!buf) {
-        perror("rmc: failed to alloc read buf");
-        return 1;
-    }
-
-    while (byte < total) {
-        if ((tmp = read(fd, buf + byte, total - byte)) < 0) {
-            perror("rmc: failed to read file");
-            free(buf);
-            close(fd);
-            return 1;
-        }
-
-        byte += (size_t)tmp;
-    }
-
-    *data = buf;
-    *len = byte;
-
-    close(fd);
-    return 0;
-}
-
-/*
- * utility function to write data into file.
- * (in) pathname   : file pathname to write
- * (in) data       : pointer of data buffer
- * (in) len        : total number of bytes to write
- * (in) append     : 0 to write from file's beginning, non-zero to write data from file's end.
- *
- * return          : 0 when successfully write all data into file, non-zeor for failures
- */
-static int write_file(const char *pathname, void *data, size_t len, int append) {
-    int fd = -1;
-    ssize_t tmp = 0;
-    size_t total = 0;
-    int open_flag = O_WRONLY|O_CREAT;
-
-    if (!data || !pathname)
-        return 1;
-
-    if (append)
-        open_flag |= O_APPEND;
-    else
-        open_flag |=O_TRUNC;
-
-    if ((fd = open(pathname, open_flag, 0644)) < 0) {
-        perror("rmc: failed to open file to read");
-        return 1;
-    }
-
-    while (total < len) {
-        if ((tmp = write(fd, (BYTE *)data + total, len - total)) < 0) {
-            perror("rmc: failed to write file");
-            close(fd);
-            return 1;
-        }
-
-        total += (size_t)tmp;
-    }
-
-    close(fd);
-
-    return 0;
-}
-
 static void usage () {
     fprintf(stdout, USAGE);
 }
 
-/*
- * Read smbios entry table address from sysfs
- * return 0 when success
- */
-static int get_smbios_entry_table_addr(uint64_t* addr){
-
-    char *entry_buf = NULL;
-    char *tmp;
-    FILE *f;
-
-    if ((f = fopen(EFI_SYSTAB_PATH, "r")) == NULL) {
-        perror("rmc: Cannot get systab");
-        return 1;
-    }
-
-    entry_buf = malloc(SYSTAB_LEN);
-
-    if (!entry_buf) {
-        perror("cannot allocate entry buffer");
-        goto malloc_err;
-    }
-
-    while (fgets(entry_buf, SYSTAB_LEN, f) != NULL) {
-
-        if (strncmp(entry_buf, "SMBIOS", 6))
-            continue;
-
-        /* found SMBIOS entry table */
-        if ((tmp = strstr(&entry_buf[6], "=")) == NULL)
-            continue;
-
-        errno = 0;
-        *addr = strtoull(++tmp, NULL,16);
-        if (errno) {
-            perror("strtoll() falled to convert address");
-            *addr = 0;
-            continue;
-        } else
-            break;
-    }
-
-    free(entry_buf);
-
-malloc_err:
-    fclose(f);
-
-    return 0;
-
-}
-
-/* Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
- *
- * get board's RMC fingerprint by parsing SMBIOS table (user space)
- * (out) fingerprint data to be filled. Caller needs to allocate memory
- *
- * return: 0 for success, non-zero for failures.
- */
-
-static int get_board_fingerprint(rmc_fingerprint_t *fp) {
-
-    int fd = -1;
-    uint64_t entry_addr = 0;
-    uint8_t *smbios_entry_map = NULL;
-    long pg_size = 0;
-    long pg_num = 0;
-    uint8_t *smbios_entry_start = NULL;
-    size_t entry_map_len = 0;
-    size_t struct_map_len = 0;
-    WORD smbios_struct_len = 0;
-    uint64_t smbios_struct_addr = 0;
-    uint8_t *smbios_struct_map = NULL;
-    uint8_t *smbios_struct_start = NULL;
-    int ret = 1;
-
-    /* get SMBIOS entry address */
-
-    if (get_smbios_entry_table_addr(&entry_addr)) {
-        fprintf(stderr, "Cannot get valid entry tab address\n");
-        return 1;
-    }
-
-    if ((fd = open("/dev/mem", O_RDONLY)) < 0) {
-        perror("cannot open /dev/mem");
-        return 1;
-    }
-
-    pg_size = sysconf(_SC_PAGESIZE);
-    pg_num = entry_addr / pg_size;
-    entry_map_len = entry_addr % pg_size + SMBIOS_ENTRY_TAB_LEN;
-
-    smbios_entry_map = mmap(NULL, entry_map_len, PROT_READ, MAP_SHARED, fd,
-            pg_num * pg_size);
-
-    if (smbios_entry_map == MAP_FAILED) {
-        perror("mmap for entry table on /dev/mem failed");
-        goto err;
-    }
-
-    smbios_entry_start = smbios_entry_map + entry_addr % pg_size;
-
-    /* parse entry point struct, call rsmp */
-    ret = rsmp_get_smbios_strcut(smbios_entry_start, &smbios_struct_addr,
-            &smbios_struct_len);
-
-    if (munmap(smbios_entry_map, entry_map_len) < 0)
-        perror("munmap entry failed, ignore");
-
-    if (ret) {
-        fprintf(stderr, "Cannot parse smbios entry tab\n");
-        goto err;
-    }
-
-    /* mmap physical memory region of smbios struct table */
-    pg_num = smbios_struct_addr / pg_size;
-    struct_map_len = smbios_struct_addr % pg_size + smbios_struct_len;
-
-    smbios_struct_map = mmap(NULL, struct_map_len, PROT_READ, MAP_SHARED, fd,
-            pg_num * pg_size);
-
-    if (smbios_struct_map == MAP_FAILED) {
-        perror("mmap for struct table on /dev/mem failed");
-        goto err;
-    }
-
-    smbios_struct_start = smbios_struct_map + smbios_struct_addr % pg_size;
-
-    /* get fingerprint, call rsmp */
-    ret = rsmp_get_fingerprint_from_smbios_struct(smbios_struct_start, fp);
-
-    if (ret)
-        fprintf(stderr, "Cannot get board's fingerprint\n");
-
-    /* ! DO NOT munmap() structure's mapping, caller will access to string data in mapped region. ! */
-
-err:
-    close(fd);
-
-    return ret;
-}
-
 static void dump_fingerprint(rmc_fingerprint_t *fp) {
     int i;
 
@@ -470,13 +219,13 @@ read_fp_done:
  *                        free memory for returned data AND cmdline or blob
  *                        Null is returned for failures.
  */
-static rmc_policy_file_t *read_policy_file(char *pathname, int type) {
-    rmc_policy_file_t *tmp = NULL;
+static rmc_file_t *read_policy_file(char *pathname, int type) {
+    rmc_file_t *tmp = NULL;
     size_t policy_len = 0;
     int ret;
     char *path_token;
 
-    if ((tmp = calloc(1, sizeof(rmc_policy_file_t))) == NULL) {
+    if ((tmp = calloc(1, sizeof(rmc_file_t))) == NULL) {
         fprintf(stderr, "Failed to allocate memory for cmdline fragment\n\n");
         return NULL;
     }
@@ -571,7 +320,7 @@ int main(int argc, char **argv){
     char *input_cmdline_path = NULL;
     char *input_blob_name = NULL;
     rmc_fingerprint_t fingerprint;
-    rmc_policy_file_t *policy_files = NULL;
+    rmc_file_t *policy_files = NULL;
     rmc_record_file_t *record_files = NULL;
     void *raw_fp = NULL;
     BYTE *db = NULL;
@@ -598,7 +347,7 @@ int main(int argc, char **argv){
             options |= RMC_OPT_CAP_R;
             break;
         case 'D':
-            /* we don't know nubmer of arguments for this option at this point,
+            /* we don't know number of arguments for this option at this point,
              * allocate array with argc which is bigger than needed. But we also
              * need one extra for terminator element.
              */
@@ -674,7 +423,7 @@ int main(int argc, char **argv){
             break;
         case '?':
             if (optopt == 'F' || optopt == 'R' || optopt == 'D' || optopt == 'C' || optopt == 'B' || \
-                    optopt == 'b' || optopt == 'f' || optopt == 'c' || optopt == 'f' || optopt == 'o' || optopt == 'd')
+                    optopt == 'b' || optopt == 'f' || optopt == 'c' || optopt == 'o' || optopt == 'd')
                 fprintf(stderr, "\nWRONG USAGE: -%c\n\n", optopt);
             else if (isprint(optopt))
                 fprintf(stderr, "Unknown option `-%c'.\n\n", optopt);
@@ -719,7 +468,7 @@ int main(int argc, char **argv){
 
         size_t db_len = 0;
         rmc_fingerprint_t fp;
-        rmc_policy_file_t cmd_policy;
+        rmc_file_t cmd_policy;
 
         /* read rmc database file */
         if (read_file(input_db_path_cap_c, (char **)&db_c, &db_len)) {
@@ -728,49 +477,41 @@ int main(int argc, char **argv){
         }
 
         /* get board fingerprint */
-        if (get_board_fingerprint(&fp)) {
+        if (rmc_get_fingerprint(&fp)) {
             fprintf(stderr, "-C Failed to generate fingerprint for this board\n\n");
             goto main_free;
         }
 
         /* query cmdline in database, no error message if no command line for board found */
-        if (query_policy_from_db(&fp, db_c, RMC_POLICY_CMDLINE, NULL, &cmd_policy))
+        if (query_policy_from_db(&fp, db_c, RMC_POLICY_CMDLINE, NULL, &cmd_policy)) {
+            rmc_free_fingerprint(&fp);
             goto main_free;
+        }
+
+        rmc_free_fingerprint(&fp);
 
         fprintf(stdout, "%s", cmd_policy.cmdline_name);
     }
 
     /* get a file blob */
     if (options & RMC_OPT_CAP_B) {
-        size_t db_len = 0;
-        rmc_fingerprint_t fp;
-        rmc_policy_file_t policy;
+        rmc_file_t file;
 
-        /* read rmc database file */
-        if (read_file(input_db_path_d, (char **)&db_d, &db_len)) {
-            fprintf(stderr, "Failed to read database file for policy\n\n");
+        if (!output_path) {
+            fprintf(stderr, "-B internal error, with -o but no output pathname specified\n\n");
             goto main_free;
         }
 
-        /* get board fingerprint */
-        if (get_board_fingerprint(&fp)) {
-            fprintf(stderr, "-B Failed to generate fingerprint for this board\n\n");
+        if (rmc_gimme_file(input_db_path_d, input_blob_name, &file))
             goto main_free;
-        }
 
-        /* query policy in database, no error message if no policy for board found */
-        if (query_policy_from_db(&fp, db_d, RMC_POLICY_BLOB, input_blob_name, &policy))
-            goto main_free;
-
-        if (!output_path) {
-            fprintf(stderr, "-B internal error, with -o but no output pathname specified\n\n");
+        if (write_file(output_path, file.blob, file.blob_len, 0)) {
+            fprintf(stderr, "-B failed to write file %s to %s\n\n", input_blob_name, output_path);
+            rmc_free_file(&file);
             goto main_free;
         }
 
-        if (write_file(output_path, policy.blob, policy.blob_len, 0)) {
-            fprintf(stderr, "-B failed to write policy %s to %s\n\n", input_blob_name, output_path);
-            goto main_free;
-        }
+        rmc_free_file(&file);
     }
 
     /* generate RMC database file */
@@ -822,8 +563,9 @@ int main(int argc, char **argv){
      */
     if (options & RMC_OPT_CAP_R) {
         rmc_fingerprint_t fp;
-        rmc_policy_file_t *policy = NULL;
-        rmc_policy_file_t *current_policy = NULL;
+        rmc_fingerprint_t *free_fp = NULL;
+        rmc_file_t *policy = NULL;
+        rmc_file_t *current_policy = NULL;
         rmc_record_file_t record;
         int policy_idx = 0;
 
@@ -844,10 +586,11 @@ int main(int argc, char **argv){
             dump_fingerprint(&fp);
         }else {
             printf("Fingerprint file not provided, generate one for board we are running\n");
-            if (get_board_fingerprint(&fp)) {
+            if (rmc_get_fingerprint(&fp)) {
                 fprintf(stderr, "Failed to generate fingerprint for this board\n\n");
                 goto main_free;
-            }
+            } else
+                free_fp = &fp;
         }
 
         /* read command line file and policy file into a list */
@@ -856,6 +599,7 @@ int main(int argc, char **argv){
 
             if ((policy = read_policy_file(s, RMC_POLICY_BLOB)) == NULL) {
                 fprintf(stderr, "Failed to read policy file %s\n\n", s);
+                rmc_free_fingerprint(free_fp);
                 goto main_free;
 
             }
@@ -873,6 +617,7 @@ int main(int argc, char **argv){
         if (input_cmdline_path) {
             if ((policy = read_policy_file(input_cmdline_path, RMC_POLICY_CMDLINE)) == NULL) {
                 fprintf(stderr, "Failed to read command line file  %s\n\n", input_cmdline_path);
+                rmc_free_fingerprint(free_fp);
                 goto main_free;
             }
 
@@ -884,9 +629,12 @@ int main(int argc, char **argv){
         /* call rmcl to generate record blob */
         if (rmcl_generate_record(&fp, policy_files, &record)) {
             fprintf(stderr, "Failed to generate record for this board\n\n");
+            rmc_free_fingerprint(free_fp);
             goto main_free;
         }
 
+        rmc_free_fingerprint(free_fp);
+
         /* write record blob into file*/
         if (write_file(output_path, record.blob, record.length, 0)) {
             fprintf(stderr, "Failed to write record to %s\n\n", output_path);
@@ -899,7 +647,7 @@ int main(int argc, char **argv){
         if (!output_path)
             output_path = "rmc.fingerprint";
 
-        if (get_board_fingerprint(&fingerprint)) {
+        if (rmc_get_fingerprint(&fingerprint)) {
             fprintf(stderr, "Cannot get board fingerprint\n");
             goto main_free;
         }
@@ -909,8 +657,11 @@ int main(int argc, char **argv){
 
         if (write_fingerprint_file(output_path, &fingerprint)) {
             fprintf(stderr, "Cannot write board fingerprint to %s\n", output_path);
+            rmc_free_fingerprint(&fingerprint);
             goto main_free;
         }
+
+        rmc_free_fingerprint(&fingerprint);
     }
 
     ret = 0;
@@ -943,7 +694,7 @@ main_free:
     }
 
     while (policy_files) {
-        rmc_policy_file_t *t = policy_files;
+        rmc_file_t *t = policy_files;
         policy_files = policy_files->next;
         free(t->blob);
         free(t->cmdline_name);
-- 
2.7.4


