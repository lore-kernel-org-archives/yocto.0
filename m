Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web12.10688.1616081527492448925
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 08:32:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eQPyh3zL;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id w195so1775206oif.11
        for <yocto@lists.yoctoproject.org>; Thu, 18 Mar 2021 08:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=QkORj+enIdskK6ij3+YO8JlXy7tBrS8DTRWsb2dujbw=;
        b=eQPyh3zLu/2N9BGI5558/zFCI32Y877mpvYy6b+zkyxJU5KMJFqjJ/GxWBjjMl+ifJ
         GBQKlYxxjBxcB9aBFGDvMZvn7poneNgiLIWF3imUIjtXIrvhj7Hb6waOnZD3YhF+Loru
         ZDouvfkLI3etAvYt3Ecy0TBC7XcfkzN9rzNJUvKyK+L+2HG6peEv9MMk3pNVUkS3GRkc
         692hIPUHNS/ZyXfRKaLvxgHtd/TyxygF7Kr+eTmIMQizMH0+QPC/Dp4M14BH6mda9FLX
         hY1LNrhGdAYUOFIng4Tsx1nFQnAW1ZrZJJ1Z/+0vQAt6Z4VgQOLr9gISt4qNdQNTxXNy
         j8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=QkORj+enIdskK6ij3+YO8JlXy7tBrS8DTRWsb2dujbw=;
        b=ENVw8VUPDsV9SmSe/gSOGOTbe5koeo3A+sr680NHQLu8mn9LUTrLVmvdpL9Us2w/1/
         ejx6NdGyM74J0+WeEk3iaI13RZNq6bERTq2vEqQ0/3hxlp/rH9gJNClN+aRy1jVZFiPI
         HuZdIS0tv+renoqO4jVS4kZyvdFqd20yKWcTq31s5OyBzQYWfb+rNhffOtu30AAQ5V+X
         2a5WcIGlb7HM1kt9dqn+8ia9Yrs2SvbunzRNNYEbccOvNMH8hGch0gToTBRvpAwmoBJ8
         jB8LCPR/i5pq2wlrIqJ23aBjX3rmadW7/RgJXnK6mHip8NBHStKi908CWfWMASPFMwqr
         kNTA==
X-Gm-Message-State: AOAM533yfTnntqfor9TA9i+nk+8NmgO/QYirkJqOMf/S4tRf7cgcV4BE
	9SEUaJ5dpGgCrfEaFx4wrA4q5WiYf8Q=
X-Google-Smtp-Source: ABdhPJy4Rhlymb04i7zOzp8qoohlQPSqaiv9xQ2MrVsoo1k2ECEZ71QFXI8SjHhcmdy9NAWHwDtXHQ==
X-Received: by 2002:aca:53cc:: with SMTP id h195mr3447847oib.16.1616081526484;
        Thu, 18 Mar 2021 08:32:06 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:3162:4312:5c6d:827f? ([2601:202:4180:a5c0:3162:4312:5c6d:827f])
        by smtp.gmail.com with ESMTPSA id g2sm521993otn.32.2021.03.18.08.32.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 08:32:06 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH v2] samhain: fix compile error on powerpc
To: yocto@lists.yoctoproject.org
References: <20210311093458.12043-1-kai.kang@windriver.com>
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
Message-ID: <fd88dfde-be07-9e88-4aa2-ad7b31d54453@gmail.com>
Date: Thu, 18 Mar 2021 08:32:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210311093458.12043-1-kai.kang@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged
thanks

On 3/11/21 1:34 AM, kai wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> It fails to comile samhain for powerpc(qemuppc):
>
> | x_sh_dbIO.c: In function 'swap_short':
> | x_sh_dbIO.c:229:36: error: initializer element is not constant
> |   229 |       static unsigned short ooop = *iptr;
> |       |                                    ^
>
> Assign after initialization of the static variable to avoid the failure.
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  ...-initializer-element-is-not-constant.patch | 28 +++++++++++++++++++
>  recipes-ids/samhain/samhain.inc               |  1 +
>  2 files changed, 29 insertions(+)
>  create mode 100644 recipes-ids/samhain/files/samhain-fix-initializer-element-is-not-constant.patch
>
> diff --git a/recipes-ids/samhain/files/samhain-fix-initializer-element-is-not-constant.patch b/recipes-ids/samhain/files/samhain-fix-initializer-element-is-not-constant.patch
> new file mode 100644
> index 0000000..72cb880
> --- /dev/null
> +++ b/recipes-ids/samhain/files/samhain-fix-initializer-element-is-not-constant.patch
> @@ -0,0 +1,28 @@
> +Fix error when compile for powerpc:
> +
> +| x_sh_dbIO.c: In function 'swap_short':
> +| x_sh_dbIO.c:229:36: error: initializer element is not constant
> +|   229 |       static unsigned short ooop = *iptr;
> +|       |                                    ^
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Kai Kang <kai.kang@windriver.com>
> +---
> + src/sh_dbIO.c | 3 ++-
> + 1 file changed, 2 insertions(+), 1 deletion(-)
> +
> +diff --git a/src/sh_dbIO.c b/src/sh_dbIO.c
> +index b547ac5..23a9621 100644
> +--- a/src/sh_dbIO.c
> ++++ b/src/sh_dbIO.c
> +@@ -226,7 +226,8 @@ static unsigned short *  swap_short (unsigned short * iptr)
> +   else
> +     {
> +       /* alignment problem */
> +-      static unsigned short ooop = *iptr;
> ++      static unsigned short ooop;
> ++      ooop = *iptr;
> +       unsigned short hi   = (ooop & 0xff00);
> +       unsigned short lo   = (ooop & 0xff);
> +       ooop = (lo << 8) | (hi >> 8);
> diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
> index 6a2eb08..0148e46 100644
> --- a/recipes-ids/samhain/samhain.inc
> +++ b/recipes-ids/samhain/samhain.inc
> @@ -18,6 +18,7 @@ SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
>             file://samhain-avoid-searching-host-for-postgresql.patch \
>             file://samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch \
>             file://fix-build-with-new-version-attr.patch \
> +           file://samhain-fix-initializer-element-is-not-constant.patch \
>             "
>  
>  SRC_URI[sha256sum] = "3e57574036d5055e9557ec5095818b419ea6c4365370fc2ccce1e9f87f9fad08"
>
> 
>

