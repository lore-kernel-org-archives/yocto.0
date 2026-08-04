Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00157C55822
	for <webhook@archiver.kernel.org>; Tue,  4 Aug 2026 19:50:32 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.25016.1785873023175329971
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2026 12:50:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=exzH9Ms9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-49545ba3d4eso923945e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2026 12:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1785873021; x=1786477821; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=NI2lRzKFGljtmXcpdCF0qtO/QpvLO1Dr2cR8rFtHAss=;
        b=exzH9Ms95fKoPhJZyGuxt87iH3k0yfBfEPOs2JN5UYs2o+PVetp1x6g4nOWTeZDRnO
         O/Em3nbmSnRz7+pHAeXvYxpYVtFAEVTTfFxm5BeXqOBNgcmzxLpjvuoa0NSJ8WtB9ZJB
         xeKbLF+qE6x2me7zNPYyDQ5dHtydcfz6tmCU0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785873021; x=1786477821;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NI2lRzKFGljtmXcpdCF0qtO/QpvLO1Dr2cR8rFtHAss=;
        b=PSkH6Pe4Nile4tAx3noQvjJjRdE7qcj/Aoe0BkingtF1uYaHdeeMDn4m9q2cCHyF1A
         eBeBuDacZrhn/zkm3Z50B4JkPAWrFGX6mUJwi4w2R3imFQDyw3qo2mjhn/E873H6xlSV
         rN1EgLIx0EHUkXCv9fhRNm69WPPgnkGbnx6Pw7iwfOreHOt49SWyq5Iotxvjs/JG3Vmj
         CRW6WRx8ikcQEfYJ4fL0JJm5iUZdGcq/5hc+HTkWN9McAjV4dK+TsXVoYvVwf1yOvvrS
         TbH80Wplge/LjY/U4mXD+bnXmX8GbAL9MbUITK5ITMT0EGVUEPdxo7rUm9WIVyl9TNZ5
         X0EQ==
X-Gm-Message-State: AOJu0YzvLCCgVTEo4zwC0Erdg1Offq2Gbv2HUvtSb4mn36iLhfatFZip
	dDhPfJDb+s7YLy4lsGPvycoG990zbHn76/Idn+UqT4JdoD0RhQdd5hXgqM1vLAVLOx64yJ8FsRP
	nItWhgbI=
X-Gm-Gg: AR+sD13hqBbu2Wd3KuBXl7qv9YOQ2SFlu+LT+4/7/TSpZsZVEvxHp+zAyCieKMH/iYz
	1yMDPwruARnOTGab3e8DCCeTJRF4w8RcC4GzQl+2khfzhfqHEtPleqS8AMPXWniJBQd8bDM8V2P
	kScxBvC41uWTZBLr0RlLU/0PZy/hrkHS3oNs8pGb7W8LCkp59RuSVbIoIkSzMoyBC8FqZg5irGX
	FcNgclDTF5ye7QafwV6Vc0j95twqTCLZJeWZpcCTYZXvtRMmWFFT12/DcU1scZjzlGL76jji8FW
	4OKMfDVYfu3sr0BPWHE8QXq10G4GBaE4mFkRp1ID96UsulgL5w9ow/+c0oUpQrOf0wGBKE5riw4
	7n/eyzwco6p4GtFhddWLvTLKIVLCWFGKrFmHEJPuhy1j23WWL1hfChpqbunz+blIUTkGXtd0Zkd
	jM0pNRtxZXRW9Bv86geLITqc7PHKQ/y+zj0xft+VuT78v4AQW8nDGcPAc3dxsn65Ce4Z5K9R6pQ
	6NObPaG3mjnDkm3nX2Cu843L9sFp1a7HK/LHSgQYEWPCvqcz9N1qg==
X-Received: by 2002:a05:600c:4ed3:b0:493:e983:806e with SMTP id 5b1f17b1804b1-4994e72f795mr8632695e9.3.1785873021221;
        Tue, 04 Aug 2026 12:50:21 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:cf1f:6744:c6dd:c3ab? ([2001:8b0:aba:5f3c:cf1f:6744:c6dd:c3ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4994e52d819sm7715215e9.1.2026.08.04.12.50.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 12:50:19 -0700 (PDT)
Message-ID: <bbf2524634adecdbc5369810ba7e00a8106b9d79.camel@linuxfoundation.org>
Subject: Re: [yocto] Default to isolated Python virtual environments (venv)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, Michael Halstead
	 <mhalstead@linuxfoundation.org>
Cc: Paul Barker <paul@pbarker.dev>
Date: Tue, 04 Aug 2026 20:50:17 +0100
In-Reply-To: <18C8B1E1F4CCF74C.3417489@lists.yoctoproject.org>
References: 
	<CADfgfoaBH7L+505aFdn69wvW2PaSPA=bneDN2CfFBgEpduuN0g@mail.gmail.com>
	 <18C8B1E1F4CCF74C.3417489@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2026 19:50:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66679

On Tue, 2026-08-04 at 20:47 +0100, Richard Purdie via lists.yoctoproject.or=
g wrote:
> On Tue, 2026-08-04 at 11:49 -0700, Michael Halstead wrote:
> > I tracked down the persistent issue on the autobuilder setup where
> > worker builds were failing after maintenance specifically on systems
> > like RHEL8-based hosts where we don't run the system python3.
> >=20
> > We had `virtualenv_site_packages: true` configured across the cluster
> > to better test distro-provided Python packages and stay aligned with
> > current docs. Setting `virtualenv_site_packages: false` for RHEL8 and
> > OpenSUSE 15.6 based workers resolved the issue.
>=20
> Changing the config "virtualenv_site_packages: false" on those older
> systems should be fine.
>=20
> > I propose we stop using site packages on the autobuilder in general
> > to avoid similar issues in the future. I already have the changes
> > ready for the next maintenance window.
> >=20
> > If we do so our documentation should probably be updated to match so
> > developers avoid these same environment edge cases. We could
> > update=C2=A0ref-manual/system-requirements.html to default to standard,
> > isolated virtual environments and pull host Python dependencies via
> > PyPI rather than assuming distro packages.
> >=20
> > Let me know what you think or if there are any edge cases I haven't
> > considered.=C2=A0
>=20
> If we go this route, we may as well drop several of the distros from
> testing and mandate buildtools tarballs :/. I really don't want to go
> down the route of prescribing a venv when we've gone to relative levels
> of trouble to make bitbake easier to run on most systems.
>=20
> I am a bit puzzled where we're running into issues as our buildtools-
> tarball does include python3-websockets so on those older systems, we
> should be using buildtools and that should have websockets in there?
>=20
> What are we running outside of a buildtools env?

Just to clarify, we need a newer python on those systems for buildbot
itself, which isn't run inside buildtools. That is where the
requirement for the venv comes from.

I'm still puzzled about where/why we can't just use websockets from
buildtools in our build though...

Cheers,

Richard

