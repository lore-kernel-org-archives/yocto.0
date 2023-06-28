Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD846EB64D7
	for <webhook@archiver.kernel.org>; Wed, 28 Jun 2023 16:47:28 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.21811.1687970844946952635
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Jun 2023 09:47:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=ZQY3Kyfm;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-4f957a45b10so8486743e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 09:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687970843; x=1690562843;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cRSHjUiZx1uCmSGiUhs1Fh/qQW0XlPsaJEtExnNrxN0=;
        b=ZQY3KyfmlBa/Qyit/olipJG1NhW/wm+iICSN0smwCzDW5qBgA41u+TCGRqhzODPFPw
         u01KPvgifUjoyTsm1prfwp1YN2ZaWosK/ViH7z86OxmOLoxGaxHhOaPuRYQ59qefJVNp
         PLeq+wmRJGoQXF/2QyHDBURZ4mM1LC9SZVVr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687970843; x=1690562843;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cRSHjUiZx1uCmSGiUhs1Fh/qQW0XlPsaJEtExnNrxN0=;
        b=PJRMlGeBVtiWet0w3QfqL8f7KDpkeKbP3DdEQVcA52n/fUZChQYqHHRnC2oZ7ATuCB
         wsc+WGCJLVwyYk+Ya5nsvJUhVLh29eU0pgHRC5Zh67EQAXJc5uE1tlqv3a8OZwQVyRvM
         XATBva3iHjVRdTBiOo+p9t8tFXZVvHf53NKnJqe8pxhZppnVICQjdHb4siExgN++kCjv
         ANDtvFNfn0Efz3I/fU1s5+Jxt4Z0X2melMXl1iCzhM8hh81bHBjZ5S6Jbl/Rs2nQR4DB
         Dwi9dSw0BohnV45r+HN/tJER2EEadOJzjrWO2YJfpVi59DypMIaHzeyt7EWjA/i68bcx
         dzLQ==
X-Gm-Message-State: AC+VfDx5zSf09TTSHMadv7+7+XkjaTGsa+V0Ni98XrICJn1Xy2T1Qq2j
	yh3FB8iTO83m0f3xm+w7f0jpMg==
X-Google-Smtp-Source: ACHHUZ4XAPcYo7XfrfUC7bJ2t0uWLUJQihqDZf6JvNKhQpJqVY8vEFNFOfdsHTqXDSbGeWdhsBLOPw==
X-Received: by 2002:a05:6512:2397:b0:4fb:7559:aea3 with SMTP id c23-20020a056512239700b004fb7559aea3mr7801357lfv.39.1687970843016;
        Wed, 28 Jun 2023 09:47:23 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a71a:20d6:74fc:9334? ([2001:8b0:aba:5f3c:a71a:20d6:74fc:9334])
        by smtp.gmail.com with ESMTPSA id i5-20020a05600c290500b003f9b66a9376sm17269085wmd.42.2023.06.28.09.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jun 2023 09:47:22 -0700 (PDT)
Message-ID: <bb92fedccd554006ed61fdb765c6655b7d9eb539.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-security][PATCH] layer: add more memory for Qemu
 machines
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Date: Wed, 28 Jun 2023 17:47:21 +0100
In-Reply-To: <20230628125609.1327477-1-akuster808@gmail.com>
References: <20230628125609.1327477-1-akuster808@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jun 2023 16:47:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60466

On Wed, 2023-06-28 at 08:56 -0400, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  conf/layer.conf | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 334a945..5f289cb 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -28,4 +28,7 @@ INHERIT +=3D "sanity-meta-security"
> =20
>  QB_KERNEL_CMDLINE_APPEND =3D " ${@bb.utils.contains('DISTRO_FEATURES', '=
apparmor', 'apparmor=3D1 security=3Dapparmor', '', d)}"
> =20
> +# We need more mem to run many apps in this layer
> +QB_MEM=3D"-m 2048"
> +
>  addpylib ${LAYERDIR}/lib oeqa

Putting that unconditionally in a layer.conf is a pretty poor thing to
do for usability IMO as it effectively forces that decision on anyone
including the layer. There has to be a better way to handle that, at
least conditionally on some override?

Cheers,

Richard



