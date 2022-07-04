Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 797C4C433EF
	for <webhook@archiver.kernel.org>; Mon,  4 Jul 2022 14:23:11 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web12.72573.1656944589103079646
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jul 2022 07:23:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KlZrQPLE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.218.42,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ej1-f42.google.com with SMTP id dn9so11754445ejc.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jul 2022 07:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=zWlXIuouBzdSpFefgmhfL3+R3hV5SWI6OVXg9IOnr2o=;
        b=KlZrQPLEpW0xQ5ZV/KZvE6GJ+1kIpXkSgg7YdTA/MygKTfp7Wff48ot4rePo19G4PO
         fmVnM3i9FLpmBXBvIu3aNo2EX+eTTDxxGMlIVEWv9A9dCPhgFgjmnROrT1VDMVOPCT9k
         wdkMoO6QHy/Mf9+GRke+AAtZf2IDxK8gkt5d8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=zWlXIuouBzdSpFefgmhfL3+R3hV5SWI6OVXg9IOnr2o=;
        b=tkl2dDxMgYvyKaBtpHMWaMnf6jrCva63DpCLkO4p2ZLAMdoA4QgKMTLMxYJiJbx6qc
         NmMnW4IVax0bAwg2ctYCpfzjxMmqL6Tj6yOJrGGmA/Axuo3IK+ndD0mkZ/zmCo+Vlxsr
         5wz9v6xgBjV+VqkXa1LLy+ie+fjLvKXSp+x1VMrY9cLggg9fDDSaDHBN2b5u+35Xammq
         nIzEb1KewoFTu+RzslN+yc1xW+/hBm5Lz+1gb0nlQCV3cHaOMOtsRW9BEm8NapYuObyy
         rURh2ygm8kwjForj24z8FVDxkvOu9e/CDa2J1EC4XZuxNlx/H4ZYbMG0oBOiXKh8ejm1
         4NAQ==
X-Gm-Message-State: AJIora+1/5+YvSMZkM/SBi9FyA1+5NT4f0NoivdXh83gKTxcM901RBOl
	4yp+BUzel6pQiUC2QlrC9NlQqA==
X-Google-Smtp-Source: 
 AGRyM1uJRddayp3dPQ3WWEErSmFxB18yn9XoSTyiq01x1g2la2lVUebWoUZ32zcd7F+/O54MpveBWw==
X-Received: by 2002:a17:906:cc4b:b0:72a:afb0:885c with SMTP id
 mm11-20020a170906cc4b00b0072aafb0885cmr11117553ejb.186.1656944587503;
        Mon, 04 Jul 2022 07:23:07 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:fa18:c075:6c8f:aaa2?
 ([2001:8b0:aba:5f3c:fa18:c075:6c8f:aaa2])
        by smtp.gmail.com with ESMTPSA id
 h18-20020a1709060f5200b006fe9e717143sm14376453ejj.94.2022.07.04.07.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 07:23:06 -0700 (PDT)
Message-ID: 
 <c8b5d42614eb1dc29c203c82abe96733b42fcf83.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] run-docs-build: allow
 build warnings again
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	michael.opdenacker@bootlin.com, yocto@lists.yoctoproject.org
Date: Mon, 04 Jul 2022 15:23:05 +0100
In-Reply-To: <4828a5c0-59c1-ef5e-385f-1b563d3577ee@theobroma-systems.com>
References: <20220622153201.2734009-1-michael.opdenacker@bootlin.com>
	 <4828a5c0-59c1-ef5e-385f-1b563d3577ee@theobroma-systems.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Jul 2022 14:23:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57438

On Mon, 2022-07-04 at 15:24 +0200, Quentin Schulz wrote:
> Hi Michael,
>=20
> On 6/22/22 17:32, Michael Opdenacker via lists.yoctoproject.org wrote:
> > From: Michael Opdenacker <michael.opdenacker@bootlin.com>
> >=20
> > This allows to switch to a more recent of Sphinx
> > which will generate warnings with old versions of docs.
> >=20
> > This way, it's not immediately necessary to patch
> > all such versions.
> >=20
> > This commit reverts
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__git.yoctoproject=
.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D8273124feb9da2ffe93fcee7c4=
529d5597e1684a&d=3DDwIDAg&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXIzVmkNP=
vw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3Dje4C362aUVxZ2rdozdrQVTgz=
hi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=3D9u5-2R_NLEQy5w0pFgklKIUQnAvVLu=
HX1ASaeEBBJJ4&e=3D
> > which originally reverted
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__git.yoctoproject=
.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D931d409b255a85f2217ca093d8=
391a678ce00ddb&d=3DDwIDAg&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXIzVmkNP=
vw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3Dje4C362aUVxZ2rdozdrQVTgz=
hi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=3DbTED2gTptfT6bSvLayy3fEpQJyUdbo=
5gLlt7ZGKkD1c&e=3D
> >=20
> > Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> > ---
> >   scripts/run-docs-build | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> > index 648a29d..0f74520 100755
> > --- a/scripts/run-docs-build
> > +++ b/scripts/run-docs-build
> > @@ -63,7 +63,7 @@ for branch in 1.46 $(git branch --remote --contains "=
$first_sphinx_commit" --for
> >       git checkout $branch
> >       git checkout master releases.rst
> >       make clean
> > -    make publish
> > +    SPHINXOPTS=3D"-j auto" make publish
> >  =20
> >       if [ "$branch" =3D "master-next" ]; then
> >           branch=3D"next"
> > @@ -136,7 +136,7 @@ for branch in dunfell $(git branch --remote --conta=
ins "$first_sphinx_commit" --
> >       fi
> >  =20
> >       make clean
> > -    make publish
> > +    SPHINXOPTS=3D"-j auto" make publish
> >  =20
>=20
> What about doing this for all branches except master? To have at least=
=20
> some checks and not completely disable the warnings.
>=20
> I'm a bit afraid we'll just not care about warnings anymore since they=
=20
> won't fail the autobuilder anymore. I also understand it's not really=20
> sustainable to leave them on for old docs since they won't be maintained=
=20
> at one point in time but we still very mnuch would like to be able to=20
> build them.
>=20
> Not sure what's the best solution here right now unfortunately :/

Enabling them for master could be a compromise, I'd take such a patch
(Michael is away for a while).

Cheers,

Richard



