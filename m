Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A20ADE00A38; Tue, 14 Aug 2018 00:19:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A652E0096A
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 00:19:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7E7JgEI018554
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 14 Aug 2018 00:19:43 -0700
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Tue, 14 Aug 2018 00:19:42 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>, <flihp@twobit.us>,
	<mark.hatle@windriver.com>
Date: Tue, 14 Aug 2018 15:19:39 +0800
Message-ID: <1534231180-14875-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 1/2] policycoreutils: replace _virtclass-native with _class-native
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
X-List-Received-Date: Tue, 14 Aug 2018 07:19:47 -0000
Content-Type: text/plain

The _virtclass-native is obsolete and replaced by _class-native. In
recent oe-core commit c5aa33ac483618bc23fbaccb0a18853186f9155d the
_virtclass-native override was dropped entirely which caused
refpolicy-mls do_install failed:
  libsemanage.get_home_dirs: Error while fetching users.
  Returning list so far.
  libsemanage.semanage_validate_and_compile_fcontexts:
  setfiles returned error code 1. (No such file or directory).

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 1842fd8..7825a6c 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -128,7 +128,7 @@ BBCLASSEXTEND = "native"
 
 PCU_NATIVE_CMDS = "setfiles semodule hll"
 
-do_compile_virtclass-native() {
+do_compile_class-native() {
 	for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
 		oe_runmake -C $PCU_CMD \
 			INCLUDEDIR='${STAGING_INCDIR}' \
@@ -136,7 +136,7 @@ do_compile_virtclass-native() {
 	done
 }
 
-sysroot_stage_dirs_append_virtclass-native() {
+sysroot_stage_dirs_append_class-native() {
 	cp -R $from/${prefix}/libexec $to/${prefix}/libexec
 }
 
@@ -153,7 +153,7 @@ do_install_prepend() {
 	export SEMODULE_PATH=${sbindir} SYSTEMDDIR=${D}/${systemd_unitdir}
 }
 
-do_install_virtclass-native() {
+do_install_class-native() {
 	for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
 	     oe_runmake -C $PCU_CMD install \
 			DESTDIR="${D}" \
-- 
2.7.4


