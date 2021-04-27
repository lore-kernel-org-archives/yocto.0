Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.11416.1619543196413891933
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 10:06:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HKhb3JkG;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2B32B38C0738
	for <yocto@yoctoproject.org>; Tue, 27 Apr 2021 17:06:35 +0000 (UTC)
Received: by mail-yb1-f181.google.com with SMTP id 82so70273332yby.7
        for <yocto@yoctoproject.org>; Tue, 27 Apr 2021 10:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kIHLaGEblKy1z99DfR/1aGYOJb9ARRJnzzQSwgXx2GI=;
        b=HKhb3JkG8fPeoquX90eCqHHxMGO1wyaPZW3/Hacj8JrAFrYBWBzwDfEKR9+tFLb2XE
         SHOyg5qQ6adYJX7oEnfP725wSKSUxg2X9BTk8MhWzh0KtU+UmDO2wg+778rYYJHO3M3i
         lpfnDNNli8tnwE8QLWpmPd8Vrp/uApttDG1XylsMZ0X0DN1HvYgESW9rdu7h/fLtLoSS
         8uPgFN0iDM4xffgsDTGxp1TsT6TFE0+vxP1yNbyqrRmfJeWT1texRJuK5KHFjHTaeakT
         fwj54Gf8DW7wBrQe9BSs7D2df2DgYw2p3sGSfpk24Yf9pvKKnB7ykETPW04ca1QZMgO3
         dcoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kIHLaGEblKy1z99DfR/1aGYOJb9ARRJnzzQSwgXx2GI=;
        b=c1Rfgs/5q29sjM+XDiVB8WItBqXjZU2b1UXRb3Vox+HhjqtdiwyuNilSY+SmYcr+gA
         EQSs0Gq2Oy+SnJhndputmybdxcBOTIoJ3htrt0xrCPUVF9sOJWAUb4NBsZxQELBxOgnd
         siwFA2Jeh0zoGeXZ4olrH2KYZ6tjKwmZbOLh/Cx1f7WPY7Kfn2JD2UeEnw0bi9rxHcMN
         4OhmQ+hlwBDNZ5UNppikqM5RgpgTVynAXOsqVZix0n/qaEYGrol5b1+tc//Gku+j4Gz3
         7C8n/oV1bQbOzRXIzg07U8Q9E81BEjcrmDNBv3OTgvbPd6Qv/mZDCt5b+tR2tMMh9sqY
         W5bw==
X-Gm-Message-State: AOAM531czMu79mxrObQOCbgf3JtwSSvG1/jN0/TBAP3cr1pRS4EXyDzn
	Tb5xYM5dSLtPJ5JxkYSSXqpc5fjsnAwy0bT46Eo=
X-Google-Smtp-Source: ABdhPJxTLrMkCuscW1d8ZnrF9RyR8aw5FVqY+5SIpHuBmG+UIAqYpyUI3XBf5C5kgPuM2iOnNpcxsZWA9UcDSXwxklY=
X-Received: by 2002:a5b:ec1:: with SMTP id a1mr32435889ybs.369.1619543194252;
 Tue, 27 Apr 2021 10:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
In-Reply-To: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 27 Apr 2021 10:06:08 -0700
Message-ID: <CAMKF1so0T4HodY2fcEQ7_pc8Rign9ADMaWxLNM_JSs-xtP9XbQ@mail.gmail.com>
Subject: Re: Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>, "Jia, Hongxu" <Hongxu.Jia@windriver.com>, 
	"Mittal, Anuj" <anuj.mittal@intel.com>, Bruce Ashfield <bruce.ashfield@gmail.com>, 
	Armin Kuster <akuster808@gmail.com>, Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>, "Wold, Saul" <saul.wold@windriver.com>, 
	Joshua Watt <JPEWhacker@gmail.com>, Jia Zhang <zhang.jia@linux.alibaba.com>, 
	=?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>, 
	Derek Straka <derek@asterius.io>, Kang Kai <kai.kang@windriver.com>, 
	"jpuhlman@mvista.com" <jpuhlman@mvista.com>, "steve@sakoman.com" <steve@sakoman.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 27, 2021 at 9:48 AM Randy MacLeod
<randy.macleod@windriver.com> wrote:
>
> Hi,
>
>
> I've CCed some of the maintainers of more widely used Yocto layers
> to get comments on about tagging. Please add in people who I may
> have missed.
>
>
> For a while now, oe-core has had a yocto-X.Y tag in addition to the
> release branch name. This helps users easily find the exact commit
> that corresponds to the say 3.3 GA release. There have been some
> omissions in tagging but Michael and Richard are adjusting the
> release process so that tagging will happen more consistently.
>
> Most yocto layers have not adopted the tagging perhaps because they
> weren't aware of it so that's why I'm writing this email. Tagging
> will make it easy to find the first commit for a specific release
> independent of what the branching policy of a layer is. Layer
> maintainers sometimes create the release branch in advance of
> when oe-core is released and by adding the tag, it would make it
> clear when the layer considers content to be officially released.
> Of course it's up to users to decide if they are going to follow
> the HEAD of a branch or, for some reason, stick with a tagged commit
> or private branch off that commit.
>

I think this could be a good thing, although it does put the burden on
release maintainers. mostly they
test against the tip of the release branch,  So if yocto project
testing is including these layers for wider
testing and can then recommend a validated commit then perhaps this
could be made viable.

>
> Are there any concerns about attempting to do this for yocto-3.3
> and later?
>
> Should we make it a requirement for yocto compliance?
> Should it be a feature tested by the yocto compliance script?
>
>
>
> Here's what's in oe-core and bitbake now:
> $ cd .../oe-core.git
> $ git tag -l | grep yocto-3
> yocto-3.0
> yocto-3.1
> yocto-3.1.7
> yocto-3.2
> yocto-3.2.1
> yocto-3.3
>
> $ cd bitbake/
> $ git tag -l | grep yocto-3
> yocto-3.0
> yocto-3.1
> yocto-3.2
>
> --
> # Randy MacLeod
> # Wind River Linux
