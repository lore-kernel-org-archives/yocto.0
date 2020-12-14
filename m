Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.36735.1607961905204909605
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 08:05:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=VGofmL6M;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7298438C088E
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2020 16:05:04 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id w5so11957589pgj.3
        for <yocto@yoctoproject.org>; Mon, 14 Dec 2020 08:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=pCwCPKJGTP3YuOtKaNe9XLN0+u2E8IpWP7uGlzwesj0=;
        b=VGofmL6MlCJ8NGK0+TMd52maX5XCKzgqNroWy4Dko/rpDI/DyJv6F5L2lrPWvftvgN
         4zWKGuxt3Cfwh/Ecgs4CNnrtS3WtkthYRKLR/+EvCF/6saJnBkBWZkvhJy2T4HIJTfyU
         PC+Zhvz5L56RvBPCwEB9r0PR0ZdMcn00hx+IBanUOArHuTpRkqaj+Xb0uoFgT2O27jH2
         gnz1u3bj76ygxmhkIXOhakci8NblTgSbl9xQ+tEkoNR+VahZ67zHeOmHS74GumaRFHiM
         8YX+XD27YWI5T+09+RTZrkiM9JBrpEAWzG5MKqqLjD315MISsS9/cDZHdqrlcwRhrJvE
         cm+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=pCwCPKJGTP3YuOtKaNe9XLN0+u2E8IpWP7uGlzwesj0=;
        b=pGnL917a/15IWzQK14aa+dhPW+ApjhNQkBdU3pDbLzjsCjKIrMSswvwJC1CawYJvPB
         c2IrDPryUbZx7Z7HAKTZ+sdkD/6dCXzmllPPLtIjVF0nLSMwQws1mHchpcDURwHMCzNk
         n1Eb7iU9/bbKYJn+sR9jW/bOalGHxJ2cXWOuuImu+qtmeV4fYeC+Le5VaLb2ScaGwe+N
         BTHsPbB8bwA5VPh8ttU66+b3A6fhwBLXhf1GH5aWOdSOAcPXnOgiRNAXxx1Su7Gf+Sqw
         LTTIeFZKa8YMDqZK+vkFZN2ZxiPMVBRwhkA6I1Kg0Vxgd7iruN5adRz+AuR3EaZBt0wY
         oStA==
X-Gm-Message-State: AOAM532mxAp6slTitwLqpLqpkME1bEgdq7TZ/kAEm909FarcgU3j08aA
	8swomiWsgGZ2pczj0DyxMYPwascu6aNLag==
X-Google-Smtp-Source: ABdhPJzlHenKXgNbkHOwg0HeH3DhAuwOMPwvGjKDSPOx6raU988rAhdj0vxmL852kfMcoLEQ/rJRkA==
X-Received: by 2002:a63:a550:: with SMTP id r16mr24855605pgu.21.1607961903603;
        Mon, 14 Dec 2020 08:05:03 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:517b:4767:4af3:9059? ([2601:202:4180:a5c0:517b:4767:4af3:9059])
        by smtp.gmail.com with ESMTPSA id v26sm3700713pfm.203.2020.12.14.08.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 08:05:02 -0800 (PST)
Subject: Re: [yocto] [meta-tensorflow] maintained?
To: Marek Belisko <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>
References: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
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
Message-ID: <ee52eab8-2022-8ee3-2dca-f771dcf3e5cd@gmail.com>
Date: Mon, 14 Dec 2020 08:05:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 12/14/20 4:56 AM, Marek Belisko wrote:
> Hi,
>
> I'm l;booking for a tensorflow recipe and forum that meta-tensorflow
> have support for it (also saw that gatesgarth branch is there) but I
> cannot build tensorflow + tensorflow seems to be a bit outdated.
> Anybody know if this layer is maintained?=20

There are two maintainers listed in the maintainer.md file.=C2=A0 You may
want to ping them.

-armin
> Thanks.
>
> BR,
>
> marek
>
>
>=20
>

