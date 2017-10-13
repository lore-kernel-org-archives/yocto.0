Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B15FE00CD4; Thu, 12 Oct 2017 20:57:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90607E00CCB
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 20:57:11 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id t188so5533237pfd.10
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 20:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=agyV4dxZJ2FXDf1YwkJhUd+CPK1cstzy8uEBuegRCEw=;
	b=Wtos5QhWhQGPeLLeJ6+VWIfpiwOd2jzZFSru1z62vxiW8BRbjaq32KFspg5zPmhYYI
	8yJqLRiwN9a54ljzgA0FBGOyGHFrJ/1Q3rXG8o1BxbW9B3m+3NNTvX/Wk5doAF/erg97
	WTZHMLT1Xoh4ajimV+sgzR9Ihg5R5OjtewMNYthBjzyj09XO0VSD93ZqXPiqChITq2p1
	vEQGupa1+VxGoAMOLb8mMOm4WsBN7lMju4INE5BsZ/VvwVqnwxEVw48EGAlJ66vnzvBz
	e6cG4KtXgnsxE6ocFkHYfcr7Da5fcR26g7ri1Vw4gfKQt5thmZiGJpqdPOzupctZElKY
	Tf/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=agyV4dxZJ2FXDf1YwkJhUd+CPK1cstzy8uEBuegRCEw=;
	b=Ru2Chb5Nx29mFxp7xK2Jfko5fa0UdHDsNB0j9i2ZtNOW+sElWXwRXPsBavMUKh7fk1
	9EcOi4L5S6qXlgA+uj5qQ0HcxmiQ2UnszRG190K6k64EgMYwT7LT9QXqZAnN8MK1M6dz
	BVNuv6QALtJKfEw+YyrPZnfGPXqU5UJS7za6OX6AI+0sLyvdaI/wDYvLVVR4sbWx2OSb
	bWAD0N1TFXaUvXljsO8tDfxAa0QL3njX5NR+FZMX029tvpMQ8hRSLVBGZrMM6YawaLTj
	hKIX5alVp2h/QJ1mOUUIHPsFKKJFnA3n7VAz52kThSQeBTwRYkRQjqfML1aeHAmMMUKg
	4UKA==
X-Gm-Message-State: AMCzsaV2EZaIve04JCbIetXSN7+2OAzWCESJp9C1ijBed1zZVosgh2GL
	Y4tiK7XPQ0sHLDPV2rL9b6xwddS7FMAlsILaa4Y=
X-Google-Smtp-Source: AOwi7QC/fLZ1Tolg4dK4IJKn3BNBqNeYG3Q0n/gu96cpbg8fU2b+HzKxFjqwUo0KLyVPnjAvk/Lf0vrde/Ga6f40/t8=
X-Received: by 10.84.240.12 with SMTP id y12mr95833plk.215.1507867030863; Thu,
	12 Oct 2017 20:57:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Thu, 12 Oct 2017 20:56:40 -0700 (PDT)
In-Reply-To: <88F50DD804AA49FF97B3133B16A414D3@PAULD>
References: <D6FE565BDF1A4B5A8BAEEABBBF30862B@PAULD>
	<20171013033200.vkrdd6jiq2lqaooj@apollo>
	<88F50DD804AA49FF97B3133B16A414D3@PAULD>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Oct 2017 20:56:40 -0700
Message-ID: <CAMKF1soB4OfYhQ7=OuQ64LD7kLyyGBXLcs2pkzs3KGna8cp1-w@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I patch binutils for the SDK
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
X-List-Received-Date: Fri, 13 Oct 2017 03:57:12 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 12, 2017 at 8:52 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>>
>> You can apply the patch to all binutils variants, its fine.
>> Send a patch or if you
>> want, file a ticket in bugzilla and we will take care.
>
> Yocto's Bugzilla isn't recognizing my password, and when it says that it's
> emailed me a password change message, it doesn't show up. However, the
> four small patches are in the Sourceware binutils-gdb GIT repo, at the
> link I mentioned:
>
> https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=39865a7f420ab4c
> a4dec6ed27339618a5d5dc366
>
> Just to verify, my binutils-crosssdk_%.bbappend file contains:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/binutils:"
>
> SRC_URI = "                         \
>     file://gas_as.h.patch           \
>     file://gas_ChangeLog.patch      \
>     file://gas_input-scrub.c.patch  \
>     file://gas_listing.c.patch      \
>     "
>

you can just make 1 patch download

https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commitdiff_plain;h=39865a7f420ab4ca4dec6ed27339618a5d5dc366;hp=fe22022617a7122491aa83c893a10a8d861cde73

and delete the hunk which contains changeslog entry and rest should apply
cleanly. And add it to SRC_URI in binutils-2.29.inc

> and the patches from that Bugzilla page are in a binutils directory. The
> errors I get indicate that the patches are being attempted, but aren't
> matching up with any source files.
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
>

