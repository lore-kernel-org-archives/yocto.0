Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F345E00B01; Mon, 27 Mar 2017 14:40:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61128E0098A
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 14:39:59 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id 79so16076952pgf.0
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 14:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=WSZGcUWZY85f5b4zpC5R5VAdtA9Gt/byb90DfZiowqE=;
	b=FKpinbme0Ev/ML+V0nveLFnL9uYy8Lkp3liF6Qw4NzEry5SaskPblPCCX08vH41Yew
	sg+pV2Ao1yYMzkXEIwDWCu/6hyepQAiBHv8bE+3CR2fjevuZfjxkq/BMGOUA1g0ah8c9
	xDtrv149sZSOFPVnYGcPQAT8yd5MkRHm4QVAMqm93WVpmsm41b/O2MSjX7CtC0h2i1SV
	uJmlYliWXIyfRft70Q4l7jgDVSVFrC0pHYlHHM4xuUyfquszg2yOyLVuT7lIh/UOSOsZ
	oyv4cbCcw811mYfUSAVPNSkIadnz/7CH9Kxg6IQX6UZ1TdTxLDZZYtw9gbDNq7ttnzjr
	yOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=WSZGcUWZY85f5b4zpC5R5VAdtA9Gt/byb90DfZiowqE=;
	b=tHWOWTkmYBSTh4ULPbcfLhj2v73Bj0Nev1rEt9Kliai1+40SSnWcgf9UXvk/bcQjFZ
	VrNQJ7W+WH+UJoqGPeIYmUAEqYJ6Uz5n4SlzPQYoSclfwLlnYWX44UeRsfVrHDR9NI8g
	BFGoFgRIX5O8Pne+advCaFM++VU16ZJIInnsgio6g/aevHivR/5OElJaiWQC+6PTls/O
	LXuxtohUeZ5cYtNqz6MqMnE6re5bV3SwUuZMEm5ORYNkWdlhtvrFbg/HSmAE3yuvr/24
	rNLPwzzjJp3v4xdzuxIyzkC9Jiu12/4S3dgMEMNtaVKdVojn5kkqs2K6JKcOR5ABNgh0
	q2mg==
X-Gm-Message-State: AFeK/H2fZrANaQRN9mUSEBdlWSYOcuyZHE3dSU/1cEUziKpa+O0tCnbKWzZyHmPY7Fk3MQ==
X-Received: by 10.99.216.85 with SMTP id k21mr26279094pgj.10.1490650799216;
	Mon, 27 Mar 2017 14:39:59 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com (174-24-47-146.clsp.qwest.net.
	[174.24.47.146]) by smtp.gmail.com with ESMTPSA id
	u198sm2926709pgb.45.2017.03.27.14.39.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 27 Mar 2017 14:39:58 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Mon, 27 Mar 2017 14:39:56 -0700
Message-Id: <1490650797-31204-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] tpm2.0-tools: update to latest
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
X-List-Received-Date: Mon, 27 Mar 2017 21:40:02 -0000

From: Armin Kuster <akuster@mvista.com>

minor changes to reflect configure/makefile updates

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
index b7026aa..6f1141c 100644
--- a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
+++ b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
@@ -4,9 +4,10 @@ LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=91b7c548d73ea16537799e8060cea819"
 SECTION = "tpm"
 
-DEPENDS = "tpm2.0-tss openssl curl"
+DEPENDS = "pkgconfig tpm2.0-tss openssl curl autoconf-archive"
 
-SRCREV = "c924cc8ca752e5af6a829f893c6be4b185d56e99"
+# Mar 17, 2017
+SRCREV = "0b744d1b13ce57b4be547ae773d7db1cbccf9a04"
 
 SRC_URI = "git://github.com/01org/tpm2.0-tools.git;protocol=git;branch=master;name=tpm2.0-tools;destsuffix=tpm2.0-tools"
 
@@ -14,10 +15,6 @@ S = "${WORKDIR}/tpm2.0-tools"
 
 PV = "git${SRCPV}"
 
-inherit autotools-brokensep pkgconfig
+inherit autotools pkgconfig
+
 
-do_configure () {
-	cd ${S}
-	./bootstrap  --force
-	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
-}
-- 
2.7.4


