Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D0F3E008EC; Tue, 18 Nov 2014 03:30:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3106FE008D7
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 03:30:21 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id y10so5945411wgg.27
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 03:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=lcEE7IgGyoMoozH4s7a1qTn1PKwIYPDp2S0PbLSDYDk=;
	b=GcDHNTxlvxkiFTaeLPWrMJ1hks31dkfDSsCb2HK1xMvW7c09tZYJ0/dKPhRIq524yP
	R8Fk0rZEE3lwhJj+tKb1g4Ze2VOFWQgV0Bxe/xjX7zhZ+hahmAMZY6aYtLNfwzWBpHyb
	AG/AGGN0/F2m1U2M/2tvmK9yd2eQPstj9AOSuM1jFt87q6AUZNe8FvPd+FskK6F7nupn
	DCVcZ5tjRO5TiEU4mwBP+hERCX7o3DMpR3ImPrXvzdnbtet1LXlAZsn1eoPHQwJBs12M
	jW3BIXmykQOu9QlHG5Yz59xvOwQNCwrJuvxvpKj6jfgG5oDyGqjQpRWkk3Tjej33VDwD
	Cvsg==
X-Received: by 10.180.72.199 with SMTP id f7mr2401725wiv.53.1416310221170;
	Tue, 18 Nov 2014 03:30:21 -0800 (PST)
Received: from localhost.localdomain ([139.181.35.34])
	by mx.google.com with ESMTPSA id ga1sm19173836wib.1.2014.11.18.03.30.18
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 18 Nov 2014 03:30:20 -0800 (PST)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 18 Nov 2014 17:00:32 +0530
Message-Id: <1416310232-12630-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: [meta-selinux][PATCH] refpolicy:20140311 update for systemd
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
X-List-Received-Date: Tue, 18 Nov 2014 11:30:27 -0000

From: Shrikant Bobade <Shrikant_Bobade@mentor.com>

Systemd init type and related allow rules
updated for refpolicy.

Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
---
 .../refpolicy-update-for_systemd.patch             |   50 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20140311.inc             |    1 +
 2 files changed, 51 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch b/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch
new file mode 100644
index 0000000..634061e
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch
@@ -0,0 +1,50 @@
+refpolicy: update for systemd
+ 
+It provides the systemd support for refpolicy 
+and related allow rules. 
+The restorecon provides systemd init labeled 
+as init_exec_t.
+
+ 
+Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
+
+Index: refpolicy/policy/modules/contrib/shutdown.fc
+===================================================================
+--- refpolicy.orig/policy/modules/contrib/shutdown.fc	2014-11-17 21:01:05.040804419 +0530
++++ refpolicy/policy/modules/contrib/shutdown.fc	2014-11-18 14:38:50.854860908 +0530
+@@ -5,6 +5,9 @@
+ /sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ /sbin/shutdown\.sysvinit	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
++# systemd support
++/bin/systemctl	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
++
+ /usr/lib/upstart/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+ 
+ /usr/sbin/shutdown	--	gen_context(system_u:object_r:shutdown_exec_t,s0)
+Index: refpolicy/policy/modules/system/init.fc
+===================================================================
+--- refpolicy.orig/policy/modules/system/init.fc	2014-11-17 21:01:05.040804419 +0530
++++ refpolicy/policy/modules/system/init.fc	2014-11-18 14:38:04.467444078 +0530
+@@ -31,6 +31,8 @@
+ #
+ /sbin/init(ng)?		--	gen_context(system_u:object_r:init_exec_t,s0)
+ /sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
++# systemd support
++/lib/systemd/systemd	--	gen_context(system_u:object_r:init_exec_t,s0)
+ # because nowadays, /sbin/init is often a symlink to /sbin/upstart
+ /sbin/upstart		--	gen_context(system_u:object_r:init_exec_t,s0)
+ 
+Index: refpolicy/policy/modules/system/init.te
+===================================================================
+--- refpolicy.orig/policy/modules/system/init.te	2014-11-17 21:03:01.577129153 +0530
++++ refpolicy/policy/modules/system/init.te	2014-11-18 14:37:45.647680675 +0530
+@@ -913,3 +913,8 @@
+ optional_policy(`
+ 	zebra_read_config(initrc_t)
+ ')
++
++# systemd related allow rules
++allow kernel_t init_t:process dyntransition;
++allow devpts_t device_t:filesystem associate;
++allow init_t self:capability2 block_suspend;
diff --git a/recipes-security/refpolicy/refpolicy_2.20140311.inc b/recipes-security/refpolicy/refpolicy_2.20140311.inc
index 8894583..19b41eb 100644
--- a/recipes-security/refpolicy/refpolicy_2.20140311.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20140311.inc
@@ -29,6 +29,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-rpm.patch \
             file://poky-fc-ftpwho-dir.patch \
             file://poky-fc-fix-real-path_su.patch \
+	    file://refpolicy-update-for_systemd.patch \
            "
 
 # Specific policy for Poky
-- 
1.7.9.5


