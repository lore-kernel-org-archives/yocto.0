Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.4362.1615524600803350093
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 20:50:00 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=K4hcCfOR;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0166F38C05B5
	for <yocto@yoctoproject.org>; Fri, 12 Mar 2021 04:49:58 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id kr3-20020a17090b4903b02900c096fc01deso10467419pjb.4
        for <yocto@yoctoproject.org>; Thu, 11 Mar 2021 20:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=UDJxLBmzHe3wuiTrabFETYnUlf9JuO40oao3W5F9zTw=;
        b=K4hcCfORQ46VmI/YOTLasAjBzP8vnw1rXq++N9OLgbSSDNKcUzlUDvdgnP88n/jOdP
         LIdMsdXTK3a1UoEjEBDEZx9fd6v4GItd5J9LhGMTrHVVegSTUj0qCuIpQBEFEMGZTC9Q
         A4IbFFkJt4CqR6ZePYz5WU28RRRF9oGVmsPdKEXHnN8DKeRW1KiTEAIjeHpvOMFbDVBd
         0SA/YwhmoZnrrJMSoR8Me5kyAG4l151chUWv5ISNl2gh2rFV6exNBHHElYhKVm5MK+Ca
         L+98wkM/RjSvi/FbnTJptBjezbI39cz2iJQK7M9xeRTGpCTyYfTMDZU3gvQtcTrwIcea
         NcCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=UDJxLBmzHe3wuiTrabFETYnUlf9JuO40oao3W5F9zTw=;
        b=OLyqZeizvnblZK+6dNh66Ai8Rz6jI5wYfnL3VKYZqH20p3RPVRCG0Nk91BHracRQeD
         wPXQ9iNNXhvjkKP4LN5n7tBTVEwsiRJSuxEstexCgE2HkUCVDXwjhRhYSzBbVTGVsF9H
         UeqEsAdq+Er0elgZGlCn4LsyLwKdbbP4RT2XBekz3nfn5yS1YmFxoUPSBsvEOFJ+2EuJ
         l/ltkipq56OuLmuHwn2RFwaMqfXcTT8/l3u9V58Rxzhftl+EjDQJKGO2Os0e1zQ+wf8J
         Nb7jXLLgU1tx7dMG+8afmrBQT+euNzJuCv3HGW2iMlRhn1W1GI2eUjWn8ABdNnLY4Y9W
         z10w==
X-Gm-Message-State: AOAM531e06YzATGY17ThR0/b1InP9v5PrauQw4cq5k9zvpJtRMzdkqAr
	0r6Rl9BXOQ+vtkGjSOePhOU=
X-Google-Smtp-Source: ABdhPJzIRSFxX26dYWy0WHv/7nnlhPtTUAufWx+mWfcVWt53aHxG9oW3Pf5fKpYRTXk80czR33Ea8w==
X-Received: by 2002:a17:90b:1090:: with SMTP id gj16mr12080285pjb.57.1615524596426;
        Thu, 11 Mar 2021 20:49:56 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:f56b:e4ef:635c:c0de? ([2601:202:4180:a5c0:f56b:e4ef:635c:c0de])
        by smtp.gmail.com with ESMTPSA id r23sm701426pje.38.2021.03.11.20.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 20:49:56 -0800 (PST)
Subject: Re: [meta-security][dunfell][PATCH 0/9] Some IMA/EVM fixes to dunfell branch
To: Ming Liu <liu.ming50@gmail.com>
Cc: yocto@yoctoproject.org, Sergio Prado <sergio.prado@toradex.com>,
 Ming Liu <ming.liu@toradex.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
 <18d24d31-6910-1da2-77f6-3b352302652c@gmail.com>
 <CALatG=6wGCkUKr_0EeLo01SC_XSKyjUb8B7a+Dpf8bkNNEzwFg@mail.gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <5b471604-c9b0-ce28-2113-5c605f9f121b@gmail.com>
Date: Thu, 11 Mar 2021 20:49:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CALatG=6wGCkUKr_0EeLo01SC_XSKyjUb8B7a+Dpf8bkNNEzwFg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

merged.

thanks.

On 3/10/21 2:31 AM, Ming Liu wrote:
> Hi,=C2=A0akuster808:
>
> I saw this patch set has been merged to gatesgarth, may I ask, any
> plan for dunfell? I am asking because dunfell is a LTS branch and many
> users are building their products based on it. Thanks!
>
> the best,
> thank you
>
>     series in build testing
>
>     -armin
>
>     On 3/2/21 6:57 AM, liu.ming50@gmail.com
>     <mailto:liu.ming50@gmail.com> wrote:
>     > From: Ming Liu <ming.liu@toradex.com <mailto:ming.liu@toradex.com=
>>
>     >
>     > Cherry pick some IMA/EVM fixes to LTS dunfell branch, with these
>     > patches applied, I could run a ima enabled image with
>     sysvinit/systemd
>     > on qemuarm/qemuarm64 and some NXP machines.
>     >
>     > Ming Liu (9):
>     >=C2=A0 =C2=A0ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to=
 empty
>     >=C2=A0 =C2=A0initramfs-framework-ima: fix a wrong path
>     >=C2=A0 =C2=A0ima-evm-keys: add recipe
>     >=C2=A0 =C2=A0initramfs-framework-ima: RDEPENDS on ima-evm-keys
>     >=C2=A0 =C2=A0meta: refactor IMA/EVM sign rootfs
>     >=C2=A0 =C2=A0README.md: update according to the refactoring in
>     >=C2=A0 =C2=A0 =C2=A0ima-evm-rootfs.bbclass
>     >=C2=A0 =C2=A0initramfs-framework-ima: let ima_enabled return 0
>     >=C2=A0 =C2=A0ima-evm-rootfs.bbclass: avoid generating /etc/fstab f=
or wic
>     >=C2=A0 =C2=A0ima-policy-hashed: add CGROUP2_SUPER_MAGIC fsmagic
>     >
>     >=C2=A0 meta-integrity/README.md=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 ++-
>     >=C2=A0 meta-integrity/classes/ima-evm-rootfs.bbclass | 33
>     +++++++++----------
>     >=C2=A0 .../initrdscripts/initramfs-framework-ima.bb
>     <http://initramfs-framework-ima.bb>=C2=A0 |=C2=A0 2 +-
>     >=C2=A0 .../initrdscripts/initramfs-framework-ima/ima |=C2=A0 3 +-
>     >=C2=A0 .../ima-evm-keys/ima-evm-keys_1.0.bb
>     <http://ima-evm-keys_1.0.bb>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 16=
 +++++++++
>     >=C2=A0 .../ima-evm-utils/ima-evm-utils_git.bb
>     <http://ima-evm-utils_git.bb>=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 =
+
>     >=C2=A0 .../ima_policy_hashed/files/ima_policy_hashed |=C2=A0 3 ++
>     >=C2=A0 7 files changed, 41 insertions(+), 21 deletions(-)
>     >=C2=A0 create mode 100644
>     meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
>     <http://ima-evm-keys_1.0.bb>
>     >
>

