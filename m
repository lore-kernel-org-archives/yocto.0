Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 662CCE00CC3; Tue, 10 Oct 2017 00:46:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD6DCE00C96
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 00:46:44 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v9A7khRT031626
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 00:46:43 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 10 Oct 2017 00:46:43 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>
Date: Tue, 10 Oct 2017 00:46:43 -0700
Message-ID: <20171010074643.114607-1-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] policycoreutils: update AUDITH, PAMH
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
X-List-Received-Date: Tue, 10 Oct 2017 07:46:45 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Update definition of AUDITH, PAMH according to the upstream changes
for Makefiles:

  commit 89ce96cac6ce5eeed78cb39c58514cd68494d7aa
  ...
  -ifeq ($(PAMH), /usr/include/security/pam_appl.h)
  +ifeq ($(PAMH), y)
  ...
  -ifeq ($(AUDITH), /usr/include/libaudit.h)
  +ifeq ($(AUDITH), y)

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 442b086..63ca402 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -118,8 +118,8 @@ export STAGING_LIBDIR
 export BUILD_SYS
 export HOST_SYS
 
-AUDITH="`ls ${STAGING_INCDIR}/libaudit.h >/dev/null 2>&1 && echo /usr/include/libaudit.h `"
-PAMH="`ls ${STAGING_INCDIR}/security/pam_appl.h >/dev/null 2>&1 && echo /usr/include/security/pam_appl.h `"
+AUDITH="`ls ${STAGING_INCDIR}/libaudit.h >/dev/null 2>&1 && echo y`"
+PAMH="`ls ${STAGING_INCDIR}/security/pam_appl.h >/dev/null 2>&1 && echo y`"
 EXTRA_OEMAKE += "${@target_selinux(d, 'PAMH=${PAMH} AUDITH=${AUDITH}', 'PAMH= AUDITH= ')} INOTIFYH=n"
 EXTRA_OEMAKE += "PREFIX=${D}"
 EXTRA_OEMAKE += "INITDIR=${D}/etc/init.d"
-- 
2.13.0


