Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61FC6E00A73; Wed,  5 Aug 2015 20:43:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C0DDE00A53
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 20:43:02 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so3541449igb.0
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 20:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=z4OJRJepmJVc212NlcmKr4lX3Asyg/kaNzf+T2ccpns=;
	b=tc3megSCclO4bC3jVycNbroCnKH3dSrJlk+/ERg9PF2TeXLXnWitC1Os+3rDGjHcqw
	hfxyGd8YjbRJb0ipWhAimtlSVaiKPYhW2CiYlcc8HbgShzQdQcy4v6ywLtHfeuDrRP2K
	EJYJHDApbhlKwdhhzSg57v1jcQArvGzzIpBjTI+6X79zJxQlwlMiV9Qb8YBjpmGPogd3
	P7Tvdvmi0gFNn1jJp9pdp2GljuxxWS7+Kzo+3yqDUpOayu7TMkv0h9lDYLMrayUsPy/g
	82M51x89x5x2StqlXL7aKJLR8wlLENq4zDDuQqCXVRxdt+wTAMviFwFLRGDMHGMAmdWw
	/TIw==
X-Received: by 10.50.79.229 with SMTP id m5mr1141563igx.77.1438832582048; Wed,
	05 Aug 2015 20:43:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Wed, 5 Aug 2015 20:42:32 -0700 (PDT)
In-Reply-To: <em56b72e44-f32f-451c-9677-11ded6e322e9@jbauer-pc>
References: <em56b72e44-f32f-451c-9677-11ded6e322e9@jbauer-pc>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Aug 2015 20:42:32 -0700
Message-ID: <CAMKF1srA5pRxcAKQVzDgH-CJkt5gmaTP=-t=3b4tnVEuadtbUg@mail.gmail.com>
To: Justin Bauer <jbauer@blockwise.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Qt SDK Static Build
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
X-List-Received-Date: Thu, 06 Aug 2015 03:43:06 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 4, 2015 at 1:03 PM, Justin Bauer <jbauer@blockwise.com> wrote:
> Hello,
>
> I'm using Yocto 1.8 Fido and trying to build Qt SDK statically so that my Qt
> application can be deployed as a single file. I've added
>
> SDKIMAGE_FEATURES_append = " staticdev-pkgs'
>
> to my local.conf before bitbaking the qt5 toolchain with no luck in finding
> the static libraries
>
> $ bitbake meta-toolchain-qt5

well SDKIMAGE_FEATURES only work when you generate SDKs using -cpopulate_sdk
out of real images and not meta-toolchain-* targets which IMO should
no longer be used.

>
>
> I'm using an imx6 processor and bsp similar to the Wandboard. I've tried
> configuring Qt manually by downloading the Qt source files and using the
> Yocto generated SDK, but ./configure fails due to the missing patches
> required to build it. Is there something I am missing?
>
> Thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

