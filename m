Return-Path: <sb@baader.hu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 299F2E00CF4; Wed,  3 Jul 2019 09:59:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91D4EE00C43
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 09:59:55 -0700 (PDT)
Received: by mail-ot1-f51.google.com with SMTP id x21so3060102otq.12
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2019 09:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=baader-hu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=76DSfFNtPWHzAsAU1mkgNmDFR74m4Q5DcM8/xxz/Rds=;
	b=UK8aQm6UcMluL0hmGkiJtKcNxAnKrdYGBPGTToft6wPEfyTc6PwMefGIBPtXlElNzH
	inoJqMpcqi4ofKiddMOcTy09DpMBuED93GJdv2hZEDobPW/Cw9ScXamt6ts5sWJiZZ+y
	oA/uoUz6ABgy0WIFg4mis6E55OWtHx7LBxY7P3upGMNETECqHiGDdlGnX3AOnOuZ9cvZ
	auaPZ/Udzx4jLvbAoDmtWRCr2992r2A8dGQzffExkk0hS3RL1BavxaTb4vXrTmEjn8uV
	L44Nc1IFwRcFCBTW7p8YrFs3OqAGY9PTUxf5Xfi61ARSn2adntXzyP3LiDbIHWJaiPSf
	4NqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=76DSfFNtPWHzAsAU1mkgNmDFR74m4Q5DcM8/xxz/Rds=;
	b=UIz58yVRVl7iE2h9CsjjpUBfGtdosImMltS2jKm0uqKWC1kXYZhkqzRXUUQpR4Nx+Y
	b0aSrmsulxTMDi/Q7DR+jTHQA1JT5DnnPHu5UUELQf4F8W3/FxM1NYrRwoyE3ZbJfaTr
	SL/1Ew/fW7+P7P8cB18omW3td6tBbLm7BgzhtwClhCmtXbni5CgJsLMy0L0cu2xW6f3t
	KkLSVZ4TH0ARC4+cJ8e2wBDUJW7sz87yROvvxC2uW/efbbQjrjp8bmYyDI1+k4YuQxSe
	MV5lB+BMUmW00Gb3d4wWxb3+1fNTDTRFS7hrASDZREI3ZAMjFP6ox2VPxFbPOgsWJVZ4
	VyrQ==
X-Gm-Message-State: APjAAAW31u2ZbDd/9qY3+6hjjfZ5jxwuX6MTCtQAu+E3tPzAGatOm9oB
	z7yBdcTejsXlQiBa9uAECqnwUxlEZshwgeyA794hPZmSTvlE0mUG
X-Google-Smtp-Source: APXvYqxLO6eRvHGnSpNHtIjf21dAWNtZ1UzAlNYjpcSRoyt+Hvpmi0FLJqk0yUbdfCDNmF7B7x6hp83HGVJwo+xvdQQ=
X-Received: by 2002:a9d:61c9:: with SMTP id h9mr31658159otk.102.1562173194583; 
	Wed, 03 Jul 2019 09:59:54 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Szabolcs_B=C3=A1der?= <sb@baader.hu>
Date: Wed, 3 Jul 2019 18:59:43 +0200
Message-ID: <CAH_3R3LHz5vfY3yyDX6tJe65b-pGg5m6B67uzUWUS0jzt6NOmQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to run script before mount rootfs
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
X-List-Received-Date: Wed, 03 Jul 2019 16:59:56 -0000
Content-Type: multipart/alternative; boundary="00000000000057602b058cc9ca2c"

--00000000000057602b058cc9ca2c
Content-Type: text/plain; charset="UTF-8"

Hi,

I created for Raspberry Pi a simple OS-boot-switcher. I change a param from
rootfs, reboot and new OS run. I would like to add to for this flow a
parameter to create ro boot and rootfs.

I would like to read this parameter at boot and depend on this choose which
OS will load. How could I define this at boot (eg. from cmdline.txt or with
a shell script or load c code ..?). What is the best idea/ way to do that
within Yocto?


Thanks in advance,
Szabolcs

--00000000000057602b058cc9ca2c
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hi,</div><div><br></div><div>I created for Raspberry Pi a simple 
OS-boot-switcher. I change a param from rootfs, reboot and new OS run. I
 would like to add to for this flow a parameter to create ro boot and 
rootfs. <br></div><div><br></div><div>I would like to read this 
parameter at boot and depend on this choose which OS will load. How 
could I define this at boot (eg. from cmdline.txt or with a shell script
 or load c code ..?). What is the best idea/ way to do that within 
Yocto?</div><div><br></div><div><br></div><div>Thanks in advance,</div><div>Szabolcs</div></div>

--00000000000057602b058cc9ca2c--
