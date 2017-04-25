Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6CB4E00AF0; Tue, 25 Apr 2017 02:14:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7D0EE00ADD
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 02:14:13 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id x188so72195388itb.0
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 02:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=6NOS2TjnKDOuTdZSIIm3d8QUgFGt8GGXrPBu6N3uY4w=;
	b=bnXhuGzab15IQkouLZZaXCz9Yp5PFLk1RHzi1MqYkglbLDm/863ZPYb1LL9zS2NEht
	0w4fjZnHMxG9YZyo2174+nCzZEu7/SlYlgH+MpPFgwBHPfyhksWWLJsofqPVTsKAkDZl
	+dKPX96vWC+zrV9thcTaIkHF4X1oA9KHlTVK9p0CqbU0A/uHFw5QakzH37SAL2vx+NNv
	onX6wtsyxb1WCfdgttZXnqeabT2b/8nbNBdXO1Bye63Zu87iHuPBzl/exD4ELClinrWV
	NUYe4CA54lM+NkPOjqV/+Kyo+Z2YaGQIA6quV73Y/AQmBALf+YieUm8bxiW/p9GvzAke
	0I+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6NOS2TjnKDOuTdZSIIm3d8QUgFGt8GGXrPBu6N3uY4w=;
	b=PRup9WlGpTelC1PipE/WSpyiOxS2NzFyZ/DPCOsIyiOIuMSpoq4ARXrCBAMt+f+12G
	Vzs6XNqaugUNQ8H7tRZWuo/UB5fxmfFR4r/YXTB8SvrDmsOJjOP0OHk4MU3didA93AHr
	GK2hBcZhSgA2IgnSGi+r62S+9idUAhnWBld1wrsSABCGbCnomVvzcwAfIL8G+Og0jFBY
	sVjaZ0+KtM87eJSUwUo3aaCLBFZarpVG7tNGAKDd96fczWyCS6vUFe1JUBlWPaevcu8f
	bp+0m4WBg6x91fUkN1ARRfS/2nFg7UQrMZt/f+5MmZbWuAMZ5gpgULSegW0JJtvemmRi
	Tq5A==
X-Gm-Message-State: AN3rC/6TrJUJyLVXRUZFIvEjdzZH8aFPNAA7m1aKNCPxErlHdPIrs9oF
	GV3iWDmhmudEYZMs
X-Received: by 10.36.253.8 with SMTP id m8mr2994938ith.101.1493111652717;
	Tue, 25 Apr 2017 02:14:12 -0700 (PDT)
Received: from pohly-desktop.fritz.box (p5DE8E12D.dip0.t-ipconnect.de.
	[93.232.225.45]) by smtp.gmail.com with ESMTPSA id
	h42sm9308361ioi.16.2017.04.25.02.14.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 25 Apr 2017 02:14:11 -0700 (PDT)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 25 Apr 2017 11:14:02 +0200
Message-Id: <20170425091402.29125-1-patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Cc: krisztian.litkey@intel.com
Subject: [meta-security][PATCH 1/1] swtpm-wrappers: fix naming convention violation
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
X-List-Received-Date: Tue, 25 Apr 2017 09:14:17 -0000

Native recipes must be called <foo>-native. This is more than just a
recommendation, there's actual code which checks for the suffix.

Not following that rule broke swtpm-wrappers when using the "usrmerge"
DISTRO_FEATURE, because the code in native.bbclass which cleans up
DISTRO_FEATURES for native recipes was skipped and thus swtpm-wrappers
ended up using different paths than the other native recipes.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/{swtpm-wrappers.bb => swtpm-wrappers-native.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-tpm/swtpm/{swtpm-wrappers.bb => swtpm-wrappers-native.bb} (100%)

diff --git a/recipes-tpm/swtpm/swtpm-wrappers.bb b/recipes-tpm/swtpm/swtpm-wrappers-native.bb
similarity index 100%
rename from recipes-tpm/swtpm/swtpm-wrappers.bb
rename to recipes-tpm/swtpm/swtpm-wrappers-native.bb
-- 
2.11.0


