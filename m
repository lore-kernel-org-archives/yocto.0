Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E04B8E00C15; Sun, 16 Sep 2018 08:57:48 -0700 (PDT)
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
	*      [209.85.210.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C23DE00ADF
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:48 -0700 (PDT)
Received: by mail-pf1-f177.google.com with SMTP id k19-v6so6421602pfi.1
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Rc8pWVynxDbRlPzjU9LlkhMnG0ZeC1APVEEc60pM8qU=;
	b=dW70WHjGhYa9vETpra7RpIor1JxGvnYqga2dLMeowB/vdiwW5/hFvbXm6QtKx5e29/
	+5hbHItiIZV2qURqpXgiSEgEdlS4tkVEqItlueshgjOY9Uor3vuTm+Sm6eK9kdylNnjN
	7wwuCj+nS0CVPKF5SYlD0uWqbNDimS0VQZDswJy6BP97a0xbwjxYA0enRmFk7XG52Ai1
	Q9GxgCxp6XttmaMIwUOyDb7wmVncCsFsPWpE1eOW2fhLoCQ4bQZP/ETpsJDK7MHa6Kax
	69mD2LyV5Uvlk+ZUCH+JHbwqyBkVwWRsnHfMt3qR7Ea7IVVTcPDD0R+AhDR9ahkMOW9V
	N3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Rc8pWVynxDbRlPzjU9LlkhMnG0ZeC1APVEEc60pM8qU=;
	b=E8udxEHFlJAwVscmGPFscXGdUcEFHGs5xlXxbVI5bwRoRVjuRRmpZEEVesaBo6TawZ
	9P4EKmQgg7pYMjUuva76k8fHLtbkUxUl2vz7YR9qBsDkmDOHm4EE7Hx4tng35CnDq+yX
	kgm4/YZAGcqUTeKyvvrgyTkmgGmfA9eYPmeOyvHLsRoUtWyoBtb1sSgtFBxh8Ls0Uhk2
	B5OsEx2KFX2glTcG2ZmEF1lxzf3iRul2NF9o1fd74tNpBM6TeSR2LKeEQJAVoTuzocCW
	co0Ao2pc4w8PmLGHyQH/F6SMnZFjb+ErmnQalDdyUAUsrBCkH8jaroupUsLTPaJNfgbe
	Jo0w==
X-Gm-Message-State: APzg51BkSlfThXIRHKCE3GQDyJ8/bzjmxhBtG4yZsjXxnMsajbRbE7jT
	28SQJJLhf2ImZoCQIMA1ouR+HlSz
X-Google-Smtp-Source: ANB0VdaoeHm4nG/Om/kGUwX7ujp+jsT9vAhjRoZlys/izhYdmGRowmmsxHjl54erTIA3wtYv2KpbMA==
X-Received: by 2002:a63:350f:: with SMTP id
	c15-v6mr5739988pga.206.1537113467932; 
	Sun, 16 Sep 2018 08:57:47 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.47
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:15 -0700
Message-Id: <20180916155719.9911-21-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 21/25] libtpm: update to tip
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:48 -0000

LIC_FILES_CHKSUM changed do to "Extend license texts with TPM 2 specifics"

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
index b29ec6b..a930d7b 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
@@ -1,11 +1,9 @@
 SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=97e5eea8d700d76b3ddfd35c4c96485f"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
 
-SRCREV = "3388d45082bdc588c6fc0672f44d6d7d0aaa86ff"
-SRC_URI = " \
-	git://github.com/stefanberger/libtpms.git \
-	"
+SRCREV = "4111bd1bcf721e6e7b5f11ed9c2b93083677aa25"
+SRC_URI = "git://github.com/stefanberger/libtpms.git"
 
 S = "${WORKDIR}/git"
 inherit autotools-brokensep pkgconfig
-- 
2.17.1


