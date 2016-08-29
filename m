Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8376EE00F27; Mon, 29 Aug 2016 06:37:54 -0700 (PDT)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C2C8E00F4F
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:37:19 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id i6so9383313pfe.0
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=GiouGMIrkig/PugZc+bAS6pJcGVogvnU6sHnEfLqpB8=;
	b=ltNvrT8SC1Oo4lsl3Xw/8qQ+Ef7f5867MSwCg2dCv6CR1p7Wr3oFEMfhbdRKqUxwHC
	ej5jKrmlytCxGl36f/KY0llN/4khvDnHR24YBPkqoJef5H9LlN4//OXzZxArFy2qcLin
	rFf8G6t9RFIL7Awl3hrIWEecek40kj93iT9QtzRgrtQLG3Xdd7WXNZSl3x6ix1ha/Lr6
	Xx4x2JCjlSp2RO5//X2D0lxsjwpkeNC0+TbhbhpOwXFMTkLQSiKlEW0PQmAezKp2M0n9
	yBAjeWvLVcAXGLrekzUG8/61VukX1/Dme4KTQ5+q3mMXMuJaCTA49VDXVVaTBSlHoE46
	x/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=GiouGMIrkig/PugZc+bAS6pJcGVogvnU6sHnEfLqpB8=;
	b=G0ek+zk+38Y7Qk7zZSEZmoz+IKRDUNKKg/1O/QmfWyHVxAHp/SjeqxSXcNPKW+/E/Z
	2e6bdqPp9HtPwBJMSnpGu0OTpIZTugQoudhbTPjTAKrP365/7Wq+zrX76JwsEr28Y5mp
	nBVI5fiapD1LjonMj0CejLRNVbojXNsEaybhYxa6thjPobmubbThOPJ88yZj13lkVLLI
	wVBrU1CIDUmnGydOD4KNym1m48q6SZnWHYZ+4qmF6EmETCc5Hx4EHmEFfsGTO2/Xtpe2
	TNRJpAuItzqiMGDSCuAwpmDFUdJXqEI3RAW81TjrZwbUzn1DKXkxdkmatjirOaFy7tZv
	9C2g==
X-Gm-Message-State: AE9vXwM4AFUGH/XZYbVY9wewgcvmDoihafjU2p6uNq6cLaguRLn+RztMuxiGXLd0J7YZ5A==
X-Received: by 10.98.62.65 with SMTP id l62mr32865502pfa.2.1472477839199;
	Mon, 29 Aug 2016 06:37:19 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	an11sm49689220pac.26.2016.08.29.06.37.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 06:37:18 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 19:07:00 +0530
Message-Id: <1472477820-25910-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux] [PATCH 4/9] refpolicy-minimum: locallogin: add allow rules for type local_login_t
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
X-List-Received-Date: Mon, 29 Aug 2016 13:37:54 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add allow rules for locallogin module avc denials.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...inimum-locallogin-add-allow-rules-for-typ.patch | 53 ++++++++++++++++++++++
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |  1 +
 2 files changed, 54 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch b/recipes-security/refpolicy/refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
new file mode 100644
index 0000000..3623215
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
@@ -0,0 +1,53 @@
+From 0e99f9e7c6d69d5f784fe7352c9507791d8cbef9 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Fri, 26 Aug 2016 17:53:46 +0530
+Subject: [PATCH 4/9] refpolicy-minimum: locallogin: add allow rules for type
+ local_login_t
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
+Upstream-Status: Pending
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
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index f4b80bc..d1ea37d 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -75,4 +75,5 @@ SYSTEMD_REFPOLICY_PATCHES = " \
         file://0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch \
 	file://0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch \
 	file://0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch \
+	file://0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch \
 	"
-- 
1.9.1


