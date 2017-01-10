Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 596FEE007AA; Tue, 10 Jan 2017 00:54:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF75E0053F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 00:54:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v0A8sEXP007023
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 00:54:14 -0800
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 10 Jan 2017 00:54:13 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 Jan 2017 00:54:11 -0800
Message-ID: <f5b771f20c349c121b8a78883caa3fe8bda45492.1484037945.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1484037945.git.wenzong.fan@windriver.com>
References: <cover.1484037945.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] refpolicy-minimum: update patch file
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
X-List-Received-Date: Tue, 10 Jan 2017 08:54:17 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Fix build errors:
| policy/modules/system/init.te:1120:ERROR 'class dbus is not within scope' at token ';' on line 40246:
| allow initrc_t init_t:dbus send_msg;
| allow init_t initrc_t:dbus { send_msg acquire_svc };

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...07-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch b/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
index 50e3c64..a4084d7 100644
--- a/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
+++ b/recipes-security/refpolicy/refpolicy-minimum/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
@@ -49,15 +49,18 @@ diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
 index 19a7a20..cefa59d 100644
 --- a/policy/modules/system/init.te
 +++ b/policy/modules/system/init.te
-@@ -1105,3 +1105,8 @@ allow init_t self:capability2 audit_read;
+@@ -1105,3 +1105,11 @@ allow init_t self:capability2 audit_read;
  
  allow initrc_t init_t:system { start status reboot };
  allow initrc_t init_var_run_t:service { start status };
 +
 +allow initrc_t init_var_run_t:service stop;
-+allow initrc_t init_t:dbus send_msg;
++init_dbus_chat(initrc_t)
 +
-+allow init_t initrc_t:dbus { send_msg acquire_svc };
++gen_require(`
++	class dbus acquire_svc;
++')
++allow init_t initrc_t:dbus { acquire_svc };
 diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
 index 09ec33f..be25c82 100644
 --- a/policy/modules/system/locallogin.te
-- 
2.11.0


