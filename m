Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17956E00DAA; Sun,  8 Sep 2019 21:16:31 -0700 (PDT)
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
	*      [209.85.215.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8167E00D33
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 21:16:30 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id p3so7022271pgb.9
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2019 21:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=P160N7+Wicnbylhw5CpdE0IaGnsVsdWvZCMX7HDHQjo=;
	b=FeZf1E36q8tpgslWCUJUGjNIP8WQHQMf9wzOfcRhcUAVLPoaSNB2N1hk4D0tjNJ+T6
	Xw2C26EB9YIoB24vGWha6P/0J+ExBYk0Yo94AT4/31nCs21p5DwIu0jw93YXzD7EOjah
	YcO6aGrTZQclUrooHBzhLeRkkrRJzoshG66LTaeVmj/aKgLCDJbvXr3fKCJ8cWGzyMG5
	qVrS+ivj6fVoXlWJsh//XMGAlBw6/sjBBCx/uVluJlaWQ+gAyR2/5E4T8r5N3qZGJ8yF
	0/YEVjQNimKII22hn6e+qpOM3071+KnlzlDaE0OqqiR6PNnOFW3i3mhhMo+uIRY9J+5O
	TTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=P160N7+Wicnbylhw5CpdE0IaGnsVsdWvZCMX7HDHQjo=;
	b=SB+uz15fnLP5AI2KBfkE2277EvRoHJ5n1jWc06apXQYHTdZ4xSOasxfACoq5psKv6K
	eW3cXzoapCOfyRpy8HkdpIIV9yiOabfXQ1ARDVDowj8HC6oA/dZl4aiO05nfxYsmMIJO
	lBFO/+e6AO4hphQEJQyF6CEOrP1a7cz/YmP6Ru1IbC7mrw7KrGLF9ywdsM/S/ydmAbb7
	UJCcGayCWOL9NGwQx4grSO5B0jITc+t0zWg5Bl3mV4bxssDeEXr0fTOxfRZCATwcL/vq
	6951qzwPAaEtRMGhTTMuw96V/SGgGv6TzR/h1qaebg0M5EnZKQP8bl1xlsB3HmIiFwoh
	PCzA==
X-Gm-Message-State: APjAAAV823Gzgs4tQo0mN4Tpq07b+SPP23p6VANK/lGHJoicCNHb1c6A
	rmWFHAYL5pcKLs9e+94bVQ4WzCvZ
X-Google-Smtp-Source: APXvYqyiPiAySiXEcoBpxge4vCM5gS/Krs89OWQJcWfYmeAFNcWKFU96vmbSHz/qy1REBOneWFkJEw==
X-Received: by 2002:a17:90a:9749:: with SMTP id
	i9mr15485710pjw.42.1568002589734; 
	Sun, 08 Sep 2019 21:16:29 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u11sm5616457pfm.113.2019.09.08.21.16.28 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 08 Sep 2019 21:16:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  8 Sep 2019 21:16:21 -0700
Message-Id: <20190909041628.7934-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH 1/8] libtpm: update to 0.7.0
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
X-List-Received-Date: Mon, 09 Sep 2019 04:16:31 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/libtpm/{libtpm_0.6.0.bb => libtpm_0.7.0.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.6.0.bb => libtpm_0.7.0.bb} (88%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.6.0.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
similarity index 88%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.6.0.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
index a882960..d9863fa 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.6.0.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.7.0.bb
@@ -2,7 +2,7 @@ SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
 
-SRCREV = "9dc915572b51db0714640ba1ddf8cca9c0f24f05"
+SRCREV = "c26e8f7b08b19a69cea9e8f1f1e6639c7951fb01"
 SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-${PV}"
 
 PE = "1"
-- 
2.17.1


