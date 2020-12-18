Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.711.1608328302056937097
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Dec 2020 13:51:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zougloub.eu header.s=zougloub.eu header.b=vchPusSz;
 spf=fail (domain: zougloub.eu, ip: 198.145.29.25, mailfrom: cj-yocto@zougloub.eu)
Received: from zougloub.eu (zougloub.eu [69.70.16.42])
	by mail.yoctoproject.org (Postfix) with ESMTP id 1A9F038C070E
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2020 21:51:41 +0000 (UTC)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by zougloub.eu (Postfix) with ESMTPSA id 72391143DA47;
	Fri, 18 Dec 2020 16:51:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zougloub.eu;
	s=zougloub.eu; t=1608328300;
	bh=/6G24IrZsZwQO0+Acy8D1ZlxDPqP7KlDa6ifOSikmRA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=vchPusSzJ/qr8lZsQmpHz/hrZFrBXnZaE9aIYnGsRoTpsMaiOgtDLx0kj6Yp2UtGg
	 mU3F2qKeRo6Teh2eRxJT+pznnQR/YKoQymNpHCmnb6iFQ3i+ok/f7O4KJIxKYqffDC
	 av0Q7xJb81y7uKjU6EdcPFCklAe5PnawnASHleqs=
Date: Fri, 18 Dec 2020 16:51:41 -0500
From: =?UTF-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ-yocto@zougloub.eu>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Is curated SPDX data sharing a thing?
Message-ID: <20201218165141.329fe2d4@pouet.cJ>
In-Reply-To: <5cdacd9801963c76a1c2ea843cc2a2fa288eca8b.camel@linuxfoundation.org>
References: <20201218151534.663a5727@pouet.cJ>
	<5cdacd9801963c76a1c2ea843cc2a2fa288eca8b.camel@linuxfoundation.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 18 Dec 2020 20:34:01 +0000
"Richard Purdie" <richard.purdie@linuxfoundation.org> wrote:

> The challenge is that Yocto Project lets you build your own custom
> software, which means you also end up in your own BoM situation. We
> generally therefore provide tooling that can help you generate the
> information you need but there usually isn't "one size fits all".

Of course different choices can be made regarding obligations (where
licenses are shown, how sources are distributed) but it in the same way
that today ${LICENSE_DIRECTORY}/${P}/recipeinfo contains a LICENSE key
which is very useful figuring out obligations, SPDX could be used to
have more information and more trust.

In most of my experience, a product mostly contains F/LOSS code from
major Yocto/OE layers, maybe a couple of other 3rd party libraries, a
couple of patches here and there, and a few 100kSLOC of "original" code;
the BoM consists... in an image manifest file.

A huge portion of the SPDX data could be reused, to get an
almost-complete better BoM.

> I would mention the meta-spdxscanner layer as having
> support/integration for some of the more recent scanning and document
> generation tools.

Yeah, I used it. I can see that it mostly works except for the fact
that you either spend a lifetime doing source code analysis, or just a
few years because you trust the agreement of multiple robots on the
license verdict, which only leaves you the ambiguous files to process
(and that's time-consuming work).

> I'm sure there are services provided, particularly by some of the
> member OSVs but as I mention above, its hard to have a one size fits
> all since you can patch or reconfigure the sources at will.

SPDX data contains package and also source file info (based on hashes),
so if a patch is applied, an analysis would only need to concern
modified files. Provided a development history and a baseline SPDX
available, it would significantly reduce the amount of work one would
face.

> We are hoping to have better tools integration where the build process
> may be able to generation better SBoM and SPDX information directly.
> Unfortunately its an area its hard to find people willing to
> contribute.

It's certainly easy to verify after do_patch (or after do_compile in
some cases) that sources correspond to existing SPDX files, or to
lookup SPDX files in an external database based on hashes of sources,
but automatically generating SPDX:

- is very time-consuming and I don't see it as something that one would
  even do eg. in continuous integration;
- is not perfect; I don't think the build process could automatically
  generate more than "candidate SPDX" information except maybe for a
  couple of really-clean packages where the developers care about that.

Is there is a more focused discussion list on that topic or here is OK?
I may have a lot of questions/ideas but don't want to cause off-topic
noise.


Best,

--=20
J=C3=A9r=C3=B4me
