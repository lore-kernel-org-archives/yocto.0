Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7CBDE009B9; Thu, 17 May 2018 02:17:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 972F9E00843
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 02:17:37 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id m65-v6so455113ywc.12
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 02:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=AMp8tUuUT+jYxPfcycKbrJ0hwEdT1rdhU0onW8KhuDY=;
	b=GWzcrvozQP0hmsw45LX5ekbPIaLY3R/o7D0j0+jVBy+kDSZAgWmEU3f5PhEUjiuzkY
	+7FHUpiZfys6g1TwLaQZ3uUNLsdWfffQQoa6qlsEnvXUm0+y2St63Kx1tOJXAxv3Xa7X
	Q8JCd2sDnvUbg//f1ysdXWkS38P6s/wlWrZZX4Od6LJw99hvGteyu36lLKXTOAIi10eT
	p3CZj1sxtSc7xFsAHtoc19/EOwYnQvczbEeS9+htOAvRp0FWFcxWphjej4tT7auNBUm4
	kTfPrKYKgTxUL/D80npuEM7yzoRE9JKnfrQNb1Lf6lOeeBNN47SXY2l8CE4xlUcu5SIV
	pLoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=AMp8tUuUT+jYxPfcycKbrJ0hwEdT1rdhU0onW8KhuDY=;
	b=DAKTb9+KFRbfaRdypxFD7nzPGYXcWogguQWDqzuzxBD9m6e6FWdGQ+sgWUI+UR/8C0
	YAzQz1rxo9j3AJ+yQ4WuCaUG0H01Z7x+hDNXzL3TqAIx7+wgltW7FohgBU5alp3AETqm
	KzWqESauBYMaVax6qZkWuetIAMJHuNqkal3DfX1wShn0PwOXfHZGfn8sgVUqdxY67epH
	8Mhrpsi4Bfr6qnTEFlQ0zF6Xr7JSqHjEEMTSgj3pBHIKgRBrTnXXYrKNmTJl+OuhoG/y
	WYPTboWZHxXiIIwgctEyO6say25Rwk9hlhIN3WbaC1Go/fCJ3LpwYuFYd0VlQdAqmXc4
	K+Iw==
X-Gm-Message-State: ALKqPwfjLxRN4/5n7pE2SjpyBSAMReARlvCA9+2Li6FNlHu16PeN4Qkr
	BTzmegVI3bhtTnWVzdVlrfWFVbksQiI=
X-Google-Smtp-Source: AB8JxZoEr/b185r+ekzfo9FswXu6RvaQAfMpBsGFG/8GdeZ9M9FGfapRTXXlzoWhmQOijjuD+mmSbg==
X-Received: by 2002:a0d:f843:: with SMTP id
	i64-v6mr2125210ywf.329.1526548656172; 
	Thu, 17 May 2018 02:17:36 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	a84-v6sm2278978ywh.1.2018.05.17.02.17.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 May 2018 02:17:35 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 17 May 2018 05:17:34 -0400
Message-Id: <87DBB3BF-2DF5-4A71-AF55-7BE109ABCA01@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: [meta-raspberrypi] troubling warning "postinstall intercept hook 'update_gio_module_cache-nativesdk' failed"
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
X-List-Received-Date: Thu, 17 May 2018 09:17:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I am trying to build for raspberrypi3 near head of sumo. I get the =
following troublesome warning fairly often since I started doing some =
builds in sumo and master the past week.:

WARNING: core-image-minimal-1.0-r0 do_populate_sdk: The postinstall =
intercept hook 'update_gio_module_cache-nativesdk' failed, details in =
/data/development/lfs/yocto/build/spark/raspberrypi3/tmp/work/raspberrypi3=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_populate_sdk

Here is the detail of the warning is.  It basically reports "Invalid ELF =
image for this architecture":

NOTE: > Executing update_gio_module_cache-nativesdk intercept ...
WARNING: The postinstall intercept hook =
'update_gio_module_cache-nativesdk' failed, details in =
/data/development/lfs/yocto/build/spark/raspb
=
errypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-minimal/1.0-r0=
/temp/log.do_populate_sdk
NOTE: Exit code 255. Output:
=
/data/development/lfs/yocto/build/spark/raspberrypi3/tmp/work/raspberrypi3=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/sdk/image/opt/poky/2
.5/sysroots/x86_64-pokysdk-linux/usr/libexec/nativesdk-gio-querymodules: =
Invalid ELF image for this architecture

Question: How serious is this warning, and what should I do about it?

- Steve Pavao
Korg R&D


