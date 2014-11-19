Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3709BE008D9; Wed, 19 Nov 2014 00:13:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ADD6E008C3
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 00:13:25 -0800 (PST)
Received: by mail-wi0-f181.google.com with SMTP id r20so907452wiv.14
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 00:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=EbxrrjYVeRkoFj3pGhumu+/4QDGFwhByKsBjoJQ4CPM=;
	b=DALBca7sbgPrxp2v5LLD6B6RqM3O8Buq++yc7rm6MuReryU6zOZu6hZ9xNsZ+AXQD2
	qrw8piDEnQLQPfTb+ZHra/xE+TWzTTSI1yHDsIq9co3594dOsE5YwMr+1uPbY5tJjX0P
	jyR4Kuku4bgYl+jTN2ylgmh/1eHsx0wST1sCZepG8C+WPX1+hWavSKCAB72TuHo1hmk8
	DEfpq/RzRT3RhLZczSxo46gnFcUn3uGuTDbtf4FPhZOv37dudncno0KHoG69LV9+k0Rl
	7Z35sbtzBINpUDTaYiAgTa8Ta8LrpD4MpMEuHbzQN2Mnkc1ZOOYcFQwR1x1NdpSxoL9A
	z/Wg==
X-Received: by 10.180.9.169 with SMTP id a9mr3183545wib.7.1416384804398;
	Wed, 19 Nov 2014 00:13:24 -0800 (PST)
Received: from sbobade-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id s2sm1158084wia.3.2014.11.19.00.13.21
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 19 Nov 2014 00:13:23 -0800 (PST)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Nov 2014 13:43:06 +0530
Message-Id: <1416384786-18424-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: [meta-selinux][PATCH 1/3] V2 refpolicy:20140311 update for systemd
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
X-List-Received-Date: Wed, 19 Nov 2014 08:13:31 -0000

From: Shrikant Bobade <Shrikant_Bobade@mentor.com>

Systemd init type and related allow rules
updated for refpolicy.

Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
---
 .../refpolicy-update-for_systemd.patch             |   46 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20140311.inc             |    1 +
 2 files changed, 47 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch b/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch
new file mode 100644
index 0000000..80b420c
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20140311/refpolicy-update-for_systemd.patch
@@ -0,0 +1,46 @@
+refpolicy: update for systemd
+ 
+It provides the systemd support for refpolicy 
+and related allow rules. 
+The restorecon provides systemd init labeled 
+as init_exec_t.
+
+Upstream-Status: Pending
+
+
+Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
+
+--- a/policy/modules/contrib/shutdown.fc
++++ b/policy/modules/contrib/shutdown.fc
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
+--- a/policy/modules/system/init.fc
++++ b/policy/modules/system/init.fc
+@@ -31,6 +31,8 @@
+ #
+ /sbin/init(ng)?		--	gen_context(system_u:object_r:init_exec_t,s0)
+ /sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
++# systemd support
++/lib/systemd/systemd	--	gen_context(system_u:object_r:init_exec_t,s0)
+ # because nowadays, /sbin/init is often a symlink to /sbin/upstart
+ /sbin/upstart		--	gen_context(system_u:object_r:init_exec_t,s0)
+ 
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
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
index 8894583..557b4ab 100644
--- a/recipes-security/refpolicy/refpolicy_2.20140311.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20140311.inc
@@ -29,6 +29,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-rpm.patch \
             file://poky-fc-ftpwho-dir.patch \
             file://poky-fc-fix-real-path_su.patch \
+            file://refpolicy-update-for_systemd.patch \
            "
 
 # Specific policy for Poky
-- 
1.7.9.5


