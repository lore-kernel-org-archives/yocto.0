Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E3B1E00E61; Thu, 19 May 2016 07:17:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA37DE00E5A
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:17:40 -0700 (PDT)
Received: by mail-qk0-f169.google.com with SMTP id x7so48644051qkd.3
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=p9YjeIhNPYy9Ov2G7uSdCHyj31u969hsRZK0ZFfqQUc=;
	b=NHruZ7Ydmncur6QjkcCovOoY2/6WzzuJM9PUtBGQMvYBsCwfIBer5YbBRy+Puvrrwi
	SRU1XHKKUAMCQm8sLeYplqzuKwIK9uE7q0P2l+pRH5imnx57S6SNk1UDrcxRR3XzlrIQ
	Q1hnqDoQt3z3k5ZFBD2+cgH1scbC3YRl08h95lMHDjkAgUw97h5iOx4AskdoGOg2crqW
	jLmBdBPrqzSEM2Vb3+xiJcMGx7oTWhLSKd8xKrq/jmU3vUGHiXaghSj1yzAwrh9/qKLs
	YBkrtMmHkXT4jTHdw5kt5PbGa3zru5CYlIWP/s6ww+yigonUD473iSCyIGh4U8RcS0hG
	zcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=p9YjeIhNPYy9Ov2G7uSdCHyj31u969hsRZK0ZFfqQUc=;
	b=FWcs7GlFHLBUjPnThnVoffcywG7ecryqhSzJbjxj8wKwT91bamfcyDxZUR5Z3N++If
	PQOKVIi9/3n/ufWqx7JtWfYL62u73c+O/fvUTi4IqaqcD/Csli7uztzO/OU80bRfngpA
	tV3TXTRg1f2Qg1z5KzdBJmhfGvor6Ly107Eo7i58nkmuYLKLIYcMAN46osIl90YAn1g2
	GC8oEwtPaiADPwph3qOpAPiOWRCTFVIofLx2Ajr9tjQMlbwV0k/VfHrmAGNK57Wm4yDg
	c5nHm/rDl4G51+JwUzvkg7ze+8zzbe04djXD9MEYTyxtoAfUkbdBDofV/xdsxo1Phiu/
	sJNw==
X-Gm-Message-State: AOPr4FXbdeS2QnBc6BYoAZjOH/JUwIBcvbVdWS8uTj+jCEI0qcQ+PUVjlZ78LZ7RYKzq4ZdxrKrFuOiTfc50fw==
X-Received: by 10.55.207.214 with SMTP id v83mr15027310qkl.152.1463667459488; 
	Thu, 19 May 2016 07:17:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Thu, 19 May 2016 07:17:10 -0700 (PDT)
In-Reply-To: <573DAE5A.6000707@elfin.de>
References: <573DAE5A.6000707@elfin.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 May 2016 07:17:10 -0700
Message-ID: <CAMKF1srUeXLpESxNx6zNYEixW+3VE0TC694vEcGgzmwX=EaM8g@mail.gmail.com>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][Question] How to build an hwup image for raspberrypi3
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
X-List-Received-Date: Thu, 19 May 2016 14:17:44 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 19, 2016 at 5:15 AM, piotr.lewicki <piotr.lewicki@elfin.de> wrote:
> Hello,
> I'm trying to build a Yocto image for raspberrypi3.
> I'm using only two layers:
> - poky (krogoth: rev eff84a76acea1a0842194106a66684511f409842)
> - meta-raspberrypi (master: rev 9912d38e97671704822d1aa05312a0439cb650d3)
>
> I have built it by cloning both layers from git (and changing poky branch),
> then I sourced poky (source poky/oe-init-build-env), added meta-raspberrypi
> layer in conf/bblayers.conf and in conf/local.conf changed MACHINE to
> raspberrypi3.
>
> Then I have built "rpi-hwup-image" using bitbake and dd'd it to an SD card.
>
> Unfortunately rpi-hwup-image does not work on raspberry pi 3.
> Boot screen halts when 4 raspberry logos show up and that's it.
>
> On the other hand I have tried the same SD card with raspberry pi 2 and it
> booted up (!?).

set

ENABLE_UART = "1"

in local.conf

>
> Can you tell me if there is still support for meta-raspberrypi layer?
> I found that this layer does not follow Yocto project naming convention for
> branches (I think that the latest is "jethro", but nothing newer besides
> "master").
> Does this mean that there is no stable and up-to-date branch apart from
> master?
>
> Has anybody built a raspberrypi3 image?
> Could you tell me which layers and which branches should I use?
>
>
> Thanks,
> Piotr Lewicki
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

