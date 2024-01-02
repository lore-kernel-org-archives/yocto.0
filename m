Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6D5C46CD2
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 21:46:34 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.3032.1704231985327816172
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 13:46:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dzPEDYge;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-555144cd330so7346618a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 13:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704231983; x=1704836783; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCjBy2J5TQPT4GzhL4rC7y5DcXHuB36YvgU9owWRKLw=;
        b=dzPEDYgeGMISGdTZMMrujIguLSi2CU3YpjW1Z6bDcfPyVEQm04wxJkQ2Rve564UGTl
         cpQDaUWjL0redq6e82yRzwkXqfKETjdzk78BLLEIaf6VUAz0LZb35wpPHvz6qgW/Gu3h
         7f/zolgWJ5E8yQg9TUUlRm0OmqJgJWER/goPpITqjLribnFdMQs55C8whhAfI0+6sBOv
         MAOypSzYUzyzk/bhdU82D+9bm6nRsmpy1NcpuYbCipcI0oj5F8EQsmcy74Yqe0TK0bYQ
         sPXGkoRD9QJ8hla4xJxFwaxRI3k9LC1/nVF+Y3iiflZDI1YStz+LZGiYTaDzKEk1szTd
         ATEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704231983; x=1704836783;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LCjBy2J5TQPT4GzhL4rC7y5DcXHuB36YvgU9owWRKLw=;
        b=XOBe34z63VesbTjRExf5ddcTz8Itmja6snDCPCdHi8PHvPeOMVQ3EGcJvWo9kptVcx
         nP09Grom0FClAwhrpmxHHHujvutD1mPWxkznnCd5k9yRJ+XOGqosRSWL9CA4xC/CECel
         SsuZNTYyZXuAbwmn7l8GxZ3Hy9QVgC1POZmgd+FdmPJCSGUP7MQ1OMpr0CJwCgIF3bgl
         6eErNHpkfpll1M859K5uhEirrpBoaRYvwmxhIp41mY3Gu4g5VmLTo/FlJDSnsDpDrq3f
         z6sgrguDCkSe2hG4NMdeat9qhwsPPs66OIV4ht0ARMRIK+RlZzwN4wHLdROIXnTGj0Ct
         1KKg==
X-Gm-Message-State: AOJu0YywJcLdoJrJuCdBvGPT0sLBWHD+eSjYzetzxUK+y8XlaGJ0hqpK
	9tbjTqXvtjWJMppNNwLptE8Vh2LQHPQ=
X-Google-Smtp-Source: AGHT+IF5YDDp8ihXDThEYhzRA/1Px6S2AFXxC3+8i0PofrdLNv0fZDD46Jfqho27jX8ltZ5OguxE/w==
X-Received: by 2002:a50:9f0f:0:b0:553:ee28:b97d with SMTP id b15-20020a509f0f000000b00553ee28b97dmr13464703edf.39.1704231983340;
        Tue, 02 Jan 2024 13:46:23 -0800 (PST)
Received: from ?IPv6:2a02:169:59a6:0:dcf2:2f65:9442:83f? ([2a02:169:59a6:0:dcf2:2f65:9442:83f])
        by smtp.gmail.com with ESMTPSA id et8-20020a056402378800b00554753ec02fsm13844507edb.86.2024.01.02.13.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:46:22 -0800 (PST)
Message-ID: <38fdec21c1f00c5cacc9c3fff8f8875460f25376.camel@gmail.com>
Subject: Re: [yocto] CVE Scanners and Package Version
From: adrian.freihofer@gmail.com
To: yocto@lists.yoctoproject.org, mikko.rapeli@linaro.org, 
	fabian.hanke@bosch.com
Date: Tue, 02 Jan 2024 22:46:21 +0100
In-Reply-To: <ZZO6LMkb9ECnPFev@nuoska>
References: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
	 <ZZO6LMkb9ECnPFev@nuoska>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 21:46:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62071

On Tue, 2024-01-02 at 09:24 +0200, Mikko Rapeli wrote:
> Hi,
>=20
> On Sat, Dec 23, 2023 at 02:47:36AM -0800, fabian.hanke via
> lists.yoctoproject.org wrote:
> > Hello Yocto community,
> >=20
> > we must provide a SBOM for our Yocto based product which will then
> > be used for (internal) CVE scanning by the security department.
> > Generating the base document in cycloneDX format is fairly easy
> > (thanks to the nature of Yocto).

Our experts have also opted for CycloneDX. Is your CycloneDX generator
publicly available?=20
>=20
> Note that SBOM is mostly used for documenting SW components and their
> licenses.
> Obvious but needs to be made clear.

I don't think that's true.
A SBOM should probably also list the CVE patches and provide
information about fixed CVEs.
I'm not sure about SPDX, but CycloneDX also addresses this use case:
https://cyclonedx.org/capabilities/vex/.


>=20
> > But we do not know how to include information about CVE patches for
> > each package in the document. Not providing these, will cause a lot
> > of =E2=80=9Cfalse=E2=80=9D feedback on CVEs for specific versions which=
 are already
> > patched (but version number did not change).
Yes, that's a real issue.
> > This problem was also mentioned a few days ago in the presentation
> > from David Reyna: https://youtu.be/PegU1G1bA80?t=3D1127. I like the
> > proposed solution of adding a vendor specific string to the package
> > version. But I'm still wondering: How would the CVE scanner vendor
> > know which CVEs are included in a yocto specific version and which
> > are not?
If the SBOM contains the information from CVE_STATUS_* variables and
the CVE scanner has access to the NIST database it should theoretically
work.
>=20
> If the intention is to know CVE paching and analysis status of a
> product, then I'd use
> the yocto upstream tooling for this, cve-check.bbclass. SBOM and SPDX
> are tempting but not actually
> useful for CVE patching and analysis work, except when they show that
> a lot of old open source
> SW components are embedded into various binaries.
This works well from a developer's point of view, but not from an end
customer's or penetration tester's point of view. Many companies sell
products with a pre-installed Yocto-based firmware, but do not provide
the layers and bitbake with the firmware.
>=20
> The work needed to push CVE data into SPDX and SBOM is not worth it
> and it's better to put
> the saved effort into fixing the actual CVEs.
Fixing the CVEs is one thing. But depending on the use case, it is also
important to be able to document this.
>  If management wants reports, generate
> them from cve-check.bbclass output, but note that CVE database is a
> moving target too.
Adding information about open CVEs to the SBOM would be a moving target
and therefore a bad idea. But that was probably not the intention here.

Much more reasonable is to provide a static SBOM which provides
information about:
- Installed packages and versions
- CVE related patches for the packages
- Additional information from CVE_STATUS_* variables (These use cases
were also the motivation for adding this additional information)

Such a SBOM would enable a user or a pen-tester to use a tool which
generates a CVE report from the SBOM and the current data from e.g. the
NIST database. This tool can run at any time and could be a generic
SBOM tool which is independent from Yocto. The NIST DB is dynamic, but
publicly available. The SBOM is static and provided with each firmware
release.

>=20
> AFAIK, and I'd be happy to be proven wrong, SPDX and SBOM don't help
> matching SW component names
> and version strings so that comparison against CVE database
> information works. Only license names
> are standardized.

I'm not sure what the current status is. But even if it's not
completely solved today, that doesn't mean it can't or shouldn't be
solved. The specifications are also open source.

Adrian

>=20
> Cheers,
>=20
> -Mikko
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62063):
> https://lists.yoctoproject.org/g/yocto/message/62063
> Mute This Topic: https://lists.yoctoproject.org/mt/103332846/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


