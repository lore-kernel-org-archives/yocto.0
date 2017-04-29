Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDC2EE00A48; Fri, 28 Apr 2017 20:13:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80B4BE009AA
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 20:13:06 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id k4so42205876vki.1
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 20:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AH+MWyjKpLBWwHebY4I1we0MRgHBYaJRnZnGP0s5NL0=;
	b=EXsXQSUPfzj3OxRNxPiqVp1rOIH+vnoMbgswfocbN/YUWztZxYbEE4FMRoSfgvH4Fo
	tf4tyfzdqvcU05WXlqxYAKSrc5ok+QMr2szMy/2g4UpkotwsWIDSsIIwmWQbS5WOEf9x
	DDh5HluzR51mTnIDZC+swSzdLd9NvFQ+2M/tq8xdW+fug5Yeyzq1fiIj42wah5CIlGg4
	txbHZAqribbQRDAtu0ODXFrqbfDcecfJ9nR86Q+V7VzVE/gsnUToNhVerbEm6cCUNxGg
	rEDOFsznB5pJb429JMfKHwB7ePhs1/v6Afe8X22F8gvERNCqBPP1D9R2tSC0EShNhVue
	G4FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AH+MWyjKpLBWwHebY4I1we0MRgHBYaJRnZnGP0s5NL0=;
	b=GjDacJnNlBgjTGLhGS+BXvKcEkEUCm14sJEWc1GT6G3xO7iaJc7UM0H9i5GkTz2HmT
	2dk9RmOZpVFG362G5HmFVMWGMiG53y9CxczJz871SunvWGN5pQA3JFxExqlruzRghit3
	B/l7Fli2/s1JB76YRUuD94w81hCfYjdRUEdNsshV3S33u/BHaymjjb7RXz4BYPPSxUmH
	rAbnnUYpgo66ESl4SFP7enuXfmAkrnFa65qlLfojaQm/qI3yWjThVauIaDfIvvpoBCpO
	37NafOzE/A2ewUnoXubPqpzxoGPkUud6A2PuMvEL4V5vR5pMQWNY+fzBK8JUQsd3snKB
	itmw==
X-Gm-Message-State: AN3rC/7s7ORgDZO3AEBbceIH4Aj2jFHpUp224FyiXZDovoCGZmMaKvOD
	6nCpVgCUzF4Kl00xGD0ykVCK3KxSmg==
X-Received: by 10.31.72.194 with SMTP id v185mr6918980vka.72.1493435585561;
	Fri, 28 Apr 2017 20:13:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.65 with HTTP; Fri, 28 Apr 2017 20:13:04 -0700 (PDT)
In-Reply-To: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 28 Apr 2017 23:13:04 -0400
Message-ID: <CAHUNapSxz5oO=3JeZiB04nJb++MaLb5oGP+LHw_aHYtPM-hneQ@mail.gmail.com>
To: Luca Carlon <carlon.luca@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Building rpi-test-image for Pi3 64 bit
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
X-List-Received-Date: Sat, 29 Apr 2017 03:13:08 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 28, 2017 at 12:01 PM, Luca Carlon <carlon.luca@gmail.com> wrote:
> I'm trying to build rpi-test-image for Raspberry Pi 3 64 bit but I'm getting
> this error: https://pastebin.com/rYJ0PL7h. It seems it is looking for a file
> that is not there, and I don't see it in the linux repo either:


You could try adding the following to your local.conf:

    KERNEL_DEVICETREE_remove = "bcm2708-rpi-0-w.dtb"

bcm2708-rpi-0-w.dtb is the device tree to add raspi0-wifi support.
This failure means the kernel you're using hasn't yet been updated to
include this device yet.

See commit 66e0e37ce3831e1a3511761dffb03c8000e9d7f7 of
meta-raspberrypi
https://github.com/agherzan/meta-raspberrypi/commit/66e0e37ce3831e1a3511761dffb03c8000e9d7f7

