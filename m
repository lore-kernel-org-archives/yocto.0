Return-Path: <erik.schilling@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78DFEC35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 08:39:58 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.47205.1703147990220048778
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 00:39:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=vmKhOVMf;
 spf=pass (domain: linaro.org, ip: 209.85.218.45, mailfrom: erik.schilling@linaro.org)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a2698cff486so59821666b.0
        for <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 00:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703147989; x=1703752789; darn=lists.yoctoproject.org;
        h=in-reply-to:references:subject:from:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pScu7H5MKV0pIKLfa4ZAWEeaH4t+sjJARD0wNl/JGqo=;
        b=vmKhOVMfS1MyiPC9rPq+iKMSMR6FsMo4slnuAtHtZDgdrUk+BqztCdiIxCpSDplpQb
         aZvzN5+5VEf1cCYzhaVK8TawPqT9+qUNKAbqlT4Dw4IJjGZJXx25qI7JKof+qdczqN0J
         WMJyO4ljatODHXI+adQTfcTIPwFDwaQP/UFv0p6iU40kcZi7/Owc+bDNgzhoEwZIfmAF
         ejHdczi5dZvDJnx1IERgrJUKQdqloaKFNOGHNSf5k8HrENdNM78IbE+SwwCI1XMfVEp5
         mrrTrog3SueruQmFsfqhV0yfvSZ6BC7uE1xDt65oUmX5FLg4Em0kVO0L7zU9LxTKgGD3
         6zjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703147989; x=1703752789;
        h=in-reply-to:references:subject:from:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pScu7H5MKV0pIKLfa4ZAWEeaH4t+sjJARD0wNl/JGqo=;
        b=idoPPtV3wiYUh4G8sEGsPlIZjJaK33dE8wEr3DKs3J9sTwrYXcwlgARrzLIkAVd/Sm
         TmBw6208mvjOzw+A6ESAWe3i1eVf/dxXi0PfTmxJM5Gvp+Dn1INPEidpqyJoVrBzoiwZ
         HCBDuLg93euV8xfIHpG0cPAoBvtFlHEbBNyoU6n0uMcimjGk/whjQezmOzq1IGqpP0s0
         sF+c4Gad40a8DAoN6R4gXuIh1DK1Sw0WUN5n/EcHSBENeEXM3t0zWFs+F9Z2RcetZAp/
         NYoCM2v+akmtgRYwXEfqgHFMSaJ0Wkfo54xo3UqjVs8xmVmqwXLU93ZNH3zYOuzOmLeO
         jtRA==
X-Gm-Message-State: AOJu0Yz6rLKlwX7QpYOuixdg5Nlt4BqRTYiJXH06XJjrGKerZM9B4ECr
	hS77JfLkcFLzmeheWNONSjZF00jPnR55lc9jV5Y=
X-Google-Smtp-Source: AGHT+IEGsxm/v4T0myaIw9OrNTawj2yh4edXAQIthSggLtrjkrIE5yNHDSNSIUPYzvFLPHbK9zhpTw==
X-Received: by 2002:a17:907:1394:b0:a23:453d:95d2 with SMTP id vs20-20020a170907139400b00a23453d95d2mr1541325ejb.309.1703147988836;
        Thu, 21 Dec 2023 00:39:48 -0800 (PST)
Received: from localhost ([2001:9e8:d5a1:4b00::f39])
        by smtp.gmail.com with ESMTPSA id oz4-20020a170906cd0400b00a269d26f278sm703602ejb.161.2023.12.21.00.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 00:39:48 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 21 Dec 2023 09:39:48 +0100
Message-Id: <CXTVKODH515T.1YZE6AIU7K2JX@ablu-work>
To: "Mikko Rapeli" <mikko.rapeli@linaro.org>, <yocto@lists.yoctoproject.org>
From: "Erik Schilling" <erik.schilling@linaro.org>
Subject: Re: [meta-security][PATCH 1/4] tpm2-tss: support native builds
X-Mailer: aerc 0.15.2
References: <20231221075730.201111-1-mikko.rapeli@linaro.org>
In-Reply-To: <20231221075730.201111-1-mikko.rapeli@linaro.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 08:39:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62014

On Thu Dec 21, 2023 at 8:57 AM CET, Mikko Rapeli wrote:
> systemd tool ukify
> https://www.freedesktop.org/software/systemd/man/latest/ukify.html
> depends on systemd-measure
> https://www.freedesktop.org/software/systemd/man/latest/systemd-measure.h=
tml
> which depends on tpm2-tss. So to support creating UKI
> images containing both kernel and initramfs with systemd-native,
> tpm2-tss support is needed for native too.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb b/meta-tpm/=
recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
> index 6386105..dceebc2 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
> @@ -93,3 +93,5 @@ FILES:${PN} =3D "\
>      ${sysconfdir}/sysusers.d"
> =20
>  RDEPENDS:libtss2 =3D "libgcrypt"
> +
> +BBCLASSEXTEND =3D "native"

Reviewed-by: Erik Schilling <erik.schilling@linaro.org>

