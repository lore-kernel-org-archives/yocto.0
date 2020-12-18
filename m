Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.515.1608330208139809338
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Dec 2020 14:23:28 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=Qb9bcV4U;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7B2B438C0481
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2020 22:23:27 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id e25so4240949wme.0
        for <yocto@yoctoproject.org>; Fri, 18 Dec 2020 14:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=qPtKhf/pb0ycMFHJt3GqV9eFT1tt9KT8ugKy2LBmeOo=;
        b=Qb9bcV4UYHsdY7enE9vil/x17y5mC+hMR6x2wA6BU8xU7FVF1ykj8y46FH+6RfQJca
         JD8ermmABmSAPZUsISVOeXWg5VoQUn4eoXBLXcoOtQ3RGr6l64qaYG7h2v43Sm6m18xR
         u3M4JjWPd/kcEvtM8BzFs3fSn8sBucuMVb92g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=qPtKhf/pb0ycMFHJt3GqV9eFT1tt9KT8ugKy2LBmeOo=;
        b=mOEpE9MjP4d1M+LUHvtVAsk9zzu1AOy/581FcH9gtYJogsxOPAsZL53IAimZEVMpkU
         GAPa69ibGw5cLkJnvN1/CyiFTmSmaeEuoI41Fc404PpHm52Q04Gh9BOYMW1tpab4ZkCL
         sVxl426qPyAFg7e8+AS9YaZFBRh8RaeH4HzJ1Qpa70ufCXda89W3q8Eml74KCty0m+uz
         BuiP58AKAs4rPSO1LE4jZ6NbNFDJQ2v1fQivy1BCZDPU+AbAa5VrQw1mrDp/ULMxNBP+
         PFxWFZfwhzI3vqQ0dNhgzmLO33Bolku4aYUSLIACdcPO4DiEvRDY7GTmDHnp8oBP8LW8
         CI6A==
X-Gm-Message-State: AOAM531NT163p5Jm/Z+0fCkHZHoFbhEBMbLwPVjmAdp3gnQYm0MHH3Zj
	HvXL+b9R/ypzi/j6NuzR4ef/KfPKh33cDQ==
X-Google-Smtp-Source: ABdhPJz+LEfHsYfE5gMqp2KlpdFwyCc/vjlD7G8Bn/jjnf5HJPu/VTyjhW9B/shcZijWly8ah0YGYg==
X-Received: by 2002:a7b:c3d6:: with SMTP id t22mr6199222wmj.134.1608330206003;
        Fri, 18 Dec 2020 14:23:26 -0800 (PST)
Received: from 4.4.0.a.d.7.7.1.7.c.4.b.2.1.9.0.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (4.4.0.a.d.7.7.1.7.c.4.b.2.1.9.0.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:912:b4c7:177d:a044])
        by smtp.gmail.com with ESMTPSA id v4sm12020983wrw.42.2020.12.18.14.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 14:23:25 -0800 (PST)
Message-ID: <ec69277a13a0967add098c4198b4b12219dd9598.camel@linuxfoundation.org>
Subject: Re: [yocto] Is curated SPDX data sharing a thing?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: =?ISO-8859-1?Q?J=E9r=F4me?= Carretero <cJ-yocto@zougloub.eu>
Cc: yocto@yoctoproject.org, "licensing@lists.yoctoproject.org"
	 <licensing@lists.yoctoproject.org>
Date: Fri, 18 Dec 2020 22:23:22 +0000
In-Reply-To: <20201218165141.329fe2d4@pouet.cJ>
References: <20201218151534.663a5727@pouet.cJ>
	 <5cdacd9801963c76a1c2ea843cc2a2fa288eca8b.camel@linuxfoundation.org>
	 <20201218165141.329fe2d4@pouet.cJ>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-12-18 at 16:51 -0500, J=C3=A9r=C3=B4me Carretero wrote:
> On Fri, 18 Dec 2020 20:34:01 +0000
> "Richard Purdie" <richard.purdie@linuxfoundation.org> wrote:
>=20
> > The challenge is that Yocto Project lets you build your own custom
> > software, which means you also end up in your own BoM situation. We
> > generally therefore provide tooling that can help you generate the
> > information you need but there usually isn't "one size fits all".
>=20
> Of course different choices can be made regarding obligations (where
> licenses are shown, how sources are distributed) but it in the same
> way that today ${LICENSE_DIRECTORY}/${P}/recipeinfo contains a
> LICENSE key which is very useful figuring out obligations, SPDX could
> be used to have more information and more trust.

Its going to take someone to stand up and provide the first "version"
of that and I'm not sure anyone wants to step up and be that
person/organisation...

> In most of my experience, a product mostly contains F/LOSS code from
> major Yocto/OE layers, maybe a couple of other 3rd party libraries, a
> couple of patches here and there, and a few 100kSLOC of "original"
> code;
> the BoM consists... in an image manifest file.
>=20
> A huge portion of the SPDX data could be reused, to get an
> almost-complete better BoM.

It does depend on which data we're talking about. You also have the
issue that its fine to generate this tons of data but at some point you
have to interpret what it means too...

> > I would mention the meta-spdxscanner layer as having
> > support/integration for some of the more recent scanning and
> > document
> > generation tools.
>=20
> Yeah, I used it. I can see that it mostly works except for the fact
> that you either spend a lifetime doing source code analysis, or just
> a few years because you trust the agreement of multiple robots on the
> license verdict, which only leaves you the ambiguous files to process
> (and that's time-consuming work).

I watched and helped our older LICENSE field work and I can say its a
thankless task which its very hard to get people to do. I fear that the
SPDX scans you refer to are so complex it will be hard to do this
consistently across the codebase. I'm actually hoping things may go a
slightly different route such as ultimately a majority of code having
license identifiers in it (we've tried to ensure YP code has them).

> > I'm sure there are services provided, particularly by some of the
> > member OSVs but as I mention above, its hard to have a one size
> > fits
> > all since you can patch or reconfigure the sources at will.
>=20
> SPDX data contains package and also source file info (based on
> hashes),
> so if a patch is applied, an analysis would only need to concern
> modified files. Provided a development history and a baseline SPDX
> available, it would significantly reduce the amount of work one would
> face.

Sure, how do we get people to build such a baseline though?

> > We are hoping to have better tools integration where the build
> > process
> > may be able to generation better SBoM and SPDX information
> > directly.
> > Unfortunately its an area its hard to find people willing to
> > contribute.
>=20
> It's certainly easy to verify after do_patch (or after do_compile in
> some cases) that sources correspond to existing SPDX files, or to
> lookup SPDX files in an external database based on hashes of sources,
> but automatically generating SPDX:
>=20
> - is very time-consuming and I don't see it as something that one
> would
>   even do eg. in continuous integration;
> - is not perfect; I don't think the build process could automatically
>   generate more than "candidate SPDX" information except maybe for a
>   couple of really-clean packages where the developers care about
> that.

There are certainly ways it could be done, if there are people who
agree on a common objective and are willing/able to contribute time to
it.

> Is there is a more focused discussion list on that topic or here is
> OK?
> I may have a lot of questions/ideas but don't want to cause off-topic
> noise.

We did set one up so there is=20
https://lists.yoctoproject.org/g/licensing/topics but it hasn't really
taken off (yet?)...

Cheers,

Richard

