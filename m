Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B44C0E00A1F; Wed, 15 Feb 2017 18:46:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11F54E009F0
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:46:10 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id e4so414091pfg.0
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=WhiC9ZBYyG74Rp0jdLBdXyrrj394TOUmVy0OXq2WJSc=;
	b=h2dW1mtGl5/6C3lWEg8RfEyngvSckuVWHHzFRJeOrE/wPWVfyKxFmbo1ixacWCIcvP
	jZ37d55OfWZDVTfvQVMrA17+hYw+NQQsBKuuIWpTi34t15Gb5d3FRnn5e4K7zI9x4MKO
	AZcw97uXJrlrgnHNb/P7RXrZ3Uq5YOJ8lLuiwBKxjwbCmaIJr2nWbtN7mZe/qT7qvdNs
	GbF8WotaiBUjbGTAb2WLnnNBDvb4n4UJgGdmUERghakEM1Xsqr5yxIHLM5JcfF/qOR2H
	aj6hDJ8gvKkOs5XLHsO+cbbhBgNlpRN3NIKc2swvXyL0Iwgmh27g4HKt7CWlN9QyorkD
	0tYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=WhiC9ZBYyG74Rp0jdLBdXyrrj394TOUmVy0OXq2WJSc=;
	b=im1VxQJu8Z1XfijJgSHdbG7dBWEMsz0F+rY7xBi1LsepuN+preuV5jMacW8jHSKvLK
	T9HIQ0bEb/TUNxMsGISjgYqj82lm0YlkJDYNr2I8tSS3vhObsgNhQCIxlu7q8VXeKS7+
	Clb3GXxQZA6FeOdpfTJ9/DRuOXCBM5Ns3zQEZLML47l1MK9HlVfIBWBNiWBxoxvPhPUi
	umFBX91wP8H+6A0lqEARVHvmpPz3w+GrvgU9uagW9wF/nYot8baHUzbiusoABHjNzQ5b
	2IdwyWR7QmLl8O0ulLvsBWbu8LrS4xZLVRrKQa+X2An2gQqfU3QoWZMp/mpulfrwXarR
	0A/w==
X-Gm-Message-State: AMke39nHZF/Pv2mVqDuq8o+qS3UXPeG+iLsZYAMGoCvRXFuszPFvZfgydWunvPd3zsmfVA==
X-Received: by 10.84.177.129 with SMTP id x1mr47200479plb.75.1487213170208;
	Wed, 15 Feb 2017 18:46:10 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	l22sm9854728pgc.43.2017.02.15.18.46.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 18:46:09 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 15 Feb 2017 18:45:55 -0800
Message-Id: <20170216024557.10474-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
Subject: [meta-raspberrypi][PATCH 1/3] rpi-default-versions.inc: Use fallback weak assignment
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
X-List-Received-Date: Thu, 16 Feb 2017 02:46:15 -0000

This lets machines use ?= to choose their preferred kernel
e.g. 64bit rpi3 needs 4.9 minimum but default right now
is 4.4

At the same time it keeps the option for user to override
any of these settings via config metadata e.g. local.conf

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-default-versions.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index e65a4ae..2007cc0 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ?= "4.4.%"
+PREFERRED_VERSION_linux-raspberrypi ??= "4.4.%"
-- 
2.11.1


