Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4542EE00D47; Mon, 23 Sep 2019 02:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A575FE00D38
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 02:19:51 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id y3so11507624ljj.6
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 02:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VpiQ4zDXdhxWTBnHQKJBInmy3+LBR9Xt6iKxN4lLiBA=;
	b=EEymwb8JNFBdHCGKT4hjdtJE/OGa73FLMmT1IZD9F/p6tZvTZBGdFNNBDjDRYOPpmi
	GLFgSTKBvy9MK8EJbIyRONwxIDfxb/Gr8i19kh1J3DrqT6VpcJsQxxf9tMOcneewxEpx
	+mEWI2oh0DUfhemJRWLH/2438s/WsHwK8clX7C7nEzOLCUkz1YJHmvAiAcqOiB510NV4
	0DGKyP6a9ex5YGLLCDtXPOHya+kEOueTvbBNTy2NaZBjPiMIebQz82id/4MLW8iNK1g/
	wgKq2nkU67FIO11rPxiXebYeBOE1OXZ4TBWwW3tjyVvAOV+QGn7291gH8iUsuqhYlZ+d
	RVjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VpiQ4zDXdhxWTBnHQKJBInmy3+LBR9Xt6iKxN4lLiBA=;
	b=lQpTdLGiUY74JPBUyDJm1RgzoE7t5Ny0pkhA+AILXO+uRVqAb6+ul2D1WtSVkIQmtq
	hsK+evzIiXmcZBVPPVxW51Lwjxt4QJxhWz2igqj3uN14yUhNGwfSeg4lXsyOt5lbh2N4
	A1ck+k2E9UQTH0SoFx3fe9tklqpv0DU1Q2Ht6Qi/f8CmIFmKemjVzBi63iWqb9JNXlm/
	uAutpnUA46mKw7AHU6KqWt/NqJqlYjzgq2V/Vu/xV/MVdf2UBm65p7vlud31CSqZF6l/
	vGc7Orj9LcLjWsUEtzFXz/XzPkT66xhIw/OyUgwtCAZOrbqwyJjo4kVJlSsmYQ6sAgdf
	Cyxg==
X-Gm-Message-State: APjAAAUBnsOBk45rqjJlTvvClxYppPn3wYHFQYGetsiKIQeiwhFIR+k/
	TDPv3FLfxcTsmv6QoYkmVwwDrYPLHW7Pb/dUoQY=
X-Google-Smtp-Source: APXvYqyWqv/EsSXdlTuIuFlcFPOakeVNvTEJEq4nbuML40ldNhQGvQ2Br/JysUF3Y881sts8nzzU38wEiOTvZWMfAwI=
X-Received: by 2002:a2e:2bdb:: with SMTP id r88mr16760929ljr.82.1569230390758; 
	Mon, 23 Sep 2019 02:19:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAAmVmrpyrf6QhAA85UwWQa1mbrd5D6KmddKndeMqcoGG-YP9mA@mail.gmail.com>
	<fe22ebb4-447c-4f3c-4bec-052f37e38621@intel.com>
In-Reply-To: <fe22ebb4-447c-4f3c-4bec-052f37e38621@intel.com>
From: Teemu K <maillinglists18@gmail.com>
Date: Mon, 23 Sep 2019 12:19:39 +0300
Message-ID: <CAAmVmro9QhrBCxhMHZK656JHC0Cj0gZ+aiK4AaLBSE7cvhs6nw@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Debug-files in SDK
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
X-List-Received-Date: Mon, 23 Sep 2019 09:19:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 12, 2019 at 1:52 PM Ross Burton <ross.burton@intel.com> wrote:
>
> On 12/09/2019 11:13, Teemu K wrote:
> > Hi,
> >
> > I'm not entirely sure if this is bug or feature.
> >
> > I've created sdk to my image with populate_sdk - command. I noticed
> > that in the SDK the x86_64 - directory is 384MB and that contains all
> > the toolchains etc., but the target side
> > (cortexa9hf-neon-poky-linux-gnueabi) is 5.7GB. Majority of it is in
> > .debug - directories.
> >
> > What causes the confusion here is that I haven't enabled debug-symbols
> > in my local.conf and I don't have any other debug stuff enabled there
> > either. Are those the debug-symbols that can be used to debug software
> > on target with GDB for example? I thought that debug symbol
> > information needs to be separately enabled.
> >
> > If they are not, then can I get rid of them somehow?
>
> SDKIMAGE_FEATURES ??= "dev-pkgs dbg-pkgs src-pkgs
> ${@bb.utils.contains('DISTRO_FEATURES', 'api-documentation', 'doc-pkgs',
> '', d)}"
>
> SDKs by default contain debug symbols, and yes they can be used with gdb
> to debug on target.
>
> If you don't want them in the SDK, remove dbg-pkgs (and src-pkgs whilst
> you're there) from SDKIMAGE_FEATURES.
This is exactly what I was looking for. Thanks for that.

One question is that is there a way to make package that would contain
only dpg-pkgs and src-pkgs? Ie. it'd be like 'debug-addition' for SDK?
I know how to install those things to target, but how to get them to a
package (or in separate directory) to host.

-Teemu Keskinarkaus

