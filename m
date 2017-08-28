Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 707C2E00C89; Mon, 28 Aug 2017 10:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECD0FE00C7B
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 10:00:26 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id r133so777727pgr.2
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 10:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=b+6PBKNqaX2BRcu7LF90SJSwHFT04SOKGIvIfzwfl8Y=;
	b=ekmwX8MLtYCL1TxZ9tUCJsZ5VsDVvXEvojw3vWdmkhM3K/vM9VD4k7MhjrXWFclVYQ
	aO8/6GPal19tVzyqTkcHtu2LpN74Nlh51iZi/xnonnhJs1aPoQXM0qh+scT9h5/eUgnz
	ogkSHNtiuYtNwx1I1tpPlStGle/SS6TX3HdOCW3RMLNNLlivMIGaTot1ReX9CyZ/D27i
	kw9iDpYwTPcpXhNPtQoKP8wYnX1S8pIdjVSYC/a0sQWFjvUsPmNIKhqvm8AF7E4dQEau
	9qPTfWJ1FMGJ4/VL0pGRQRmCxI/BBN0ynaFYFIW34Md//sXClazDRJbq/VPZt+fxisTF
	SRZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=b+6PBKNqaX2BRcu7LF90SJSwHFT04SOKGIvIfzwfl8Y=;
	b=DVegzQ/FmC2waXuu/vSPqRZbM7LuUtospWjvN7jb5DWBJOygqr2KlGR0MZnTJIqsIM
	5GlxphkyYXgxaNepN0V8yR4MzsMKCwjbNUbE4tmESqqHRpEGJmD+6tlhysZmdlhBY8A7
	cCNyw4FoOKfavKI4Pp16I/rF7x7qLbZYAir5SWIWmIwcmquBO8TmBgiZ/eWiA2J9pFkj
	h52VzCkIgMV1azFeuQUacL7YzsEZtEArCJci3VNJ/Eaow2oKfHF4i0wotHc4DFD/76Va
	3ZmITCuYpn8QtfM8qIlOE7o8T6TUTurr7t+O79ZJwjrOoFy4QTrGBdD5L2GO5DQr6hya
	1GQA==
X-Gm-Message-State: AHYfb5jAnTVEhZoaWeHnmelqJ9wCfxcmQli3lt5oe0dHuC9Dmultuexe
	mwgBZhWwNVP+EBXE
X-Received: by 10.98.196.152 with SMTP id h24mr1174143pfk.43.1503939625972;
	Mon, 28 Aug 2017 10:00:25 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:6d19:bef7:4a8c:962])
	by smtp.gmail.com with ESMTPSA id
	23sm1352973pfh.183.2017.08.28.10.00.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 28 Aug 2017 10:00:25 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Mon, 28 Aug 2017 10:00:23 -0700
Message-Id: <1503939624-26193-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] tripwire: update to 2.4.3.5
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
X-List-Received-Date: Mon, 28 Aug 2017 17:00:27 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tripwire/{tripwire_2.4.3.1.bb => tripwire_2.4.3.5.bb}             | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/tripwire/{tripwire_2.4.3.1.bb => tripwire_2.4.3.5.bb} (96%)

diff --git a/recipes-security/tripwire/tripwire_2.4.3.1.bb b/recipes-security/tripwire/tripwire_2.4.3.5.bb
similarity index 96%
rename from recipes-security/tripwire/tripwire_2.4.3.1.bb
rename to recipes-security/tripwire/tripwire_2.4.3.5.bb
index 3ea0806..0d775c2 100644
--- a/recipes-security/tripwire/tripwire_2.4.3.1.bb
+++ b/recipes-security/tripwire/tripwire_2.4.3.5.bb
@@ -6,7 +6,7 @@ SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=1c069be8dbbe48e89b580ab4ed86c127"
 
-SRCREV = "210a394b1ce63da7ac51a866ac2e68d439308701"
+SRCREV = "7af2781a19af31a41a259f3cce158003a3a0a72f"
 
 SRC_URI = "\
 	git://github.com/Tripwire/tripwire-open-source.git \
@@ -17,7 +17,7 @@ SRC_URI = "\
 	file://twinstall.sh \
 	file://twpol-yocto.txt \
        "
-#PV = "2.4.3.1+git${SRCPV}"
+#PV = "2.4.3.5+git${SRCPV}"
 
 S = "${WORKDIR}/git"
 
-- 
2.7.4


