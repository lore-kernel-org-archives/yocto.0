Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6632EC4332F
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 10:16:20 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.9701.1699956977550279611
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Nov 2023 02:16:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UbRTCUYM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40906fc54fdso44582425e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 02:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1699956976; x=1700561776; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UV7AMybMchiZcUSEU9KCCe07W9HXCSCRn1iRqCssgHk=;
        b=UbRTCUYMAnaCaHpGbu24HF0hqw+qNJh0OjZs48F2ms0/BZUWkYKuoa2v19t7+Hs30z
         XuxKQtnJHUF4DWnBnGIEz3QQ9xIXuNyYgP8UxbiCi7meMU7wwTHUS4zp2gJmfLbS7Ho1
         qfvNzhAIIzMHysh3fQQjA+Ml1QYl2pwlfBZRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699956976; x=1700561776;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UV7AMybMchiZcUSEU9KCCe07W9HXCSCRn1iRqCssgHk=;
        b=I11FkPcbSPrQbL/R5bD8/iNLRx2qi0klZrrkDXE3tMY0YzgzcL/GI8gYmxQS4Wp1Xb
         ALt2d48I99c2wQ4dxumE/ju8AcgW/T1zW5caDZlaU5Zm8yK6WaUWNM019bT7PmOBe+V1
         /rmzNgkSmu81uCm9vZ9ckBnSE5R+3Mb0utoph4dR4qMA+Xq9U4EGHRhQWHEQW1GebjA+
         WIlkUCcMlxDBWf+WEoGlYtgZfxXF7SMHNrpw1oQjnrGivpiUe0TXOndwRT9pmD/qU+5D
         CdA7eA39+/RfGtwCtThy28uyAxjMrM6SHVfMiXB7KsiT0iayuCapCMvjO8Ai0c5hiSUN
         XXTQ==
X-Gm-Message-State: AOJu0YyNQQcNG4bX4xWu7bbzHgNV6fdIhFCljXh3qUW1LnYkc0SvS24o
	NnCKtH2pdoNEl6ra8DuIOfpd0g==
X-Google-Smtp-Source: AGHT+IHKlXpUWeBekn/xaW4Y9KrO3JwIerbhZXb7raCVUte5Cb1jHA0YXAo99ch1+qX3mhiNfeag1Q==
X-Received: by 2002:a1c:7506:0:b0:409:677:31e7 with SMTP id o6-20020a1c7506000000b00409067731e7mr7682876wmc.11.1699956975665;
        Tue, 14 Nov 2023 02:16:15 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:c86b:91bb:bc1f:9d3f? ([2001:8b0:aba:5f3c:c86b:91bb:bc1f:9d3f])
        by smtp.gmail.com with ESMTPSA id iv10-20020a05600c548a00b0040535648639sm10919836wmb.36.2023.11.14.02.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 02:16:15 -0800 (PST)
Message-ID: <83c87b38a8f0fd86e6005542479dd3dfe67891a3.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper] Add toaster test builder
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexander.lussier-cullen@savoirfairelinux.com, 
	yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Date: Tue, 14 Nov 2023 10:16:14 +0000
In-Reply-To: <17974F5A4C85355A.17691@lists.yoctoproject.org>
References: 
	<20231113182116.25586-1-alexander.lussier-cullen@savoirfairelinux.com>
	 <17974F5A4C85355A.17691@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 10:16:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61675

On Mon, 2023-11-13 at 22:30 +0000, Richard Purdie via
lists.yoctoproject.org wrote:
> On Mon, 2023-11-13 at 13:21 -0500,
> alexander.lussier-cullen@savoirfairelinux.com wrote:
> > From: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelin=
ux.com>
> >=20
> > Add a toaster test builder that runs the tox test suite using a new
> > run-toaster-tests script.
> >=20
> > Signed-off-by: Alexander Lussier-Cullen <alexander.lussier-cullen@savoi=
rfairelinux.com>
> > CC: richard.purdie@linuxfoundation.org
> > ---
> >  config.json               |  3 +++
> >  scripts/run-toaster-tests | 22 ++++++++++++++++++++++
> >  2 files changed, 25 insertions(+)
> >  create mode 100644 scripts/run-toaster-tests
> >=20
> > diff --git a/config.json b/config.json
> > index d10a3a8..0c581d1 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1675,6 +1675,9 @@
> >              "step1" : {
> >                  "BBTARGETS" : "core-image-patchtest"
> >              }
> > +        },
> > +        "toaster" : {
> > +            "EXTRACMDS" : ["${SCRIPTSDIR}/run-toaster-tests ${HELPERBU=
ILDDIR} ${HELPERBUILDDIR}/.."]
> >          }
> >      },
> >      "repo-defaults" : {
> > diff --git a/scripts/run-toaster-tests b/scripts/run-toaster-tests
> > new file mode 100644
> > index 0000000..a785c36
> > --- /dev/null
> > +++ b/scripts/run-toaster-tests
> > @@ -0,0 +1,22 @@
> > +#!/bin/bash
> > +#
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +#
> > +# Called with $1 as the build directory
> > +#             $2 as the path to poky
> > +
> > +set -e
> > +set -u
> > +set -o pipefail
> > +set -x
> > +
> > +builddir=3D$(realpath "$1")
> > +pokydir=3D$(realpath "$2")
> > +
> > +cd $builddir
> > +mkdir -p toaster_logs
> > +python3 -m venv venv --without-pip --system-site-packages
> > +source venv/bin/activate
> > +python3 -m pip install tox
> > +
> > +tox -c $pokydir/bitbake/lib/toaster/tox.ini
>=20
> Thanks! I tested this and the first issue was:
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/1
>=20
> so I added a chmod a+x onto the commit which is on master-next of
> yocto-autobuilder-helper.
>=20
> This lead to:
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/2
> and
> https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/3
>=20
> which were because a worker with python 3.8/3.9/3.10 wasn't available
> at the time of testing and I'm not restricting the worker set the
> target is using.
>=20
> I put a commit onto bitbake/poky master-next to add 3.11 and 3.12 to
> tox.ini which leads to:
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/4
>=20
> which does appear to be running some testing with some errors.
>=20
> So we're making progress :)

https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/4

(on ubuntu 23.04 with python3.11) ran to completion in 45 minutes,
failures=3D2, errors=3D18.=C2=A0

It'd note that it didn't use SSTATE_DIR or DL_DIR from the parent
environment which is partly why it was so slow, we need to fix that.

I tried adding some of the pending toaster patches to master-next and
rebuilding. There were more workers available so it tried some
different combinations which failed:

https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/5

opensuse 15.4 python 3.11

  File "/home/pokybuild/yocto-
worker/toaster/build/build/.tox/py311/lib/python3.11/site-
packages/django/utils/timezone.py", line 12, in <module>
    from backports import zoneinfo
ModuleNotFoundError: No module named 'backports'

https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/6

ubuntu 20.04 python 3.8

  File "/usr/lib/python3.8/importlib/metadata.py", line 79, in load
    return functools.reduce(getattr, attrs, module)
AttributeError: module 'virtualenv.create.via_global_ref.builtin.cpython.ma=
c_os' has no attribute 'CPython2macOsFramework'


I've set https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds=
/7
on ubuntu 23.04 away so we can see if things improve or not with the patche=
s.

Cheers,

Richard






