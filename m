Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69C33E00950; Tue, 28 Aug 2018 00:37:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51D6FE00939
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 00:37:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7S7bt6E028717
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Aug 2018 00:37:55 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Tue, 28 Aug 2018 00:37:54 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>
Date: Tue, 28 Aug 2018 15:37:53 +0800
Message-ID: <1535441873-21479-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] policycoreutils: fix usrmerge install path
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
X-List-Received-Date: Tue, 28 Aug 2018 07:37:58 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

Set SBINDIR to ${base_sbindir} to fix below
issue when usrmerge enabled in DISTRO_FEATURES

| ERROR: QA Issue: policycoreutils-dbg package is not obeying usrmerge distro feature. /sbin should be relocated to /usr. [usrmerge]

| WARNING: policycoreutils-2.7-r0 do_package: QA Issue: policycoreutils: Files/directories were installed but not shipped in any package:
  /sbin/restorecon
  /sbin/setfiles
  /sbin/load_policy
  /sbin/restorecon_xattr
  /sbin/fixfiles

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index b7cb510..e2d44f4 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -158,6 +158,7 @@ do_compile_prepend() {
 do_install_prepend() {
 	export PYTHON=python
 	export SEMODULE_PATH=${sbindir} SYSTEMDDIR=${D}/${systemd_unitdir}
+	export SBINDIR="${D}/${base_sbindir}"
 }
 
 do_install_class-native() {
-- 
2.7.4


