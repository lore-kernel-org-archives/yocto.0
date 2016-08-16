Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDBFAE0043F; Tue, 16 Aug 2016 16:08:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DC48E00288
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 16:08:22 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 16 Aug 2016 16:08:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,529,1464678000"; d="scan'208";a="749657277"
Received: from chang-s2600cp.jf.intel.com ([10.54.77.22])
	by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2016 16:08:21 -0700
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Aug 2016 16:10:40 -0700
Message-Id: <1471389040-54758-1-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] test: Provide test scripts and sample data
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
X-List-Received-Date: Tue, 16 Aug 2016 23:08:27 -0000

Two test scripts cover basic functionality in both build and
runtime with some sample data of three boards.

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
This is the first patch to rmc project since it was published in YP.
After consulting some people, we choose yocto mailing list for rmc
patch review.

Thanks

 test/README                   |  63 +++++++++++++++++++++++
 test/boards/NUC4.D54250WYK.fp | Bin 0 -> 149 bytes
 test/boards/NUC4.file.1       |   1 +
 test/boards/NUC4.file.2       |   1 +
 test/boards/NUC6.file.1       |   1 +
 test/boards/NUC6.file.2       |   1 +
 test/boards/NUC6.file.3       |  11 ++++
 test/boards/NUC6i5SYB_H.fp    | Bin 0 -> 149 bytes
 test/boards/T100.32.file.1    |   2 +
 test/boards/T100.32.file.2    |   1 +
 test/boards/T100TA-32bit.fp   | Bin 0 -> 116 bytes
 test/db.build.sh              |  89 ++++++++++++++++++++++++++++++++
 test/rmctool.runtime.sh       | 117 ++++++++++++++++++++++++++++++++++++++++++
 13 files changed, 287 insertions(+)
 create mode 100644 test/README
 create mode 100644 test/boards/NUC4.D54250WYK.fp
 create mode 100644 test/boards/NUC4.file.1
 create mode 100644 test/boards/NUC4.file.2
 create mode 100644 test/boards/NUC6.file.1
 create mode 100644 test/boards/NUC6.file.2
 create mode 100644 test/boards/NUC6.file.3
 create mode 100644 test/boards/NUC6i5SYB_H.fp
 create mode 100644 test/boards/T100.32.file.1
 create mode 100644 test/boards/T100.32.file.2
 create mode 100644 test/boards/T100TA-32bit.fp
 create mode 100755 test/db.build.sh
 create mode 100755 test/rmctool.runtime.sh

diff --git a/test/README b/test/README
new file mode 100644
index 0000000..1ef380d
--- /dev/null
+++ b/test/README
@@ -0,0 +1,63 @@
+Test Suite of RMC project
+================================================================================
+
+To test RMC functionality, we provide scripts and some launched commercial
+boards with sample data.
+
+*.runtime.*: Test to run on a type of board
+
+*.build.*:   Test to run at build time
+
+=====
+db.build.sh - Test database generation with built-in samples
+
+What it does:
+() Compile rmc tool
+() Generate a RMC database file with data in ./boards and check if it is
+identical to a known fully-tested database based on same data.
+
+Usage:
+# To run test in test directory:
+./db.build.sh
+
+# To run test against another database checksum:
+RMC_TEST_DB_MD5=your_md5_digist_string ./db.build.sh
+
+# To obtain a copy of the current golden sample database, make sure no change
+# in ./boards, then run:
+RMC_TEST_DB_MD5="" ./db.build.sh
+
+=====
+rmctool.runtime.sh - Test querying data and fingerprint at runtime on target
+
+What it does:
+() Test obtaining fingerprint on a supported board
+() Test querying data on a supported board
+() Test querying data for other boards (negative case)
+
+Usage:
+Copy rmctool.runtime.sh, a database file and rmc tool onto target.
+Change permissions so that the test script and rmc tool for test are executable.
+
+# To run test with a provided rmc database file:
+./rmctool.runtime.sh database_file
+
+# To run test with a specified rmc tool:
+RMC_BIN=pathname_of_rmc ./rmctool.runtime.sh database_file
+
+# To run test and specify another directory for data generated in test:
+./rmctool.runtime.sh database_file test_dir
+
+=====
+Update sample data for test
+() Modify data in ./boards
+
+() Run this command to generate a new database file:
+RMC_TEST_DB_MD5="" ./db.build.sh
+
+() Run *.runtime.* scripts and pass ALL test cases on ALL boards with the new
+database file.
+
+() Update database checksum in ./db.build.sh
+
+() Run *.build.* scripts and pass all tests in build time.
diff --git a/test/boards/NUC4.D54250WYK.fp b/test/boards/NUC4.D54250WYK.fp
new file mode 100644
index 0000000000000000000000000000000000000000..6c6c2a8ac1ffef5a4dc675193bfd7174c0bb6693
GIT binary patch
literal 149
zcmZQ%Ehx%QDNQbk&r8frWl$gl7?@BsxR{z4nHq#gdNZ&Hl%*CGXXfWIc;=O)=4b?I
wDmdpCrD}xuYAR%!>VlMoDmVv(DmW+@>KPljdsH#hGZdv3rxul^rZAwe0cXf1-v9sr

literal 0
HcmV?d00001

diff --git a/test/boards/NUC4.file.1 b/test/boards/NUC4.file.1
new file mode 100644
index 0000000..7f80ab1
--- /dev/null
+++ b/test/boards/NUC4.file.1
@@ -0,0 +1 @@
+Sample data #1 for NUC Gen 4
diff --git a/test/boards/NUC4.file.2 b/test/boards/NUC4.file.2
new file mode 100644
index 0000000..83d8d47
--- /dev/null
+++ b/test/boards/NUC4.file.2
@@ -0,0 +1 @@
+Sample data #2 for NUC Gen 4
diff --git a/test/boards/NUC6.file.1 b/test/boards/NUC6.file.1
new file mode 100644
index 0000000..a573b9e
--- /dev/null
+++ b/test/boards/NUC6.file.1
@@ -0,0 +1 @@
+This is #1 sample data file of NUC Gen 6
diff --git a/test/boards/NUC6.file.2 b/test/boards/NUC6.file.2
new file mode 100644
index 0000000..3080b66
--- /dev/null
+++ b/test/boards/NUC6.file.2
@@ -0,0 +1 @@
+This is #2 sample data	file of NUC Gen 6
diff --git a/test/boards/NUC6.file.3 b/test/boards/NUC6.file.3
new file mode 100644
index 0000000..bade7ef
--- /dev/null
+++ b/test/boards/NUC6.file.3
@@ -0,0 +1,11 @@
+# This is #3 sample data file of NUC Gen 6
+# We put more lines here for diversity in test data.
+#
+# Name: RMC (Runtime Machine Configuration)
+# Age: less than one year
+# Why were you created: To reach the highest level of scalability in a generic SW stack
+# What do you like: Run on boards as many as possible
+# What do you hate: Become something giant, complicated and just to create jobs
+# What do you believe in: Necessity
+# When do you want to die: When what I believe in is gone or when what I hate becomes true
+# What do you want to say to your creator: Please fix bugs in me
diff --git a/test/boards/NUC6i5SYB_H.fp b/test/boards/NUC6i5SYB_H.fp
new file mode 100644
index 0000000000000000000000000000000000000000..834f800b63bc9cc2cd42e46059bafaec3701a9a2
GIT binary patch
literal 149
zcmZQ%Ehx%QDNQbk&r8frWl$gl7?@Bs_=P%~Wts*@Ix(;al%*CGXXfWIc;=O)=4b?I
yDmdpCrD}xuYAR%!>Y5pu8H6f02ZSm(C>ZKl7`S^>G1M~@r52|am8GUIps)do>LySC

literal 0
HcmV?d00001

diff --git a/test/boards/T100.32.file.1 b/test/boards/T100.32.file.1
new file mode 100644
index 0000000..2d822d5
--- /dev/null
+++ b/test/boards/T100.32.file.1
@@ -0,0 +1,2 @@
+# Sample file #1 for ASUS T100 (32bit)
+# We put more content (this line) for some diversity in data length.
diff --git a/test/boards/T100.32.file.2 b/test/boards/T100.32.file.2
new file mode 100644
index 0000000..e7d71bb
--- /dev/null
+++ b/test/boards/T100.32.file.2
@@ -0,0 +1 @@
+# This is #2 sample data file for ASUS T100 (32 bit)
diff --git a/test/boards/T100TA-32bit.fp b/test/boards/T100TA-32bit.fp
new file mode 100644
index 0000000000000000000000000000000000000000..86ecea7344bfc744f7f9d57f3f1810d6f7ba0db1
GIT binary patch
literal 116
zcmZQ%Ehx%QDNQbk&r8frWe71eFbHvEV8SZOB2boERGgWg$KaV)lA5Ctq^aOolAo&)
p;;X6P91yAyWo&L@px~fjsAp{K?oq{1&rp<FoLW?tn!<p>1_02dA-n(p

literal 0
HcmV?d00001

diff --git a/test/db.build.sh b/test/db.build.sh
new file mode 100755
index 0000000..e876834
--- /dev/null
+++ b/test/db.build.sh
@@ -0,0 +1,89 @@
+#!/bin/sh
+# This script verify a rmc tool built in the project
+# by checking content in generated  RMC database file
+# checksum is from a golden sample (a verified db file)
+
+set -e
+
+# If tester doesn't provide checksum of a new DB, we
+# use a checksum of a fully tested DB which was
+# generated with this script and data in ./boards.
+
+# To test a new DB before update default md5, run
+
+# $ RMC_TEST_DB_MD5="" db.build.sh
+
+# New db will be left in a temp dir for other tests.
+
+if [ -z ${RMC_TEST_DB_MD5+x} ]; then
+    RMC_TEST_DB_MD5="9bfcda281c72bb142961882b5420d366"
+fi
+
+BOARDS_DIR="./boards"
+
+# compile rmc tool first
+
+make -C ../ clean 1>/dev/null
+make -C ../ 1>/dev/null
+
+# NOTE: Orders in lists of files matter
+
+# Board #1
+NUC6_FINGERPRINT="NUC6i5SYB_H.fp"
+NUC6_FILES="NUC6.file.1 NUC6.file.2 NUC6.file.3"
+
+# Board #2
+NUC4_FINGERPRINT="NUC4.D54250WYK.fp"
+NUC4_FILES="NUC4.file.1 NUC4.file.2"
+
+# Board #3
+T100_FINGERPRINT="T100TA-32bit.fp"
+T100_FILES="T100.32.file.1 T100.32.file.2"
+
+DB_RECORDS=
+
+TEST_TMP_DIR=$(mktemp -d)
+
+# $1: fingerprint file
+# $2: a list of file blobs
+generate_record_with_checksum () {
+    local CHECKSUM_FILES=
+    local FILE_BLOBS=
+    local BOARD_REC=
+
+    for each in $2; do
+        md5sum $BOARDS_DIR/$each |cut -d ' ' -f 1 > ${TEST_TMP_DIR}/${each}.md5
+        FILE_BLOBS="$FILE_BLOBS $BOARDS_DIR/$each"
+        CHECKSUM_FILES="$CHECKSUM_FILES $TEST_TMP_DIR/$each.md5"
+    done
+
+    # We mean to test rmc tool built in the project.
+    BOARD_REC=$(mktemp -p $TEST_TMP_DIR --suffix=.rec)
+    ../src/rmc -R -f $BOARDS_DIR/$1 -b $FILE_BLOBS $CHECKSUM_FILES -o $BOARD_REC 1>/dev/null
+    echo "$BOARD_REC"
+}
+
+# Order of records matters
+DB_RECORDS="$(generate_record_with_checksum "${NUC6_FINGERPRINT}" "${NUC6_FILES}") \
+            $(generate_record_with_checksum "$NUC4_FINGERPRINT" "$NUC4_FILES") \
+            $(generate_record_with_checksum "$T100_FINGERPRINT" "$T100_FILES")"
+
+../src/rmc -D $DB_RECORDS -o $TEST_TMP_DIR/rmc.db
+
+DB_CHECKSUM=$(md5sum $TEST_TMP_DIR/rmc.db |cut -d ' ' -f 1)
+
+make -C ../ clean
+
+if [ -z "$RMC_TEST_DB_MD5" ]; then
+    echo "An empty checksum is provided, assuming you want to create a new DB:"
+    echo "$TEST_TMP_DIR/rmc.db [MD5] = $DB_CHECKSUM"
+elif [ "$RMC_TEST_DB_MD5" = "$DB_CHECKSUM" ]; then
+    echo "RMC Database generation test: PASS"
+    rm -rf $TEST_TMP_DIR
+else
+    echo "RMC Database generation test: FAIL"
+    echo "$TEST_TMP_DIR/rmc.db [MD5] = $DB_CHECKSUM"
+    echo "expected DB [MD5] = $RMC_TEST_DB_MD5"
+    echo "Artifacts in test are in $TEST_TMP_DIR"
+    exit 1
+fi
diff --git a/test/rmctool.runtime.sh b/test/rmctool.runtime.sh
new file mode 100755
index 0000000..df34939
--- /dev/null
+++ b/test/rmctool.runtime.sh
@@ -0,0 +1,117 @@
+#!/bin/sh
+# This script is to run on a target board to verify basic
+# functions of rmc tool and libraries linked into it in
+# Linux user space.
+
+usage () {
+    echo "rmctool.runtime.sh rmc_database [test_temp_dir]"
+    echo "RMC_BIN=pathname_of_rmc rmctool.runtime.sh rmc_database [test_temp_dir]"
+}
+
+if [ ! $# -eq 2 ] && [ ! $# -eq 1 ]; then
+    usage
+    exit 1
+fi
+
+RMC_DB_FILE=$1
+
+while true; do
+    echo "Select target to test [1-3]:"
+    echo "1 NUC Gen6 i5SYB(H)"
+    echo "2 NUC Gen4 D54250WYK"
+    echo "3 T100TA (32bit)"
+
+    read input
+
+    if [ $input -lt 4 ] && [ $input -gt 0 ]; then
+        break;
+    fi
+
+done
+
+BOARDS="NUC6 NUC4 T100TA"
+
+RMC_TEST_TARGET=$(echo $BOARDS|cut -d ' ' -f $input)
+
+NUC6_FILES="NUC6.file.1 NUC6.file.2 NUC6.file.3"
+NUC6_FP_MD5="35c53989630d16b983ac3da277beacc2"
+
+NUC4_FILES="NUC4.file.1 NUC4.file.2"
+NUC4_FP_MD5="dbf3162170a377eb0d78d822a7624d12"
+
+T100TA_FILES="T100.32.file.1 T100.32.file.2"
+T100TA_FP_MD5="59eb7a5aab9924587e433de88bf3e174"
+
+# Prepare dir for test
+if [ -z ${2:+x} ]; then
+    TEST_DIR=$(mktemp -d)
+else
+    TEST_DIR=$2
+    rm -rf $TEST_DIR
+    mkdir -p $TEST_DIR
+fi
+
+if [ -z ${RMC_BIN:+x} ]; then
+    RMC_BIN=$(which rmc)
+fi
+
+echo "Test: Start - Data will be stored in $TEST_DIR"
+echo "Test: rmc tool in test: $RMC_BIN"
+echo ""
+echo "Test: Obtain Fingerprint - $RMC_TEST_TARGET"
+# Test: obtain fingerprint
+
+if $RMC_BIN -F -o $TEST_DIR/rmc.test.fp 1>/dev/null; then
+    RUNTIME_FP=$(md5sum $TEST_DIR/rmc.test.fp|cut -d ' ' -f 1)
+    eval EXPECTED_FP_MD5=\$${RMC_TEST_TARGET}_FP_MD5
+    if [ "$EXPECTED_FP_MD5" != "$RUNTIME_FP" ]; then
+        echo "Test Failed: obtained fingerprint $TEST_DIR/rmc.test.fp differs from the expected"
+        exit 1
+    fi
+else
+    echo "Test Failed: obtain fingerprint"
+    exit 1
+fi
+
+# Positive Test
+eval FILES_TO_QUERY=\$${RMC_TEST_TARGET}_FILES
+echo "Test: Positive Query - $RMC_TEST_TARGET"
+for each in $FILES_TO_QUERY; do
+    if $RMC_BIN -B "$each" -d "$RMC_DB_FILE" -o "$TEST_DIR/$each"; then
+        if $RMC_BIN -B "$each.md5" -d "$RMC_DB_FILE" -o "$TEST_DIR/$each.md5"; then
+            FILE_MD5_IN_DB=$(cat "$TEST_DIR/$each.md5")
+            if [ ! "$FILE_MD5_IN_DB" = "$(md5sum $TEST_DIR/$each |cut -d ' ' -f 1)" ]; then
+                echo "Test Failed: File $TEST_DIR/$each is obtained but with mismatched checksum"
+                exit 1
+            fi
+        else
+            echo "Test Failed: Cannot query checksum file of $each from database $RMC_DB_FILE"
+            exit 1
+        fi
+    else
+        echo "Test Failed: Cannot query $each from database $RMC_DB_FILE"
+        exit 1
+    fi
+done
+
+# Negative Test. We shall not get any files specific to another type of board
+# Note: test data used should have different file names across boards
+for board in $BOARDS; do
+    # skip the right board
+    if [ "$board" = "$RMC_TEST_TARGET" ]; then
+        continue
+    fi
+    echo "Test: Negative Query - $board"
+    eval FILES_TO_QUERY=\$${board}_FILES
+    for each in $FILES_TO_QUERY; do
+        if $RMC_BIN -B "$each" -d "$RMC_DB_FILE" -o "$TEST_DIR/$each"; then
+            echo "Test Failed: rmc tool returned success when querying $each specific to another board type $board from $RMC_DB_FILE"
+            exit 1
+        elif ls "$TEST_DIR/$each" 2>/dev/null; then
+            echo "Test Failed: rmc tool generated data when querying failed"
+            exit 1
+        fi
+    done
+done
+
+echo "Test: All Pass - Data in $TEST_DIR"
-- 
2.7.4


