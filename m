Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.7652.1614177010568841751
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Feb 2021 06:30:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tDrqZXi/;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5881A38C0823
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2021 14:30:09 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id a24so1280413plm.11
        for <yocto@yoctoproject.org>; Wed, 24 Feb 2021 06:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=bJvxN9tOO3SYieBNZ5wQABpHLSl4NOguh7FhwduzRc8=;
        b=tDrqZXi/b/1OwJU/KthZNel8ts+k3rMY63hK/jm3iLwgYUy+XjcwhiMNKbSVxwT452
         wXR+n1zCLqbTB2jVupbFbxbRFRiEP+2m2L2BFqY0hd5vxVLkX+wXOv8eUsR+tY/PK79R
         1MQCtbTeLd+KY1+fiN6ybMMeBxo/znW8Ntxnia42IufbBXUCaU7yzUb97NM6GaqiGyhJ
         QQJbTBRUpPjp3E5+P2luDkjxhyFs8PL4xeTxXwMiCANeumKNma9HBd5/6HlD0KgpsP1S
         hWLMw9YvEwamLG/rRt4VkmWB1H37hZUH+EFqSsE+UT6L/AkzNryfiPxVaC4ADxV6bSKN
         UoFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=bJvxN9tOO3SYieBNZ5wQABpHLSl4NOguh7FhwduzRc8=;
        b=hU7actbntu07nN7ydCI3Q3TceEXksOwiX7lF5VTYgJHXYZDyxqkS/OD2EwncnW6U6B
         07J3z6Mbq3bI7RdWir0Uft0BKoOJYr/NNHFHwuxf3zVPoXgSlb3bMCuEj9lDfw4OCZbq
         M8Djhou8CrtDM9cYwz1DVTxCK7rJIjT1NpaTC4ujjRanXAaXOmL6yfI1WHEMFsa+xtPF
         +ef5/v3WZqW6jwMU52NcPDJ/dW1GDQk1UBNZScKUjX84NDZMt6zoUb0pyxRuoYTxkPth
         yX+Ru5Is7R065I+E2GfKHSjPmEfd+6001aRW1bGTx4cKyferAhfhEVaAZjoPP8MqZ2FL
         sO0Q==
X-Gm-Message-State: AOAM533Cf8hvOdvCrjlkBIqhoNYMfuKQPyd/sqrpgEMgvGgJQE3rtkSN
	YyZ/FEW8KZachbzOIDXVV9U=
X-Google-Smtp-Source: ABdhPJy5APtBxLaC9xwSv28ZhrtVyubKDX45rzOCy6gEcg/XXQhBDq6iv58FaPPMcnFu7ARaHHweWQ==
X-Received: by 2002:a17:90a:ab8b:: with SMTP id n11mr4645053pjq.109.1614177008803;
        Wed, 24 Feb 2021 06:30:08 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:8cb5:e0e1:ba5f:6619? ([2601:202:4180:a5c0:8cb5:e0e1:ba5f:6619])
        by smtp.gmail.com with ESMTPSA id n4sm3037952pfa.188.2021.02.24.06.30.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 06:30:08 -0800 (PST)
Subject: Re: [meta-security] [PATCH V2 0/8] Some fixes for IMA/EVM
To: liu.ming50@gmail.com, yocto@yoctoproject.org
Cc: sergio.prado@toradex.com, dbaryshkov@gmail.com
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
From: "akuster" <akuster808@gmail.com>
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
Message-ID: <caf4ca06-f84e-05bb-f206-5a82d80f7916@gmail.com>
Date: Wed, 24 Feb 2021 06:30:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged

On 2/20/21 4:18 AM, liu.ming50@gmail.com wrote:
> From: Ming Liu <liu.ming50@gmail.com>
>
> Changes in patch set V2:
>
> 1 Split patches as suggested by Dmitry Baryshkov.
>
> Ming Liu (8):
>   ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empty
>   initramfs-framework-ima: fix a wrong path
>   ima-evm-keys: add recipe
>   initramfs-framework-ima: RDEPENDS on ima-evm-keys
>   meta: refactor IMA/EVM sign rootfs
>   README.md: update according to the refactoring in
>     ima-evm-rootfs.bbclass
>   initramfs-framework-ima: let ima_enabled return 0
>   ima-evm-rootfs.bbclass: avoid generating /etc/fstab for wic
>
>  meta-integrity/README.md                      |  4 ++-
>  meta-integrity/classes/ima-evm-rootfs.bbclass | 33 +++++++++----------
>  .../initrdscripts/initramfs-framework-ima.bb  |  2 +-
>  .../initrdscripts/initramfs-framework-ima/ima |  3 +-
>  .../ima-evm-keys/ima-evm-keys_1.0.bb          | 16 +++++++++
>  .../ima-evm-utils/ima-evm-utils_git.bb        |  1 +
>  6 files changed, 38 insertions(+), 21 deletions(-)
>  create mode 100644 meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
>

