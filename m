Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BD3BE008F1; Mon,  7 Mar 2016 14:16:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33B58E00B9C
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 14:16:05 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id x188so63305492pfb.2
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 14:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=QnHHZ58aoODgjsGHAYeKOShwetV4dPIbluqwBdphy8Q=;
	b=VNy/hg/HiVosGtA7OvfVoWFqueQxKLhNddrre1uMTY9Q1PYoZQuXR0gsoftCaEIvQ6
	olET9bnh8SvDE6ziCPcjSHf+qJU6se9bMRTDN+6ZXm3coe9OvqR/jjS6OH0c4smMyspt
	jwUq+ZfxBFloaN0ZvVf9/GOx1n3ZIEVS+Z0g6tyy3nE6qexAnHIKgq6kl+Ub7cnXZJO+
	nZjeLuplp9hxKLmcEuwQPGAq+AiZ1WoVMeXKSAUVGcBGUn0QRtTSfJzptGhBIKLrTORz
	rJiTvj/PoIrICjTV2LNuvGo4ck3A1AarP8TSGdRtxQ2VAupWI16Hp9dx8sjQHxrtH0hP
	mqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=QnHHZ58aoODgjsGHAYeKOShwetV4dPIbluqwBdphy8Q=;
	b=VKsQoTXzFBDaQwaDSuBSy9Z1d/C9FkHj0NSuFdCeRBP6Al/+4mJ4VwWdDLlDtJwudG
	QNItwWaLxgjQNvAbBNi6LlNoEV0iM4xbvH5Dhek0fIriu6x54vuQ3Bf9p29tDuDINxgR
	ivppjxHaGy0A3nUApyqHitx/R0x6TUP0kIwCdYA5IL3fpeKn/3urK125umQd1ZSUCm45
	8JB4wPs361JZ+tFILUUl8Fi7LCHAjyXzAbs83TTFHJAaNNfhVpGab9xSaBEFfgP7t5v3
	w9CGgH/DNgXtPjApIp5fUUkPTHlV+L1VOwUcMlopCCqGQooitQHAvRnqCHeUzPpaAmZE
	NQaQ==
X-Gm-Message-State: AD7BkJJKlBKiCvY5ClEugjnvIrUoWYgZS1Th9HV4wf5+BuuqmJvJe/PfTYuuWd721Cs86A==
X-Received: by 10.98.32.23 with SMTP id g23mr12717989pfg.74.1457388965453;
	Mon, 07 Mar 2016 14:16:05 -0800 (PST)
Received: from Pahoa2.mvista.com ([64.2.3.194])
	by smtp.gmail.com with ESMTPSA id
	n28sm26251462pfa.45.2016.03.07.14.16.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 07 Mar 2016 14:16:04 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Mar 2016 14:16:03 -0800
Message-Id: <1457388963-9702-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] libsecomp: update to 2.3.0
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
X-List-Received-Date: Mon, 07 Mar 2016 22:16:14 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/libseccomp/libseccomp.bb b/recipes-security/libseccomp/libseccomp.bb
index b197fca..20dfc79 100644
--- a/recipes-security/libseccomp/libseccomp.bb
+++ b/recipes-security/libseccomp/libseccomp.bb
@@ -4,9 +4,9 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "7f3ae6e6a12390bd38f0787b242f60c47ad076c3"
+SRCREV = "bbf23ba4beae9a23148c6845a3037b1a4a8589e7"
 
-PV = "2.2.3+git${SRCPV}"
+PV = "2.3.0+git${SRCPV}"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git \
         "
-- 
2.3.5


