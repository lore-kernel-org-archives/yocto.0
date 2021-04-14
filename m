Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web10.13394.1618408595508309325
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 06:56:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKAP5GaG;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id t22so14496797pgu.0
        for <yocto@lists.yoctoproject.org>; Wed, 14 Apr 2021 06:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=tuNX6X5ye8cXc9Fd1lgVUbrlkWnRPx+KLmT4Lr0dp08=;
        b=jKAP5GaG9hkappe6Q2lFIyiU3gyln9rD+kb986kaZQP3qItGz6US1LJDRUpIDPHYms
         gqou7if+ddUvIg7JYq1K4GcwJ7BdAYvs1OlENskNWs8aSrmyMCPCdmMlI7X7Oiv8l9t9
         QLKBTEkXqw6aFlW++dhy1bjz8igP3fAo/rNkswQhg/f4f5S+FzFvrhVPfxq3R1p9C2ya
         4y0fUV7xLhU9PojQ/RDFn1aSLaNiEXSUjFHbz+uvIZKC6+rS4mOB/yedpTMFHDQd3Tnn
         l0mxSO/49wp8dToHuOeov4JgT/TqLxqpa0i1xKQG8QTB8VFZnyfsvWmmyAPfU7E9PSPj
         S8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=tuNX6X5ye8cXc9Fd1lgVUbrlkWnRPx+KLmT4Lr0dp08=;
        b=GqQIzKbaEHbgmwQOBAnMBbT2I7+N5ooOSkAwnpvH6hEUrxywmPI2ryFsQFQSzkNjtF
         yds/QWiN5EMZM35YmvZRhAzZm6IT+53SI5rh7NYdWCaCRIGCEEnXYBrQapeuEs6N5Eyo
         /QpN0Yvm000AUFVB1ihbB+YOAiBH/qPS+CUYLN/ova6C6wUyGeAEpWzpktGDcK8E6JDq
         ivQwVrSmjSqrXdg1/1Nnpn6zLKjNFuUtdz6AqDdRzo3+zSTj7XJ6OH9MOn9mGGZO3V2m
         9bcXkTwJbkGGgtQ4sIuSL4l3ZCT4tGeYAF6pgRMyDtUv0wK5LBDNaTjcT0dHo9D/fzgB
         +90g==
X-Gm-Message-State: AOAM533yXppCBicMFs3xBU/vk0eKE9x/4W1H0eqgTqxK6l0PpswKvPj4
	TMdY9BwT7zRZ3BjXGtLOC6RAMWttoSvaQA==
X-Google-Smtp-Source: ABdhPJxchGU5dwlv8RlIMI90hTD221BuxjvYdFZUEznCw2wVIJliM8HivQjGMErvGlpY2yOTjY1AHA==
X-Received: by 2002:a63:3704:: with SMTP id e4mr6571551pga.125.1618408594772;
        Wed, 14 Apr 2021 06:56:34 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:2d0c:893d:5593:863c? ([2601:202:4180:a5c0:2d0c:893d:5593:863c])
        by smtp.gmail.com with ESMTPSA id 8sm11690957pfw.118.2021.04.14.06.56.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:56:34 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] initramfs-framework-ima: introduce IMA_FORCE
To: yocto@lists.yoctoproject.org
References: <20210408183814.387126-1-liu.ming50@gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
 FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
 vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
 ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
 IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
 g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
 rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
 FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
 wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
 t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
 aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
 oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
 AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
 mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
 ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
 vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
 JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
 EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
 dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
 /mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
 PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
 ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
 8CS2NxU=
Message-ID: <3f2f0dc3-2d87-a43e-d04c-f11cdb2c26e3@gmail.com>
Date: Wed, 14 Apr 2021 06:56:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210408183814.387126-1-liu.ming50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged,
Thanks

On 4/8/21 11:38 AM, Ming Liu wrote:
> From: Ming Liu <liu.ming50@gmail.com>
>
> Introduce IMA_FORCE to allow the IMA policy be applied forcely even
> 'no_ima' boot parameter is available.
>
> This ensures the end users have a way to disable 'no_ima' support if
> they want to, because it may expose a security risk if an attacker can
> find a way to change kernel arguments, it will easily bypass rootfs
> authenticity checks.
>
> Signed-off-by: Sergio Prado <sergio.prado@toradex.com>
> Signed-off-by: Ming Liu <liu.ming50@gmail.com>
> ---
>  .../initrdscripts/initramfs-framework-ima.bb             | 5 +++++
>  .../initrdscripts/initramfs-framework-ima/ima            | 9 +++++++--
>  2 files changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
> index 77f6f7c..6471c53 100644
> --- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
> +++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
> @@ -14,6 +14,9 @@ LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384
>  # to this recipe can just point towards one of its own files.
>  IMA_POLICY ?= "ima-policy-hashed"
>  
> +# Force proceed IMA procedure even 'no_ima' boot parameter is available.
> +IMA_FORCE ?= "false"
> +
>  SRC_URI = " file://ima"
>  
>  inherit features_check
> @@ -23,6 +26,8 @@ do_install () {
>      install -d ${D}/${sysconfdir}/ima
>      install -d ${D}/init.d
>      install ${WORKDIR}/ima  ${D}/init.d/20-ima
> +
> +    sed -i "s/@@FORCE_IMA@@/${IMA_FORCE}/g" ${D}/init.d/20-ima
>  }
>  
>  FILES_${PN} = "/init.d ${sysconfdir}"
> diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima
> index cff26a3..8971494 100644
> --- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima
> +++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima
> @@ -2,11 +2,16 @@
>  #
>  # Loads IMA policy into the kernel.
>  
> +force_ima=@@FORCE_IMA@@
> +
>  ima_enabled() {
> -    if [ "$bootparam_no_ima" = "true" ]; then
> +    if [ "$force_ima" = "true" ]; then
> +        return 0
> +    elif [ "$bootparam_no_ima" = "true" ]; then
>          return 1
> +    else
> +        return 0
>      fi
> -    return 0
>  }
>  
>  ima_run() {
>
> 
>

