Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCCA4E00A54; Wed,  7 Nov 2018 10:33:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D87EE00A1A
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 10:33:47 -0800 (PST)
Received: by mail-pf1-f193.google.com with SMTP id v9-v6so5760584pff.2
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 10:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=E/GtDPQK/kYw6u0pQ6ZH3HVoKNFpwYK4OmsZ4hFycxs=;
	b=FQfGkOe/tc+nTLR9LJl0DuYHpNjL4IZ7ien5JBQM5Gt1HJwdgKLvdfg3ESyDD/+gqv
	iZL00InZHu/r6eK7YLbt6ww9nehNfqy/CfjXA24jMTBNQhyhy2LRuxKHW/sigYSdZpZa
	2saz0eleqtzYLsUEd5+WzfhXDBbN7BIHbKBwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=E/GtDPQK/kYw6u0pQ6ZH3HVoKNFpwYK4OmsZ4hFycxs=;
	b=e93OKyS4vSVD2/RNpClr0XPLrP9DoqR8wvGStypvN+1DUHxaBvxqQIvACYsXMh7dOG
	NEy5KuseXVDHBpydWe2I6FDjGpoNZDXoBNYzRUY6iZiZ3vX3/AUqcbY7UX0SBiQmozOJ
	/idspOAg/tm36bDykbREhqI2CJhU0P8Ru5hIbleSIq3RcTu/01P1gBc55hc1Rx2ReGjU
	zGZ0H8V6OBlPXMKxcW1ZpMT8jY/c8mHq0dRpkBH++8/TfUTDfoN7GvCdVsg9OCnGy7cJ
	mBeCD9DKoC9yDnHjQ1Mvc94OhQvBs3P0Z4ZHJcetDVY5elk8PP2HpvvsNyrScKZa9fjC
	RSZw==
X-Gm-Message-State: AGRZ1gJGm1t30SehaB1fbBA5Z2AqnssVT83PrEDRgm5A4lYx7Ex7n4zF
	njQjlWZnR0w0kYLneEPSaDKhcglrqEz1mQ==
X-Google-Smtp-Source: AJdET5clCpqCy51vpsPuCogxKh65yk95Z8mrzd1TfpjMU3LXd2sL3kUoe40GQymnw5njkNMhvActNw==
X-Received: by 2002:a63:594d:: with SMTP id j13mr1117626pgm.210.1541615626252; 
	Wed, 07 Nov 2018 10:33:46 -0800 (PST)
Received: from yct-lpt.pdx.yoctoproject.org (5751f4a1.skybroadband.com.
	[87.81.244.161]) by smtp.gmail.com with ESMTPSA id
	f10-v6sm1092767pgp.72.2018.11.07.10.33.44
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 07 Nov 2018 10:33:45 -0800 (PST)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Wed,  7 Nov 2018 10:33:38 -0800
Message-Id: <20181107183338.22347-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.17.2
Subject: [yocto-autobuilder-helper][PATCH] config.json: Add steps to test new workers before adding to the main pool
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
X-List-Received-Date: Wed, 07 Nov 2018 18:33:48 -0000

We add workers to the nightly-bringup pool to test them in a production like
enviroment. Include one completely emulated target and one to test
virtualization extentions.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 config.json | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/config.json b/config.json
index f912abf..2945155 100644
--- a/config.json
+++ b/config.json
@@ -145,6 +145,19 @@
                 "SANITYTARGETS" : "core-image-minimal:do_testsdkext"
             }
         },
+       "nightly-bringup" : {
+            "MACHINE" : "qemuarm",
+            "TEMPLATE" : "nightly-arch",
+            "step2" : {
+                "MACHINE" : "beaglebone-yocto",
+                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk"
+            },
+            "step5" : {
+                "MACHINE" : "qemux86-64",
+                "SDKMACHINE" : "x86_64",
+                "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
+            }
+        },
         "nightly-mips" : {
             "MACHINE" : "qemumips",
             "TEMPLATE" : "nightly-arch",
-- 
2.17.2


