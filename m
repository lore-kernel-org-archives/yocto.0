Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 437F6E00F38; Mon, 29 Aug 2016 06:38:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CC09E00F26
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:38:14 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id vy10so9008804pac.0
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=qN7dzB4UxMCpL/acQqJu9W4eaBrqmp2rUd4LWok/CVg=;
	b=gEfFYblBW/SCj7iCGlQscyRP/km+LwWjN91WW/V1lDzqMveU5QWjuCAD/Cgn5APkjp
	v1nNy0vKpCl/AKz3tN3ZBQnaU03A6CbPx0zA4L5x7R0OxkJEHz85dP6cCtqfZ0d19kVq
	lcReAJSERoYtaDHnOsXFqwOijjL8hjEunNyaRoSlo5MIT2q11VJhsp831VaWAxAkPj00
	WKSc/prhmLOXOLWc96XSoFdudXF4Pa6uzbVRzcDpolbEge5gFu2mzCqJwvVaDHsbN0Dq
	J141UJ5EwgiZcNejBaIAOeU06v1Co/ffw43TSIaqePVu67dFTOomUQKXKCem9I4McSC2
	UMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=qN7dzB4UxMCpL/acQqJu9W4eaBrqmp2rUd4LWok/CVg=;
	b=W4QsxW5JWh6aHFWBnKtPNC5ZZmNmDFQGtxpOsdd3VSzBcIDxDETUYcu+UJ8ktzn+mn
	ryatX1h05kZzzpfi3oj6UawtBImKbz9subHxKYPyad/GE/2J4AP/jgyQAX30kIuhVjEB
	fEc5FtOTXQ34ojGNt+FHz1D02A4BWv4KMc3daA1Vat2bjnM2ZQIeyq8O+cTINfVP+6EP
	Ly5AJU6hCj9XhoHSj/gCD+kEdmmrCpw94zs13gU/PEm/p/gq8VPvooSTZ+JmznUJGmMJ
	GvVw3/HefKXdQYRZkWzdV3kjQ7Ft3jQpIMe4BcGYsfrpO53RsjzDLRKangln232hwQY4
	Xwrw==
X-Gm-Message-State: AE9vXwMzaIxC2UnUuuU3IyBmWRxSWWD/MU+UcECtpqabTPdv//jiJdsqD5ceZ2bEnCEnlA==
X-Received: by 10.66.127.38 with SMTP id nd6mr33105564pab.74.1472477894264;
	Mon, 29 Aug 2016 06:38:14 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	s23sm49616125pfd.23.2016.08.29.06.38.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 06:38:13 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 19:08:07 +0530
Message-Id: <1472477887-25986-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux] [PATCH 6/9] refpolicy-minimum: systemd: mount: enable required refpolicy booleans
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
X-List-Received-Date: Mon, 29 Aug 2016 13:38:37 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

enable required refpolicy booleans for these modules mount:
allow_mount_anyfile & systemd:systemd_tmpfiles_manage_all

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...inimum-systemd-mount-enable-requiried-ref.patch | 47 ++++++++++++++++++++++
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |  1 +
 2 files changed, 48 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch b/recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch
new file mode 100644
index 0000000..bf7b980
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch
@@ -0,0 +1,47 @@
+refpolicy-minimum: systemd: mount: enable required refpolicy booleans
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
+audit(): avc:  denied  { search } for  pid=168 comm="systemd-tmpfile" name=
+"sys" dev="proc" ino=4026531855 scontext=system_u:system_r:systemd_tmpfiles
+_t:s0 tcontext=system_u:object_r:sysctl_t:s0 tclass=dir permissive=0
+
+ ls  /var/log
+ /var/log -> volatile/log
+:~#
+
+Upstream-Status: Pending
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
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index 9c806c4..1647c28 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -77,4 +77,5 @@ SYSTEMD_REFPOLICY_PATCHES = " \
 	file://0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch \
 	file://0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch \
 	file://0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch \
+	file://0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch \
 	"
-- 
1.9.1


