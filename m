Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.4756.1619739680555598267
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 16:41:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VvLBnmEc;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6F6CE38C04C2
	for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 23:41:19 +0000 (UTC)
Received: by mail-qk1-f179.google.com with SMTP id i17so3525663qki.3
        for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 16:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5MLn1JY/zmEyROeIPXE2YiXyL6m+AH+FdCKug8JD958=;
        b=VvLBnmEc+OLCk/xj3lBuZN3cWEjrWhnSAHHi/xtnjzHW02KVPqRBzPPaCOITCpeF+L
         ZWZq8DlqgH3XD3VAdwY7D2oG2EXth2yHgyighShA7yQ/srwLfiD5NLlOa5oQrY5NUjUL
         xUnERvjVIs8xhSHOoDJG8f1xR2lHSeHOBL4jKBHJYcM+RnZHeNQ+3aSA9aipg8j8yS1t
         7Nq8qp+XiluWFEkxYJv1F1ghWYJOpKzh217gXbneWCTanzdXsaMypY0C8C1bDi/TZ4//
         NSz8SIK/1BmavwNnL+5MdwBicPBTXWaL1elyYjsD51itAx81HF5jKOG1+8yAAOx7rAZD
         CRuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5MLn1JY/zmEyROeIPXE2YiXyL6m+AH+FdCKug8JD958=;
        b=pG3U11fuaftqFHjQ/JpcVEImdlbFYywqk9smN5vcv8NBZ+fF9EyJ5jLoBDidThRWeW
         6gxxfARzjQ7eNZOW8+dTXaBN/CQG2jAmUcv5I9cdTyiJJxBu/p465dqvOacFv3+Py1a+
         ljXklBjH9/ItufhI+yI6HkDKoQJ+IBpBot7cgjl8KCaQX/UVIvhHKvPI0rHjZ/6XDBnP
         p3s7Tv4AFVHszAhJVRFSUnzCFYt8TJVCHGSaHRyBC/53ZoY5UHuUjwhAvFfN1/fHSwXZ
         ZI1fbn+g2dW4A2LLBY+y1AfESsSaCOl63VVO+BRka4BE51T4z1YKKYF7NO/b8hnCCMp6
         3vfA==
X-Gm-Message-State: AOAM530ernH0nlNT+DBg8uXndk6ONzQcmeKnriE/lELd3AIS3CktQobK
	dJaqrauTiCUO255ny0CcT4q/mYwJnWhFT2uaAiY=
X-Google-Smtp-Source: ABdhPJwtYaP+KT44TRnGj70N2SIyI6M3nsWU7I1SAEOkhlUp4g6+PPTLDuWZiVcV9YSN6lkZyb9+/qRoNfXNbQ/GRW0=
X-Received: by 2002:a37:624c:: with SMTP id w73mr2318473qkb.125.1619739678288;
 Thu, 29 Apr 2021 16:41:18 -0700 (PDT)
MIME-Version: 1.0
References: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
 <CAMKF1so0T4HodY2fcEQ7_pc8Rign9ADMaWxLNM_JSs-xtP9XbQ@mail.gmail.com>
 <53e2d45c-f803-8dd4-02c4-961676f92b42@gmail.com> <3e00d517-0a3b-e0b8-cc09-aa87877650ab@windriver.com>
 <20210429223244.xp5i3li7wdp6ytnk@jama>
In-Reply-To: <20210429223244.xp5i3li7wdp6ytnk@jama>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 29 Apr 2021 16:40:52 -0700
Message-ID: <CAMKF1son3zPknGPBDWnZnK8SiKGj5vDqy8SU-qPHN-VWz_rd9Q@mail.gmail.com>
Subject: Re: [yocto] Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Randy MacLeod <randy.macleod@windriver.com>, akuster808 <akuster808@gmail.com>, 
	Yocto Project <yocto@yoctoproject.org>, "Jia, Hongxu" <Hongxu.Jia@windriver.com>, 
	"Mittal, Anuj" <anuj.mittal@intel.com>, Bruce Ashfield <bruce.ashfield@gmail.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>, "Wold, Saul" <saul.wold@windriver.com>, 
	Joshua Watt <JPEWhacker@gmail.com>, Jia Zhang <zhang.jia@linux.alibaba.com>, 
	=?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>, 
	Derek Straka <derek@asterius.io>, Kang Kai <kai.kang@windriver.com>, 
	"jpuhlman@mvista.com" <jpuhlman@mvista.com>, "steve@sakoman.com" <steve@sakoman.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 29, 2021 at 3:32 PM Martin Jansa <martin.jansa@gmail.com> wrote:
>
> On Thu, Apr 29, 2021 at 06:05:30PM -0400, Randy MacLeod wrote:
> > > > > Most yocto layers have not adopted the tagging perhaps because they
> > > > > weren't aware of it so that's why I'm writing this email. Tagging
> > > > > will make it easy to find the first commit for a specific release
> > > > > independent of what the branching policy of a layer is. Layer
> > > > > maintainers sometimes create the release branch in advance of
> > > > > when oe-core is released and by adding the tag, it would make it
> > > > > clear when the layer considers content to be officially released.
> > > > > Of course it's up to users to decide if they are going to follow
> > > > > the HEAD of a branch or, for some reason, stick with a tagged commit
> > > > > or private branch off that commit.
> > > > >
> > > > I think this could be a good thing, although it does put the burden on
> > > > release maintainers. mostly they
> > > > test against the tip of the release branch,  So if yocto project
> > > > testing is including these layers for wider
> > > > testing and can then recommend a validated commit then perhaps this
> > > > could be made viable.
> > >
> > > That could open up a can of worms as who will fix the QA test failures?
> >
> > Hi Armin,
> >
> > The community will fix bugs on HEAD just like before.
> > It's a tag indicating where the branch was at GA time.
> > There's no obligation for he maintainer do do anything in addition
> > to what they were doing if we didn't have a tag.
> >
> > I guess that could be made clear in the README if needed.
>
> To be honest I don't see much value of these tags for layers not
> included in the QA testing with oe-core release.
>
> I believe we agreed on promoting latest revisions in the branches for
> selected release.
>
> And I think the process for stable branches works reasonably well in the
> layers I usually use and only very rarely new regression is introduced
> in stable branch so from my experience the latest revision is always better
> than GA tag (or any tag for various point releases).
>
> Why should anyone use yocto-3.3 tag of meta-oe if the harknott branch
> has few more fixes and tip of hardknott branch was tested exactly the
> same as the yocto-3.3 tag?
>
> TLDR: Why should some low traffic layer have these tags which might point to
> exactly the same commit for multiple release (when all of them
> still parse, build and work correctly). Many layers don't feel the need
> to create a separate branch for each release when the same master works
> fine for last 3 Yocto releases. And I feel the pain when e.g. with
> meta-ros the last 4 branches (dunfell, gatesgarth, hardknott, master)
> are 99% identical, so whatever ROS update I merge to one of them gets
> distributed across all of them and only rarely with some small
> modification added only in some of them. Adding a yocto-3.3 tag there
> won't make that commit any better than a tip of hardknott and it might
> be actually a lot worse than tip of hardknott.

I think its perhaps also that distros have mechanisms to lock layers at a given
revision whatever tooling they use ( git submod, android repo,
combotools something else)
 so distro manifest at that point acts as pseudo tag and seems better
downstream way
to create a uniform tested view of that distro. Something similar is
needed for poky distro perhaps a layer manifest
which tells about revisions of tested layers with poky version X if we
desire to have more layers tested along with what it supports as of
now.
oe-core supports nodistro and its self-sufficient.

>
> Regards,
