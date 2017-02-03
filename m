Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4862E00510; Fri,  3 Feb 2017 15:45:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.169 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 606EAE004D2
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 15:45:09 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id 189so9123069pfu.3
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 15:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=68uCDBMrDBWLkrJJIQsU93btY6yO5LdWFxQyydDJfFg=;
	b=ErfPcDi4gQrT2uyBOYmaNeOVIG3W0qgOuUPhAcuMvNfs6DeU7s3JOz9oI81gB448tr
	iX5+hfFtB+tYDPeCH1gMEjWxwsqHY0eL5DKmXdUPl3cni2hXhZ95tjMYVV+7OmIc9Lko
	OynLgBNz8QK0QCxaGZKujc3/LHxXQKpJEVbSutUhf329NDfc6H/EEIl/NcRTpSY/5xiP
	DRII2OVV5amYLPv1ksY5lhmlW03g2MZ5Ge4IFLxlAsHvz28HHd/R6yndXv8AJfy+fwFu
	DtAe3uXX8hdZfuF/VOAJpiYofWcw+EQlAAxQ5NzpiZZKRQ8LMCf1q/dZGSiXAQDInNZz
	Bw4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=68uCDBMrDBWLkrJJIQsU93btY6yO5LdWFxQyydDJfFg=;
	b=mxVLJ9vtbaWn/w13/BVW2wromB6A+nQdfNK7qgmU4uf6qafeGC4PVwDjZ9xx1EPVxP
	1RA0MvNHKmxViAlw98jkm/rp32uyIfiHLMtfCTy6LaOcDaWUfs4ldX0J6pKrXjOYweV1
	TvhD0gbZsn5jHnlEwrynBt51BTEFlGit7Xg7+1QSNYex31VmOEITeF9ueA1fTxP9d43I
	fNxSB+RkpIkUxbgh3OEVcMPkROnQJgRcnVqzFYZDPp0O3YzIf4/gBxXReUbES/O1eCZx
	LoYIHYlsPCRinAt6YLY6ian+yDClt8n4ti0NbBFX2Zwc4AcPEm7FJpya9j07o12rleWa
	9SzQ==
X-Gm-Message-State: AIkVDXI7J/pr2+qgOBHHewNUpCW90CVYzM8a+K0yM1j6/RzbyS/Bns4l98xaBGWcqRYoNA==
X-Received: by 10.98.133.11 with SMTP id u11mr21240538pfd.132.1486165509306;
	Fri, 03 Feb 2017 15:45:09 -0800 (PST)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:d531:58a3:5f79:edad])
	by smtp.gmail.com with ESMTPSA id
	g85sm69750276pfe.38.2017.02.03.15.45.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 15:45:08 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 15:45:07 -0800
Message-Id: <1486165507-19454-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] libseccomp: update to tip
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
X-List-Received-Date: Fri, 03 Feb 2017 23:45:12 -0000

adds support for 4.9 and 4.10-rc1 kernels
adds support for python 3.x

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/libseccomp/libseccomp.bb b/recipes-security/libseccomp/libseccomp.bb
index c131bea..aab411a 100644
--- a/recipes-security/libseccomp/libseccomp.bb
+++ b/recipes-security/libseccomp/libseccomp.bb
@@ -4,11 +4,11 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
 
-SRCREV = "937e774d8ccfd063a601f49ef46769de3926b62d"
+SRCREV = "ce5aea6a4ae7523b57ec13e2e6150aa5d83c1b4e"
 
 PV = "2.3.1+git${SRCPV}"
 
-SRC_URI = "git://github.com/seccomp/libseccomp.git"
+SRC_URI = "git://github.com/seccomp/libseccomp.git;"
 
 S = "${WORKDIR}/git"
 
-- 
2.7.4


