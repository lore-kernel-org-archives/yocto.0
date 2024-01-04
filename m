Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73134C47073
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 13:49:42 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.54214.1704376172057926284
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Jan 2024 05:49:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NgTmvAvl;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ccbded5aa4so6174071fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 05:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704376169; x=1704980969; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O7cwXWihWJaC5+4mCXiqY/wXgiLp1B8ARNzooTjTLwE=;
        b=NgTmvAvllu1I1NMFePgfTqk2tESK4wr1qtqsdTYx5lfQtDjmMmGAk9iiUDhvLztzFA
         4VlGDqwMBiqrQ147BAGU3sfFZ2jjh+amvVwe8LzNpdvd7g9YBugrCTwLJWK+K83Ew+PN
         v7O54WKJixTK8UNpBMW52RZM+Ov/CwVaYrYi217BdoHj7ehLaRJ/jOGrHNs03/y7dZ8G
         4bsyVIr9dn8eczhlqths2XrG9YjvPkhYDPlAceiSxUas14APkijJxeWTnCpCIuRH2vjg
         e8O6TFzMGcDUvWFjIfyb49tF/7P4aIAx7Bt+z/6cNmdvM5Tx7dg3CbFe4NSxm3yT4j0W
         vLXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704376169; x=1704980969;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O7cwXWihWJaC5+4mCXiqY/wXgiLp1B8ARNzooTjTLwE=;
        b=hNw3cFxOUIZs2uEMuVZRJHJ6pQhfw8XWYZjoeqD3/wfBByKBuAw6jrDb9lZWgHDre/
         gqgYR6GbQXQ/Vmv7tv3gybABIYIvMsUVtV66jy7APsgCSrJndKVj9tCG8dW+EdsfXyCb
         9pL/lfErBSVWsHmYN7J7L1Dp8t7d22SnlWwtBWcwFS7+70NfW7EKHJtlJwCHY7dKO7fp
         /64wRJDayV6TbNRNd24iBJILUPNXCsd9iwoYopOD4oIMkM3dmwdNSg2bgAgUgAhnOmd9
         2ufyF6eDD1hnQrRcrSIDstGwyxtjBKlpho3wW68JpA0b4qgGeGKZdr8dozWob45yN7aQ
         zxFg==
X-Gm-Message-State: AOJu0YzvXrXtbQoHuTcJF/UxOhYhjCVDeYkXSPJaTBb1xwnIhkxGrlk/
	QkI0dEBRO80fpmajkWmkvoUl1b5QQreNnacKqIe1vj1/Vjj7Mw==
X-Google-Smtp-Source: AGHT+IGkg1fPkFZYfpXILNiQaesvJEPQ6Ki1BgJ6Cw/CSPmOmj1sB226o06hGS37K4gssuCupJknLTc6lbyzXKvS+nY=
X-Received: by 2002:a2e:93c5:0:b0:2cc:87d7:a8e7 with SMTP id
 p5-20020a2e93c5000000b002cc87d7a8e7mr315243ljh.102.1704376169219; Thu, 04 Jan
 2024 05:49:29 -0800 (PST)
MIME-Version: 1.0
References: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
 <ZZO6LMkb9ECnPFev@nuoska> <38fdec21c1f00c5cacc9c3fff8f8875460f25376.camel@gmail.com>
In-Reply-To: <38fdec21c1f00c5cacc9c3fff8f8875460f25376.camel@gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Thu, 4 Jan 2024 14:49:16 +0100
Message-ID: <CAApg2=Tm2uW69ND5sKFUOVYvA32coeEF+7Xn2Dg56JLCjoOC0A@mail.gmail.com>
Subject: Re: [yocto] CVE Scanners and Package Version
To: yocto@lists.yoctoproject.org, adrian.freihofer@gmail.com
Cc: mikko.rapeli@linaro.org, fabian.hanke@bosch.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 13:49:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62089

I will reply here to multiple issues raised in this thread.

On Tue, Jan 2, 2024 at 10:46=E2=80=AFPM Adrian Freihofer
<adrian.freihofer@gmail.com> wrote:
>
> On Tue, 2024-01-02 at 09:24 +0200, Mikko Rapeli wrote:
> > Hi,
> >
> > On Sat, Dec 23, 2023 at 02:47:36AM -0800, fabian.hanke via
> > lists.yoctoproject.org wrote:
> > > Hello Yocto community,
> > >
> > > we must provide a SBOM for our Yocto based product which will then
> > > be used for (internal) CVE scanning by the security department.
> > > Generating the base document in cycloneDX format is fairly easy
> > > (thanks to the nature of Yocto).
>
> Our experts have also opted for CycloneDX. Is your CycloneDX generator
> publicly available?
> >
> > Note that SBOM is mostly used for documenting SW components and their
> > licenses.
> > Obvious but needs to be made clear.
>
> I don't think that's true.
> A SBOM should probably also list the CVE patches and provide
> information about fixed CVEs.
> I'm not sure about SPDX, but CycloneDX also addresses this use case:
> https://cyclonedx.org/capabilities/vex/.
>

SPDX3 addresses this in a similar way as CycloneDX does. There's also
the VEX way (like in OpenVEX) that is similar to both. The additional
information
that can/should be added is the "human" processing, for example stating
that in *this configuration* the issues does not apply because XYZ.
We have that partially in CVE_STATUS_*

>
> >
> > > But we do not know how to include information about CVE patches for
> > > each package in the document. Not providing these, will cause a lot
> > > of =E2=80=9Cfalse=E2=80=9D feedback on CVEs for specific versions whi=
ch are already
> > > patched (but version number did not change).
> Yes, that's a real issue.
> > > This problem was also mentioned a few days ago in the presentation
> > > from David Reyna: https://youtu.be/PegU1G1bA80?t=3D1127. I like the
> > > proposed solution of adding a vendor specific string to the package
> > > version. But I'm still wondering: How would the CVE scanner vendor
> > > know which CVEs are included in a yocto specific version and which
> > > are not?
> If the SBOM contains the information from CVE_STATUS_* variables and
> the CVE scanner has access to the NIST database it should theoretically
> work.

As mentioned, the CVE information changes over time. The current SBOM
specs allow to include it, but then this will require a periodic refresh.
Personally I like more the approach of static SBOM plus a VEX-style file
with the CVE sitation assessment for a given date. This allows also a
possibility to have information WHO actually did that assessment.

> >
> > If the intention is to know CVE paching and analysis status of a
> > product, then I'd use
> > the yocto upstream tooling for this, cve-check.bbclass. SBOM and SPDX
> > are tempting but not actually
> > useful for CVE patching and analysis work, except when they show that
> > a lot of old open source
> > SW components are embedded into various binaries.
> This works well from a developer's point of view, but not from an end
> customer's or penetration tester's point of view. Many companies sell
> products with a pre-installed Yocto-based firmware, but do not provide
> the layers and bitbake with the firmware.

It is likely that they will be in obligation to deliver that data in a
few years'
time frame.

>
> Such a SBOM would enable a user or a pen-tester to use a tool which
> generates a CVE report from the SBOM and the current data from e.g. the
> NIST database. This tool can run at any time and could be a generic
> SBOM tool which is independent from Yocto. The NIST DB is dynamic, but
> publicly available. The SBOM is static and provided with each firmware
> release.
>

This kind of a work has been discussed already. If someone has funding
available to make it happen, I will be interested to know about it.

> >
> > AFAIK, and I'd be happy to be proven wrong, SPDX and SBOM don't help
> > matching SW component names
> > and version strings so that comparison against CVE database
> > information works. Only license names
> > are standardized.
>
> I'm not sure what the current status is. But even if it's not
> completely solved today, that doesn't mean it can't or shouldn't be
> solved. The specifications are also open source.
>

The way to indicate that a given modified version has a fix for an issue
is not toally solved today. Or, more precisely, it has multiple
possible solutions.

The discussion in this thread is in fact related to what we have in session=
s
about SRTools. Would you be willing to join?

Kind regards,
Marta

