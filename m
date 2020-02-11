Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.11001.1581431780908793144
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 06:36:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=OyKA8eHP;
 spf=none, err=permanent DNS error (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3435E01673; Tue, 11 Feb 2020 06:36:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A669E01626
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:36:19 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id o15so11845724ljg.6
        for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 06:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=45zLWdp3whOkrlfdlaIPoGrb+ol0CNMykT5RO4Q3xZw=;
        b=OyKA8eHP6WTCBNuep8S6rcFRa7gxrSBBAFcBklSEn/1Lei36YrpTFl96bZBmmZrYTO
         d47qoKqswexVMO5Gp0ZjBBaRoIl85Qj6pacr4j1+Eo2awoFThaS4grDIUIGzo8E+ea6p
         mtH00mPQdGmAetlF+TCfw1qHu4rcinh3AYnwDfM1upQDVJyDCiF9rOeE90ANW6Sf8znu
         9Mzj6t5cLzohGbz+cMyOTHkbUjFgVw+qg4MsfBK1v8wsYJAfKnkpO9spscZnScMaejay
         4wYMSUBO6XlCjAJoTrL5wCXl7FZss8qd4gYhQcbOJftHaAcglTs3js9nLQfNqjFRkJdu
         VYcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=45zLWdp3whOkrlfdlaIPoGrb+ol0CNMykT5RO4Q3xZw=;
        b=IyFjVezG4GN71YhZRAAF6p3aPaZpCm8+ILdSGiTZWI22S2Aw0g9Yr8gF46SO92uW/R
         Fzjfnxp4JKVm1d8E1kGh2kOYCt3i6sR8LmpLFgrU6ma5rbtj/94WD9jZFMMBTOcYY9yK
         0S/RS5sGkc37ScmE5nySBg36K66jhMIomYifwRiMiv1JaGm2M6eV1Ti+8rc8PCLFiadM
         68EsZkOEZIfqmO0gF1OUXcJPEo05rNaFb6l13T5HHdwvHsyJyEC8VIY4T0TB10CqhfgF
         A8lasOHPqCWqqc+K1FINGqJTtLP2uL4CGBJ8tBnYdwNyNhD6aL1sMakQUouvUr8HqAMA
         SeQw==
X-Gm-Message-State: APjAAAUZEwMvLFxI33+BnO8tk3+/xIZ6i2oqCmIwgnUVEp0m85c93ZMp
	c8zO3tf/JW/l0fW5RHljvFEiNZ7ikXwvgByqBtmLmw==
X-Google-Smtp-Source: APXvYqzyQ7xyAm1dPnoFx6C8xvQ0/Xwih/QPlApHJFWvrZaMLQ5uAj52gvMT78/TqhpBJImKyrKC/ix1AM+24ESo2PY=
X-Received: by 2002:a2e:a0d0:: with SMTP id f16mr4430255ljm.130.1581431779058;
 Tue, 11 Feb 2020 06:36:19 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2002110549500.33214@localhost.localdomain>
 <CAAnfSTvunnEShgi4_jn9vxVbvmjO0FfnbW-9exww9XQd6PE9Lw@mail.gmail.com> <alpine.LFD.2.21.2002110932160.42474@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2002110932160.42474@localhost.localdomain>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 11 Feb 2020 14:36:06 +0000
Message-ID: <CAAnfSTtbBpgHCeDYnSYjYi+NPqTr_pXFz6_83QZ94YgcwLrR+Q@mail.gmail.com>
Subject: Re: [yocto] reviving an old suggestion about YP docs markup
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

My problem with <firstterm> is that you need to keep on reviewing to
verify it is the first usage.  Better to post-process that, surely.

Ross

On Tue, 11 Feb 2020 at 14:35, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> On Tue, 11 Feb 2020, Ross Burton wrote:
>
> > On Tue, 11 Feb 2020 at 11:13, rpjday@crashcourse.ca
> > <rpjday@crashcourse.ca> wrote:
> > >   first, yes, if something is a filename, then <filename> is the
> > > obvious markup.
> > >
> > >   on the other hand, variables should properly be marked up as
> > > <variable>, which they currently aren't. a good example is in the
> > > reference manual, the variables, where glossary definitions all
> > > use the <filename> markup for variables. again, it may make no
> > > difference in the ultimate rendering to something as trivial as
> > > HTML but, some day, it will be useful to be able to render things
> > > differently depending on the choice of output.
> >
> > I'd say fine, patches welcome. Maybe Scott chose a subset of Docbook
> > to ease the formatting?  Either way, I can't see a good argument
> > *against* using a broader set of tags.  At some point you could have
> > some lint tooling to verify that every <variable> is in the variable
> > index, for example.
>
>   yes, that's along the lines of using <firstterm> when appropriate.
> i'm not suggesting trying to dig into every corner of docbook, just
> the judicious usage of the most obvious tags. i'll do some research to
> see what minimum set of tags would make sense. as a start, probably:
>
>   * <filename>
>   * <variable>
>   * <command>
>   * <option>
>   * <firstterm>
>
> all strike me as obvious (in addition to what's already used).
>
> rday
