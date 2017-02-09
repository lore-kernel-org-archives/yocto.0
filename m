Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE427E009CD; Thu,  9 Feb 2017 11:18:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD51CE009C9;
	Thu,  9 Feb 2017 11:18:12 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 09 Feb 2017 11:18:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,137,1484035200"; d="scan'208";a="42160725"
Received: from unknown (HELO localhost.localdomain) ([10.7.197.100])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2017 11:18:04 -0800
From: Todor Minchev <todor.minchev@linux.intel.com>
To: yocto@yoctoproject.org, meta-intel@yoctoproject.org,
	jianxun.zhang@linux.intel.com
Date: Thu,  9 Feb 2017 11:17:38 -0800
Message-Id: <20170209191740.63387-4-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170209191740.63387-1-todor.minchev@linux.intel.com>
References: <20170209191740.63387-1-todor.minchev@linux.intel.com>
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH v2 3/5] rmc: Enable reading the contents of an existing fingerprint file
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
X-List-Received-Date: Thu, 09 Feb 2017 19:18:14 -0000

The contents of an existing fingerprint file can be read and output on
the command line with the following options:

rmc -E -f input_fingerprint_file

Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
---
 src/rmc.c | 98 ++++++++++++++++++++++++++++++++++++++++++---------------------
 1 file changed, 65 insertions(+), 33 deletions(-)

diff --git a/src/rmc.c b/src/rmc.c
index 062dd36..f3a2a5e 100644
--- a/src/rmc.c
+++ b/src/rmc.c
@@ -14,43 +14,47 @@
 #include <rmc_api.h>
 
 #define USAGE "RMC (Runtime Machine configuration) Tool\n" \
-    "NOTE: Most of usages require root permission (sudo)\n" \
+    "NOTE: Most of usages require root permission (sudo)\n\n" \
     "rmc -F [-o output_fingerprint]\n" \
     "rmc -R [-f <fingerprint file>] -b <blob file list> [-o output_record]\n" \
     "rmc -D <rmc record file list> [-o output_database]\n" \
-	"rmc -B <name of file blob> -d <rmc database file> -o output_file\n" \
-	"\n" \
-	"-F: generate board rmc fingerprint of board\n" \
-	"-R: generate board rmc record of board with its fingerprint and file blobs.\n" \
-    "-f: fingerprint file to be packed in record, rmc will create a fingerprint for board and use it internally to\n" \
-    "    generate record if -f is missed.\n" \
-    "-b: files to be packed in record\n" \
-	"-G: generate rmc database file with records specified in record file list\n" \
-	"-B: get a flie blob with specified name associated to the board rmc is running on\n" \
-	"-d: database file to be queried\n" \
-	"-o: path and name of output file of a specific command\n" \
-	"\n" \
-    "Examples (Steps in an order to add board support into rmc):\n" \
-    "generate board fingerprint:\n" \
-    "rmc -F\n\n" \
-    "generate a rmc record for the board with two file blobs, output to:\n" \
-    "a specified file:\n" \
-    "rmc -R -f fingerprint -b file_1 file_2 -o my_board.record\n\n" \
-    "generate a rmc database file with records from 3 different boards:\n" \
-    "rmc -D board1_record board2_record board3_record\n\n" \
-    "query a file blob named audio.conf associated to the board rmc is running on in database my_rmc.db and output\n" \
-    "to /tmp/new_audio.conf:\n" \
-    "rmc -B audio.conf -d my_rmc.db -o /tmp/new_audio.conf\n\n"
+    "rmc -B <name of file blob> -d <rmc database file> -o output_file\n\n" \
+  "-F: manage fingerprint file\n" \
+    "\t-o output_file: store RMC fingerprint of current board in output_file\n" \
+  "-R: generate board rmc record of board with its fingerprint and file blobs.\n" \
+    "\t-f intput_file : input fingerprint file to be packed in record\n\n" \
+    "\tNOTE: RMC will create a fingerprint for the board and use it to\n" \
+    "\tgenerate record if an input fingerprint file is not provided.\n\n" \
+    "\t-b: files to be packed in record\n\n" \
+  "-G: generate rmc database file with records specified in record file list\n\n" \
+  "-B: get a file blob with specified name associated to the board rmc is\n" \
+  "running on\n" \
+    "\t-d: database file to be queried\n" \
+    "\t-o: path and name of output file of a specific command\n\n" \
+  "-E: Extract data from fingerprint file and print it to terminal\n" \
+    "\t-f: fingerprint file to extract\n\n" \
+    "Examples (Steps in an order to add board support into rmc):\n\n" \
+    "1. Generate board fingerprint:\n" \
+    "\trmc -F\n\n" \
+    "2. Generate a rmc record for the board with two file blobs and save it\n" \
+    "to a specified file:\n" \
+    "\trmc -R -f fingerprint -b file_1 file_2 -o my_board.record\n\n" \
+    "3. Generate a rmc database file with records from 3 different boards:\n" \
+    "\trmc -D board1_record board2_record board3_record\n\n" \
+    "4. Query a file blob named audio.conf associated to the board rmc is\n" \
+    "running on in database my_rmc.db and output to /tmp/new_audio.conf:\n" \
+    "\trmc -B audio.conf -d my_rmc.db -o /tmp/new_audio.conf\n\n"
 
 
 #define RMC_OPT_CAP_F   (1 << 0)
 #define RMC_OPT_CAP_R   (1 << 1)
 #define RMC_OPT_CAP_D   (1 << 2)
 #define RMC_OPT_CAP_B   (1 << 3)
-#define RMC_OPT_F       (1 << 4)
-#define RMC_OPT_O       (1 << 5)
-#define RMC_OPT_B       (1 << 6)
-#define RMC_OPT_D       (1 << 7)
+#define RMC_OPT_CAP_E   (1 << 4)
+#define RMC_OPT_F       (1 << 5)
+#define RMC_OPT_O       (1 << 6)
+#define RMC_OPT_B       (1 << 7)
+#define RMC_OPT_D       (1 << 8)
 
 static void usage () {
     fprintf(stdout, USAGE);
@@ -78,7 +82,7 @@ static void dump_fingerprint(rmc_fingerprint_t *fp) {
 static int write_fingerprint_file(const char* pathname, rmc_fingerprint_t *fp) {
     int i;
     int first = 0;
-
+    /* TODO - do we need to open/close file multiple times to write each field */
     for (i = 0; i < RMC_FINGER_NUM; i++) {
         if (write_file(pathname, &fp->rmc_fingers[i].type, sizeof(fp->rmc_fingers[i].type), first))
             return 1;
@@ -311,7 +315,7 @@ int main(int argc, char **argv){
     /* parse options */
     opterr = 0;
 
-    while ((c = getopt(argc, argv, "FRD:B:b:f:o:d:")) != -1)
+    while ((c = getopt(argc, argv, "FRED:B:b:f:o:d:")) != -1)
         switch (c) {
         case 'F':
             options |= RMC_OPT_CAP_F;
@@ -319,6 +323,9 @@ int main(int argc, char **argv){
         case 'R':
             options |= RMC_OPT_CAP_R;
             break;
+        case 'E':
+            options |= RMC_OPT_CAP_E;
+            break;
         case 'D':
             /* we don't know number of arguments for this option at this point,
              * allocate array with argc which is bigger than needed. But we also
@@ -388,7 +395,8 @@ int main(int argc, char **argv){
             break;
         case '?':
             if (optopt == 'F' || optopt == 'R' || optopt == 'D' || optopt == 'B' || \
-                    optopt == 'b' || optopt == 'f' || optopt == 'o' || optopt == 'd')
+                    optopt == 'E' ||  optopt == 'b' || optopt == 'f' || \
+                    optopt == 'o' || optopt == 'd')
                 fprintf(stderr, "\nWRONG USAGE: -%c\n\n", optopt);
             else if (isprint(optopt))
                 fprintf(stderr, "Unknown option `-%c'.\n\n", optopt);
@@ -421,6 +429,13 @@ int main(int argc, char **argv){
         return 1;
     }
 
+    /* sanity check for -E */
+    if ((options & RMC_OPT_CAP_E) && (!(options & RMC_OPT_F))) {
+        fprintf(stderr, "\nERROR: -E requires -f <fingerprint file name>\n\n");
+        usage();
+        return 1;
+    }
+
     /* sanity check for -B */
     if ((options & RMC_OPT_CAP_B) && (!(options & RMC_OPT_D) || !(options & RMC_OPT_O))) {
         fprintf(stderr, "\nWRONG: -B requires -d and -o\n\n");
@@ -445,10 +460,28 @@ int main(int argc, char **argv){
             rmc_free_file(&file);
             goto main_free;
         }
-
         rmc_free_file(&file);
     }
 
+    if (options & RMC_OPT_CAP_E) {
+        /* print fingerpring file to console*/
+        if (options & RMC_OPT_F) {
+            rmc_fingerprint_t fp;
+            /* read fingerprint file*/
+            if (input_fingerprint != NULL) {
+                if (read_fingerprint_from_file(input_fingerprint, &fp, &raw_fp)) {
+                    fprintf(stderr, "Cannot read fingerprint from %s\n\n",
+                    input_fingerprint);
+                    goto main_free;
+                }
+                printf("Successfully read fingerprint from %s \n", input_fingerprint);
+                dump_fingerprint(&fp);
+            }else {
+                printf("Fingerprint file not provided! Exiting.\n");
+            }
+        }
+    }
+
     /* generate RMC database file */
     if (options & RMC_OPT_CAP_D) {
         int record_idx = 0;
@@ -580,7 +613,6 @@ int main(int argc, char **argv){
             rmc_free_fingerprint(&fingerprint);
             goto main_free;
         }
-
         rmc_free_fingerprint(&fingerprint);
     }
 
-- 
2.11.1


