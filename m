Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC02EE017B9
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 16:50:54 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id as1so3651989iec.27
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 16:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6Oxo9cSawzOUhyliqVvpTmYuDr1i4GMP6MTS5alChtY=;
	b=ayVChe9IoQLLRZCRgeUn6Qs9hPP4PPttYKU5ysuKMHhNP1sy959rQlpQDkfRYHWpBw
	AwC0axTjIR/k1y8Ja1DFsD2oxOZinehaK+HQiR5QJot5kJligdyhPFOaTjqyr2Ljg8Ow
	4jTUBMZC6OfHZ/l97lmDArwnoDpXqINCC0yEeTpge2HOn2O8peq1WjUZ/omXZfwoEQuR
	Tc61ctrRNpDa7SoRIak/SCIIbrRGtASUCLdX3StkDeVQFWAEfony+hkgGM3p2PlUNhnO
	gpeHj/HnFi5kMVa1dzETP4C/xr+MBfvJTC4jqFovqXReQ3FZXcRCS2LlwzrCYl/0cgCQ
	jBSg==
X-Received: by 10.50.23.103 with SMTP id l7mr4370323igf.3.1383177053972; Wed,
	30 Oct 2013 16:50:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Wed, 30 Oct 2013 16:50:23 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1310240832580.5411@oneiric>
References: <alpine.DEB.2.02.1310240832580.5411@oneiric>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Oct 2013 16:50:23 -0700
Message-ID: <CAMKF1speeJM_4j6Hd_F0-iLgyWwwcENnmpj+kBu4CHQcznC-gA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: filling in the "missing" entries in the ref manual variable glossary
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
X-List-Received-Date: Wed, 30 Oct 2013 23:50:57 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 24, 2013 at 8:39 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   expecting the standard reaction to be, "hey, feel free to submit a
> patch :-)", i've noticed that there are (unsurprisingly) quite a
> number of variables missing from the variable glossary in the ref
> manual.

well I have a different response as alternative file a bug in YP bugzilla :)

>
>   just related to u-boot (which i've been messing with this morning),
> here's the current situation:
>
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-U
>
> and what seems to be missing is:
>
>   * UBOOT_ARCH
>   * UBOOT_SUFFIX
>   * UBOOT_BINARY
>   * UBOOT_IMAGE
>   * UBOOT_MAKE_TARGET
>   * UBOOT_SYMLINK
>
> short of submitting full patches for things like this, is there at
> least a list we can keep track of this stuff on? i'm not sure i have
> the time to submit full explanatory patches for everything i run
> across, but i can at least report what's missing if that's useful.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

