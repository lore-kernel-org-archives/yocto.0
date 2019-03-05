Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFA4BE00CCC; Tue,  5 Mar 2019 08:46:19 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B66E00D42
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 08:46:15 -0800 (PST)
Received: by mail-pg1-f172.google.com with SMTP id l11so6000299pgq.10
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 08:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Xgv402uSVdHkCx+P5MDQpoB31ABiwSqjKB84KGhnIPw=;
	b=mWw7vpnkaIlYICo8kNhCdvJpSP8UCIKBE+tW76I3WCe/s9O8xztFcZ2pV/zqlzkPrG
	1iMopRmwi6bQe3TB5krbYW5vRS7IC6ofUWAx7wxRckh0gjiGH3W5GG7LvMjy0zXIJ/CO
	Fj77rlT4nJ6peY6dlFy+ijypuXR1RnRG/wwLASo0qZpEVghhSm5ZSUKqQRxRtcOElKf2
	jM/16SPPOlDkwYi/EdUrawsedgQ8Qv0DbC1DeuVVZXJhQtcfrCiWRTvbwPpPhjk9NSt8
	lS3g48V9syoVNgnO/+h4NHhy8wuyJHguXnzpZkEZJCOoC3lONEcGsDAwN0jiLBaMFHOd
	1a+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Xgv402uSVdHkCx+P5MDQpoB31ABiwSqjKB84KGhnIPw=;
	b=sB5mfXyBrBishHynu2wVNJsMi3hHbV2t1YK1UkTgJ8rr6mgSJZmrMKcLeY7CFO2ZTM
	Dxv0aMfZbAJHGo80TSs+0feUYhtateasAQX9bmrBe+12RIjcpmQdN2oKol/dzH8PI5Yx
	3BXcXWr0fF8GIEQMT41O5kf/VjE6zADYDN7eVp0Wqjna0En0vNHtq/YRxgfUvFAigglT
	edvHVUt9a5072gfh2Sa/qykH5yIF3aEO5nQLNdrrXYp1UKJvwbk6ShcDCHuHCFgtJWCa
	t1aOn9FYIVybA48NENS/bshW61EiocAckRBGDQLMJCKPkeYEr6jXLwHpaHmXRK21lbxk
	SJqw==
X-Gm-Message-State: APjAAAUm0Cyn3IYep0z562Hmf/ROkIw5VZPmwYlIud2dKQlDxzKSE8qx
	QcIzGx4TTpxr1S+d9zbIfkJmv2cY
X-Google-Smtp-Source: APXvYqxdHfC6MW1UhagxQmDQp15Hh4eQqVmpBsER5lJm/YZOoE9D9kTY3EoDoDsBC799p5T5q+PsDA==
X-Received: by 2002:a17:902:2a29:: with SMTP id
	i38mr2161631plb.110.1551804375124; 
	Tue, 05 Mar 2019 08:46:15 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n6sm18769726pgh.79.2019.03.05.08.46.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 08:46:14 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2019 08:46:08 -0800
Message-Id: <20190305164608.12211-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190305164608.12211-1-akuster808@gmail.com>
References: <20190305164608.12211-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 7/7] swtpm: update to stable release 0.1.0
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
X-List-Received-Date: Tue, 05 Mar 2019 16:46:19 -0000

added PE

split cuse into its own package

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../swtpm/{swtpm_1.0.bb => swtpm_0.1.0.bb}    | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)
 rename meta-tpm/recipes-tpm/swtpm/{swtpm_1.0.bb => swtpm_0.1.0.bb} (77%)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.1.0.bb
similarity index 77%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.1.0.bb
index 3fe1393..42de8b1 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.1.0.bb
@@ -9,11 +9,12 @@ DEPENDS = "libtasn1 expect socat glib-2.0 net-tools-native libtpm libtpm-native"
 # then swtpm_setup needs them at runtime
 DEPENDS += "tpm-tools-native expect-native socat-native"
 
-SRCREV = "94bb9f2d716d09bcc6cd2a2e033018f8592008e7"
-SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=tpm2-preview.v2 \
+SRCREV = "d803d84575ab3e5dac316bf863c7f569a27ea35f"
+SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-${PV} \
            file://fix_fcntl_h.patch \
            file://ioctl_h.patch \
            "
+PE = "1"
 
 S = "${WORKDIR}/git"
 
@@ -23,8 +24,9 @@ PARALLEL_MAKE = ""
 TSS_USER="tss"
 TSS_GROUP="tss"
 
-PACKAGECONFIG ?= "openssl cuse"
+PACKAGECONFIG ?= "openssl"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('BBFILE_COLLECTIONS', 'filesystems-layer', 'cuse', '', d)}"
 PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
@@ -39,12 +41,11 @@ GROUPADD_PARAM_${PN} = "--system ${TSS_USER}"
 USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
     --no-create-home  --shell /bin/false ${BPN}"
 
+PACKAGE_BEFORE_PN = "${PN}-cuse"
+FILES_${PN}-cuse = "${bindir}/swtpm_cuse"
+
+INSANE_SKIP_${PN}   += "dev-so"
+
 RDEPENDS_${PN} = "libtpm expect socat bash tpm-tools"
 
 BBCLASSEXTEND = "native nativesdk"
-
-python() {
-    if 'cuse' in d.getVar('PACKAGECONFIG') and \
-        'filesystems-layer' not in d.getVar('BBFILE_COLLECTIONS').split():
-        raise bb.parse.SkipRecipe('Cuse enabled which requires meta-filesystems to be present.')
-}
-- 
2.17.1


