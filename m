Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C19EFE00655
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 15:20:53 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1366295eek.35
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 15:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=cYMkA5biFJSnFhch3xbdqo4F1DiGgsD8mzQB+VUEAQs=;
	b=wD+TWgQ9aDkrA1vUtIKJO5N3MQxepqZTgSdgy0yRLXw0k/3yAqQS7b2RUTp8ilvCLi
	8fvjGxn1zxEDWrspL0nqXKmz7l+Wsxy+7iJ1zMxh5KdpCVuOn8Qh7ViOOy/2+G6KmYaY
	MciN+XRMShZx7abzzRkLypzpX2QagTM9wSVjVBRhp5MbFqr8a/lNgdHfrpGK8Co5Fsba
	1+lvR7TWlMAd+syD1UpSvyhFPWQOiOxxMX8dfDrnzafBjDZBMT5F/r1yWbUbD/daFOXE
	9okdY8/7wtjigR5cK4Uzf2QAb4R/70INLKZB4vu+xYai/dP/RiJoWrUkYPMh+Xd0urMC
	cRcw==
Received: by 10.14.202.71 with SMTP id c47mr3918243eeo.42.1348179652684; Thu,
	20 Sep 2012 15:20:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.173.69 with HTTP; Thu, 20 Sep 2012 15:20:22 -0700 (PDT)
In-Reply-To: <CAMAb8ZNAb3qfjyRvf9CNh=Sm+o-fLCNGAikO1jAO2Z=LdZ8LOA@mail.gmail.com>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<CAMAb8ZPXYXNTgk_v_PG55C1FYERrT4s08FGLQO7frsE=J4pGDA@mail.gmail.com>
	<CAMAb8ZOAk-oF_gJmVvAVjAEN+JpS12=WpbxZjhqD0Tx6h=f4Zw@mail.gmail.com>
	<13486486.LUSYcH1i4g@helios>
	<CAMAb8ZNAb3qfjyRvf9CNh=Sm+o-fLCNGAikO1jAO2Z=LdZ8LOA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Sep 2012 15:20:22 -0700
Message-ID: <CAMKF1sosmizJWDNj7o1Vs2nPPMis5ZLeWT8zdRYtiz6ZvrLytA@mail.gmail.com>
To: Evade Flow <evadeflow@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: BB_NO_NETWORK and own-mirrors not working with meta-systemd
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Sep 2012 22:20:54 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 20, 2012 at 3:12 PM, Evade Flow <evadeflow@gmail.com> wrote:
> This doesn't appear to be done in a couple of the Yocto recipes:
>
>   - meta/recipes-devtools/btrfs-tools/btrfs-tools_git.bb
>   - meta/recipes-devtools/mtd/mtd-utils_1.4.9.bb
>

good. Send patches we will accept.

> SRCREV is not set in either of these, but 'tag=' is supplied as part of
> SRC_URI, i.e.:
>
>
>   SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/mason/btrfs-progs.git;protocol=git;tag=fdb6c0402337d9607c7a39155088eaf033742752;branch=master"
>
>
> I'm not sure what to make of that, but... I'll modify my Wiki entry to say
> that SRCREV should be set (instead of a SRC_URI with 'tag=').

change this one too

