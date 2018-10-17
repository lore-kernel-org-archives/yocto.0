Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2629E00BC4; Wed, 17 Oct 2018 06:27:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42FB4E00B9F
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 06:27:49 -0700 (PDT)
Received: by mail-ot1-f65.google.com with SMTP id l58so26146909otd.6
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 06:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=C7LiLr7ZJLhxMhORZAa8rmgN2E+O9vi1dVQikOPzCdo=;
	b=hxRmVfR4S1sjWdP1KG1pXQILu6hEUll9F1rd14NuG8kb1H7NSHUhhCF0BsAOoxyn3d
	9GoueNetPA+8Y/Q/H5e30UelDP3jy/wroBIK0PnFzeVy1lhHHzRuy+MHgUTgA/IyWb2U
	R+c7EFI5qTR2LiQdV1g/U0+zxESZ8o6iXM012G+U+jdak0STS0rf6HAO8J4yhrGyJfd7
	X2ynCPw+Pxg3a6G5rAq4FSm7XRgtUjhefHCBhEE303JvcsaETjZ3e4EEgjIkvlLkfwv1
	wQisXtBOmfPsyAEoD9alX9yWcv+3JToT6XPpgY/skehF9K5ab0t5/cBsPZFjT/11zeSY
	YQig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=C7LiLr7ZJLhxMhORZAa8rmgN2E+O9vi1dVQikOPzCdo=;
	b=uOYKE1DBgZzmtrF+2cznI5NRwf5VcBzhBzFrxgopE73bbpI4244I3yL3v3boq2OjWY
	7auJU3qd1Srt84OSvua+Ms6L+oVl/YB6BhmC8KJZMqgrmtHn7I4Ae9SMbalOgbYRepOq
	xdZDB5tfuCAy7EL3dV/NAZ0ma50u5NNKk0SZGZ7TpwXceMKNQNw3Iygrz8OwVrbNrgZc
	z/DDSR93OsSdBTFTAB0tne5dKwSC8V3GPlvvLn6oLvYeOHMd0AUsB9g0AKUsQ5IafO6a
	1oTiPYGsTPTPgkgO3tSCg+nKNge5X/Uv7bxmSrEvW88KHvsG9QojZN0PT7eRsRn6kToN
	wSyg==
X-Gm-Message-State: ABuFfogUesqgA/l+iF+uQIFE64d6L0LJ9oDCvQ+Ck5+AeGckTk8ZigXJ
	Ny9HwOsIz2DqwPco1dbYYnCSv1ovt6I66V7/7rHg1wsv
X-Google-Smtp-Source: ACcGV63DyOHteRG88hSnjMNe/fQ9JPK5z4HP5EMZ7/S9w3rT7bvK1Q7t46EwOXevjeLOfFTY+TS53yfme5XZ8PrRjJY=
X-Received: by 2002:a9d:3d44:: with SMTP id a62mr14287086otc.133.1539782868781;
	Wed, 17 Oct 2018 06:27:48 -0700 (PDT)
MIME-Version: 1.0
References: <20181015161520.GA17645@zazen.local.albeus.eu>
	<CAJTo0LYgWV2UxHEpMJ7DVWLsTZ19uDfdS=6weowdQ2m5+um71w@mail.gmail.com>
	<20181017131731.GA16630@zazen.local.albeus.eu>
In-Reply-To: <20181017131731.GA16630@zazen.local.albeus.eu>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Oct 2018 14:27:36 +0100
Message-ID: <CAJTo0LYNLOs=k3sw_y37fD9XH6YebjcLy4+m06GS2tU7d_URgg@mail.gmail.com>
To: Alberto Eusebi <alberto@albeus.eu>,
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Add python2 as native package in openembedded sdk
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
X-List-Received-Date: Wed, 17 Oct 2018 13:27:49 -0000
Content-Type: text/plain; charset="UTF-8"

Please remember to CC the list.

On Wed, 17 Oct 2018 at 14:18, Alberto Eusebi <alberto@albeus.eu> wrote:
> On Monday 15 October 2018, alle 17:57, Burton, Ross wrote:
> > Add nativesdk-python-core and nativesdk-python-modules to
> > TOOLCHAIN_HOST_TASK (using _append).
>

> But the resulting script don't work, it only unpacks the sysroots and then stalls:
>
>    __________________________________________________________________________________________________________________________
>    # ./angstrom-glibc-x86_64-armv7at2hf-neon-v2017.12-toolchain.sh -d 4.9
>    Angstrom SDK installer version nodistro.0
>    =========================================
>    You are about to install the SDK to "/opt/toradex_sdk/imx6/4.9". Proceed[Y/n]?
>    Extracting SDK.........................................................................................................done
>    Setting it up...ls: cannot access '/opt/toradex_sdk/imx6/4.9/environment-setup-*': No such file or directory
>    __________________________________________________________________________________________________________________________

Sounds like you broke the SDK.  How did you set TOOLCHAIN_HOST_TASK?

Ross

