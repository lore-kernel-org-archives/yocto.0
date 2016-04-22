Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BCD5E00F65; Fri, 22 Apr 2016 07:46:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65D81E00F6B
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:29 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id n3so30683320wmn.0
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 07:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=dUoFPyB7rSMuCEiphSWo6BrvhWwMllKhy2H1GuPrylQ=;
	b=RtXYe4akUJaEv4+rR1yA16NFN/0p6oHhNRv49H9JaJwQ1SePC3+Nld/AEE8tPkcu4W
	054mbbgGQ4ybv8b2rhdZCIacMbUQLP97VosqOVZSNgVnkYk6N8zB5mzedO0AIAGXoF6P
	KXwJwsJU81Q5Y0BcTIIIIumfbzOYU4EjgKqbv+y4lMywVlrQXii9tJZGD7FLsOTvOdtI
	CqP+x1tsieoDhQupNd4uMkkTuhsLQL6O0hDaaZFqjCaIDQ+PkD1JmcKP5nKgxFZZpGhT
	TQN1bS9KxKAW7w3sMwgo/A5B45ns9SjgpCCo2Mo+Y+LBmMHCVWEIfLJ3t34PqfH6Bvpw
	/BaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=dUoFPyB7rSMuCEiphSWo6BrvhWwMllKhy2H1GuPrylQ=;
	b=c35x8jssY4kd58fOdfuvwa/+KMwlorMb/DPcCFASasvNsHmsAAJVxYCvlsRnoXo1p2
	V1I1WJgOO50kH9eEbJ1tCcQ4YxfL+dO/eZUnEFckipcpxabCjPuhehCSDS5kITsv2WTH
	Jj3i9Am9wjU1aHiD/lVu6vxDnjdDftqMXRb++8BWTrosJNAkYb4p5/FvBAI1wUoCDX2F
	6ac54Da1aVCLFZ8EyE++GcOzXFJVuPOZ7ktfZlMSHa/6QhBv0epK4VRoouvOgCVn0Jbg
	tXmEJdc7IGdwHPuC7RRyDSgmhf1eG9RD/+jBCpCsP8AH1dednD+hrP7aCgctyoCLUE4M
	7K1w==
X-Gm-Message-State: AOPr4FWxvimC9ZThR4PN0ItcDv+SzQ5UXS0hKg7zLrBN/l7kaivCe9GT4NodUDjCorL9wA==
X-Received: by 10.28.151.133 with SMTP id z127mr2596004wmd.79.1461336388209;
	Fri, 22 Apr 2016 07:46:28 -0700 (PDT)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id m14sm3750574wmc.4.2016.04.22.07.46.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 22 Apr 2016 07:46:27 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 22 Apr 2016 16:46:15 +0200
Message-Id: <1461336375-19194-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
References: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/5] linux-raspberrypi_4.1: Update to v4.1.21
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
X-List-Received-Date: Fri, 22 Apr 2016 14:46:33 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
index b55c9ff..79fac66 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.1.18"
+LINUX_VERSION ?= "4.1.21"
 
-SRCREV = "fcc9ad149fbe78e9931b8e769ac54d5430587465"
+SRCREV = "ff45bc0e8917c77461b2901e2743e6339bb70413"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
            file://0001-dts-add-overlay-for-pitft22.patch \
           "
-- 
2.8.0


