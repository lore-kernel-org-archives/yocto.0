Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AED9E00839; Mon, 17 Apr 2017 05:37:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B1DE00349
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:17 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id o81so8678507wmb.0
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=/hYygy8BBsK1/VB/IDxUiw96rlAhtIZq00GQoklsxtk=;
	b=2Bk0ktSjMzl1ocVai3dlVzzGymLqTOewfSWrnp0KPWmbIFpLB9Jg28QPcvRdM3CwZf
	TVSbcOqoh6NGstZlFwTaOTMgj4Avt7yj/qAWyIZNnsr3g0KUV/i0JCUGGZVA+4s2kkhf
	lAKAFi6+0YFohp22+7zB5JZ3uSYKfpmjMW7r1BxAojLNt9kqs8/7ZIs9GRGhh2sxWiPf
	XnL4Ihu57MRJKkdA53suGL5sRD4pDL0Cf2YKSjauLyWU3JdNwgLPk6sIV7cwv8kLE+rP
	4tJoUvQ31pbBooFAZXC8Uq2/z3fBWwZAM98IG2ot7bcu1LcLJtzq88KnkSrbTP8MuMBO
	Jy1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=/hYygy8BBsK1/VB/IDxUiw96rlAhtIZq00GQoklsxtk=;
	b=naPMxGUomomrVC5Qf8T8E5G8/hJb/IL8vAFXO+yPGa/gaHharGRNN/rt5ZfmwaBGfd
	TTbW/rKmi7qFl+JlG/IfBvn/WmVPiPTxO/ZUSNFKj6IbV43un6W3mZKEkTQMlUpMvXaz
	kEDzI4TZM3pnHeD/5IoyaiLjjsI9T7jf+Q4zLE/a27RTgDyAJyt0SwPTd7Tf03N8jBRO
	ZSxEytptFYrWGuwn61Ofo/N417gDx66Jq9tjpbtDoqDwC4AUJJ3yP6URKKBO43qI+CjB
	tt4qBUw8uIgZoRkMrSgREmZTvoxvGnoxHiwFSnCRhexyMAjnXPg6e9f2S/XsclbCj9Q/
	Xdww==
X-Gm-Message-State: AN3rC/6QFDJX7gm91xAvypnyiORY5T7KVGxAcqvGD8zqVhqH5b/1NWYB
	Z+OhuClwpgS1NxyU4J0=
X-Received: by 10.28.156.140 with SMTP id f134mr8336366wme.40.1492432636477;
	Mon, 17 Apr 2017 05:37:16 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id d23sm8194524wra.6.2017.04.17.05.37.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Apr 2017 05:37:15 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 13:37:07 +0100
Message-Id: <20170417123710.6374-4-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170417123710.6374-1-andrei@gherzan.ro>
References: <20170417123710.6374-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 4/7] firmware.inc: Bump to 20170405
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
X-List-Received-Date: Mon, 17 Apr 2017 12:37:21 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bsp/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 53c469e..1c3a911 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,10 +1,10 @@
-RPIFW_DATE ?= "20170303"
+RPIFW_DATE ?= "20170405"
 RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
 RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRC_URI[md5sum] = "c87bc1bffbb8f254fc739e34baa03b02"
-SRC_URI[sha256sum] = "ee8758d7e63c8fea7c8b7b476ff1c09f9591c74349b7751036a78ae5b88eca36"
+SRC_URI[md5sum] = "ea82d14a7cd8cfae9b78e00d4e56bc71"
+SRC_URI[sha256sum] = "2f4e5bddbac1372590db203002c35cbba3fb9d6172a93c314ee27bf05ae13bff"
 
 PV = "${RPIFW_DATE}"
 
-- 
2.12.2


