Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48D36E0079A; Mon,  1 Feb 2016 10:10:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C746E00444
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 10:10:50 -0800 (PST)
Received: by mail-pa0-f52.google.com with SMTP id yy13so85776821pab.3
	for <yocto@yoctoproject.org>; Mon, 01 Feb 2016 10:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=Mn8XUGk9W/zKqFAqwjkTAa6MjQsEH/Drf3oXc80bsRQ=;
	b=DxpwAgCIcSR9WviVzaUi0cbxvB9zTP4okJZ+qo0UCUJjwgzc3fDo2T7nqIPYkS3oUr
	aqry+aN+UD0c3tAKnrkoSzAeLJTyqDG40EaV3w82SswXZXgaxt3oNHu5PIkcnq7MQ4uS
	X95XWkxQF8/kQpWRR2UsXrbTVm92N2uPN19M+V8RYTY6X3A/VGck4Zw1kunFyivFodxo
	4X+hiztwlbGjEcc5pW1pnB+3LgFfUz9Sq5oO3iEI6CK2MP9h2WL2ysrpTw+vUyn7K6KX
	soZj/iFdbkKZ0Er1ghQWNVGMxyBBuZL+2E/qre0GhObXvOWHc2wYigHxpVdI6KnGVl1O
	t0Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=Mn8XUGk9W/zKqFAqwjkTAa6MjQsEH/Drf3oXc80bsRQ=;
	b=mKLOTqzu2fCZhXaw+QN/8o/1IBclmptJW/I8V+C2r6l/evlayFeJMOfpiHaxCsx8id
	XEMwdMUkCOBY8ARGog9PqR2QZaDbrMZ0EzfXsKA/EC6/fSFT/2YowKSW/5L36c3wmu+l
	sqGMHnoRcXEmoMwCSMXkT1e5ccdB2jGcBItUkwNkBy+s5ebrffdAYnGRoqPwBZsNuOUh
	wWCTE8QPeJ6bEH2KSqqR/dgDx19wa4w7ozz9JNBIdEBaQL7HCAW8jPUqnrgr/4wp4SDw
	vJPfdSUrjBBfR//VRhvdvEkNMXQ8b6is8FS0cZuXZ3rc9l4NPyC77SmQZ66HlIIjSU2Z
	mykA==
X-Gm-Message-State: AG10YOSsTt8X6LUnRrIsgZVGST7TYEze+bP/YXgrDX3EFjnUOq5xxaGUgGitvGC/158E5B0F
X-Received: by 10.66.150.37 with SMTP id uf5mr40528635pab.30.1454350249849;
	Mon, 01 Feb 2016 10:10:49 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:20d2:e542:abc0:b8a2?
	([2601:202:4000:1239:20d2:e542:abc0:b8a2])
	by smtp.googlemail.com with ESMTPSA id
	m86sm44784652pfi.27.2016.02.01.10.10.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 01 Feb 2016 10:10:49 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
References: <CAMKF1sriCy0VxkkJHKsHaLy0K1N4Ns2E7o-rE_Lq8wSGXoy8hw@mail.gmail.com>
From: akuster <akuster@mvista.com>
Message-ID: <56AF9FA4.8050603@mvista.com>
Date: Mon, 1 Feb 2016 10:10:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sriCy0VxkkJHKsHaLy0K1N4Ns2E7o-rE_Lq8wSGXoy8hw@mail.gmail.com>
Subject: Re: Glibc 2.24 _might_ require minimum kernel version 3.2
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
X-List-Received-Date: Mon, 01 Feb 2016 18:10:51 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 01/31/2016 09:41 AM, Khem Raj wrote:
> Hi
> 
> This is FYI, as I have sent a RFT for glibc 2.24, there might be another change
> coming which is under discussion on glibc mailing lists which is on
> supported minimum
> kernel version bump to 3.2 since 2.6.32 will be EOLed this summer [1]
> 
> If anyone is planning on using upcoming yocto/OE release and sticking
> to kernels older than  3.2 then please plan for upgrading your kernel.

Nope.

- armin
> 
> Thanks
> -Khem
> 
> [1] - https://sourceware.org/ml/libc-alpha/2016-01/msg00885.html
> 

