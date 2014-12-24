Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 695D8E00521; Tue, 23 Dec 2014 17:12:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73637E003AB
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 17:12:15 -0800 (PST)
Received: by mail-vc0-f174.google.com with SMTP id id10so2647104vcb.5
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 17:12:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=88t2yIHjABLj5cxC6wqWewVCFcUgvQ3QY/427mUzFeY=;
	b=m+7GdMCNuBVegpa8hw8uyMpkSa6nOAYO1JDmMdqx/bg5mqNsfZxHLL80Y3+jmMyho0
	hY1q3v8zr1gTx+rjy/lvHu7NDGbrMApwGG7IMhimKjHsujDCCUv/o2IO5qWw9NVQCcma
	oWmGqnrnq2uyz//yl/MWXrCMB0qUJzg2X3+CPH6yiWP7qhHSHY83VQccWOPewXJ6mGfT
	/pR/iL/QQ3tvC712S0PH2h/8FpcfGvmiXeiiOlMh5JzaIFtt8uaWDY3WNMneCQ9e3wdZ
	UxV5MFxFZZCHk1cyk6UJh+mTG0RNURdib7Z8X2vbZuduZjAYOp2eqmRcKBrNXwyCbdFT
	nAzw==
X-Gm-Message-State: ALoCoQmBJfXXrVW2ZEA9AfxANjFperpsLiL14xR+OvxQZ9FFj/NHiDG1oK+cLBZP50+UUGrnOQVV
MIME-Version: 1.0
X-Received: by 10.220.181.1 with SMTP id bw1mr12191984vcb.66.1419383534863;
	Tue, 23 Dec 2014 17:12:14 -0800 (PST)
Received: by 10.52.29.146 with HTTP; Tue, 23 Dec 2014 17:12:14 -0800 (PST)
Date: Tue, 23 Dec 2014 17:12:14 -0800
Message-ID: <CAPhnLPCGGEt8GeezpBF4y1fXFaKLRWxOJcDrqyUhdNOAim1rZw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Intel(R) Valley Island BSP for Yocto 1.6.2 "dizzy"
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
X-List-Received-Date: Wed, 24 Dec 2014 01:12:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

All,

We are pleased to announce the updated release of the Intel=C2=AE Valley
Island BSP for the Yocto Project "daisy" 1.6.2 release.

https://www.yoctoproject.org/downloads/bsps/daisy162/valley-island-64-bit

Supported Platforms:
--------------------
- Bayley Bay CRB
- Bakersport CRB
- Valley Island Development Kit
- MinnowBoard Max

Features Supported in this Release:
-----------------------------------
- Linux kernel version 3.10-LTSI
- Support integrated graphics (i915)
- Support SATA, USB v2.0 & v3.0 Host, USB device mode (Bakersport
only), eMMC and SD Host Controller, GbE, HD Audio, APIC, RTC.
- Support LPSS I/O devices - SPI, HSUART, I2C, GPIO, SMBus i801,
Serial 8250, PWM
- Support LPSS device enumeration in both PCI and ACPI mode.

Miscellaneous
-------------
This BSP was built with the following commit id for valleyisland machine:
poky/daisy: e3dd621197548b4cf64988e757e9bc926082db73
meta-intel/daisy: 39cdd2fa13bc387388bcf5f07b8ee4c45f3f2135

32-bit image was built with the following commit id for valleyisland machin=
e:
linux-yocto ver3.10 machine branch: standard/base:
747e1cbd12b15db8bc2ae86e2359c1b113f120d6
linux-yocto ver3.10 meta branch : meta: 8f05306a8e6f5ee422d50c3317acce0cf9e=
6aada
linux-yocto ver3.10 feature branch:
valleyisland-io-3.0:0992d01f5f382f6da60004ef87f67ebd3ca13732

64-bit image was built with the following commit id for valleyisland machin=
e:
linux-yocto ver3.10 machine branch: standard/base:standard/base:
747e1cbd12b15db8bc2ae86e2359c1b113f120d6
linux-yocto ver3.10 meta branch : meta: 8f05306a8e6f5ee422d50c3317acce0cf9e=
6aada
linux-yocto ver3.10 feature branch:
valleyisland-io-3.0:0992d01f5f382f6da60004ef87f67ebd3ca13732

--=20
Elizabeth Flanagan
Intel Corp.

