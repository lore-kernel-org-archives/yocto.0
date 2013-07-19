Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43C95E01419
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 07:52:04 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id b10so3509402vea.16
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 07:52:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=21QlRQ7+S1F975G2RH71FMPtWx5wCxbhO+PFxoVBXzw=;
	b=PIHVD+gslA506TlYmvK7ngD/YApy9c2zlv4ojQEuPczD7a9/A7Qz6irxi8dQcUJMFu
	Fbe1aNH/iDslG4rGgYPmF8zAm1MvFHYUK7uwGOinashlcrldhy6KJ/Zc9AYkXV/VfZI1
	mwkgOz4FKl/a79dhkGzhG7k/rVLyLrR4PPET5jl+GiUOBYycPpo8vO2SHt9DVvDwhaJ2
	FDI2vk0cjSFl2YpnTl0wEDeX7XZhGWN+7xM+FxORn26jzbkcTMmSVqbC3gEAF9P8ILxN
	fE1azAMaWzSqACH98zJsIzNNFjL4aNPp+z1gcq5I41isy4cqOWgwEfNt0KgrxBJSY/Od
	SPxg==
MIME-Version: 1.0
X-Received: by 10.220.225.2 with SMTP id iq2mr5706233vcb.59.1374245523084;
	Fri, 19 Jul 2013 07:52:03 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Fri, 19 Jul 2013 07:52:03 -0700 (PDT)
In-Reply-To: <CAE8H0+XntiXZNiZg4ZJhf+uLusWLu+ddQpXPuKru5epugR4W2Q@mail.gmail.com>
References: <CAE8H0+XntiXZNiZg4ZJhf+uLusWLu+ddQpXPuKru5epugR4W2Q@mail.gmail.com>
Date: Fri, 19 Jul 2013 07:52:03 -0700
Message-ID: <CAPhnLPBanJ=CHZdzAwGNriUOH5UeNn-CggWntNbML8gw+6_V_A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
X-Gm-Message-State: ALoCoQkT3YpYiuIu1G+NXfsZ6aBRpbfhfYwfAx44n2qemzrojUglamHOfg+CZHt1H64WuOBpun3Y
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 9.0.1 release tarball requires bitbake 1.19.1 but provides 1.18.0?
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
X-List-Received-Date: Fri, 19 Jul 2013 14:52:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 19, 2013 at 6:07 AM, r10kindsofpeople
<r10kindsofpeople@gmail.com> wrote:
> I've run into another issue when trying to upgrade my system from Denzil to
> Dylan using the released packages.  I extracted the 9.0.1 released tarball,
> added the crownbay BSP, then moved my layers over from Denzil.  Sourced the
> build directory, then modified bblayers.conf and local.conf to merge my
> specifics with the new formats.
>
> 'bitbake core-image-minimal' results in an error... "OE-core's config sanity
> checker detected a potential misconfiguration." and "Bitbake version 1.19.1
> is required and version 1.18.0 was found".
>
> A contributing factor may be that I also have a git snapshot from 2 days ago
> on the same system (that builds), but I've tried to keep them in separate
> directories and be careful about running the source script in it's own
> shell.
>
> Is this a problem with the release tarball or a PICNIC problem?
>

It shouldn't be a problem with the tarball as the download tarball is

http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/poky-73f103bf9b2cdf985464dc53bf4f1cfd71d4531f.tar.bz2

which corresponds with the tagged release at:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dylan&id=73f103bf9b2cdf985464dc53bf4f1cfd71d4531f

I just validated the tarball and can't reproduce so my guess is that
this is probably a dirty env issue.

-b

> John
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

