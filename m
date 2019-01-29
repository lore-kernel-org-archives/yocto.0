Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFF11E00CE8; Tue, 29 Jan 2019 01:57:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D6BAE00BB7
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 01:57:57 -0800 (PST)
Received: by mail-it1-f174.google.com with SMTP id a6so3411421itl.4
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 01:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=yrV5tbxP3gkzTgVK0N5eeuBFHIhK79l3+pLXlw7v6dA=;
	b=ftUAn/mhE4wnb7vaYzHkFzZD+Gmz37WzwVKnQ3H9V2JZxDJ/lGMd53BE0R6kpU6hzh
	mXvULhdFNLA30raRz1FQTK/TBOj9f5vCKW3oFWH0FBePetjbdpIw+dsFYqf43UoZYa/8
	zWyF8vf/cKS+eho97rBdwzmFWheCMyiNLGlp5/XG5iQQHmr/cD//ULHskq+NY93V9Xyo
	qRSqLL7/1x0mq0ThjnRzNadj/ns+uU8uAkEii/eqgbKZThIXqwj5Xp5yLC+/hvXKBluY
	tEKUHepaKIfDew2oGIgw9J4rGHK0Vr2vMCB0t14hJ0y8X3nZhtLN5698rv/xXx53GwNb
	3kBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=yrV5tbxP3gkzTgVK0N5eeuBFHIhK79l3+pLXlw7v6dA=;
	b=ZXUf5EeKSSI4XBHXXxoZ2N4k3We2S6WrQO+Etul2Qq/a5IeNBs0sjr+HBABb24Rb5E
	Jsg/1lMazNfLWwxY9cUS+4H93PvcZPouwnNm9+j//TnQJCkY+gL3J6bPPh+YDTy8XNaU
	H469Sbro0bMHsNiiHz9Ghzai2dRShM53gNFIo+14zeO+NLQOraK+uv3HLMX4B9PjD4mi
	9W/4uvRP+ilp1Z/3r6iOTkMMlmV5pDZNMGI+R8jfJmUg9DDQmsXM9tJW5pEB21QCsVD6
	epVtu1teesbxy0dcYqA1WC+wBpffy96k9ogl4LtMDamiGSNYVQ5IDAdv/wpi6hnqqQ9e
	9zPQ==
X-Gm-Message-State: AJcUuke/kYX8ZUAS6gByigxquieykubeRqXS9J1kAR0RPP6uRy3RrOP0
	W0Mp+hBKSAUwGXg4rfrWdqum8szv233ouzPa2r3ksw==
X-Google-Smtp-Source: ALg8bN53fG4mqv4NxdMnwy45/oAD53wgvi8glpI/ZvWxQzRDuwRyBXs+gVFva0Rg/7gpi8gxKedAzi+ofYhruLMatns=
X-Received: by 2002:a24:e88:: with SMTP id 130mr10662863ite.27.1548755875771; 
	Tue, 29 Jan 2019 01:57:55 -0800 (PST)
MIME-Version: 1.0
References: <64da2270-974e-564f-a4a9-69ecb8611f3a@teltonika.lt>
In-Reply-To: <64da2270-974e-564f-a4a9-69ecb8611f3a@teltonika.lt>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 29 Jan 2019 09:57:43 +0000
Message-ID: <CAJTo0LaR0yH7Zc8vOb37rstxWSCybBYTgYFPG+f97vBLcgvJRQ@mail.gmail.com>
To: Kristupas Savickas <kristupas.savickas@teltonika.lt>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Triggering rebuild on a recipe when MACHINE changes
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
X-List-Received-Date: Tue, 29 Jan 2019 09:57:58 -0000
Content-Type: text/plain; charset="UTF-8"

PACKAGE_ARCH = "${MACHINE}"

The default is that the package is tune-specific, so it won't need to
rebuild on MACHINE changes.

Ross

On Tue, 29 Jan 2019 at 07:09, Kristupas Savickas
<kristupas.savickas@teltonika.lt> wrote:
>
> I have a few recipes that should rebuild when value of MACHINE variable
> changes. How can this be accomplished? I tried using do_compile[vardeps]
> += "MACHINE", but this didn't seem to have any affect.
>
> --
> Pagarbiai,
> Linux programuotojas
> Kristupas Savickas
> +370 633 36795
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

