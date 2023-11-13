Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21A11C4332F
	for <webhook@archiver.kernel.org>; Mon, 13 Nov 2023 22:30:35 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.5173.1699914633148757279
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Nov 2023 14:30:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gpTk1EPs;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40a5a444c3eso3790015e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 13 Nov 2023 14:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1699914631; x=1700519431; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T59xmS3mY+wvQGXrZveYJLFrG9R88+rXZMmfVHlnCck=;
        b=gpTk1EPsTXhkeKPFdZfXigsSq7jzKFiQj4a1D4NS7jUb/iGChs5EqZ2+FRw2wXV6/5
         QJvRIPWdEeyKOh/3dSAa52hkPZw+iqqJcjZOrRgz/5zNZn1GFUvXD1mvN5nI4owywDGw
         inIyBsFOHq9gf40XG7qNIkFUmAAyxU7iTIxt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699914631; x=1700519431;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T59xmS3mY+wvQGXrZveYJLFrG9R88+rXZMmfVHlnCck=;
        b=S3FzvlPt9XSrojt2tXkUAxp6YzVisntC2htriHhKdttVDOKZRwv2kCcPzbopHzD6s+
         Xklerqx0AD2DY2GgQ4DZENlz/XtGGCWWyWG+Zdxv5DEVG2t//TEKY+wLgs/eLqqVKc7l
         +pk/h7XgDerYhUHopGHDVTrdmg0xejG8SChAUwdq2s4tLisi5+D2pYp776jtkGdwjDkA
         SJdldyKyW2eenfzemyk39z9WB+ZFrRoWnjyrO3YqHzURomrbCgqe6WF5pKVBGKMfjRbe
         UJ6AzWJIVaqDkY4ZuTGUnwNv0fX/uUO53dO46jnSdbvCzj+8sF+dIcRx2MYcGutqrU8V
         iDtw==
X-Gm-Message-State: AOJu0Yy+9R6xIz+uI3xrpg0+KJ5NhpF3ch61i9deUd8KOflPyN0TXIa5
	ayr05hhVvNoaLOCuH28K26JvMw==
X-Google-Smtp-Source: AGHT+IF7R0JQLEGx8yq1hUdDePQxqrWpRsxBbnKc6Rqtgyn87E/IDYQqmnKpKSbZyxnXfplQVuXkIQ==
X-Received: by 2002:a05:600c:4715:b0:405:1ba2:4fcb with SMTP id v21-20020a05600c471500b004051ba24fcbmr6786207wmo.16.1699914631543;
        Mon, 13 Nov 2023 14:30:31 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:c86b:91bb:bc1f:9d3f? ([2001:8b0:aba:5f3c:c86b:91bb:bc1f:9d3f])
        by smtp.gmail.com with ESMTPSA id n15-20020a05600c500f00b003fc0505be19sm9445643wmr.37.2023.11.13.14.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 14:30:31 -0800 (PST)
Message-ID: <dc5a8de51bd40a89442da6e708dfeb9c135777fc.camel@linuxfoundation.org>
Subject: Re: [yocto-autobuilder-helper] Add toaster test builder
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexander.lussier-cullen@savoirfairelinux.com, 
	yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Date: Mon, 13 Nov 2023 22:30:30 +0000
In-Reply-To: <20231113182116.25586-1-alexander.lussier-cullen@savoirfairelinux.com>
References: 
	<20231113182116.25586-1-alexander.lussier-cullen@savoirfairelinux.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Nov 2023 22:30:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61670

On Mon, 2023-11-13 at 13:21 -0500,
alexander.lussier-cullen@savoirfairelinux.com wrote:
> From: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirfairelinux=
.com>
>=20
> Add a toaster test builder that runs the tox test suite using a new
> run-toaster-tests script.
>=20
> Signed-off-by: Alexander Lussier-Cullen <alexander.lussier-cullen@savoirf=
airelinux.com>
> CC: richard.purdie@linuxfoundation.org
> ---
>  config.json               |  3 +++
>  scripts/run-toaster-tests | 22 ++++++++++++++++++++++
>  2 files changed, 25 insertions(+)
>  create mode 100644 scripts/run-toaster-tests
>=20
> diff --git a/config.json b/config.json
> index d10a3a8..0c581d1 100644
> --- a/config.json
> +++ b/config.json
> @@ -1675,6 +1675,9 @@
>              "step1" : {
>                  "BBTARGETS" : "core-image-patchtest"
>              }
> +        },
> +        "toaster" : {
> +            "EXTRACMDS" : ["${SCRIPTSDIR}/run-toaster-tests ${HELPERBUIL=
DDIR} ${HELPERBUILDDIR}/.."]
>          }
>      },
>      "repo-defaults" : {
> diff --git a/scripts/run-toaster-tests b/scripts/run-toaster-tests
> new file mode 100644
> index 0000000..a785c36
> --- /dev/null
> +++ b/scripts/run-toaster-tests
> @@ -0,0 +1,22 @@
> +#!/bin/bash
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Called with $1 as the build directory
> +#             $2 as the path to poky
> +
> +set -e
> +set -u
> +set -o pipefail
> +set -x
> +
> +builddir=3D$(realpath "$1")
> +pokydir=3D$(realpath "$2")
> +
> +cd $builddir
> +mkdir -p toaster_logs
> +python3 -m venv venv --without-pip --system-site-packages
> +source venv/bin/activate
> +python3 -m pip install tox
> +
> +tox -c $pokydir/bitbake/lib/toaster/tox.ini

Thanks! I tested this and the first issue was:

https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/1

so I added a chmod a+x onto the commit which is on master-next of
yocto-autobuilder-helper.

This lead to:

https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/2
and
https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/3

which were because a worker with python 3.8/3.9/3.10 wasn't available
at the time of testing and I'm not restricting the worker set the
target is using.

I put a commit onto bitbake/poky master-next to add 3.11 and 3.12 to
tox.ini which leads to:

https://autobuilder.yoctoproject.org/typhoon/#/builders/161/builds/4

which does appear to be running some testing with some errors.

So we're making progress :)

Cheers,

Richard


