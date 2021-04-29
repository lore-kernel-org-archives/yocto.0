Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3898.1619735568110984649
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 15:32:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lii1rfv1;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: martin.jansa@gmail.com)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6215538C0891
	for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 22:32:47 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id j28so16415114edy.9
        for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 15:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=mS8G+2YtjnAkLsAO5MxSiseXdn5tK4SuInZCHmvmmBE=;
        b=Lii1rfv1LJCKIEPqSnsNXfVCLAuV1M42gnG+ijkQBsR1l3X5qIDmnhUpkQq0thuNdR
         8RYqFdoUjMACLSxWKWBmmb7fM1gjJN27WBhR+OKlkHz60LmF2ahDFFNkxHTemc+i1hBw
         T4887rrLBMiLrtrBQl8wIMYl9vYsQCE75VczhoaYNw4uWM26DbjYW+E7GcWXtn6IoD8v
         cujQD03OlCk5Hr43s4vnjnSE9tJEgVzTvSknFUY9M7bZTDu1OYuqE4wduUcRxcJErxrh
         kLSM0lHZxM2vZoL30SWmIUa5YfgxISyCovtTvU+vc6S01xloot1TeHy0W1GV/xA1ZYgc
         HT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=mS8G+2YtjnAkLsAO5MxSiseXdn5tK4SuInZCHmvmmBE=;
        b=pqmbhCzbBxhcFOlKCDiACsTWYccu3F/zCkefB+s8LBfMfU5HDLFKr9SaUR6qzlKtoG
         rHmZQUnMs+v/kzXrmhuZXBGe32PuHkqxkvLW4WmRtyqX41zlZ3+y0PWTLDSu0biIsZpa
         0noeWVHB7p/Me7gU6XY3wNKL+UkpPIDMX877s2U1x2QhBIRz1jZFNGj2sYB0cQlNbWJg
         INNxabVA10dzwi4FBQQMcC787RSgisb4pDUK1/qPWwXVlpIBN2t8H8Ib+9N4j85iTwnz
         iJRtyTCAJ3ADr28EcNzSSx1tLo8w6xvh+7wZcCBLbzzFbL1OANqgwH6MtK8eytQ/fwcF
         4omA==
X-Gm-Message-State: AOAM532ONq0XzTMoNC4Ph7pfDZpXCxKmIRjox8+89fdrnYDFiYBrOrqy
	C6z+BUfuvVJtMrJv2SqohhU=
X-Google-Smtp-Source: ABdhPJy6TpRPfx50ktfmzQxtEQG5gKY+V54L08feg7nlNHS6qBFJoifdgY0CbnLAOwW31MYWoG+CBw==
X-Received: by 2002:aa7:de02:: with SMTP id h2mr2245785edv.61.1619735565879;
        Thu, 29 Apr 2021 15:32:45 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id u25sm3270351eds.8.2021.04.29.15.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 15:32:45 -0700 (PDT)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 30 Apr 2021 00:32:44 +0200
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: akuster808 <akuster808@gmail.com>, Khem Raj <raj.khem@gmail.com>,
	Yocto Project <yocto@yoctoproject.org>,
	"Jia, Hongxu" <Hongxu.Jia@windriver.com>,
	"Mittal, Anuj" <anuj.mittal@intel.com>,
	Bruce Ashfield <bruce.ashfield@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Michael Halstead <mhalstead@linuxfoundation.org>,
	"Wold, Saul" <saul.wold@windriver.com>,
	Joshua Watt <JPEWhacker@gmail.com>,
	Jia Zhang <zhang.jia@linux.alibaba.com>,
	Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@gmail.com>,
	Derek Straka <derek@asterius.io>, Kang Kai <kai.kang@windriver.com>,
	"jpuhlman@mvista.com" <jpuhlman@mvista.com>,
	"steve@sakoman.com" <steve@sakoman.com>
Subject: Re: [yocto] Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
Message-ID: <20210429223244.xp5i3li7wdp6ytnk@jama>
References: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
 <CAMKF1so0T4HodY2fcEQ7_pc8Rign9ADMaWxLNM_JSs-xtP9XbQ@mail.gmail.com>
 <53e2d45c-f803-8dd4-02c4-961676f92b42@gmail.com>
 <3e00d517-0a3b-e0b8-cc09-aa87877650ab@windriver.com>
MIME-Version: 1.0
In-Reply-To: <3e00d517-0a3b-e0b8-cc09-aa87877650ab@windriver.com>
X-Groupsio-MsgNum: 53332
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ntd2ykxrvwypetpz"
Content-Disposition: inline

--ntd2ykxrvwypetpz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 29, 2021 at 06:05:30PM -0400, Randy MacLeod wrote:
> > > > Most yocto layers have not adopted the tagging perhaps because they
> > > > weren't aware of it so that's why I'm writing this email. Tagging
> > > > will make it easy to find the first commit for a specific release
> > > > independent of what the branching policy of a layer is. Layer
> > > > maintainers sometimes create the release branch in advance of
> > > > when oe-core is released and by adding the tag, it would make it
> > > > clear when the layer considers content to be officially released.
> > > > Of course it's up to users to decide if they are going to follow
> > > > the HEAD of a branch or, for some reason, stick with a tagged commit
> > > > or private branch off that commit.
> > > >=20
> > > I think this could be a good thing, although it does put the burden on
> > > release maintainers. mostly they
> > > test against the tip of the release branch,  So if yocto project
> > > testing is including these layers for wider
> > > testing and can then recommend a validated commit then perhaps this
> > > could be made viable.
> >=20
> > That could open up a can of worms as who will fix the QA test failures?
>=20
> Hi Armin,
>=20
> The community will fix bugs on HEAD just like before.
> It's a tag indicating where the branch was at GA time.
> There's no obligation for he maintainer do do anything in addition
> to what they were doing if we didn't have a tag.
>=20
> I guess that could be made clear in the README if needed.

To be honest I don't see much value of these tags for layers not
included in the QA testing with oe-core release.

I believe we agreed on promoting latest revisions in the branches for
selected release.

And I think the process for stable branches works reasonably well in the
layers I usually use and only very rarely new regression is introduced
in stable branch so from my experience the latest revision is always better
than GA tag (or any tag for various point releases).

Why should anyone use yocto-3.3 tag of meta-oe if the harknott branch
has few more fixes and tip of hardknott branch was tested exactly the
same as the yocto-3.3 tag?

TLDR: Why should some low traffic layer have these tags which might point to
exactly the same commit for multiple release (when all of them
still parse, build and work correctly). Many layers don't feel the need
to create a separate branch for each release when the same master works
fine for last 3 Yocto releases. And I feel the pain when e.g. with
meta-ros the last 4 branches (dunfell, gatesgarth, hardknott, master)
are 99% identical, so whatever ROS update I merge to one of them gets
distributed across all of them and only rarely with some small
modification added only in some of them. Adding a yocto-3.3 tag there
won't make that commit any better than a tip of hardknott and it might
be actually a lot worse than tip of hardknott.

Regards,

--ntd2ykxrvwypetpz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCYIs0CgAKCRA3VSO3ZXaA
HDYIAJ93ssvFYdLkXWEw6Coau6gaGAQzNACdG7QKJm4IzzVCk9WEpPULJ6J2LdE=
=Qlsg
-----END PGP SIGNATURE-----

--ntd2ykxrvwypetpz--
