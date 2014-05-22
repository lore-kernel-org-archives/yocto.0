Return-Path: <mail@timomueller.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B21F0E00B8B; Thu, 22 May 2014 03:04:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f48.google.com (unknown [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9669E00B8A
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:04:47 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id e49so2430923eek.21
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 03:04:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=C+rOEg3x/0s9K1LRK/NYB8jymyuytYdYVsOBlxipfuQ=;
	b=WH82jCytD9m1oBg4CWar5vdamKkJwrcBETS+VNMaY1tpzj0C1IJ7h08KBse/A0exB1
	hzwv4SAIiHhZkqeHtpEn/9tn+zjDCreYwEzrcj0mVq5EFAr9lbfJGC1UL7tg3CoUm51j
	DOerRL3tIaj3nqrLwavgvRWMwjzl0PnWzz/bm6bGiu9kDPDbkg0FWND9hpRs0aMNho78
	FuFNmMPN88a+elisS2j+oCION/PVzEFoPkZG8fZrEnY3aPxxOy9kr8CvPSegUWQYDGRf
	8SF75YM+XIoHDtFhcjVDftS84XOPZ0dPjGYjOidUmVLpdNohIDoJNxEQHgsvUNQbNR7s
	oAzA==
X-Gm-Message-State: ALoCoQmxIn7KeUVMIsIMxZxH4ELLInNuw4d5t2mOUqbWHOK912Ate8BSDoZujSsA5sT0M1Krqgfa
X-Received: by 10.14.214.198 with SMTP id c46mr12473625eep.29.1400753086260;
	Thu, 22 May 2014 03:04:46 -0700 (PDT)
Received: from localhost (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id f3sm18561031eep.40.2014.05.22.03.04.45
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 May 2014 03:04:45 -0700 (PDT)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 22 May 2014 12:04:42 +0200
Message-Id: <cover.1400752777.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.9.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [eclipse][PATCH 0/2] Add oecore sysroot variable to CMAKE_FIND_ROOT_PATH
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
X-List-Received-Date: Thu, 22 May 2014 10:04:50 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

we were not considering the oecore sysroot variables provided by the
environment script when constructing the CMAKE_FIND_ROOT_PATH in the
toolchain cmake. As the other used variables do not necessarily
contain values the CMAKE_FIND_ROOT_PATH can be empty. This can lead to
issues when searching paths or libraries with CMake.

By using the oecore sysroot variables we make sure, that the
CMAKE_FIND_ROOT_PATH contains sane values and all the find methods of
CMake are at least searching the provided sysroot.

01: Refactors the CMAKE_ROOT_PATH construction to ease the future
addition or removal of variables
02: Adds the oecore sysroot varaibles

Best regards,
Timo

Timo Mueller (2):
  plugins/cmake: Refactor creation of CMAKE_FIND_ROOT_PATH
  plugins/cmake: Add oecore sysroot variables to CMAKE_FIND_ROOT_PATH

 .../YoctoCMakeMakefileGenerator.java               | 37 +++++++++++++++-------
 1 file changed, 25 insertions(+), 12 deletions(-)

-- 
1.9.0


