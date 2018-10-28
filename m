Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E56EE00ABE; Sun, 28 Oct 2018 11:50:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6ED0E00718
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:31 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id c25-v6so2886936pfe.6
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=B88upFd5sUCbzAlb6+v1WpNY+58fPoX5bKdSyzFEewI=;
	b=nvLMc34mUOE1mN/mhe4jCNP35QUVXcRvKwu4gVBWfWRe9/S+CEKKjlPObNBBz4gV1h
	hALv5xeopkjxvWeAiRVwoMnAo4bxTmxfZGP+k00VNpSmxPh6mpT66lOy0l7iji5NaNrZ
	CJRt9bxLJlIdu+knL6g2VNCEmVKhEGSZCXhBRJc4BJOWDYTxQemktqv1D/uIPhrLBaQm
	E6wz5XgV3ObpGF5YQ4ZHfI7O2FYnXZYcHzC28fJs+P2Cyz2KSPQnWAPfeD1SAZON3qAB
	Spr8uxDPT+rO13yQhkutTYr9Xrno8tiexmw4MMuVJXPbaWTHjMK1rLtOsR0jcbL9Lgxt
	LFCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=B88upFd5sUCbzAlb6+v1WpNY+58fPoX5bKdSyzFEewI=;
	b=ZU7BUvEFAp4JdK3XTrDrBDUa6IwXoSQRCL7sD11XU2BMo6V59VF85Jtgqb4FnKzoS9
	wriGMeASTXZLtjPD1PcAVDlFsinUhkZTyszJUNuY4nV6f/XefwLm+qX5DjI/U0tFLDOZ
	W2/QCmSWkTHT7ZYrJowneyc/g7voauKAq5cq47lH28B4VpJVz8/eE1KoPVC+dmqtoV1C
	9GdSut18PTpbVVlHAmlmPFI25HPWyeiFs7JT7sK4JqXnT8bk2ekaiAGmCdrbA8xiOyyb
	FWE12xHeqPBaEWGu91s5MtvxoKwaH10X5UN6lLMIMopMW5h6DhqF7wROi/fKzA/Mqvmf
	IOng==
X-Gm-Message-State: AGRZ1gIc5YxbteD4j4gAuh6Tm7zzH0n1RL0FDE1YogGNiHp6kIdIXZmN
	gSA8MaQYM5F+nU+Zmf2ra48lvwPw
X-Google-Smtp-Source: AJdET5ftV6b/Jbx919ks604/N3YVruuJ0WoST2kkg9OGFkPuQgxvBwAHV2dh8X1PbAOhEK9jZV9wZg==
X-Received: by 2002:a63:5c16:: with SMTP id
	q22-v6mr10916999pgb.417.1540752630956; 
	Sun, 28 Oct 2018 11:50:30 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.30
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:17 +0000
Message-Id: <1540752628-10832-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 02/13] tpm2-abrmd: update to 2.0.2
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:32 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/{tpm2-abrmd_2.0.1.bb => tpm2-abrmd_2.0.2.bb}      | 9 ++++-----
 .../{tpm2simulator-native_138.bb => tpm2simulator_138.bb}        | 0
 2 files changed, 4 insertions(+), 5 deletions(-)
 rename meta-tpm/recipes-tpm/tpm2-abrmd/{tpm2-abrmd_2.0.1.bb => tpm2-abrmd_2.0.2.bb} (86%)
 rename meta-tpm/recipes-tpm/tpm2simulator/{tpm2simulator-native_138.bb => tpm2simulator_138.bb} (100%)

diff --git a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
similarity index 86%
rename from meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
rename to meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
index 31e90f8..951556d 100644
--- a/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.1.bb
+++ b/meta-tpm/recipes-tpm/tpm2-abrmd/tpm2-abrmd_2.0.2.bb
@@ -9,15 +9,16 @@ SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 
-DEPENDS += "autoconf-archive dbus glib-2.0 pkgconfig tpm2.0-tss glib-2.0-native \
+DEPENDS = "autoconf-archive dbus glib-2.0 tpm2.0-tss glib-2.0-native \
             libtss2 libtss2-mu libtss2-tcti-device libtss2-tcti-mssim"
 
+
 SRC_URI = "\
     git://github.com/01org/tpm2-abrmd.git \
     file://tpm2-abrmd-init.sh \
     file://tpm2-abrmd.default \
 "
-SRCREV = "80f8966b90d6394ad568e362d2936b333c2822bb"
+SRCREV = "d0120ace58d97bc9520c0d558657eaca87ae73b1"
 
 S = "${WORKDIR}/git"
 
@@ -34,9 +35,7 @@ USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "tss"
 USERADD_PARAM_${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
 
-PACKAGECONFIG ?="udev"
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd', '', d)}"
-
+PACKAGECONFIG ?="${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd', '', d)}"
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir}, --with-systemdsystemunitdir=no"
 
 do_install_append() {
diff --git a/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_138.bb b/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator_138.bb
similarity index 100%
rename from meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_138.bb
rename to meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator_138.bb
-- 
2.7.4


