Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AEF0E00D08; Tue, 12 Sep 2017 19:43:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7CC5E00CE5
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8D2hFFF012539
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 12 Sep 2017 19:43:15 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:14 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:42:58 -0700
Message-ID: <e80fd09cfa363a5ac67e348947ae7837fd99a90a.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <cover.1505270194.git.wenzong.fan@windriver.com>
References: <cover.1505270194.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 16/20] policycoreutils: fixes for 2.7 uprev
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
X-List-Received-Date: Wed, 13 Sep 2017 02:43:32 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Remove setools from DEPENDS/RDEPENDS, it was required by sepolicy,
sepolgen, semanage which have been moved to python/*.

Rebase patch:
  - policycoreutils-fixfiles-de-bashify.patch

Drop useless patch:
  - policycoreutils-loadpolicy-symlink.patch

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc       |  4 +-
 .../policycoreutils-fixfiles-de-bashify.patch      | 53 ++++++++++------------
 recipes-security/selinux/policycoreutils_2.7.bb    |  3 --
 3 files changed, 27 insertions(+), 33 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 5e03ba0..fc181f7 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -16,7 +16,7 @@ PAM_SRC_URI = "file://pam.d/newrole \
 "
 
 DEPENDS += "libsepol libselinux libsemanage libcap gettext-native"
-EXTRA_DEPENDS = "libcap-ng libcgroup setools"
+EXTRA_DEPENDS = "libcap-ng libcgroup"
 DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native']}"
 
 inherit selinux pythonnative
@@ -60,7 +60,7 @@ RDEPENDS_${BPN}-setsebool += "\
 	libselinux \
 	libsemanage \
 "
-RDEPENDS_${BPN} += "setools setools-libs selinux-python"
+RDEPENDS_${BPN} += "selinux-python"
 
 WARN_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${WARN_QA}', d)}"
 ERROR_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${ERROR_QA}', d)}"
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
index 44d7525..0144de7 100644
--- a/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
@@ -13,12 +13,13 @@ so we'll try that instead.
 Upstream-Status: Pending
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- scripts/fixfiles | 26 +++++++++++++++-----------
- 1 file changed, 15 insertions(+), 11 deletions(-)
+ scripts/fixfiles | 23 ++++++++++++++---------
+ 1 file changed, 14 insertions(+), 9 deletions(-)
 
 diff --git a/scripts/fixfiles b/scripts/fixfiles
-index 5c29eb9..10a5078 100755
+index 1aa330f..a10837d 100755
 --- a/scripts/fixfiles
 +++ b/scripts/fixfiles
 @@ -1,4 +1,4 @@
@@ -27,29 +28,39 @@ index 5c29eb9..10a5078 100755
  # fixfiles
  #
  # Script to restore labels on a SELinux box
-@@ -25,7 +25,7 @@
+@@ -27,7 +27,7 @@ set -o nounset
  # number if the current kernel version is greater than 2.6.30, a negative
  # number if the current is less than 2.6.30 and 0 if they are the same.
  #
 -function useseclabel {
-+useseclabel() {
++useseclabel {
  	VER=`uname -r`
  	SUP=2.6.30
  	expr '(' "$VER" : '\([^.]*\)' ')' '-' '(' "$SUP" : '\([^.]*\)' ')' '|' \
-@@ -91,9 +91,9 @@ exclude_dirs_from_relabelling() {
+@@ -93,9 +93,10 @@ exclude_dirs_from_relabelling() {
  	  # skip not absolute path
  	  # skip not directory
  	  [ -z "${i}" ] && continue
--	  [[ "${i}" =~ "^[[:blank:]]*#" ]] && continue
+-	  [[ "${i}" =~ ^[[:blank:]]*# ]] && continue
 -	  [[ ! "${i}" =~ ^/.* ]] && continue
 -	  [[ ! -d "${i}" ]] && continue
 +	  echo "${i}" | egrep -q '^[[:space:]]*#' && continue
 +	  echo "${i}" | egrep -v '^/.*' && continue
 +	  [ ! -d "${i}" ] && continue
++
  	  exclude_from_relabelling="$exclude_from_relabelling -e $i"
- 	  logit "skipping the directory $i"
  	done < /etc/selinux/fixfiles_exclude_dirs
-@@ -205,8 +205,12 @@ fi
+     fi
+@@ -138,7 +139,7 @@ fi
+ # Log directories excluded from relabelling by configuration file
+ #
+ LogExcluded() {
+-for i in ${EXCLUDEDIRS//-e / }; do
++for i in `echo ${EXCLUDEDIRS} | sed -e 's/-e / /g'`; do
+     echo "skipping the directory $i"
+ done
+ }
+@@ -201,8 +202,12 @@ fi
  }
  
  rpmlist() {
@@ -64,29 +75,15 @@ index 5c29eb9..10a5078 100755
  }
  
  #
-@@ -233,10 +237,10 @@ if [ -n "${exclude_dirs}" ]
- then
- 	TEMPFCFILE=`mktemp ${FC}.XXXXXXXXXX`
- 	test -z "$TEMPFCFILE" && exit
--	/bin/cp -p ${FC} ${TEMPFCFILE} &>/dev/null || exit
--	tmpdirs=${tempdirs//-e/}
--	for p in ${tmpdirs}
-+	/bin/cp -p ${FC} ${TEMPFCFILE} >/dev/null 2>&1 || exit
-+	for p in ${tempdirs}
- 	do
-+		[ ${p} = "-e" ] && continue
- 		p="${p%/}"
- 		p1="${p}(/.*)? -- <<none>>"
- 		echo "${p1}" >> $TEMPFCFILE
-@@ -288,7 +292,7 @@ relabel() {
- 	restore Relabel
+@@ -276,7 +281,7 @@ relabel() {
+ 	exit 1
      fi
  
 -    if [ $fullFlag == 1  ]; then
-+    if [ $fullFlag = 1 ]; then
++    if [ $fullFlag = 1  ]; then
  	fullrelabel
+ 	return
      fi
- 
 -- 
-1.9.1
+2.13.0
 
diff --git a/recipes-security/selinux/policycoreutils_2.7.bb b/recipes-security/selinux/policycoreutils_2.7.bb
index aa4870d..78bf031 100644
--- a/recipes-security/selinux/policycoreutils_2.7.bb
+++ b/recipes-security/selinux/policycoreutils_2.7.bb
@@ -6,6 +6,3 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 SRC_URI[md5sum] = "65311b66ae01f7b7ad7c2ea7401b68ed"
 SRC_URI[sha256sum] = "0a1b8a4a323b854981c6755ff025fe98a0f1cff307f109abb260f0490f13e4f4"
 
-SRC_URI += "\
-	file://policycoreutils-loadpolicy-symlink.patch \
-	"
-- 
2.13.0


