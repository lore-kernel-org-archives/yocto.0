Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A47B4E00901; Mon,  8 Oct 2018 04:10:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EE42E007B3
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2018 04:10:42 -0700 (PDT)
Received: by mail-ot1-f66.google.com with SMTP id i12-v6so19243205otl.1
	for <yocto@yoctoproject.org>; Mon, 08 Oct 2018 04:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=KWO+bfopBHSPMnjaoH32hBQy3UTA2CgVdgR1TrzuhAE=;
	b=vJkrweVjg6Qg0Gd6B/hkPHvK1eXSWzqlAtDEibEw4Farh/dIgGCTz4dUTY0L2mUxrU
	HQQkvyolZN2K6arJ/d5mhALaGCuNPNQh80amFjZyaAq1TH3s+wDAB9KqkTnLJKvpfKVD
	3b4otff5LiF3SlykYmG15joo4p+aK+pA7uocxZyH/IZIIdocB44rama/UhfJOAMoyCB2
	rKNL5kyI/LRcTCmJoAuy1zkThgb6z+WQqFQZqB4EDgFKDHKdTdbhGMG1DfM91EI1+lCr
	R7DEh4Z6OSlmkeGicN2FWUBz8IYuGr26BVy2SXRxily0/zZL8GeuILci+WqgHaYR6hZq
	1/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=KWO+bfopBHSPMnjaoH32hBQy3UTA2CgVdgR1TrzuhAE=;
	b=ETyc5u/9IF6LOOg3kQZFgCsxZ71C0SYYPFmPIc5Jr+9YNDz0Ky7UeQWGCsTNS0hvPF
	IrEiyt6iKNVI0L/G2wUG+MbMCfNH1SP+FrmgVZuZ90/yzm+wX/I9WqBYW9R8uKATP3sc
	BKpXWdt3857zxdALk3I1iqYrM/nFfqbvxO6Bukbg+lCaErySEZlleEnYz6Dwy1Zy/kxH
	gQ2/Xn2P0KbPMHW/n065VIOFo0FLnT7AJgOgCF7QOHVkbZcRQnhiz0xASPTYoSADSnSO
	qug7zzM2agbOI7Q5buXujSVNYvQVmM9GHnZrvkNjnBcDx3v0tOJorDb+7jS9qO73iBXY
	bqNA==
X-Gm-Message-State: ABuFfoiO/Cmn8vbRG8SaMiy0tfqYP1nP0soLAPqoAjxbu7HoeyKZWGXi
	H0QQ4TQXKVKAvjKQ9N6r/r7ToJzUU0oMtTaKBo1lxUEt
X-Google-Smtp-Source: ACcGV635l4EeOB7DMxpiYG8a4i0Ul4f8M6iHiJ6KN27sSD1pXBH+/EcT7Et2JiCW4eXWwdb5GdZiKltNnBFAEsrAZ3w=
X-Received: by 2002:a9d:3e50:: with SMTP id h16mr5795392otg.8.1538997041679;
	Mon, 08 Oct 2018 04:10:41 -0700 (PDT)
MIME-Version: 1.0
References: <001201d45d33$c247aee0$46d70ca0$@san.rr.com>
In-Reply-To: <001201d45d33$c247aee0$46d70ca0$@san.rr.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Oct 2018 12:10:30 +0100
Message-ID: <CAJTo0LaK6P5x1ciFJZDFudnemD4i7eEtVYbC2pV-GuPah2RHKw@mail.gmail.com>
To: sscott@san.rr.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: how to install files in nativesdk
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
X-List-Received-Date: Mon, 08 Oct 2018 11:10:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, 6 Oct 2018 at 06:18, Steve Scott <sscott@san.rr.com> wrote:
> I am able to generate a standard SDK with native and target
> sysroots. The target sysroot has header files for my custom
> libraries. The header files are generally installed in
> <path-to-sdk-target-sysroot>/usr/include/
>
> We use cmake and googletest running on the *host* for testing some of
> our libraries. So I need to build googletest and the test apps using the
> host (x86_64) tools. The test apps need to include the target's library
> header files.
>
> I tried specifying the SDK's *target* usr/include as an include directory to
> the compiler, but files in this tree preempted the standard compiler (g++)
> system include files. I can avoid this problem by installing the library
> header files under the SDK's native sysroot; i.e. in
> <path-to-sdk-native-sysroot>/usr/include/
> and setting this directory as an include directory on the compiler
> command line.
>
> However, I cannot grok how to get these files into the SDK's native
> tree. It seems related to
>    BBCLASSEXTEND = "native nativesdk"
> but I'm just chasing my tail trying to figure out the magic incantation.
>
> Does anyone know how to do this? Or is there a better approach?

Assuming the recipe is correctly written, simply adding:

BBCLASSEXTEND = "native nativesdk"

Will give your recipe (eg foo.bb) native and nativesdk variant
(foo-native and nativesdk-foo).  The class extension automatically
changes the paths so in general that's all you need to do.  Then just
add nativesdk-foo to your SDK using TOOLCHAIN_HOST_TASK_append = "
nativesdk-foo".

Ross

