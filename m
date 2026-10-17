Return-Path: <michael@amarulasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DFCECCF2C7
	for <webhook@archiver.kernel.org>; Sat, 17 Oct 2026 09:57:21 +0000 (UTC)
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.3639.1792231037059301890
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2026 02:57:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=OM2pxz2W;
 spf=pass (domain: amarulasolutions.com, ip: 74.125.82.177, mailfrom: michael@amarulasolutions.com)
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-35c76e9614aso1069826eec.0
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2026 02:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792231036; cv=none;
        d=google.com; s=arc-20260327;
        b=G6iX+ehskVOL+5E1TAMxOljPhaxSgETx/G7f95UhmnPdYNqlCNHMsGcRqFnHKUYu2R
         7LaSbB8UO4L7YLVCIfJh+SiSMk7Fb0n6Hk62yKTZmCJLXxShzkEWbhs3xPKbYxj/5qX7
         iBUPczT9K8FJOoZIjk/38rQjVU44HdJOljwYzvjlmE3YS5gbczK2s/PMcbFAotDPe9q9
         149faAgv12Ur4EdItmHhsjerYFn1UUJx2CGjk5EwDPf0g2B/B/rReNREgx4b3V2tK9Lc
         MPZ/Crw74o3EapmSrZlsVZYZdPoMDAmZHNybiCLiB61aHpwEypydTJFbdOunOVkRHkpU
         DbgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=y33L9Hnpmxipq1aDWO6oMu2y78nAEHlhYQZasT7B8nk=;
        fh=we8ASYw/t9BdAYvd6AuGU0ZLTraHKcZjP6yBWtGVGlw=;
        b=bBYD+1fcFx867ApVXcUCLgLuldXn2Db0GRn++AByCSrskK9PjF9IC9zBgM1QH7NGcY
         sEbnzYBa07GaAccKVzCca1ZAt4BoJ3HlepHt18TyDlL5aJAadjNZ/4Te8lPaEiDUrNVg
         +RKYt05PeKWSTwQcyTpjmMLPESHnp38XrNF422IWEd2R7Yg9s4dpeKnPOcTkm95j7elI
         kXQCVL+odscqyRV0qBd/VGVpjnfVropyFTjTVTIMx7o9XuenCquD7VPUcYs5EEwaHrOw
         aOYpuKg79sYUCEZsvK2/JsEUS2CyOvkIFZXNrkGooeja/ybNnzriz1/3328Si5IxWfWt
         L6Ig==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1792231036; x=1792835836; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=y33L9Hnpmxipq1aDWO6oMu2y78nAEHlhYQZasT7B8nk=;
        b=OM2pxz2WIrAFhHkYOGIk3W1y57arKPsF9T13Tc6BLrBQ9AaWjRZZPrV3hcNoIt5pAj
         nRyFYC5LQcNQIOz4lAOdIGZtVoGQkYPdmP6ezva9DNx+shfAU+rn7basE57R781AG2dZ
         L71oXLmIuH5whn/6rSY4/tWHOwuIGswQzU/sw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792231036; x=1792835836;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y33L9Hnpmxipq1aDWO6oMu2y78nAEHlhYQZasT7B8nk=;
        b=Ih6uzKn9dbjx/8Q6L0C6nFMVBi+YhspLTZZXyj0l2JZ0z5w0Qe/haWnVPCDi8hBvjv
         TSDgub9997xAgggGXjt/cWvlywm22xfTwVjN4dKR4yMbn1lucso9jNxhvK4jPXmxJehJ
         3Y4QO2pB9qjcB6s801f86vkvKbs6Al9xCfqR6O1RVEVZdvEnpzYbt/CUbnH6czqxBPcp
         fmWBip6Jso8knTpYpJGL/f+3SSvLag8tw5uDt95gNGY0kY+hVTTz2azc56z819hlMIi+
         48E2+UdP8oWay9aNSUZUBd5Ti2BhB3EmpAbWsVyrqEUgDlB7myur1OXvUhdwrfBBmewz
         Zfpg==
X-Gm-Message-State: AFq9FYJH4YRpo2LG1J3fsAKvhjce703rSdE599OWxq7pAQVdvlYrxqnx
	gdNmcY84PN/ssaU7d7Z4MCqd2J0dsAS3WMB/Ncih/9tsx9AjbIowmHNyaxfGI5HAnQNFaqREdym
	XuSUq136MIB0CLfcqdgeGcENDpOv+qxuIY5e7ysylyVfRTPXZGCeeFv4TWp9E
X-Gm-Gg: AYBFou1qYQH/4KXqlJTY0eAS/6dEUcqpDsYN5uNLa4NxHUPljOlKCuaiSPJ7KTHUXRv
	IaxbtlzS5HnuZTUjQRKtMrN2A0doht3stjoJmSvvBnsAgC5i3guC/+fxGJri5crLITvHFnv5w3o
	HF/khjxidKeCsoeneESJiPswQLo/f6B89JxEqUjrgfQ1RGwDyEA+iVaiZZNBQ8G1kfsjtsECzSn
	piTphiXZMWOsPdqZbNm6YO0d5YxNvwqtQ/AmtGC0pCIy+h6/lUhNhO4ayD8wvJEYje5gEZO8pxH
	JkNLDBgULzoH/7Ryqus6p7kI2rOZBgCFMaQ1AXL+r5gBhDwp4+O8fpdzbQ4rDVsoWuVHeALPdp5
	CPjXOjaf6
X-Received: by 2002:a05:701b:4242:20b0:182:23da:b566 with SMTP id
 a92af1059eb24-18511eb6a73mr3483472c88.8.1792231035884; Sat, 17 Oct 2026
 02:57:15 -0700 (PDT)
MIME-Version: 1.0
References: <BF261D3A-0BBD-BA4E-A259-659FCE539341@hxcore.ol>
 <DA15A4AF-6AE2-BB41-BB93-694E7E28074D@hxcore.ol> <03b93f9b-56f9-41eb-800e-97b1809c592e@koansoftware.com>
In-Reply-To: <03b93f9b-56f9-41eb-800e-97b1809c592e@koansoftware.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sat, 17 Oct 2026 11:57:03 +0200
X-Gm-Features: AclHuK_v0IyQ6lZqZfVtRv3-LWbf4mPWEyQKh0kB7kMXQUCS7J1PqU5xEaeAVPg
Message-ID: <CAOf5uw=f13aptYTLXd460Rcb5HGK09f=uTv_4G+fDD__TncaaA@mail.gmail.com>
Subject: Re: [yocto] Interest in an open-source vulnerability management tool
 for Yocto-based products?
To: yocto@lists.yoctoproject.org, m.cavallini@koansoftware.com
Cc: rz@zippel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2026 09:57:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66765

Hi

On Sat, Oct 17, 2026 at 10:04=E2=80=AFAM Marco Cavallini via
lists.yoctoproject.org
<m.cavallini=3Dkoansoftware.com@lists.yoctoproject.org> wrote:
>
> On 17/10/26 08:57, rz@zippel.org via lists.yoctoproject.org wrote:
> > Hi everyone,
> >
> > We have been working on a tool to help manage vulnerabilities across
> > embedded products built with Yocto. We are considering releasing it as
> > open source and would appreciate feedback from the community.
> >
> > Our starting point was the manual work after a scan: deciding which
> > findings need attention, understanding what an update changed, and
> > avoiding repeated reviews of the same components across builds and prod=
ucts.
> >
> > Instead of adding another CVE scanner, our approach uses Yocto's |sbom-
> > cve-check| SPDX output. We wanted to make use of the information alread=
y
> > available from the build=E2=80=94including component versions, recipes,=
 layers
> > and vulnerability assessments=E2=80=94to reduce manual work. This is es=
pecially
> > important with Yocto, where a component may already include a backporte=
d
> > fix without a change to its upstream version number.
> >

Does Ortelius [1] from the open-source community not cover those
points? What are the key
points / differences from it?

Michael

[1] https://ortelius.io/

> > The tool currently helps users:
> >
> >   * See multiple products and release streams in one place.
> >   * Compare scans to see which findings are new, no longer reported, or
> >     marked as resolved.
> >   * Keep review decisions across builds when the component version and
> >     vulnerability stay the same, and reuse them in products linked to a
> >     common base platform.
> >   * Identify possible update candidates from indexed Yocto recipes,
> >     either within the current release branch or on a newer baseline.
> >   * Explore dependencies recorded in the SBOM to help understand why a
> >     component is included.
> >   * Use CISA KEV and EPSS information to help prioritize findings, and
> >     record review decisions and their rationale.
> >
> > The screenshots below illustrate five parts of the workflow. They use
> > fictional products and illustrative security-review data, with componen=
t
> > versions taken from Yocto Scarthgap LTS:
> >
> > 1. *Portfolio overview:* product families, released and nightly builds,
> > open findings and release status in one view.
> >
> > Portfolio overview
> >
> > 2. *Components and review status:* component versions, recipes, layers,
> > review status and possible update paths in one view.
> >
> > Components and review status
> >
> > 3. *Component dependencies:* a component's dependency path alongside it=
s
> > findings.
> >
> > Component dependencies
> >
> > 4. *Scan history:* open findings over time, with markers for release
> > updates, layer changes and review decisions.
> >
> > Scan history
> >
> > 5. *Upgrade preview:* possible update paths and their projected impact
> > on the configured release gate.
> >
> > Upgrade preview
> >
> > CRA-related vulnerability-handling requirements were also a reason for
> > starting this work.
> >
> > We also want to be clear about how this was built: the codebase is AI-
> > generated. We would make this explicit in an open-source release and
> > welcome feedback on the code and the approach.
> >
> > Before publishing it, we would like to ask:
> >
> >   * Would this be useful to the Yocto community?
> >   * Is something similar already available that we may have overlooked?
> >   * Is related work planned or already underway within the project or
> >     wider community?
> >
> > We would be happy to contribute to or work with existing projects where
> > that makes sense.
> >
> > Thanks for any pointers or feedback!
> >
> > Best regards,
> > Robby
> >
> >
> >
> >
> >
>
>
>
> Hi Robby,
> It looks interesting to me.
> Could you tell us under which license it is released?
>
> Thanks
> --
> Marco
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66764): https://lists.yoctoproject.org/g/yocto/messag=
e/66764
> Mute This Topic: https://lists.yoctoproject.org/mt/121800778/1862104
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [michael@amarul=
asolutions.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

