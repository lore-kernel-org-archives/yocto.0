Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40654E006C7; Fri, 29 Jul 2016 02:10:40 -0700 (PDT)
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
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2992E006C7
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:10:31 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id o80so14780584wme.0
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=JIndmN17cj5dc88iNd8cas5tOiD8uvJMCN6ssf1ThwU=;
	b=nozSQNlpxVeEvYVdlhl01imLV+ORK5l4+SdyerZiUfhEgkhI3e6Sbu9TkURP6ZSR6n
	zMdjx96g29EbkTSjTUoSdQEVlr3Dt8cX4TNFLtHtlK4NdK1fCqcZnfOPSQsK/WSc8xjN
	u4ty/TeAkxNDlGemXs+Evgh6nb4FkcLGKKA43uQ7aSbfsyWToZnGLKrHG+n1OX4Uycye
	QNAJa+6xIpq8Izl4DhGFPWOmoK6joywHDh9mUfGZ5AJnpLj29LcbVNVxMUyoFBKI2uxj
	rMBCh4XjWFj0QCnn8/m2CjkUdu9SSrquIbaZwIE6Ipdan+t8uJ2bm/FQvu+zMNu1zAtt
	0SjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JIndmN17cj5dc88iNd8cas5tOiD8uvJMCN6ssf1ThwU=;
	b=IH3Yfh390qHVpOcP2urvL0lQum2pkz82NUYiorXtFYp983oIvk3ga4Xk6mDEzLcmYR
	VJs9TEuhi4dcPa3n+e1GsDdHyVEJdwY9051t4aEkxbBmjfC4SkgWDgVl0uOd4k9HGkNP
	4F3wFqItZoYYxOjFPPgxd405JmAuqoTFlRW+i+E0Atb2AUPEhpzRpdJdnxV72yUh1dq3
	3okyY/QiZEw7m2qyoFyK72RNYcS1G8bik6qgGTC6/B3DvJHH39LCg0KNhfQdDZNupn8G
	BJ34vWwhEBxdopD+uNAI0TYCVEsGHQ/G8ARGhnS+v8Yhi2FYFLGXIQJzsCmcR06cXwSk
	Ur+g==
X-Gm-Message-State: AEkooutdRiEFs4Vtb2Ol2BgHfZMFCNoMM9omkGJL3oCB3xHj9PYJ2nZC7sPiW7YIJb/hmQ==
X-Received: by 10.194.144.33 with SMTP id sj1mr42805379wjb.150.1469783430520; 
	Fri, 29 Jul 2016 02:10:30 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	k186sm2019306wmd.13.2016.07.29.02.10.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 02:10:29 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 14:40:22 +0530
Message-Id: <1469783422-7086-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][RFC 4/8] locallogin: add allow rules for type local_login_t
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
X-List-Received-Date: Fri, 29 Jul 2016 09:10:40 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add allow rules for locallogin module avc denials.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...in-add-allow-rules-for-type-local_login_t.patch | 52 ++++++++++++++++++++++
 .../refpolicy/refpolicy_2.20151208.inc             |  1 +
 2 files changed, 53 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/0004-locallogin-add-allow-rules-for-type-local_login_t.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/0004-locallogin-add-allow-rules-for-type-local_login_t.patch b/recipes-security/refpolicy/refpolicy-2.20151208/0004-locallogin-add-allow-rules-for-type-local_login_t.patch
new file mode 100644
index 0000000..fd3d477
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20151208/0004-locallogin-add-allow-rules-for-type-local_login_t.patch
@@ -0,0 +1,52 @@
+From 545ebd866283ae929cfec716d067cd34015ad142 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Mon, 25 Jul 2016 18:26:18 +0530
+Subject: [PATCH 4/6] locallogin: add allow rules for type local_login_t
+
+add allow rules for locallogin module avc denials.
+
+without this change we are getting errors like these:
+
+type=AVC msg=audit(): avc:  denied  { read write open } for  pid=353
+comm="login" path="/var/volatile/log/lastlog" dev="tmpfs" ino=12281 scontext
+=system_u:system_r:local_login_t:s0-s0:c0.c1023 tcontext=system_u:object_r:
+var_log_t:s0 tclass=file permissive=1
+
+type=AVC msg=audit(): avc:  denied  { sendto } for  pid=353 comm="login"
+path="/run/systemd/journal/dev-log" scontext=system_u:system_r:
+local_login_t:s0-s0:c0.c1023 tcontext=system_u:system_r:initrc_t:s0
+tclass=unix_dgram_socket permissive=1
+
+type=AVC msg=audit(): avc:  denied  { lock } for  pid=353 comm="login" path=
+"/var/volatile/log/lastlog" dev="tmpfs" ino=12281 scontext=system_u:system_r
+:local_login_t:s0-s0:c0.c1023 tcontext=system_u:object_r:var_log_t:s0 tclass
+=file permissive=1
+
+upstream-status: pending
+
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/system/locallogin.te | 10 ++++++++++
+ 1 file changed, 10 insertions(+)
+
+diff --git a/policy/modules/system/locallogin.te b/policy/modules/system/locallogin.te
+index 53923f8..09ec33f 100644
+--- a/policy/modules/system/locallogin.te
++++ b/policy/modules/system/locallogin.te
+@@ -274,3 +274,13 @@ optional_policy(`
+ optional_policy(`
+ 	nscd_use(sulogin_t)
+ ')
++
++allow local_login_t initrc_t:fd use;
++allow local_login_t initrc_t:unix_dgram_socket sendto;
++allow local_login_t initrc_t:unix_stream_socket connectto;
++allow local_login_t self:capability net_admin;
++allow local_login_t var_log_t:file { create lock open read write };
++allow local_login_t var_run_t:file { open read write lock};
++allow local_login_t var_run_t:sock_file write;
++allow local_login_t tmpfs_t:dir { add_name write search};
++allow local_login_t tmpfs_t:file { create open read write lock };
+-- 
+1.9.1
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20151208.inc
index c051aec..151c973 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20151208.inc
@@ -65,6 +65,7 @@ SYSTEMD_REFPOLICY_PATCHES = "\
 	file://0001-systemd-unconfined-lib-add-systemd-services-allow-ru.patch \
 	file://0002-audit-logging-getty-audit-related-allow-rules.patch \
 	file://0003-systemd-mount-logging-authlogin-add-allow-rules.patch \
+	file://0004-locallogin-add-allow-rules-for-type-local_login_t.patch \
 "
 
 
-- 
1.9.1


