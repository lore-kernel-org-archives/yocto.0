Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 787FDE00D67; Thu, 28 Sep 2017 19:48:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
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
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69371E00D5B
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 19:48:23 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id u136so76561pgc.0
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 19:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=z4gWI6z/AyRQC+V6yS+N31S3oqL7gmkdZ5Hi+b8sTi0=;
	b=FWTmHO/0PB3RmMc7ELj6j7m94sE/68hsSSRFAiWGuPv9RgiHyKN1PvMiwEyMWaVK8U
	RtG+FbsJgXOv8esEmcF1OTl5ys+VxnNXC06yagOJ1YomoJQdGzqAPwRgHBpSZc7JhuaP
	hdEH5Kl+jvlfIZ5lRfCznnfUnc9ikRmPxPisJ4ERyKJT/QXHqePNbZ0K4EG6ngkwhxM7
	Ug2hyW62dHMk/pNX2s/bw6paUUlQKCuhNbZe2BvTx7wPS3Nn+QFtN54G7sdlIzvO7J3J
	Yt+DoFnm2tqiZz7C0CoI9FCMBQHrGecknxeBTbPStTO5yFEsYPdhXKxoKcnSBvXgEcmi
	NE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=z4gWI6z/AyRQC+V6yS+N31S3oqL7gmkdZ5Hi+b8sTi0=;
	b=kO3d8cnaUkMWwFeq3MYN1kxbygMDTauFkcwNw1FUitnXQR7CHH2YKjpnrlk8AfeQ5R
	EqvyvW3YOTF6z0QRf5wOSAJf3GNOwkhsfXCmItkp0hIh52u+BTL07jrz1aBexqYHg8jX
	Ougi6baaKKQCutmwPTM6U0OXBJ3YcMofLd/v5RGgTf+SQvPP+sjq4LHD3NZOQ8VXDNPj
	aDJGJjJIQNsFa8mcj+Mzh5tQSotVWYAeEddh/RQha+724UVf/1ywVPOx/m8rlfhX49kn
	IMNuXcknDgoMk5HATm29B2Au8/qBK9xSsTpq87fYWVTjDaFAbD+bKACGC/LsYTC7dYv7
	JgXg==
X-Gm-Message-State: AHPjjUgIpDZFOtsH/oK1rdwYAN4HM9C+pcylFXwFAk/BV/1mkiFJ1lZ0
	5TLqrVw5MhcjSK0C1IPzfvg=
X-Google-Smtp-Source: AOwi7QBPOAq0t11SErNIbxsOEI0eGHND+rQIdIvU1D21u65sr/JaXVm+pzQZRp0f7bdtKAfXbeAf3w==
X-Received: by 10.99.179.5 with SMTP id i5mr6143811pgf.442.1506653303611;
	Thu, 28 Sep 2017 19:48:23 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r11sm4878578pfk.108.2017.09.28.19.48.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 19:48:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 19:48:22 -0700
Message-Id: <1506653302-11126-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] clamav: update llvm to use 5.0 to match version in core
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
X-List-Received-Date: Fri, 29 Sep 2017 02:48:25 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.99.2.bb b/recipes-security/clamav/clamav_0.99.2.bb
index c755a64..5dfda8f 100644
--- a/recipes-security/clamav/clamav_0.99.2.bb
+++ b/recipes-security/clamav/clamav_0.99.2.bb
@@ -37,7 +37,7 @@ GID = "clamav"
 # as defined below
 
 CLAMAV_LLVM ?= "oellvm"
-CLAMAV_LLVM_RELEASE ?= "3.3"
+CLAMAV_LLVM_RELEASE ?= "5.0"
 
 PACKAGECONFIG ?= "ncurses openssl bz2 zlib ${CLAMAV_LLVM}"
 PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
-- 
2.7.4


