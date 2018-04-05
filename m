Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11D5AE00B8F; Thu,  5 Apr 2018 09:57:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.42 listed in list.dnswl.org]
Received: from mail-pl0-f42.google.com (mail-pl0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1FBFE00956
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 09:56:47 -0700 (PDT)
Received: by mail-pl0-f42.google.com with SMTP id bj1-v6so17546016plb.8
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2018 09:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wNvEZQTqQGv6JZSBCrtXqpt08fNPvmjPZoMbfx1HATM=;
	b=dCAZwgLAn+ZOXsBx27kvzcVzxV6hQES3ReH6aumJi8U7cHCeXwwkEO4vo2pW6c3uHv
	9tJ8gxTMh1Q+MCahgNWuHx/dO1g7oVOZ3XTimQ7bhf3TdNFT5mmhBpPu8FKiIM3WpuTC
	ANAmX6JiPtA9Xi4frr5jPD1YwQsFPTIRcaMS4be/lloTMeIwjikJfZ0oEAWUTcr1f31J
	IMk4Keaka07Qu+EaI91slUzqcIDH9coGqN2r4Wfbh+jAfukpfhxeJ9d3bi1Xam0dyFlG
	QWTAO4TChcV/mEoMb0qnsQNDzOVVY7nf42d+RaUeVHAqkDsT6rh0rFbmejAzwiHVaCkw
	Xakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wNvEZQTqQGv6JZSBCrtXqpt08fNPvmjPZoMbfx1HATM=;
	b=mYhDPBeF2gOvVAypDVGtsgtSrgGlbgmV8xq9U02jC5LSAbHnfwFj2lZ11reqdrszli
	YhAF3m7IPj8uTQrLq9ftGie2wFLvvEGN+QXLX1N/TGNZewv/HSbHD2vWC1XqbLx8us9C
	iL4WAX02ewxr00sn456UgP8vVQbqOP1uUs7MZ6ktViTcSHnuX/cgbJSH8ViazCZedgrH
	0xVV2eUAFHrvQ0ODV7bAQ7ht0DOcBg6ObrDzoWFOX1rhpuTRsEENSTg8RmvRsXjUAdaZ
	lW7rh53kgGrPyC3qcwLUZPr2qRErMvdcjJXI4oWD+5/fHnSYhPqUAzbJZcRjb7tXWpkC
	Qdiw==
X-Gm-Message-State: AElRT7FdLnso3nrv2n+cYTCZZBBLpOsMMhQ7QEjc1IlkkGPtKqBzn+1I
	cN77LUgZwgwc0rY1dOEV9DhmCvQ+qi5HMJyFbfY=
X-Google-Smtp-Source: AIpwx4/VQqe7sxOcQ2F0B818vUPSnx3b/obAXPIHc2WpWyid6U9vV/Nc91oUoiuIe+onKkq6W99Bj7XFe9t93l0jsWs=
X-Received: by 2002:a17:902:9a03:: with SMTP id
	v3-v6mr16270967plp.162.1522947407264; 
	Thu, 05 Apr 2018 09:56:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.172.5 with HTTP; Thu, 5 Apr 2018 09:56:16 -0700 (PDT)
In-Reply-To: <MWHPR19MB118384708AABF27804EBDD66C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB118384708AABF27804EBDD66C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 5 Apr 2018 09:56:16 -0700
Message-ID: <CAMKF1sqodNOr9oxCTgqapjaZAxYjqLj3s86_MNj74i5D-1orQw@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with packages during "devtool build"
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
X-List-Received-Date: Thu, 05 Apr 2018 16:57:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 4, 2018 at 7:08 PM, Raymond Yeung <rksyeung@hotmail.com> wrote:
> Resent, after subscribing to the list.
>
>
>
> ________________________________
> From: Raymond Yeung <rksyeung@hotmail.com>
> Sent: Wednesday, April 4, 2018 6:40 PM
> To: yocto@yoctoproject.org
> Subject: Problem with packages during "devtool build"
>
>
> I've some 3rd party Makefile-based software I'd like to integrate to a
> working Poky snapshot.  The following are done:
>
>
> devtool add cgosapi <source path>
> Edit workspace/recipe/cgosapi/cgosapi.bb.
>
> Implement do_install to move files on build machine to directories on
> target.
> Files include a .so, a .ko, along with 2 other binaries.
>
> devtool build cgosapi
>
>
> At step 3, I got following error:
>
>
> ERROR: cgosapi-1.0-r0 do_package: QA Issue: cgosapi: Files/directories were
> installed but not shipped in any package:
>
>     /lib
>
>     /lib/modules
>
>     /lib/modules/4.4.26-yocto-standard
>
>     /lib/modules/4.4.26-yocto-standard/extra
>

this seems to be a kernel module. So you might want to inherit module

> Please set FILES such that these items are packaged. Alternatively if they
> are unneeded, avoid installing them or delete them within do_install.
>
> cgosapi: 4 installed and not shipped files. [installed-vs-shipped]
>
>
> Where do I get the above 4 lines; they're BTW directories, not files?  I
> googled online and found use of FILES_${PN}, but didn't help.  And the
> "extra" directory seems generated; I don't have it.
>
>
> Raymond
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

