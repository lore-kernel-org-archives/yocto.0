Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57A1DE00F45; Sat, 17 Feb 2018 09:45:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3DFBE00F3E
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:45:57 -0800 (PST)
Received: by mail-pl0-f68.google.com with SMTP id g18so3404531plo.7
	for <yocto@yoctoproject.org>; Sat, 17 Feb 2018 09:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=wH/u0EvoXIfTNbgADBIUp0E0Db/N2vywSgsS3wv2YdQ=;
	b=Sxix//yIOSoWhTLAiVEnpQkunVRCu42DnRjyVfqX4ta4Fw6EVRTlmmu6ZAZNduvOeN
	eTHNkTmU8MbL7+dbhRtbMBBhw6hUWwmmBqnvuZf8ESlaAfsdi1Nxu2JoV81eS/4OvaY4
	8cijJOcVrU/qcgyCtWae7DX6tI24SwABrK086PWGLZXCz3HJTYSR5lOT7R303iXFv+2Z
	UjSpLmWXPfejcBRWkDAZsyejoS0ermR1e6Qpp7Sdcfb5mcMSPFvS+MTmJskuL/WeHsMY
	TUnGD8xzcq+CFIcdlm5TbqroKVzD6kcGXbjSGqunqlDgNhALp+zBxA6lGS4o60oCGN6X
	tX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=wH/u0EvoXIfTNbgADBIUp0E0Db/N2vywSgsS3wv2YdQ=;
	b=Ew+lOyLlGSVlA86ikVHqn5fwqBJj/6Zv9v4irUOfYw2Wo0xgDtHt1h8bxakWmjuZ8f
	ipbJ15H2d49rfqKreiR7kAufitWbNrY96FrvDTuvaNz/Xm15z9vDHALDxrGA9Lkt2wgd
	hwalfrmyEIra9cZbtZNhBbH3RZqNHmoEpSVy+1q3JA4BQSFpyW9kbQU7QZKZVznfM/t+
	+acDm8JYt7ChdkYQScBMrNmPQZse8c9ZDSfechkm1ieVzd4BV2CnBIBXrh+aYbnpkmd/
	tVyBC57Xx2XjeadC4C6pQvEPXE/5mJHL4/MyhewEgoRyEOUnOJ23FN7YfawyCdm721wv
	Vbag==
X-Gm-Message-State: APf1xPBrmZFBVtle6qw89djayYoYfdZVqzNxG4GdRj/eOUNAO1Q3JDf7
	bH6gXlyV0B4hwENSKQU8Cxo=
X-Google-Smtp-Source: AH8x224A7XD7CT2a+gHhD+5y593vmLzFDed0yjDL5XcLLo1Pjy+7WwaqsDxSC8Y7qzWkCPIN5/adnw==
X-Received: by 2002:a17:902:20e6:: with SMTP id
	v35-v6mr2913490plg.226.1518889557466; 
	Sat, 17 Feb 2018 09:45:57 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:1886:ab70:59d6:9e86])
	by smtp.gmail.com with ESMTPSA id
	z90sm60105451pfd.78.2018.02.17.09.45.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 17 Feb 2018 09:45:56 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sat, 17 Feb 2018 09:45:51 -0800
Message-Id: <1518889554-32605-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1518889554-32605-1-git-send-email-akuster808@gmail.com>
References: <1518889554-32605-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/5] google-authenticator-libpam: add new package
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
X-List-Received-Date: Sat, 17 Feb 2018 17:45:58 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../google-authenticator-libpam_1.05.bb              | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb

diff --git a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb
new file mode 100644
index 0000000..73b802f
--- /dev/null
+++ b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb
@@ -0,0 +1,20 @@
+SUMMARY = "Google Authenticator PAM module"
+HOME_PAGE = "https://github.com/google/google-authenticator-libpam"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
+LICENSE = "Apache-2.0"
+
+SRC_URI = "git://github.com/google/google-authenticator-libpam.git"
+SRCREV = "7365ed10d54393fb4c100cac063ae8edb744eac6"
+
+DEPENDS = "libpam"
+
+S = "${WORKDIR}/git"
+
+inherit autotools distro_features_check
+
+REQUIRED_DISTRO_FEATURES = "pam"
+
+PACKAGES += "pam-google-authenticator"
+FILES_pam-google-authenticator = "${libdir}/security/pam_google_authenticator.so"
+
+RDEPNEDS_pam-google-authenticator  = "libpam"
-- 
2.7.4


