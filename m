Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web12.464.1614718196151602800
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 12:49:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KVU5tD7l;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id k66so4095951wmf.1
        for <yocto@lists.yoctoproject.org>; Tue, 02 Mar 2021 12:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=sEwLSo6jXcrtGJ65LVrx1lJnDcRDrHpO297ASql8lIU=;
        b=KVU5tD7lV3lH0hpWZPO4rY6nBD7DaI0OH5kck5E1k+KeLFy3+piAtdxl3Sjx7pRxb6
         biTNL9+v9OpD6ocSO+TWLwnlcElByVadJ2vpZwGrGQRUMiI+u5f9NvqtKq5njgX70L/F
         ri1Gp7o3qOgh5eWp5AVsUnB1HBEG9/zBmHpvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=sEwLSo6jXcrtGJ65LVrx1lJnDcRDrHpO297ASql8lIU=;
        b=q0OS8ZLNOgVb+IzJgyhbBhI166yPde1sSOHRcMj4QPLAavxzV24hAoAJCQFHUIZRYo
         GkyvhZcmfTQaqXnpZAI3XO3Jz5q9xEeZTwjbVqmUK3Nlht9E0uChOq57EDsXnoPgKAbO
         nJSwyQ4F1MaHcxcYVuclDvksXjM+GzugOdIYdjOQqFhJviihuLnCshrayPj73q+SqfN1
         Enm6eeiXO6voruQUyfs2tPUHiDmbEmsntnAKOxx2WgmSDyYKYT9GhE1gfx2Es0QNDneI
         uwBtT6DYVAC8wYuxHLkS3s7NdKi8eOOOfFPniADDZCsWXY+clTAdqFTa8OJbOndeKSL9
         yIeg==
X-Gm-Message-State: AOAM532pnORoR3r6u0cqTo0mB1A1h2+RLcfq1Pj2sRVSq2XKITgitv05
	MYq7RYhDf8ZqMHkCNprt61ocLw==
X-Google-Smtp-Source: ABdhPJyTLtZqOCa8qdb/QYth3ypxkw80kYseqdEy/bhu3oKKkjmi4FsyzE66W3HeP9yrbUVkwYvb3w==
X-Received: by 2002:a7b:c24e:: with SMTP id b14mr5780449wmj.73.1614718194563;
        Tue, 02 Mar 2021 12:49:54 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:fd4c:95a0:62b1:7d53? ([2001:8b0:aba:5f3c:fd4c:95a0:62b1:7d53])
        by smtp.gmail.com with ESMTPSA id a3sm30064762wrt.68.2021.03.02.12.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 12:49:54 -0800 (PST)
Message-ID: <2a6603ec08c0aee64364961c0d9eca0ef7ea6aaa.camel@linuxfoundation.org>
Subject: Re: [yocto] Reducing the perl footprint on my image
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: diego.santacruz@spinetix.com, "steve@sakoman.com" <steve@sakoman.com>
Cc: "rustyhowell@gmail.com" <rustyhowell@gmail.com>, "Yocto
	(yocto@lists.yoctoproject.org)"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 02 Mar 2021 20:49:53 +0000
In-Reply-To: <DB6PR0102MB263061D0B03C4DA90C7B89F188999@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
References: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org>
	 <16689EFE3DC0BB92.17298@lists.yoctoproject.org>
	 <CAOSpxdYoviYhz4s9u2KY8ttwoFqo8v6VEzJ2vM79-j2LiQex1g@mail.gmail.com>
	 <DB6PR0102MB263061D0B03C4DA90C7B89F188999@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-03-02 at 20:42 +0000, Diego Santa Cruz via lists.yoctoproject.org wrote:
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Steve Sakoman via lists.yoctoproject.org
> > Sent: 02 March 2021 21:06
> > To: Steve Sakoman <steve@sakoman.com>
> > Cc: rustyhowell@gmail.com; Yocto (yocto@lists.yoctoproject.org)
> > <yocto@lists.yoctoproject.org>
> > Subject: Re: [yocto] Reducing the perl footprint on my image
> > 
> > On Tue, Mar 2, 2021 at 10:01 AM Steve Sakoman via
> > lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
> > wrote:
> > > 
> > > On Tue, Mar 2, 2021 at 6:26 AM <rustyhowell@gmail.com> wrote:
> > > > 
> > > > I have an image that is using debian package management
> > (PACKAGE_CLASSES = "package_deb").  Because apt and dpkg require perl,
> > perl is being installed in the image.   No problem.  Except that the entire perl
> > stack is 669 packages.
> > > 
> > > I just took a look at the manifest for one of my images that includes
> > > PACKAGE_CLASSES = "package_deb".  I see the perl package plus 43
> > > perl-module packages.  Are you sure that something else in your images
> > > isn't pulling in all of those other perl-module packages?
> > 
> > It just occurred to me to make sure you are looking in the image
> > manifest to see which packages are actually installed in your image.
> > The perl recipe does generate 676 packages (in dunfell) so perhaps you
> > might be looking at the generated packages rather than the installed
> > packages??
> > 
> 
> I encountered a similar problem with package management enabled and rpm 
> as package format, where I also just install rpm for package management 
> and not all dnf stack. I get quite a lot of perl and python packages 
> into the image which are pulled by the rpm package, but they are only
> needed for things like rpm-build, rpm-sign, etc., not for the bare 
> rpm command, which is the only one I need in the image.
> 
> So I locally extended the rpm recipe to split those tools into rpm-build, 
> rpm-sign and rpm-archive and skip those packages in the image. I should 
> probably send patches for that to oe-core. Is that something that could
> be accepted?

Not sure they need to go to separate packages but moving those 
three to some kind of "build" package would make a lot of sense
to me at least.

Cheers,

Richard

