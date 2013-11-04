Return-Path: <joe@deserted.net>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5314E0174E
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 08:50:35 -0800 (PST)
Received: by mail-qc0-f181.google.com with SMTP id w4so4073547qcr.12
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 08:50:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=gwNOZD9LNOwisXHAFKE8nk5dU4Fva8ybkWkys18H99E=;
	b=caYoQ6F0/JjXukNSs5guqAZpsQW8eGZC0E/SIv+4PLBCPt3F5N/Ra9ci2WSZJ+vl4s
	Onx4jKMvynmPWTsohWwwgTvDptGy2l325XoVKsWUgqXc608nTpUK+rrxlZqxgRZVZWvL
	wWYKM4r6YuOg34sSurlSI5KpzsDJLa5JUaTM0Dcp/pR31uRkwcnEnbevyH22iwtHDkEf
	rIyJmwcWwPNd5lFD8KEMhFCv0OaqvFb8I5nzhWukfVdSoSCxNTzJrXWJiDekbkNOIL0V
	BJE3NHr/qzlbIGCJp+RA0aAH1HEz+bIQz0KEtB5ihdOQKlYaaKdafkfEfCq/tgFGZG7H
	+aQQ==
X-Gm-Message-State: ALoCoQl/eMNGRhqKvGvLXl19ZhrqDklUuY1RogMjomhBjc+L68JDh1mzOeqly0907w0A0SdCxroc
X-Received: by 10.224.65.199 with SMTP id k7mr23840011qai.24.1383583834527;
	Mon, 04 Nov 2013 08:50:34 -0800 (PST)
Received: from burninator.corp.ad.wrs.com ([128.224.252.2])
	by mx.google.com with ESMTPSA id v19sm56685807qaw.0.2013.11.04.08.50.33
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Nov 2013 08:50:33 -0800 (PST)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Mon,  4 Nov 2013 11:50:32 -0500
Message-Id: <1383583832-12017-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-security][PATCH] libseccomp: add latest stable version, add ptest
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
X-List-Received-Date: Mon, 04 Nov 2013 16:50:36 -0000

A new stable version of libseccomp is available, so update the recipe.  At
the same time, integrate the ptest support that's currently being
discussed on the libseccomp list.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 .../0001-tests-create-install-tests-target.patch   |  203 ++++++++++++++++++++
 ...tests-install-python-tests-if-appropriate.patch |   61 ++++++
 ...ts-introduce-alternate-test-report-format.patch |  124 ++++++++++++
 .../{libseccomp_2.1.0.bb => libseccomp_2.1.1.bb}   |   10 +-
 4 files changed, 395 insertions(+), 3 deletions(-)
 create mode 100644 recipes-security/libseccomp/files/0001-tests-create-install-tests-target.patch
 create mode 100644 recipes-security/libseccomp/files/0002-tests-install-python-tests-if-appropriate.patch
 create mode 100644 recipes-security/libseccomp/files/0003-tests-introduce-alternate-test-report-format.patch
 rename recipes-security/libseccomp/{libseccomp_2.1.0.bb => libseccomp_2.1.1.bb} (58%)

diff --git a/recipes-security/libseccomp/files/0001-tests-create-install-tests-target.patch b/recipes-security/libseccomp/files/0001-tests-create-install-tests-target.patch
new file mode 100644
index 0000000..55eaf81
--- /dev/null
+++ b/recipes-security/libseccomp/files/0001-tests-create-install-tests-target.patch
@@ -0,0 +1,203 @@
+From e8e166cdc1fc31e02d568424e17b9f9fc1e95256 Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe@deserted.net>
+Date: Mon, 28 Oct 2013 15:40:14 -0400
+Subject: [PATCH 1/3] tests: create install-tests target
+
+It can be useful, in particular on a cross-build setup, to install the
+tests and regression suite in addition to the library itself.  Since most
+people probably don't want that by default, though, create an
+install-tests target that will place tests and regression script in
+$(INSTALL_LIB_DIR)/libseccomp/tests and install the necessary tools in
+$(INSTALL_BIN_DIR)/bin.
+
+Upstream-Status: Submitted [http://www.mail-archive.com/libseccomp-discuss@lists.sourceforge.net/msg00470.html]
+
+Signed-off-by: Joe MacDonald <joe@deserted.net>
+---
+ Makefile         |    9 +++++++++
+ README           |    8 ++++++++
+ install.mk       |    1 +
+ macros.mk        |   18 ++++++++++++++++++
+ tests/Makefile   |    7 ++++++-
+ tests/regression |   19 ++++++++++++++++---
+ tools/Makefile   |    3 +++
+ 7 files changed, 61 insertions(+), 4 deletions(-)
+
+diff --git a/Makefile b/Makefile
+index 1f61f20..8cb0a16 100644
+--- a/Makefile
++++ b/Makefile
+@@ -40,6 +40,7 @@ include install.mk
+ CONFIGS = configure.mk configure.h version_info.mk libseccomp.pc
+ SUBDIRS_BUILD = include src tests tools
+ SUBDIRS_INSTALL = include src tools doc
++SUBDIRS_INSTALL_TEST = tools tests
+ 
+ .PHONY: tarball install check check-syntax ctags cstags clean dist-clean \
+ 	$(SUBDIRS_BUILD)
+@@ -106,6 +107,14 @@ check: tools tests
+ check-syntax:
+ 	@./tools/check-syntax
+ 
++install-tests: $(SUBDIRS_INSTALL_TEST)
++	@$(ECHO_INFO) "installing tests in $(INSTALL_PREFIX) ..."
++	$(ECHO_INFO) "installing from $$dir/"
++	@for dir in $(SUBDIRS_INSTALL_TEST); do \
++		$(ECHO_INFO) "installing from $$dir/"; \
++		$(MAKE) -C $$dir install-tests; \
++	done
++
+ ctags:
+ 	@$(ECHO_INFO) "generating ctags for the project ..."
+ 	@ctags -R *
+diff --git a/README b/README
+index 37b9709..14ae254 100644
+--- a/README
++++ b/README
+@@ -41,6 +41,14 @@ to run all of the tests you can simply run the script:
+ However, the script takes a number of options to customize its execution; the
+ options can be displayed by running "./regression -h".
+ 
++It is also possible to install the tests and regression script to the system by
++issuing:
++
++   # make install-tests
++
++When complete, installed tests and regression script may be found in
++$LIBDIR/lib/libseccomp/test
++
+ * Other Useful Tools
+ 
+ The "tools/" directory includes a number of tools which may be helpful in the
+diff --git a/install.mk b/install.mk
+index 123af33..f6aa311 100644
+--- a/install.mk
++++ b/install.mk
+@@ -24,6 +24,7 @@ INSTALL_PREFIX ?= $(CONF_INSTALL_PREFIX)
+ INSTALL_SBIN_DIR ?= $(DESTDIR)/$(INSTALL_PREFIX)/sbin
+ INSTALL_BIN_DIR ?= $(DESTDIR)/$(INSTALL_PREFIX)/bin
+ INSTALL_LIB_DIR ?= $(DESTDIR)/$(CONF_INSTALL_LIBDIR)
++INSTALL_TEST_DIR ?= $(DESTDIR)/$(CONF_INSTALL_LIBDIR)/libseccomp/tests
+ INSTALL_INC_DIR ?= $(DESTDIR)/$(INSTALL_PREFIX)/include
+ INSTALL_MAN_DIR ?= $(DESTDIR)/$(INSTALL_PREFIX)/share/man
+ 
+diff --git a/macros.mk b/macros.mk
+index 6df5b3a..e7c196d 100644
+--- a/macros.mk
++++ b/macros.mk
+@@ -206,6 +206,24 @@ INSTALL_INC_MACRO += \
+ 			$^ "$(INSTALL_INC_DIR)";
+ 
+ ifeq ($(V),0)
++	INSTALL_TEST_MACRO = @echo " INSTALL $^ ($(INSTALL_TEST_DIR))";
++endif
++INSTALL_TEST_MACRO += \
++		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) \
++			-d "$(INSTALL_TEST_DIR)"; \
++		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) -m 0755 \
++			$^ "$(INSTALL_TEST_DIR)";
++
++ifeq ($(V),0)
++	INSTALL_REGRESSION_TEST_MACRO = @echo " INSTALL regression ($(INSTALL_TEST_DIR))";
++endif
++INSTALL_REGRESSION_TEST_MACRO += \
++		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) \
++			-d "$(INSTALL_TEST_DIR)"; \
++		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) -m 0755 \
++			regression "$(INSTALL_TEST_DIR)";
++
++ifeq ($(V),0)
+ 	INSTALL_MAN1_MACRO = \
+ 		@echo " INSTALL manpages ($(INSTALL_MAN_DIR)/man1)";
+ endif
+diff --git a/tests/Makefile b/tests/Makefile
+index 5fdbca7..135551c 100644
+--- a/tests/Makefile
++++ b/tests/Makefile
+@@ -31,6 +31,7 @@ include ../macros.mk
+ 
+ include $(TOPDIR)/version_info.mk
+ include $(TOPDIR)/configure.mk
++include $(TOPDIR)/install.mk
+ 
+ OBJS = util.o
+ 
+@@ -71,7 +72,7 @@ DEPS_TESTS = $(TESTS:%=%.d)
+ # targets
+ #
+ 
+-.PHONY: check clean
++.PHONY: check clean install-tests
+ 
+ all: $(TESTS) $(OBJS)
+ 
+@@ -91,5 +92,9 @@ $(TEST_PRIVATE): 00-test.c $(OBJS) ../src/libseccomp.a
+ check: $(TESTS)
+ 	./regression
+ 
++install-tests: $(TESTS) $(TESTS:%=%.tests)
++	$(INSTALL_TEST_MACRO)
++	$(INSTALL_REGRESSION_TEST_MACRO)
++
+ clean:
+ 	$(RM) $(DEPS_TESTS) $(DEPS_OBJS) $(TESTS) $(TEST_PRIVATE) $(OBJS) *.pyc
+diff --git a/tests/regression b/tests/regression
+index 790d5e1..3c293a4 100755
+--- a/tests/regression
++++ b/tests/regression
+@@ -23,9 +23,18 @@
+ 
+ GLBL_ARCH_SUPPORT="x86 x86_64 x32 arm"
+ 
+-GLBL_SYS_ARCH="../tools/scmp_arch_detect"
+-GLBL_SYS_RESOLVER="../tools/scmp_sys_resolver"
+-GLBL_SYS_SIM="../tools/scmp_bpf_sim"
++GLBL_SYS_PATH=$(dirname $(readlink -m $0))
++if [ -d $GLBL_SYS_PATH/../tools/ ]; then
++	# prepend ../tools to $PATH so we can use verify_deps to check for
++	# scmp_* support binaries if regression is running out of the build
++	# tree.
++	PATH=$GLBL_SYS_PATH/../tools/:$PATH
++	export PATH
++fi
++
++GLBL_SYS_ARCH=$(which scmp_arch_detect)
++GLBL_SYS_RESOLVER=$(which scmp_sys_resolver)
++GLBL_SYS_SIM=$(which scmp_bpf_sim)
+ 
+ ####
+ # functions
+@@ -761,6 +770,9 @@ verify_deps head
+ verify_deps sed
+ verify_deps seq
+ verify_deps tr
++verify_deps scmp_arch_detect
++verify_deps scmp_sys_resolver
++verify_deps scmp_bpf_sim
+ 
+ # global variables
+ declare -a batch_list
+@@ -865,6 +877,7 @@ arch=$($GLBL_SYS_ARCH)
+ # display the test output and run the requested tests
+ echo "=============== $(date) ===============" >&$logfd
+ echo "Regression Test Report (\"regression $*\")" >&$logfd
++cd $(dirname $0)
+ for mode in $mode_list; do
+ 	run_tests
+ done
+diff --git a/tools/Makefile b/tools/Makefile
+index 79c7d25..9f4ffea 100644
+--- a/tools/Makefile
++++ b/tools/Makefile
+@@ -62,5 +62,8 @@ $(TOOLS):
+ install: $(TOOLS_INSTALL)
+ 	$(INSTALL_BIN_MACRO)
+ 
++install-tests: $(TOOLS)
++	$(INSTALL_BIN_MACRO)
++
+ clean:
+ 	$(RM) $(DEPS) $(TOOLS)
+-- 
+1.7.10.4
+
diff --git a/recipes-security/libseccomp/files/0002-tests-install-python-tests-if-appropriate.patch b/recipes-security/libseccomp/files/0002-tests-install-python-tests-if-appropriate.patch
new file mode 100644
index 0000000..52ae751
--- /dev/null
+++ b/recipes-security/libseccomp/files/0002-tests-install-python-tests-if-appropriate.patch
@@ -0,0 +1,61 @@
+From 49dd92b85ca1797f2d289f48d3c1cdaec678334b Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe@deserted.net>
+Date: Mon, 28 Oct 2013 15:40:15 -0400
+Subject: [PATCH 2/3] tests: install python tests if appropriate
+
+Install the python tests in addition to the C tests if python bindings are
+being built.  The regression script can, and needs to, have the
+modification of the PYTHONPATH removed since it's unlikely in this
+scenario that the original source tree will be around at all anymore.
+This shouldn't be a problem since the library should be installed to the
+default PYTHONPATH anyway.
+
+Upstream-Status: Submitted [http://www.mail-archive.com/libseccomp-discuss@lists.sourceforge.net/msg00470.html]
+
+Signed-off-by: Joe MacDonald <joe@deserted.net>
+---
+ macros.mk      |    3 ++-
+ tests/Makefile |    6 +++++-
+ 2 files changed, 7 insertions(+), 2 deletions(-)
+
+diff --git a/macros.mk b/macros.mk
+index e7c196d..13e7ed3 100644
+--- a/macros.mk
++++ b/macros.mk
+@@ -221,7 +221,8 @@ INSTALL_REGRESSION_TEST_MACRO += \
+ 		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) \
+ 			-d "$(INSTALL_TEST_DIR)"; \
+ 		$(INSTALL) -o $(INSTALL_OWNER) -g $(INSTALL_GROUP) -m 0755 \
+-			regression "$(INSTALL_TEST_DIR)";
++			regression "$(INSTALL_TEST_DIR)"; \
++		$(SED) -i "/\/..\/src\/python\/build\/lib\./d" "$(INSTALL_TEST_DIR)/regression";
+ 
+ ifeq ($(V),0)
+ 	INSTALL_MAN1_MACRO = \
+diff --git a/tests/Makefile b/tests/Makefile
+index 135551c..309a570 100644
+--- a/tests/Makefile
++++ b/tests/Makefile
+@@ -78,6 +78,10 @@ all: $(TESTS) $(OBJS)
+ 
+ -include $(DEPS_TESTS) $(DEPS_OBJS)
+ 
++ifeq ($(CONF_BINDINGS_PYTHON), 1)
++	PY_TESTS = $(TESTS:%=%.py)
++endif
++
+ $(DEPS_TESTS):
+ 	$(MAKEDEP_EXEC)
+ 	$(ADDDEP) $@ ../src/libseccomp.a
+@@ -92,7 +96,7 @@ $(TEST_PRIVATE): 00-test.c $(OBJS) ../src/libseccomp.a
+ check: $(TESTS)
+ 	./regression
+ 
+-install-tests: $(TESTS) $(TESTS:%=%.tests)
++install-tests: $(TESTS) $(TESTS:%=%.tests) $(PY_TESTS)
+ 	$(INSTALL_TEST_MACRO)
+ 	$(INSTALL_REGRESSION_TEST_MACRO)
+ 
+-- 
+1.7.10.4
+
diff --git a/recipes-security/libseccomp/files/0003-tests-introduce-alternate-test-report-format.patch b/recipes-security/libseccomp/files/0003-tests-introduce-alternate-test-report-format.patch
new file mode 100644
index 0000000..cd4d6fb
--- /dev/null
+++ b/recipes-security/libseccomp/files/0003-tests-introduce-alternate-test-report-format.patch
@@ -0,0 +1,124 @@
+From 389604a4d7b445e429998599827195751238400a Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe@deserted.net>
+Date: Mon, 28 Oct 2013 15:40:16 -0400
+Subject: [PATCH 3/3] tests: introduce alternate test report format
+
+Adding an alternate test report format to the regression script.  The
+output format is modelled on the automake style described here:
+
+   http://www.gnu.org/software/automake/manual/automake.html#Simple-Tests
+
+and is intended to support integrating the existing test scripts with the
+Yocto Project's ptest infrastructure:
+
+   https://wiki.yoctoproject.org/wiki/Ptest#What_constitutes_a_ptest.3F
+
+Currently there was only one use of the existing "INFO" tag in test
+reporting, used in a way that better fit the "SKIP" model, so update that
+as well and adjust print_result to handle SKIP and INFO interchangeably so
+as to minimize the impact of this change on anyone not choosing to use the
+new report format.
+
+Upstream-Status: Submitted [http://www.mail-archive.com/libseccomp-discuss@lists.sourceforge.net/msg00470.html]
+
+Signed-off-by: Joe MacDonald <joe@deserted.net>
+---
+ tests/regression |   35 +++++++++++++++++++++++++++--------
+ 1 file changed, 27 insertions(+), 8 deletions(-)
+
+diff --git a/tests/regression b/tests/regression
+index 3c293a4..a9315f7 100755
+--- a/tests/regression
++++ b/tests/regression
+@@ -71,7 +71,7 @@ function verify_deps() {
+ function usage() {
+ cat << EOF
+ usage: regression [-h] [-v] [-m MODE] [-a] [-b BATCH_NAME] [-l <LOG>]
+-                  [-s SINGLE_TEST] [-t <TEMP_DIR>] [-T <TEST_TYPE>]
++                  [-p] [-s SINGLE_TEST] [-t <TEMP_DIR>] [-T <TEST_TYPE>]
+ 
+ libseccomp regression test automation script
+ optional arguments:
+@@ -80,6 +80,7 @@ optional arguments:
+   -a             specifies all tests are to be run
+   -b BATCH_NAME  specifies batch of tests to be run
+   -l [LOG]       specifies log file to write test results to
++  -p             use automake-style results output (ptest format)
+   -s SINGLE_TEST specifies individual test number to be run
+   -t [TEMP_DIR]  specifies directory to create temporary files in
+   -T [TEST_TYPE] only run tests matching the specified type
+@@ -127,17 +128,31 @@ function print_data() {
+ #
+ # Arguments:
+ #     1    string containing generated test number
+-#     2    string containing the test result (INFO, SUCCESS, ERROR, or FAILURE)
++#     2    string containing the test result (SKIP, INFO, SUCCESS, ERROR, or FAILURE)
+ #     3    string containing addition details
+ #
+ function print_result() {
+-	if [[ $2 == "INFO" && -z $verbose ]]; then
++	if [[ $2 == "INFO" || $2 == "SKIP" ]] && [[ -z $verbose ]]; then
+ 		return
+ 	fi
+-	if [[ $3 == "" ]]; then
+-		printf "Test %s result:   %s\n" "$1" "$2" >&$logfd
++	if [[ -n $ptest_report ]]; then
++		case $2 in
++			SUCCESS )
++				printf "PASS: %s %s\n" "$1" "$3" >&$logfd
++				;;
++			ERROR | FAILURE )
++				printf "FAIL: %s %s\n" "$1" "$3" >&$logfd
++				;;
++			SKIP )
++				printf "SKIP: %s %s\n" "$1" "$3" >&$logfd
++				;;
++		esac
+ 	else
+-		printf "Test %s result:   %s %s\n" "$1" "$2" "$3" >&$logfd
++		if [[ $3 == "" ]]; then
++			printf "Test %s result:   %s\n" "$1" "$2" >&$logfd
++		else
++			printf "Test %s result:   %s %s\n" "$1" "$2" "$3" >&$logfd
++		fi
+ 	fi
+ }
+ 
+@@ -358,7 +373,7 @@ function run_test_bpf_sim() {
+ 		fi
+ 	elif [[ "$testarch" != "all" ]] && [[ "$testarch" != "$arch" ]]; then
+ 		# only run tests that match the current architecture
+-		print_result $(generate_test_num "$1" $2 1) "INFO" \
++		print_result $(generate_test_num "$1" $2 1) "SKIP" \
+ 		       "Test skipped due to test/system architecture difference"
+ 		stats_skipped=$(($stats_skipped+1))
+ 		return
+@@ -788,13 +803,14 @@ tmpfile=""
+ tmpdir=""
+ type=
+ verbose=
++ptest_report=
+ stats_all=0
+ stats_skipped=0
+ stats_success=0
+ stats_failure=0
+ stats_error=0
+ 
+-while getopts "ab:gl:m:s:t:T:vh" opt; do
++while getopts "ab:gl:m:ps:t:T:vh" opt; do
+ 	case $opt in
+ 	a)
+ 		runall=1
+@@ -820,6 +836,9 @@ while getopts "ab:gl:m:s:t:T:vh" opt; do
+ 			exit 1
+ 		esac
+ 		;;
++	p)
++		ptest_report=1
++		;;
+ 	s)
+ 		single_list[single_count]=$OPTARG
+ 		single_count=$(($single_count+1))
+-- 
+1.7.10.4
+
diff --git a/recipes-security/libseccomp/libseccomp_2.1.0.bb b/recipes-security/libseccomp/libseccomp_2.1.1.bb
similarity index 58%
rename from recipes-security/libseccomp/libseccomp_2.1.0.bb
rename to recipes-security/libseccomp/libseccomp_2.1.1.bb
index f909c62..27fa259 100644
--- a/recipes-security/libseccomp/libseccomp_2.1.0.bb
+++ b/recipes-security/libseccomp/libseccomp_2.1.1.bb
@@ -5,10 +5,14 @@ LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
 SRC_URI = "http://sourceforge.net/projects/libseccomp/files/${PN}-${PV}.tar.gz \
-           file://compiler.patch"
+           file://compiler.patch \
+           file://0001-tests-create-install-tests-target.patch \
+           file://0002-tests-install-python-tests-if-appropriate.patch \
+           file://0003-tests-introduce-alternate-test-report-format.patch \
+"
 
-SRC_URI[md5sum] = "3961103c1234c13a810f6a12e60c797f"
-SRC_URI[sha256sum] = "b0d6e4f0984e6632a04f0cf33c6babdb011674ba15ff208e196f037e0e09905e"
+SRC_URI[md5sum] = "1f41207b29e66a7e5e375dd48a64de85"
+SRC_URI[sha256sum] = "8812c11e407c383f5ad6afb84a88e5a0224477bcfe8ff03f0c548e5abaac841c"
 
 do_configure() {
    ${S}/configure --prefix=${prefix} --libdir=${libdir}
-- 
1.7.10.4


