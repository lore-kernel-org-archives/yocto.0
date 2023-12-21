Return-Path: <erik.schilling@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A31FC35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 08:39:18 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.47193.1703147955598648637
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 00:39:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=kT7WKQ+D;
 spf=pass (domain: linaro.org, ip: 209.85.208.48, mailfrom: erik.schilling@linaro.org)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5532b348d30so560204a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 00:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703147954; x=1703752754; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:to:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KuGNnAlnsGgqD6Q0+Fbhfv991WAmBKp/yqsZEa+fnwQ=;
        b=kT7WKQ+Dcx8sN61/ZN8MhltkAuP3zoY/lIMJ6STEdb1EXUySHLYuM6VSYSyNWjWmtT
         ajk/M9ioJrtbyjv83klwpvZLHybClhD1zdOrlz6lA6HVGX4r9Kvcmbn2I/RfQj1r13bD
         BgHL9ena0q5bAE7cEQvxO4KGvDQrrprrpwxIW1UOHc7+/uEgoKi77U88hBTX8HodaIGY
         MSndlXb8+i4RvDOrW44JL354vbTum9rlJwWOIRqexC7bGfa05mISU8mtH5HQpuUTRr0v
         cM6kf7XvbAoxAPV9mVL9EOKhliRVxl2XlQfKW3nKl09ixtfZJ3dw4T6QWvKsy+jx5uIc
         CjhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703147954; x=1703752754;
        h=in-reply-to:references:from:to:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KuGNnAlnsGgqD6Q0+Fbhfv991WAmBKp/yqsZEa+fnwQ=;
        b=SisSD26pZsKb9y4m365JubCOFV+1K8tZvDej6i2gLFOjmoxJA+k0i/JB2Kxek8HtNV
         b26TT0h1hN8V7YCFiJ1W62HVkI92vMlLzSbEbv96fvigqwckoH4DoWmg8lIwdJ6m8HQb
         g3ocLBR13/hTh/LNOqNsdvuPxPA7WXEnA38PRyqFDI3WnvntomdDtlmL5QmfFFNjo3f/
         mxl3pGdDMoyJQaxmuxJIbbBlaDFBt0Dbn1L3523YbLEq4CLePJaXfuELqXsdF7xWehz5
         NLcCSbzyiP9c5gAFIL7iorQ+8pz0PGQFRCV6j0i1eQbr09BBM6ASM66gs1l+b3ybSSlV
         s1kA==
X-Gm-Message-State: AOJu0Yz9Nxqn4GyFcgN4DygLwULMXff6ZGWc4ueptzseYw6nPc2Cz9PQ
	YldDKQ1qLciayLqnjLpH5p/t1+LSlB4I5qrfqkI=
X-Google-Smtp-Source: AGHT+IG3eQmwiTQX5ArLuFhAm0X8FH+bEQkQFyfg5VQEOdcnuKeFSd6GTn1rqZRuQfWcyK1uKOImMw==
X-Received: by 2002:a50:aa94:0:b0:553:b4a5:98ca with SMTP id q20-20020a50aa94000000b00553b4a598camr1617390edc.35.1703147954047;
        Thu, 21 Dec 2023 00:39:14 -0800 (PST)
Received: from localhost ([2001:9e8:d5a1:4b00::f39])
        by smtp.gmail.com with ESMTPSA id t25-20020a056402241900b00553b6b5bb44sm856834eda.67.2023.12.21.00.39.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 00:39:13 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 21 Dec 2023 09:39:13 +0100
Message-Id: <CXTVK8E6V2JW.1FDYH4L7XGF8K@ablu-work>
Subject: Re: [meta-security][PATCH 4/4] dm-verity-img.bbclass: add
 DM_VERITY_DEPLOY_DIR
To: "Mikko Rapeli" <mikko.rapeli@linaro.org>, <yocto@lists.yoctoproject.org>
From: "Erik Schilling" <erik.schilling@linaro.org>
X-Mailer: aerc 0.15.2
References: <20231221075730.201111-1-mikko.rapeli@linaro.org>
 <20231221075730.201111-4-mikko.rapeli@linaro.org>
In-Reply-To: <20231221075730.201111-4-mikko.rapeli@linaro.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 08:39:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62013

On Thu Dec 21, 2023 at 8:57 AM CET, Mikko Rapeli wrote:
> If image recipe A wants to embed another image B which used
> dm-verity-img.bbclass and generated the .wks file, then
> recipe B must deploy everything to IMGDEPLOYDIR but recipe A
> finds the output from DM_VERITY_DEPLOY_DIR =3D "${DEPLOY_DIR_IMAGE}".
>
> Now both A and B images can use dm-verity-img.bbclass.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  classes/dm-verity-img.bbclass | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclas=
s
> index 7f35df5..2f212d6 100644
> --- a/classes/dm-verity-img.bbclass
> +++ b/classes/dm-verity-img.bbclass
> @@ -33,6 +33,10 @@
>  # is stored where it can be installed into associated initramfs rootfs.
>  STAGING_VERITY_DIR ?=3D "${TMPDIR}/work-shared/${MACHINE}/dm-verity"
> =20
> +# location of images, default current image recipe. Set to DEPLOY_DIR_IM=
AGE
> +# if non-verity images want to embed the .wks and verity image.
> +DM_VERITY_DEPLOY_DIR ?=3D "${IMGDEPLOYDIR}"
> +
>  # Define the data block size to use in veritysetup.
>  DM_VERITY_IMAGE_DATA_BLOCK_SIZE ?=3D "1024"
> =20
> @@ -107,10 +111,10 @@ process_verity() {
>      # Create wks.in fragment with build specific UUIDs for partitions.
>      # Unfortunately the wks.in does not support line continuations...
>      # First, the unappended filesystem data partition.
> -    echo 'part / --source rawcopy --ondisk sda --sourceparams=3D"file=3D=
${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verit=
y" --part-name verityroot --part-type=3D"${DM_VERITY_ROOT_GUID}"'" --uuid=
=3D\"$ROOT_UUID\"" > $WKS_INC
> +    echo 'part / --source rawcopy --ondisk sda --sourceparams=3D"file=3D=
${DM_VERITY_DEPLOY_DIR}/${DM_VERITY_IMAGE}-${MACHINE}.rootfs.${DM_VERITY_IM=
AGE_TYPE}.verity" --part-name verityroot --part-type=3D"${DM_VERITY_ROOT_GU=
ID}"'" --uuid=3D\"$ROOT_UUID\"" > $WKS_INC
> =20
>      # note: no default mount point for hash data partition
> -    echo 'part --source rawcopy --ondisk sda --sourceparams=3D"file=3D${=
IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.vhash" =
--part-name verityhash --part-type=3D"${DM_VERITY_RHASH_GUID}"'" --uuid=3D\=
"$RHASH_UUID\"" >> $WKS_INC
> +    echo 'part --source rawcopy --ondisk sda --sourceparams=3D"file=3D${=
DM_VERITY_DEPLOY_DIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}=
.vhash" --part-name verityhash --part-type=3D"${DM_VERITY_RHASH_GUID}"'" --=
uuid=3D\"$RHASH_UUID\"" >> $WKS_INC
>  }
> =20
>  verity_setup() {

Reviewed-by: Erik Schilling <erik.schilling@linaro.org>

