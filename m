Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FD23E00CCD; Tue, 22 Nov 2016 11:32:47 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0DC3E00CCC
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 11:32:42 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,682,1473145200"; d="scan'208";a="34448018"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by orsmga005.jf.intel.com with ESMTP; 22 Nov 2016 11:32:41 -0800
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 22 Nov 2016 11:35:48 -0800
Message-Id: <1479843349-195099-6-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
References: <1479843349-195099-1-git-send-email-jianxun.zhang@linux.intel.com>
Subject: [PATCH 5/6][rmc] remove kernel command line usage and blob type
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

rmc works as a generic file-based solution now. There is no need
to keep a special case for kernel command line type which was
designed in early days.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 inc/rmcl.h            |  27 ++++-----
 src/lib/api.c         |   4 +-
 src/lib/common/rmcl.c |  32 +++--------
 src/lib/efi_api.c     |   2 +-
 src/rmc.c             | 150 ++++++++++++--------------------------------------
 5 files changed, 59 insertions(+), 156 deletions(-)

diff --git a/inc/rmcl.h b/inc/rmcl.h
index 4123819..5bbad42 100644
--- a/inc/rmcl.h
+++ b/inc/rmcl.h
@@ -101,23 +101,20 @@ typedef struct rmc_record_header {
  * RMC Database Meta (packed)
  */
 typedef struct rmc_meta_header {
-    rmc_uint8_t type;      /* type 0 command line; type 1 file blob*/
-    rmc_uint64_t length;   /* covers cmdline_filename and blob blocks. */
-    /* char *cmdline_filename : Invisible, null-terminated string packed in mem */
+    rmc_uint8_t type;      /* RMC_GENERIC_FILE or or any other types defined later */
+    rmc_uint64_t length;   /* length of blob's name and blob */
+    /* char *blob_name : Invisible, null-terminated string packed in mem */
     /* rmc_uint8_t *blob : Invisible, binary packed in mem */
 } __attribute__ ((__packed__)) rmc_meta_header_t;
 
-/*
- * input of a rmc policy file. RMCL accepts command line
- * and file blobs presented in this data type (sparse memory)
- */
-#define RMC_POLICY_CMDLINE 0
-#define RMC_POLICY_BLOB 1
+/* We only have one type now but keep a type field internally for extensions in the future. */
+#define RMC_GENERIC_FILE 1
+
 typedef struct rmc_file {
-    rmc_uint8_t type;              /* RMC_POLICY_CMDLINE or RMC_POLICY_BLOB*/
-    char *cmdline_name;     /* file name of blob (type 1) or command line fragment (type 0) */
-    struct rmc_file *next;  /* next rmc file, or null as terminator for the last element */
-    rmc_size_t blob_len;         /* number of bytes of blob, excluding length of name */
+    rmc_uint8_t type;              /* RMC_GENERIC_FILE or or any other types defined later */
+    char *blob_name;               /* name of blob for type RMC_GENERIC_FILE */
+    struct rmc_file *next;         /* next rmc file, or null as terminator for the last element */
+    rmc_size_t blob_len;           /* number of bytes of blob, excluding length of name */
     rmc_uint8_t *blob;             /* blob of policy file, treated as binary, UNNECESSARILY Null terminated */
 } rmc_file_t;
 
@@ -153,11 +150,11 @@ extern int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_file_t *poli
 extern int rmcl_generate_db(rmc_record_file_t *record_files, rmc_uint8_t **rmc_db, rmc_size_t *len);
 
 /*
- * Query a RMC database blob provided by caller, to get kernel command line fragment or a policy file blob.
+ * Query a RMC database blob provided by caller
  * (in) fingerprint     : fingerprint of board
  * (in) rmc_db          : rmc database blob
  * (in) type            : type of record
- * (in) blob_name       : name of file blob to query. Ignored when type is 0 (cmdline)
+ * (in) blob_name       : name of file blob to query
  * (out) policy         : policy file data structure provided by caller, holding returned policy data
  *                        if there is a matched meta for board. Pointer members of policy hold data location
  *                        in rmc_db's memory region. (This functions doesn't copy data.)
diff --git a/src/lib/api.c b/src/lib/api.c
index b7bc663..0adb390 100644
--- a/src/lib/api.c
+++ b/src/lib/api.c
@@ -282,12 +282,12 @@ int rmc_query_file_by_fp(rmc_fingerprint_t *fp, char *db_pathname, char *file_na
      * read rmc database file
      */
     if (read_file(db_pathname, (char **)&db, &db_len)) {
-        fprintf(stderr, "Failed to read database file for command line\n\n");
+        fprintf(stderr, "Failed to read database file\n\n");
         return ret;
     }
 
     /* query policy in database */
-    if(query_policy_from_db(fp, db, RMC_POLICY_BLOB, file_name, file))
+    if(query_policy_from_db(fp, db, RMC_GENERIC_FILE, file_name, file))
         goto free_db;
 
     /* the returned file blob is actually in db memory region,
diff --git a/src/lib/common/rmcl.c b/src/lib/common/rmcl.c
index e6be585..67622a0 100644
--- a/src/lib/common/rmcl.c
+++ b/src/lib/common/rmcl.c
@@ -77,10 +77,8 @@ int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_file_t *policy_file
 
     /* Calculate total length of record for memory allocation */
     while (tmp) {
-        /* for type 0 cmdline, don't take blob len into account */
-        record_len += sizeof(rmc_meta_header_t) + strlen(tmp->cmdline_name) + 1;
-        if (tmp->type != RMC_POLICY_CMDLINE)
-            record_len += tmp->blob_len;
+        record_len += sizeof(rmc_meta_header_t) + strlen(tmp->blob_name) + 1;
+        record_len += tmp->blob_len;
         tmp = tmp->next;
     }
 
@@ -111,18 +109,15 @@ int rmcl_generate_record(rmc_fingerprint_t *fingerprint, rmc_file_t *policy_file
         meta->length = sizeof(rmc_meta_header_t);
         idx += sizeof(rmc_meta_header_t);
 
-        cmd_len = strlen(tmp->cmdline_name) + 1;
+        cmd_len = strlen(tmp->blob_name) + 1;
 
-        memcpy(idx, tmp->cmdline_name, cmd_len);
+        memcpy(idx, tmp->blob_name, cmd_len);
         idx += cmd_len;
         meta->length += cmd_len;
+        memcpy(idx, tmp->blob, tmp->blob_len);
+        idx += tmp->blob_len;
+        meta->length += tmp->blob_len;
 
-        /* only pack blob in when policy is not cmdline fragment */
-        if (tmp->type != RMC_POLICY_CMDLINE) {
-            memcpy(idx, tmp->blob, tmp->blob_len);
-            idx += tmp->blob_len;
-            meta->length += tmp->blob_len;
-        }
         tmp = tmp->next;
     }
 
@@ -210,7 +205,7 @@ int query_policy_from_db(rmc_fingerprint_t *fingerprint, rmc_uint8_t *rmc_db, rm
     if (!fingerprint || !rmc_db || !policy)
         return 1;
 
-    if (type != RMC_POLICY_CMDLINE && blob_name == NULL)
+    if (type != RMC_GENERIC_FILE || blob_name == NULL)
         return 1;
 
     db_header = (rmc_db_header_t *)rmc_db;
@@ -241,16 +236,7 @@ int query_policy_from_db(rmc_fingerprint_t *fingerprint, rmc_uint8_t *rmc_db, rm
 
                     policy_idx = meta_idx + sizeof(rmc_meta_header_t);
 
-                    /* set fields common among types */
-                    if (type == RMC_POLICY_CMDLINE) {
-                        policy->next = NULL;
-                        policy->type = type;
-                        policy->blob_len = 0;
-                        policy->blob = NULL;
-                        policy->cmdline_name = (char *)&rmc_db[policy_idx];
-
-                        return 0;
-                    } else if (type == RMC_POLICY_BLOB && !strncmp(blob_name, (char *)&rmc_db[policy_idx], strlen(blob_name) + 1)) {
+                    if (!strncmp(blob_name, (char *)&rmc_db[policy_idx], strlen(blob_name) + 1)) {
                         rmc_ssize_t cmd_name_len = strlen((char *)&rmc_db[policy_idx]) + 1;
                         policy->blob = &rmc_db[policy_idx + cmd_name_len];
                         policy->blob_len = meta_header.length - sizeof(rmc_meta_header_t) - cmd_name_len;
diff --git a/src/lib/efi_api.c b/src/lib/efi_api.c
index c4535c8..79b17a8 100644
--- a/src/lib/efi_api.c
+++ b/src/lib/efi_api.c
@@ -73,7 +73,7 @@ int rmc_get_fingerprint(void *sys_table, rmc_fingerprint_t *fp) {
 }
 
 int rmc_query_file_by_fp(rmc_fingerprint_t *fp, rmc_uint8_t *db_blob, char *file_name, rmc_file_t *file) {
-    return query_policy_from_db(fp, db_blob, RMC_POLICY_BLOB, file_name, file);
+    return query_policy_from_db(fp, db_blob, RMC_GENERIC_FILE, file_name, file);
 }
 
 int rmc_gimme_file(void *sys_table, rmc_uint8_t *db_blob, char *file_name, rmc_file_t *file) {
diff --git a/src/rmc.c b/src/rmc.c
index d4eb203..062dd36 100644
--- a/src/rmc.c
+++ b/src/rmc.c
@@ -1,10 +1,10 @@
-/*
+/* Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
+ *
  * rmc tool
  *
- * An executable supports:
- *  - Provide fingerprint in human-readable RMC fragment (header) file
- *  - Generate RMC database file from human-readable RMC fragment files
- *  - Provide policy fragments like command line to its callers in user space
+ *  - Obtain fingerprint of the type of board it runs on
+ *  - Generate RMC records and database with fingerprint and board-specific data
+ *  - Query file blobs associated to the type of board at run time.
  */
 
 #include <stdio.h>
@@ -16,20 +16,16 @@
 #define USAGE "RMC (Runtime Machine configuration) Tool\n" \
     "NOTE: Most of usages require root permission (sudo)\n" \
     "rmc -F [-o output_fingerprint]\n" \
-    "rmc -R [-f <fingerprint file>] -c <cmdline file> | -b <blob file list> [-o output_record]\n" \
+    "rmc -R [-f <fingerprint file>] -b <blob file list> [-o output_record]\n" \
     "rmc -D <rmc record file list> [-o output_database]\n" \
-	"rmc -C <rmc database file>\n" \
 	"rmc -B <name of file blob> -d <rmc database file> -o output_file\n" \
 	"\n" \
 	"-F: generate board rmc fingerprint of board\n" \
-	"-R: generate board rmc record of board with its fingerprint, kenrel commandline and blob files.\n" \
+	"-R: generate board rmc record of board with its fingerprint and file blobs.\n" \
     "-f: fingerprint file to be packed in record, rmc will create a fingerprint for board and use it internally to\n" \
     "    generate record if -f is missed.\n" \
-    "-c: kernel command line fragment to be packed in record\n" \
     "-b: files to be packed in record\n" \
-	"Note: At least one of -f and -c must be provided when -R is present\n" \
 	"-G: generate rmc database file with records specified in record file list\n" \
-	"-C: get kernel command line fragment from database file for the board rmc is running on, output to stdout\n" \
 	"-B: get a flie blob with specified name associated to the board rmc is running on\n" \
 	"-d: database file to be queried\n" \
 	"-o: path and name of output file of a specific command\n" \
@@ -37,13 +33,11 @@
     "Examples (Steps in an order to add board support into rmc):\n" \
     "generate board fingerprint:\n" \
     "rmc -F\n\n" \
-    "generate a rmc record for the board with a kernel command line fragment and two files, output to:\n" \
+    "generate a rmc record for the board with two file blobs, output to:\n" \
     "a specified file:\n" \
-    "rmc -R -f fingerprint -c my_cmdline -b file_1 file_2 -o my_board.record\n\n" \
+    "rmc -R -f fingerprint -b file_1 file_2 -o my_board.record\n\n" \
     "generate a rmc database file with records from 3 different boards:\n" \
     "rmc -D board1_record board2_record board3_record\n\n" \
-    "output command line fragment for the board rmc is running on, from a rmc database mn_rmc.db:\n" \
-    "rmc -C my_rmc.db\n\n" \
     "query a file blob named audio.conf associated to the board rmc is running on in database my_rmc.db and output\n" \
     "to /tmp/new_audio.conf:\n" \
     "rmc -B audio.conf -d my_rmc.db -o /tmp/new_audio.conf\n\n"
@@ -52,13 +46,11 @@
 #define RMC_OPT_CAP_F   (1 << 0)
 #define RMC_OPT_CAP_R   (1 << 1)
 #define RMC_OPT_CAP_D   (1 << 2)
-#define RMC_OPT_CAP_C   (1 << 3)
-#define RMC_OPT_CAP_B   (1 << 4)
-#define RMC_OPT_C       (1 << 5)
-#define RMC_OPT_F       (1 << 6)
-#define RMC_OPT_O       (1 << 7)
-#define RMC_OPT_B       (1 << 8)
-#define RMC_OPT_D       (1 << 9)
+#define RMC_OPT_CAP_B   (1 << 3)
+#define RMC_OPT_F       (1 << 4)
+#define RMC_OPT_O       (1 << 5)
+#define RMC_OPT_B       (1 << 6)
+#define RMC_OPT_D       (1 << 7)
 
 static void usage () {
     fprintf(stdout, USAGE);
@@ -211,12 +203,12 @@ read_fp_done:
 }
 
 /*
- * Read a policy file (cmdline or a blob) into policy file structure
- * (in) pathname        : path and name of policy file
- * (in) type            : policy type, commandline or a file blob
+ * Read a file blob into rmc file structure
+ * (in) pathname        : path and name of file
+ * (in) type            : policy type that must be RMC_GENERIC_FILE
  *
- * return               : a pointer to policy file structure. Caller shall
- *                        free memory for returned data AND cmdline or blob
+ * return               : a pointer to rmc file structure. Caller shall
+ *                        free memory for returned data AND blob
  *                        Null is returned for failures.
  */
 static rmc_file_t *read_policy_file(char *pathname, int type) {
@@ -226,44 +218,28 @@ static rmc_file_t *read_policy_file(char *pathname, int type) {
     char *path_token;
 
     if ((tmp = calloc(1, sizeof(rmc_file_t))) == NULL) {
-        fprintf(stderr, "Failed to allocate memory for cmdline fragment\n\n");
+        fprintf(stderr, "Failed to allocate memory for file blob\n\n");
         return NULL;
     }
 
     tmp->type = type;
     tmp->next = NULL;
 
-    if (tmp->type == RMC_POLICY_CMDLINE) {
-        ret = read_file(pathname, &tmp->cmdline_name, &policy_len);
-        if (ret) {
-            fprintf(stderr, "Failed to read kernel command line file %s\n\n", pathname);
-            free(tmp);
-            return NULL;
-        }
-
-        if (!policy_len) {
-            fprintf(stderr, "Empty kernel command line file %s\n\n", pathname);
-            free(tmp);
-            return NULL;
-        }
-
-        tmp->blob_len = 0;
-        tmp->blob = NULL;
-    } else if (type == RMC_POLICY_BLOB) {
+    if (type == RMC_GENERIC_FILE) {
         ret = read_file(pathname, (char **)&tmp->blob, &policy_len);
         if (ret) {
-            fprintf(stderr, "Failed to read policy file %s\n\n", pathname);
+            fprintf(stderr, "Failed to read file %s\n\n", pathname);
             free(tmp);
             return NULL;
         }
         tmp->blob_len = policy_len;
         path_token = strrchr(pathname, '/');
         if (!path_token)
-            tmp->cmdline_name = strdup(pathname);
+            tmp->blob_name = strdup(pathname);
         else
-            tmp->cmdline_name = strdup(path_token + 1);
+            tmp->blob_name = strdup(path_token + 1);
 
-        if (!tmp->cmdline_name) {
+        if (!tmp->blob_name) {
             fprintf(stderr, "Failed to allocate mem for policy file name %s\n\n", pathname);
             free(tmp->blob);
             free(tmp);
@@ -279,7 +255,7 @@ static rmc_file_t *read_policy_file(char *pathname, int type) {
 }
 
 /*
- * Read a record file (cmdline or a blob) into record file structure
+ * Read a record file into record file structure
  * (in) pathname        : path and name of record file
  *
  * return               : a pointer to record file structure. Caller shall
@@ -311,13 +287,10 @@ int main(int argc, char **argv){
     int c;
     rmc_uint16_t options = 0;
     char *output_path = NULL;
-    /* -C and -d could be present in a single command, with different database files specified.  */
-    char *input_db_path_cap_c = NULL;
     char *input_db_path_d = NULL;
     char **input_file_blobs = NULL;
     char **input_record_files = NULL;
     char *input_fingerprint = NULL;
-    char *input_cmdline_path = NULL;
     char *input_blob_name = NULL;
     rmc_fingerprint_t fingerprint;
     rmc_file_t *policy_files = NULL;
@@ -338,7 +311,7 @@ int main(int argc, char **argv){
     /* parse options */
     opterr = 0;
 
-    while ((c = getopt(argc, argv, "FRD:C:B:b:c:f:o:d:")) != -1)
+    while ((c = getopt(argc, argv, "FRD:B:b:f:o:d:")) != -1)
         switch (c) {
         case 'F':
             options |= RMC_OPT_CAP_F;
@@ -371,10 +344,6 @@ int main(int argc, char **argv){
 
             options |= RMC_OPT_CAP_D;
             break;
-        case 'C':
-            input_db_path_cap_c = optarg;
-            options |= RMC_OPT_CAP_C;
-            break;
         case 'B':
             input_blob_name = optarg;
             options |= RMC_OPT_CAP_B;
@@ -383,10 +352,6 @@ int main(int argc, char **argv){
             output_path = optarg;
             options |= RMC_OPT_O;
             break;
-        case 'c':
-            input_cmdline_path = optarg;
-            options |= RMC_OPT_C;
-            break;
         case 'f':
             input_fingerprint = optarg;
             options |= RMC_OPT_F;
@@ -422,8 +387,8 @@ int main(int argc, char **argv){
 
             break;
         case '?':
-            if (optopt == 'F' || optopt == 'R' || optopt == 'D' || optopt == 'C' || optopt == 'B' || \
-                    optopt == 'b' || optopt == 'f' || optopt == 'c' || optopt == 'o' || optopt == 'd')
+            if (optopt == 'F' || optopt == 'R' || optopt == 'D' || optopt == 'B' || \
+                    optopt == 'b' || optopt == 'f' || optopt == 'o' || optopt == 'd')
                 fprintf(stderr, "\nWRONG USAGE: -%c\n\n", optopt);
             else if (isprint(optopt))
                 fprintf(stderr, "Unknown option `-%c'.\n\n", optopt);
@@ -450,8 +415,8 @@ int main(int argc, char **argv){
     }
 
     /* sanity check for -R */
-    if ((options & RMC_OPT_CAP_R) && (!(options & (RMC_OPT_C|RMC_OPT_B)))) {
-        fprintf(stderr, "\nWRONG: At least one of -c or -b is required when -R is present\n\n");
+    if ((options & RMC_OPT_CAP_R) && (!(options & RMC_OPT_B))) {
+        fprintf(stderr, "\nWRONG: -b is required when -R is present\n\n");
         usage();
         return 1;
     }
@@ -463,36 +428,6 @@ int main(int argc, char **argv){
         return 1;
     }
 
-    /* get cmdline */
-    if (options & RMC_OPT_CAP_C) {
-
-        rmc_size_t db_len = 0;
-        rmc_fingerprint_t fp;
-        rmc_file_t cmd_policy;
-
-        /* read rmc database file */
-        if (read_file(input_db_path_cap_c, (char **)&db_c, &db_len)) {
-            fprintf(stderr, "Failed to read database file for command line\n\n");
-            goto main_free;
-        }
-
-        /* get board fingerprint */
-        if (rmc_get_fingerprint(&fp)) {
-            fprintf(stderr, "-C Failed to generate fingerprint for this board\n\n");
-            goto main_free;
-        }
-
-        /* query cmdline in database, no error message if no command line for board found */
-        if (query_policy_from_db(&fp, db_c, RMC_POLICY_CMDLINE, NULL, &cmd_policy)) {
-            rmc_free_fingerprint(&fp);
-            goto main_free;
-        }
-
-        rmc_free_fingerprint(&fp);
-
-        fprintf(stdout, "%s", cmd_policy.cmdline_name);
-    }
-
     /* get a file blob */
     if (options & RMC_OPT_CAP_B) {
         rmc_file_t file;
@@ -557,10 +492,7 @@ int main(int argc, char **argv){
         }
     }
 
-    /* generate RMC record file, we allow both or either of a list of config files and kenrel command line.
-     * That means user can choose to have a single record contains both of file blob(s) and command line for
-     * the board.
-     */
+    /* generate RMC record file with a list of file blobs. */
     if (options & RMC_OPT_CAP_R) {
         rmc_fingerprint_t fp;
         rmc_fingerprint_t *free_fp = NULL;
@@ -593,11 +525,11 @@ int main(int argc, char **argv){
                 free_fp = &fp;
         }
 
-        /* read command line file and policy file into a list */
+        /* read policy file into a list */
         while (input_file_blobs && input_file_blobs[policy_idx]) {
             char *s = input_file_blobs[policy_idx];
 
-            if ((policy = read_policy_file(s, RMC_POLICY_BLOB)) == NULL) {
+            if ((policy = read_policy_file(s, RMC_GENERIC_FILE)) == NULL) {
                 fprintf(stderr, "Failed to read policy file %s\n\n", s);
                 rmc_free_fingerprint(free_fp);
                 goto main_free;
@@ -614,18 +546,6 @@ int main(int argc, char **argv){
             policy_idx++;
         }
 
-        if (input_cmdline_path) {
-            if ((policy = read_policy_file(input_cmdline_path, RMC_POLICY_CMDLINE)) == NULL) {
-                fprintf(stderr, "Failed to read command line file  %s\n\n", input_cmdline_path);
-                rmc_free_fingerprint(free_fp);
-                goto main_free;
-            }
-
-            /* put command line at the head of list */
-            policy->next = policy_files;
-            policy_files = policy;
-        }
-
         /* call rmcl to generate record blob */
         if (rmcl_generate_record(&fp, policy_files, &record)) {
             fprintf(stderr, "Failed to generate record for this board\n\n");
@@ -697,7 +617,7 @@ main_free:
         rmc_file_t *t = policy_files;
         policy_files = policy_files->next;
         free(t->blob);
-        free(t->cmdline_name);
+        free(t->blob_name);
         free(t);
     }
 
-- 
2.7.4


