Return-Path: <tworaz666@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E9A9E00ABE; Fri, 21 Sep 2018 14:49:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tworaz666[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91446E00AAA
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 14:48:59 -0700 (PDT)
Received: by mail-lj1-f195.google.com with SMTP id s12-v6so13293195ljj.0
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 14:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=RJotRPbyhsiKTgB+F6mN24GaM0WbdBp7MuaU8MzJVhg=;
	b=a4m5AxxdGbVc7yiniDL2V5sK6VgO8iNTG+1EeBKU+RPj693BPl2I1RMpjdCOgULPVG
	wKJovgQrdLxEfMOfqy7VDGT8t3HSEKZFw6HWbqGJSwIfDQhixvUNC579ANxh7+qGHzfg
	a1KRmdSsrgm5A/bUyalVN3gR5G8gT7UwdK9UToYD2/mMfp5qdtspPJXCcbCfvwm55Fm1
	eSp5GOfJRCzJ5ayYR19swXF3r6YObQPKX6xALVddcK2Hg6wxiymFyhAAy2SKDZ89fwf7
	gAFMo+FTeRYRxZZrTUHZUVJsC/LTIK0xaR8JG1M03E+BAVkSaZKRpa2qMqqSa8GTl0r8
	+Ftg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=RJotRPbyhsiKTgB+F6mN24GaM0WbdBp7MuaU8MzJVhg=;
	b=kyW9MBiqevN/m3zavREaTNLzFPQUSEPalDkJ6lvKpHtECbQAjMJlKrf+I3p0wVeHAP
	2nGmA4RCaWMbfjOnetMt2PXkXGs0bKRWitRcWRtBgU8ZtREZkvg0SHRc3aiDxJy8NSZq
	ZQqYDHCvOg1OiSkIV2LWAzKb1KCabDqF4a4YMyiEVCJHwWiK9QtJh6KR837XcEAmzSLF
	nracP0fquC/lGtOZG7+dJz3uHTblpsT5LEqsJmbVbE3zoCODGCRLNvQhVDv0JX8a0GTm
	PGRGw/fA1x/neC5pIifZiKyaPrWNlPDgk4o4u0ejeDsTqrwc3/hwnqZLbE75Vl52agb0
	sO7w==
X-Gm-Message-State: ABuFfogwbs3hgO4U4S3oKXpEvlPEVnr4e9rQGusPsmHhJ7kCE8E9BqSP
	DTTAjk4uBI6x4VeFMnyjiET43Pf0f7E=
X-Google-Smtp-Source: ACcGV63JzszZdMT7XKK2Y/3GADDoR8DN0ueu3kzIAenUnRE6xhE2yHKQAa8WvqIUvnxRkL2CYfKJXg==
X-Received: by 2002:a2e:6c17:: with SMTP id
	h23-v6mr3613011ljc.81.1537566537950; 
	Fri, 21 Sep 2018 14:48:57 -0700 (PDT)
Received: from stinger.lan (87-206-69-189.dynamic.chello.pl. [87.206.69.189])
	by smtp.gmail.com with ESMTPSA id
	71-v6sm47407ljf.41.2018.09.21.14.48.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Sep 2018 14:48:57 -0700 (PDT)
From: Piotr Tworek <tworaz666@gmail.com>
X-Google-Original-From: Piotr Tworek <tworaz@tworaz.net>
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2018 23:48:51 +0200
Message-Id: <20180921214851.30698-1-tworaz@tworaz.net>
X-Mailer: git-send-email 2.16.4
Subject: [meta-selinux][PATCH] setools: Add missing python runtime deps.
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
X-List-Received-Date: Fri, 21 Sep 2018 21:49:00 -0000

From: Piotr Tworek <tworaz666@gmail.com>

The package needs logging, json and argparse modules to start.
Additionaly, it also needs libselinux-python in order to really work.
Without it it'll just print an error message instructing the user to
install it.

Signed-off-by: Piotr Tworek <tworaz666@gmail.com>
---
 recipes-security/setools/setools_4.1.1.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/setools/setools_4.1.1.bb b/recipes-security/setools/setools_4.1.1.bb
index 5b6d47d..c5a2d34 100644
--- a/recipes-security/setools/setools_4.1.1.bb
+++ b/recipes-security/setools/setools_4.1.1.bb
@@ -23,7 +23,8 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
 
 DEPENDS += "bison-native flex-native swig-native python libsepol"
 
-RDEPENDS_${PN} += "python-networkx python-enum34 python-decorator python-setuptools"
+RDEPENDS_${PN} += "python-networkx python-enum34 python-decorator python-setuptools \
+                   python-logging python-json python-argparse libselinux-python"
 
 RPROVIDES_${PN} += "${PN}-console"
 
-- 
2.16.4


