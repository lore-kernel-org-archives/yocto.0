Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD3D0C433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Jul 2022 11:59:07 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web10.83417.1657022343661869830
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 04:59:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XFKqRlwi;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.222.178,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-qk1-f178.google.com with SMTP id b24so8474175qkn.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 04:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=2l48xzE7cKtqJoVKldGh4ZEsu6ZKV2SMK/UPQ55+GCU=;
        b=XFKqRlwi4Q68K9UYVgDB7GGDIuYNZ0rQCR1an8BJl5uByoH5Qr21HALTuM+beWZY61
         9P6S5DETiI2bLSUr/qpt8sY+iYbapAqdRd8msVjsbAbc2SObt2YKP0cjKSTI2BjQ/nUo
         iNJkC2FStXPIsqcV/GBAqZe8yfMBnR+FxjqVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=2l48xzE7cKtqJoVKldGh4ZEsu6ZKV2SMK/UPQ55+GCU=;
        b=cdyUxd1meqTCa++Z4qAyrgCeIaEhPaq5JGDz+4i5lNapcvdhriIDq63yHvUZ2BUZMH
         TZUx3cTxbIPhfuV1UQVfp1k5IhvBT8Zi0WT7jSdZQChZNw4TLNVp5ht0hwTZXmIedHTG
         i8fJsAeKsMujz/PV8iLjnvvMX73Zngep8Cg6h2lFH/UzJ6K7VvDawenhHHJltHqN1GLF
         EESuvSDCvHnBjsHiKwrliIZaGGnOyco/HwvcjJjHwiOAn9GT7tl//RqDbL3NR2sHFqA8
         xv6yijgkvy3i/O6cd3d4AfCSjnaQE0zO5XY5JaGygToqzXya61HQIuL/KbgX0m7zhiHn
         8uTg==
X-Gm-Message-State: AJIora8CCayk9hfG7gykk5sumJISvqv4/t5k/3w3hooO0guNMDJN4RqI
	v5mL3m4BmUBf9rQ26zMhbQSkHQ==
X-Google-Smtp-Source: 
 AGRyM1tVbS4p5wMNdovoJT0ktxU2PWT5GaumePhY6El61ENCXzensVIRHGk6H+QscizsmpcBp3CBNA==
X-Received: by 2002:a05:620a:bcb:b0:6a9:8f2a:ecf9 with SMTP id
 s11-20020a05620a0bcb00b006a98f2aecf9mr23279195qki.351.1657022342685;
        Tue, 05 Jul 2022 04:59:02 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7dad:6fff:75bd:1ad8?
 ([2001:8b0:aba:5f3c:7dad:6fff:75bd:1ad8])
        by smtp.gmail.com with ESMTPSA id
 k1-20020a05620a414100b006af039ff090sm29762584qko.97.2022.07.05.04.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 04:59:01 -0700 (PDT)
Message-ID: 
 <508fea9eb0f61c23f76ca419b8afdeb6e97bb25e.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] run-docs-build: allow
 build warnings again
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	michael.opdenacker@bootlin.com, yocto@lists.yoctoproject.org
Date: Tue, 05 Jul 2022 12:58:59 +0100
In-Reply-To: <0a485f9c-115d-7dad-74b7-f048b4daf4cc@theobroma-systems.com>
References: <20220622153201.2734009-1-michael.opdenacker@bootlin.com>
	 <4828a5c0-59c1-ef5e-385f-1b563d3577ee@theobroma-systems.com>
	 <c8b5d42614eb1dc29c203c82abe96733b42fcf83.camel@linuxfoundation.org>
	 <0a485f9c-115d-7dad-74b7-f048b4daf4cc@theobroma-systems.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Jul 2022 11:59:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57452

On Tue, 2022-07-05 at 13:21 +0200, Quentin Schulz wrote:
> Hi Richard, Michael,
>=20
> On 7/4/22 16:23, Richard Purdie wrote:
> > On Mon, 2022-07-04 at 15:24 +0200, Quentin Schulz wrote:
> > > Hi Michael,
> > >=20
> > > On 6/22/22 17:32, Michael Opdenacker via lists.yoctoproject.org wrote=
:
> > > > From: Michael Opdenacker <michael.opdenacker@bootlin.com>
> > > >=20
> > > > This allows to switch to a more recent of Sphinx
> > > > which will generate warnings with old versions of docs.
> > > >=20
> > > > This way, it's not immediately necessary to patch
> > > > all such versions.
> > > >=20
> > > > This commit reverts
> > > > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__git.yoctopro=
ject.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D8273124feb9da2ffe93fce=
e7c4529d5597e1684a&d=3DDwIDAg&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXIzV=
mkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3Dje4C362aUVxZ2rdozdrQ=
VTgzhi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=3D9u5-2R_NLEQy5w0pFgklKIUQnA=
vVLuHX1ASaeEBBJJ4&e=3D
> > > > which originally reverted
> > > > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__git.yoctopro=
ject.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D931d409b255a85f2217ca0=
93d8391a678ce00ddb&d=3DDwIDAg&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXIzV=
mkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3Dje4C362aUVxZ2rdozdrQ=
VTgzhi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=3DbTED2gTptfT6bSvLayy3fEpQJy=
Udbo5gLlt7ZGKkD1c&e=3D
> > > >=20
> > > > Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> > > > ---
> > > >    scripts/run-docs-build | 4 ++--
> > > >    1 file changed, 2 insertions(+), 2 deletions(-)
> > > >=20
> > > > diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> > > > index 648a29d..0f74520 100755
> > > > --- a/scripts/run-docs-build
> > > > +++ b/scripts/run-docs-build
> > > > @@ -63,7 +63,7 @@ for branch in 1.46 $(git branch --remote --contai=
ns "$first_sphinx_commit" --for
> > > >        git checkout $branch
> > > >        git checkout master releases.rst
> > > >        make clean
> > > > -    make publish
> > > > +    SPHINXOPTS=3D"-j auto" make publish
> > > >   =20
> > > >        if [ "$branch" =3D "master-next" ]; then
> > > >            branch=3D"next"
> > > > @@ -136,7 +136,7 @@ for branch in dunfell $(git branch --remote --c=
ontains "$first_sphinx_commit" --
> > > >        fi
> > > >   =20
> > > >        make clean
> > > > -    make publish
> > > > +    SPHINXOPTS=3D"-j auto" make publish
> > > >   =20
> > >=20
> > > What about doing this for all branches except master? To have at leas=
t
> > > some checks and not completely disable the warnings.
> > >=20
> > > I'm a bit afraid we'll just not care about warnings anymore since the=
y
> > > won't fail the autobuilder anymore. I also understand it's not really
> > > sustainable to leave them on for old docs since they won't be maintai=
ned
> > > at one point in time but we still very mnuch would like to be able to
> > > build them.
> > >=20
> > > Not sure what's the best solution here right now unfortunately :/
> >=20
> > Enabling them for master could be a compromise, I'd take such a patch
> > (Michael is away for a while).
> >=20
>=20
> Some warnings are actually valid. Such is the case for the one that=20
> warranted=20
> https://git.yoctoproject.org/yocto-docs/commit/?id=3D9a797dedf6708da3e7ce=
789c5c8735e5d891cde4.=20
> The issue is that we build the docs from old versions with the same=20
> version of sphinx. Therefore, this patch fixes the issue in master but=
=20
> should also be backported to all other impacted versions, even the=20
> unmaintained ones. See=20
> https://docs.yoctoproject.org/dunfell/dev-manual/dev-manual-common-tasks.=
html#recipe-syntax,=20
> instead of a link we now have a path between quotes.
>=20
> There are two ways to fix that one warning:
>   - add intersphinx_disabled_reftypes=3D[] in conf.py manually from the=
=20
> run-docs-build script, c.f.=20
> https://www.sphinx-doc.org/en/master/usage/extensions/intersphinx.html#co=
nfval-intersphinx_disabled_reftypes
>   - patch all (tagged and branch) releases from 3.2 to current master in=
=20
> scripts/docs-build-patches,
>=20
> I prefer the second option because it feels less hacky, but that means=
=20
> MANY times the same file added to docs-build-patches directory.
>=20
> The same could be done for the patch I just sent for yocto-docs to use=
=20
> the %s substitution characters for the cve extlinks to fix a warning. We=
=20
> could just apply this patch to affected releases (kirkstone-4.0.1 tag +=
=20
> kirkstone branch). I could technically request a backport to yocto-docs=
=20
> kirkstone branch, the only thing I don't like is bumping the min version=
=20
> requirement for sphinx for a release that was already released, but if=
=20
> that's okay with you, we could avoid having to add patches in the=20
> autobuilder for every new tagged release of kirkstone.
>=20
> I'm honestly not sure there's a lot of benefit in disabling the warnings=
=20
> for now, or enabling them only for select releases. I understand that=20
> this increases the maintenance burden on unmaintained branches every=20
> time we update the sphinx binary in the docs buildtools. However, we=20
> missed this new broken link for almost a month now, which shows we don't=
=20
> look at successful docs build logs from the autobuilder.

Perhaps it is time we split the master build from the stable releases
and used different buildtools tarballs for them?

That has it's own set of challenges of course too.

Cheers,

Richard

