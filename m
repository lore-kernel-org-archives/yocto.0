Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89A9BE00BEF; Sat, 24 Oct 2015 13:43:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D133AE00B67
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:43:16 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so36452405igb.0
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 13:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=+nztbT4Q8aWT2isE/c/9fkO1A6sXPM3Hgk6Agvm3qaQ=;
	b=tOJzoivSVvL52W0FfE6sNG/i0n+4QsXduVrWIkYHxSDHJmjeK7417xxARkuDYl+y0G
	VO6sRVy0zmJSJrpFBfnDQmOYCxCgCKkDS0OWZEl0B/RmBIqhOyTmwCOhWpZ2YuAogtXu
	coqv3lc4TYp315MvojeGfLw2bjLfUHxqOzKNkjSed23TDD9wNWy8e5za+gKR5zpcBIfm
	ndDowLo/Ik+aktVTuFIx3DcaLKO7Nvun5KQoEJWyzvBL5vozyp/cAn/Uq74dwpiGn6tH
	dzhOiKXRYD0IH76IFR9k3Mt52E3PaYfm98ccJo9cShDGztnSC2V0caGcC96tBT5xxLyf
	ZjPg==
MIME-Version: 1.0
X-Received: by 10.50.142.99 with SMTP id rv3mr10763680igb.16.1445719396005;
	Sat, 24 Oct 2015 13:43:16 -0700 (PDT)
Received: by 10.107.142.202 with HTTP; Sat, 24 Oct 2015 13:43:15 -0700 (PDT)
In-Reply-To: <CAF3SDA5J=ivNtkVMSiSxi7xHOdGs4dJAtrkArYihAjoEYxz3Og@mail.gmail.com>
References: <CAGMdoFmNiiWXwrakW5d+aomp7gSoN3HZWnUotaX1yzwXgpv71Q@mail.gmail.com>
	<CAF3SDA5J=ivNtkVMSiSxi7xHOdGs4dJAtrkArYihAjoEYxz3Og@mail.gmail.com>
Date: Sat, 24 Oct 2015 13:43:15 -0700
Message-ID: <CAGMdoFnTgDZinObtK3uqWfD9jV=5JnjGBMxZcvgHVumyFPMNLA@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: "Daniel." <danielhilst@gmail.com>, yocto@yoctoproject.org
Subject: Re: kernel defconfig configuration
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
X-List-Received-Date: Sat, 24 Oct 2015 20:43:25 -0000
Content-Type: text/plain; charset=UTF-8

I am using fido release and this is my
linux-wandboard_3.14.28.bbappend file, just 2 lines:
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://defconfig"

I'm trying to use my defconfig with the linux-wandboard kernel recipe
in meta-fsl-arm-extra layer:
https://github.com/Freescale/meta-fsl-arm-extra/blob/master/recipes-kernel/linux/linux-wandboard_3.14.28.bb

Thanks for your help.


On Mon, Oct 19, 2015 at 9:29 AM, Daniel. <danielhilst@gmail.com> wrote:
> I *guess* that "make oldconfig" is doing this. I can't find any
> ".config.old" mention on any "*.bb*" file for fido release of poky, but...
>
> I've used .bbappend for kernel recipes, selecting custom modules based on
> MACHINE and they worked fine... Can you share poky release and the .bbapend
> file?
>
> Cheers,
>
> 2015-10-19 4:37 GMT-02:00 Edward Wingate <edwingate8@gmail.com>:
>>
>> I created a linux-wandboard_3.14.28.bbappend that just specifies a new
>> defconfig.  I see my defconfig being used to generate a .config.  But
>> then something renames .config to .config.old and replaces it with
>> another .config that no longer has the configurations I want.  I can't
>> find what is doing the override.  This is the run.do_configure:
>> http://pastebin.com/zPfuSwTV.  Can anyone suggest where to look next?
>> Thanks for any help.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master

