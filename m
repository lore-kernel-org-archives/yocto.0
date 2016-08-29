Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5510E00F3F; Mon, 29 Aug 2016 06:37:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A11A1E00F24
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:37:40 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id cf3so9016545pad.2
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=bklOPq0diipwdqBO1NvC3Dh2DDjT5wLG7jhwMUcaPOQ=;
	b=KGJJJnzg3UUhWORRwFpkKRLrEeJraZG8focCHfKMZBuCu4NHns9QLBY4/GNG2YHry+
	cl0taCXu3dwOspLKdktFi1i4p8AcVVtAkKBb+gGE7psuRRQlC47vFZsoIvbTZSeyUkqJ
	x0TUAyc5Xyt1pY6cXqX1ZjuYSYykv52k0yIxJmXVTXxK4u/E/RudJ9tmHg5Ym0HuBNkQ
	zb550GKubalaxxEjuRff5G3oiIrkc+WjyWxjdVBVxzVlo69wQI3XeLElrbnBkGfvW6mR
	jwOoXmPvMTCqU4p/vmoxLYgJOXgXHw9LoSnt3xtXaJ6Mf48uiyKJw6tongvAAK0oXd+r
	CQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=bklOPq0diipwdqBO1NvC3Dh2DDjT5wLG7jhwMUcaPOQ=;
	b=kUkIIj5JRsc8sRcnbjL+Giqzgnh+fJoWna46/mMctP/ebGaXcNPLokUrex2sLfAKvU
	GIHNlm0WiRTCEqvLTWEaeK+7X6tgtVxqC0BzRn0Inl/Qp6YeKQPA0PqIQ4Y6vxGjAU3I
	l0PkzzmOeto8uEvfN5NlxLWt4FvSOZbxCwPms42HLm9hnDhgMbfSaWXcqKnOBluH2SoW
	Md/H7pP+zIS+RjE6+Lyha7hru86NljWv+i+5ujOiOuyQm6wvu0sx0GBCYQJEMjwKkePq
	8ojCKV6AMoYH02R19WHGbKu/7ErA0VV51Zdn8+a4AvJU56QcKaJqCSgSn4zhX5udrSIf
	+bYg==
X-Gm-Message-State: AE9vXwNMp/9WYbt10U2epsisxqtd2xTYQi0otPMb49c/ko0MhkzXMZYIiD/JHQOLD+/Wkg==
X-Received: by 10.66.193.7 with SMTP id hk7mr32580079pac.78.1472477859815;
	Mon, 29 Aug 2016 06:37:39 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	yu7sm28670357pab.45.2016.08.29.06.37.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 06:37:39 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 19:07:33 +0530
Message-Id: <1472477853-25948-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux] [PATCH 5/9] refpolicy-minimum: init: fix reboot with systemd as init manager.
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
X-List-Received-Date: Mon, 29 Aug 2016 13:37:58 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add allow rule to fix avc denial during system reboot.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...inimum-init-fix-reboot-with-systemd-as-in.patch | 36 ++++++++++++++++++++++
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |  1 +
 2 files changed, 37 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch b/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
new file mode 100644
index 0000000..c88f2b2
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
@@ -0,0 +1,36 @@
+From 07b7eb45458de8a6781019a927c66aabe736e03a Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Fri, 26 Aug 2016 17:53:53 +0530
+Subject: [PATCH 5/9] refpolicy-minimum: init: fix reboot with systemd as init
+ manager.
+
+add allow rule to fix avc denial during system reboot.
+
+without this change we are getting:
+
+audit: type=1107 audit(): pid=1 uid=0 auid=4294967295 ses=4294967295 subj=
+system_u:system_r:init_t:s0 msg='avc:  denied  { reboot } for auid=n/a uid=0
+gid=0 cmdline="/bin/systemctl --force reboot" scontext=system_u:system_r:
+initrc_t:s0 tcontext=system_u:system_r:init_t:s0 tclass=system
+
+Upstream-Status: Pending
+
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/system/init.te | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/init.te b/policy/modules/system/init.te
+index f9d7114..19a7a20 100644
+--- a/policy/modules/system/init.te
++++ b/policy/modules/system/init.te
+@@ -1103,5 +1103,5 @@ allow devpts_t device_t:filesystem associate;
+ allow init_t self:capability2 block_suspend;
+ allow init_t self:capability2 audit_read;
+ 
+-allow initrc_t init_t:system { start status };
++allow initrc_t init_t:system { start status reboot };
+ allow initrc_t init_var_run_t:service { start status };
+-- 
+1.9.1
+
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index d1ea37d..9c806c4 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -76,4 +76,5 @@ SYSTEMD_REFPOLICY_PATCHES = " \
 	file://0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch \
 	file://0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch \
 	file://0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch \
+	file://0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch \
 	"
-- 
1.9.1


