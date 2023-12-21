Return-Path: <erik.schilling@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6204AC46CD4
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 08:37:38 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web10.47625.1703147856853589156
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 00:37:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ie3NjoT1;
 spf=pass (domain: linaro.org, ip: 209.85.218.42, mailfrom: erik.schilling@linaro.org)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a2371eae8f1so55338166b.1
        for <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 00:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703147855; x=1703752655; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:to:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4j+2dDNnXqGPP0MlWZ61++rRX/u2XeEfllOhhz7aEA=;
        b=ie3NjoT1nnWzB5AzEXdlZKRAsluDtFnbYIVxuclNvbXw9rimPu8ZaNZPXvhlfZCIXw
         ry6BsT29myZy4mBGlrUc0SQNdRF7AT5JdDv2AMozwn8KYUj1B13WCePuXpzANd5ML9XN
         3fKa4ns7q41+1JunYKa3atkhmDtOJG67ZTPspVQarGKsiSLZsACapkoUH0XgYhaWGtva
         PIDlL4FuiG7cjz5YVTboWkK+qAepEKmoIptzfDqMNFcAnaLFbBfrij79FE6huAgxLNqZ
         BoZ+BKVIq7KMQJQq40tTgNFANR3+bl70UTlIBJP4iOJ54hzXyoRz5JQmCYIDjqCeQJw+
         GN+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703147855; x=1703752655;
        h=in-reply-to:references:from:to:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i4j+2dDNnXqGPP0MlWZ61++rRX/u2XeEfllOhhz7aEA=;
        b=ftCUXxdOOatz/zdjiAg64x91GG7vDrWwHCidGVLi2ZYIHPElkOyQlnIBzUBXgyCb/Y
         BRzK+CIP+Vd3EIqvBO5okjJGAX5mQ+yX3WGL1vDA8+lmVxMc8omrDh9UW1SQQoWUwJ8r
         xMMAQ8oHqQ8Gl7CA6reojR/2VcFskVkLibjvFVuXWutbf6B394e/UMRa4mLezYAXjJJa
         Ogk+b5zNwtItRVzq7IKlyKdoKSaEUgUXl1+zKun2YpIr2W6c56czmyhx4X8wLGXFMCjL
         CPzffpSK8UBaonfunrg+LKVGnBywV6TsZkOOyv1Wt+O1Tp42i8OMlCaAHdl25Fk5iCtB
         qVWQ==
X-Gm-Message-State: AOJu0YybEt61A1MkOB5AMe6kS7eWY8rrVEwyNXikKOXLjdCXpCI3DDUY
	ejehm2z+YHCPjC7strZe8Z/d3w==
X-Google-Smtp-Source: AGHT+IHwIqjDU48khITomewpNzALHCowAhhXRv5PQ1F+97DtINS/nQlQp7N+TueNsWMHeqXA1l0siA==
X-Received: by 2002:a17:906:6d8b:b0:a26:a245:9cef with SMTP id h11-20020a1709066d8b00b00a26a2459cefmr435734ejt.64.1703147855162;
        Thu, 21 Dec 2023 00:37:35 -0800 (PST)
Received: from localhost ([2001:9e8:d5a1:4b00::f39])
        by smtp.gmail.com with ESMTPSA id ov3-20020a170906fc0300b00a1f7b445f5dsm696926ejb.124.2023.12.21.00.37.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 00:37:34 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 21 Dec 2023 09:37:34 +0100
Message-Id: <CXTVIYYUNZXF.3RFTUGF77AC9Q@ablu-work>
Subject: Re: [meta-security][PATCH 2/4] dm-verity-img.bbclass: use bc-native
To: "Mikko Rapeli" <mikko.rapeli@linaro.org>, <yocto@lists.yoctoproject.org>
From: "Erik Schilling" <erik.schilling@linaro.org>
X-Mailer: aerc 0.15.2
References: <20231221075730.201111-1-mikko.rapeli@linaro.org>
 <20231221075730.201111-2-mikko.rapeli@linaro.org>
In-Reply-To: <20231221075730.201111-2-mikko.rapeli@linaro.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 08:37:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62012

On Thu Dec 21, 2023 at 8:57 AM CET, Mikko Rapeli wrote:
> From: Erik Schilling <erik.schilling@linaro.org>
>
> Build host may not have bc.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>

Signed-off-by: Erik Schilling <erik.schilling@linaro.org>

> ---
>  classes/dm-verity-img.bbclass | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclas=
s
> index 045c860..3dd2b94 100644
> --- a/classes/dm-verity-img.bbclass
> +++ b/classes/dm-verity-img.bbclass
> @@ -49,6 +49,8 @@ DM_VERITY_SEPARATE_HASH ?=3D "0"
>  DM_VERITY_ROOT_GUID ?=3D "4f68bce3-e8cd-4db1-96e7-fbcaf984b709"
>  DM_VERITY_RHASH_GUID ?=3D "2c7357ed-ebd2-46d9-aec1-23d437ec2bf5"
> =20
> +DEPENDS +=3D "bc-native"
> +
>  # Process the output from veritysetup and generate the corresponding .en=
v
>  # file. The output from veritysetup is not very machine-friendly so we n=
eed to
>  # convert it to some better format. Let's drop the first line (doesn't c=
ontain
> @@ -87,8 +89,8 @@ process_verity() {
>      # https://uapi-group.org/specifications/specs/discoverable_partition=
s_specification/
> =20
>      ROOT_HASH=3D$(cat $ENV | grep ^ROOT_HASH | sed 's/ROOT_HASH=3D//' | =
tr a-f A-F)
> -    ROOT_HI=3D$(echo "obase=3D16;ibase=3D16;$ROOT_HASH/2^80" | /usr/bin/=
bc)
> -    ROOT_LO=3D$(echo "obase=3D16;ibase=3D16;$ROOT_HASH%2^80" | /usr/bin/=
bc)
> +    ROOT_HI=3D$(echo "obase=3D16;ibase=3D16;$ROOT_HASH/2^80" | bc)
> +    ROOT_LO=3D$(echo "obase=3D16;ibase=3D16;$ROOT_HASH%2^80" | bc)
> =20
>      # Hyphenate as per UUID spec and as expected by wic+sgdisk parameter=
s.
>      # Prefix with leading zeros, in case hash chunks weren't using highe=
st bits


