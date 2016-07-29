Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45FE2E00CC5; Fri, 29 Jul 2016 02:11:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F808E00D1B
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:10:59 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id i5so14787032wmg.2
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=dhcPHTosKJams9Ho4UE8NofmBlExd9AeSuaQaPhIHME=;
	b=uPC063jofcYy7IiIJ4+FfTMZ3rC/xxomXboY5yUry5o9V+DDvzZWsTII3k1uqlla4S
	tDUIGnilFWVKc2Oj5P6AZD6h31/DeuVfMXNJyZ0HixkUO5PDoJoF17zdx2FIMd/gC6BV
	VBae+HoJNEcBhnf5RP+ajOMoQwZHKwMiGJIKw00hTiIhRlm565Bn1Fl/6GsylIyGEVpV
	bOf7H7kqTWHNBrCeZ090x4vJHNqJEs2bqL5o8gWl9M4SjR0LZV4+rm4FujrDWmjobCxo
	oSUdmV9T4ffqVQac6jG6LLLY9If/U89qmRtduZqhnsrgQJgKGtpVKIFTVefmuiBZ+d7k
	zG+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=dhcPHTosKJams9Ho4UE8NofmBlExd9AeSuaQaPhIHME=;
	b=P2/FeSa+GrZ3lICBka582k4SVIidGnzSPKhMnaEitC3Qv3C5WzBsXxRyDTIdLY4rQZ
	Lxzj6178dvDWy+6lSUvb4OCSb2/awC6V56O+rszLrX7/qFGLZXlUjd0wXGArnXdwXrvP
	tAvBNONhWgUQ5eJXUp7sFai74LMwDX/YNdorTc+GF1ZGsTHrh5EST4fMZGD6QPQd7Ywk
	fmq06QSOaRnRZ+hDLU6xNG/ir6GigLgvEjAqAaYHSgWKz8jAhEo4hOVDhzG1oY0x1spH
	WzrB8536rVsEt4j0Timlvfgi21ng0ApJCVrEA5hK7KYwR2Xf/4NYNbBvyuCnTAi9A0qG
	eHwA==
X-Gm-Message-State: AEkooutdc9guWeFSj9aN1MztKyML2QZLyXakuQ9Rl45FVP5woBcCSK8/dUquvM6UCFKKxg==
X-Received: by 10.28.197.1 with SMTP id v1mr37679020wmf.8.1469783458561;
	Fri, 29 Jul 2016 02:10:58 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	ub8sm9217062wjc.39.2016.07.29.02.10.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 02:10:57 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 14:40:53 +0530
Message-Id: <1469783453-7197-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][RFC 6/8] systemd: mount: enable requiried refpolicy booleans
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
X-List-Received-Date: Fri, 29 Jul 2016 09:11:09 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

enable required refpolicy booleans for these modules mount:
allow_mount_anyfile & systemd:systemd_tmpfiles_manage_all

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...mount-enable-requiried-refpolicy-booleans.patch | 43 ++++++++++++++++++++++
 .../refpolicy/refpolicy_2.20151208.inc             |  1 +
 2 files changed, 44 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/0006-systemd-mount-enable-requiried-refpolicy-booleans.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/0006-systemd-mount-enable-requiried-refpolicy-booleans.patch b/recipes-security/refpolicy/refpolicy-2.20151208/0006-systemd-mount-enable-requiried-refpolicy-booleans.patch
new file mode 100644
index 0000000..cd93d1d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20151208/0006-systemd-mount-enable-requiried-refpolicy-booleans.patch
@@ -0,0 +1,43 @@
+systemd: mount: enable requiried refpolicy booleans
+
+enable required refpolicy booleans for these modules
+
+i. mount:  allow_mount_anyfile
+without enabling this boolean we are getting below avc denial
+
+audit(): avc:  denied  { mounton } for  pid=462 comm="mount" path="/run/media
+/mmcblk2p1" dev="tmpfs" ino=11523 scontext=system_u:system_r:mount_t:s0
+tcontext=system_u:object_r:initrc_var_run_t:s0 tclass=dir permissive=0
+
+This avc can be allowed using the boolean 'allow_mount_anyfile'
+allow mount_t initrc_var_run_t:dir mounton;
+
+ii. systemd : systemd_tmpfiles_manage_all
+without enabling this boolean we are not getting access to mount systemd
+essential tmpfs during bootup, also not getting access to create audit.log
+
+ ls  /var/log
+ /var/log -> volatile/log
+:~#
+
+upstream-status: pending
+
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+
+--- a/policy/booleans.conf
++++ b/policy/booleans.conf
+@@ -1156,12 +1156,12 @@ racoon_read_shadow = false
+ #
+ # Allow the mount command to mount any directory or file.
+ # 
+-allow_mount_anyfile = false
++allow_mount_anyfile = true
+ 
+ #
+ # Enable support for systemd-tmpfiles to manage all non-security files.
+ # 
+-systemd_tmpfiles_manage_all = false
++systemd_tmpfiles_manage_all = true
+ 
+ #
+ # Allow users to connect to mysql
diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20151208.inc
index d319561..b62167f 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20151208.inc
@@ -67,6 +67,7 @@ SYSTEMD_REFPOLICY_PATCHES = "\
 	file://0003-systemd-mount-logging-authlogin-add-allow-rules.patch \
 	file://0004-locallogin-add-allow-rules-for-type-local_login_t.patch \
 	file://0005-init-fix-reboot-with-systemd-as-init-manager.patch \
+	file://0006-systemd-mount-enable-requiried-refpolicy-booleans.patch \
 "
 
 
-- 
1.9.1


