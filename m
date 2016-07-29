Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A487E00C65; Fri, 29 Jul 2016 02:10:56 -0700 (PDT)
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
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F63E00C28
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:10:46 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id i5so14786330wmg.2
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 02:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=sKbHO3puS1PWjn2jKfrxPKoUSpZC2raAHtgo/HkRkUA=;
	b=AZAd1sfGvdNPPNT3916mbj4VMoiuFKyjQIWPbEabS7l3D7TgMu/Y8CQfXY3ZpMkbMs
	ZceN3ubByWzb2GxWb2ra07QDvSHlTZHY5ZNID8wjQBTheTCu8N6tiKCAQZJVHnyegEQh
	s/DnrDV2IEOZ5t87kTXqGWMp1KEBHQ8nlfVrwutV6x+tQuvV2ZCNfEYwvkbCFkMj0gSG
	hjMOsknQB8fPxX5ougCvP6ze9sOnjsaIt0KzR8YpG64sNjyGolIcTH5SdCShAXteuxcP
	t11Kt3TSKYIpfsmZiOAgtNeiVlGs5SU21RwUA8kpSOFvs46dub79GsAnIzeYB4BI1ovj
	D35A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=sKbHO3puS1PWjn2jKfrxPKoUSpZC2raAHtgo/HkRkUA=;
	b=hSXDtNR29jG0pjM+IvdqnbehlAWD17K92vVvCACcAEItkiYGM5HAEocq1zu5JpIfIi
	DP4hYRggx6UhpDTQh7HKhZH7Xk6+VTAViTliVZJGGURrgOks07C7Omna0ENV+ClMTC6u
	oP2HazoLJLZnvAMNfkiYI/CFREf26dXHZOqOi1SK/YacjufzhVD+T/4zcsZDFxh6kDjX
	boS5pp71HQ+RnBFZZVQ+SzFZafWlJSEA7LDoCJYDHIZ3UgmdoUDi2vVWBARBAjqOMC8F
	nZ4djpG3KrsAukUGnLi9YbxGPNzwkvpLcnMco57SsnC7W0Oa6yBeo6uuEpSUC67O8R7Z
	8OYw==
X-Gm-Message-State: AEkooutsQG3Lu8p5n6C6X6unG6hiIgMeJ+TZMV3cQBf1krgnbTpd6muoPmQO7Z3nG7ccPw==
X-Received: by 10.194.113.9 with SMTP id iu9mr37734559wjb.118.1469783446066;
	Fri, 29 Jul 2016 02:10:46 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	n7sm15535847wjf.11.2016.07.29.02.10.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 02:10:45 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 14:40:39 +0530
Message-Id: <1469783439-7141-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][RFC 5/8] init: fix reboot with systemd as init manager.
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
X-List-Received-Date: Fri, 29 Jul 2016 09:10:56 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add allow rule to fix avc denial during system reboot.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...t-fix-reboot-with-systemd-as-init-manager.patch | 35 ++++++++++++++++++++++
 .../refpolicy/refpolicy_2.20151208.inc             |  1 +
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20151208/0005-init-fix-reboot-with-systemd-as-init-manager.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20151208/0005-init-fix-reboot-with-systemd-as-init-manager.patch b/recipes-security/refpolicy/refpolicy-2.20151208/0005-init-fix-reboot-with-systemd-as-init-manager.patch
new file mode 100644
index 0000000..69a9019
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20151208/0005-init-fix-reboot-with-systemd-as-init-manager.patch
@@ -0,0 +1,35 @@
+From cabab1db81115da296193ea8d917dc7cadfdd8f6 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Mon, 25 Jul 2016 18:30:59 +0530
+Subject: [PATCH 5/6] init: fix reboot with systemd as init manager.
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
+upstream-status: pending
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
diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20151208.inc
index 151c973..d319561 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20151208.inc
@@ -66,6 +66,7 @@ SYSTEMD_REFPOLICY_PATCHES = "\
 	file://0002-audit-logging-getty-audit-related-allow-rules.patch \
 	file://0003-systemd-mount-logging-authlogin-add-allow-rules.patch \
 	file://0004-locallogin-add-allow-rules-for-type-local_login_t.patch \
+	file://0005-init-fix-reboot-with-systemd-as-init-manager.patch \
 "
 
 
-- 
1.9.1


