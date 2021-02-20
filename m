Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11949.1613853410413647158
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 12:36:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=i0WmoqWX;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A89AF38C06AF
	for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 20:36:49 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id o38so7608268pgm.9
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 12:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=wSQG8tIBO0i31/SBV26mYq+WDNbp+2KyRDixpRTFD58=;
        b=i0WmoqWX+rAqZdgNLb4NG1BSLporGE2ehhV8Qx4qQwf9bfBK6KKruwEBnNllemXQ5s
         2P7cTxBppnSJ3MOgTnySgxh95sR3ID786ngIcot2iIrvM0/YID21Ae6S7a95toqGFlf7
         90e3Wmrh9Vblz9WzkLhV628YaGZX/MIUGacuTlr2AzcgodUX4P/j+YgRfZgfSsCYIztX
         QRVx1UBiCWl9GFOfMRXdv7T1sbMQpRXmi4YRgkZw7Czurj9yRWq8XFuoEMqrsBvBAkt4
         kzesAqPUZhXgs9uUkuqznhkM6rDuKaUF6JzSaPbeQt7SelphbxHl4sgbqNq5oxXr6tue
         xX0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=wSQG8tIBO0i31/SBV26mYq+WDNbp+2KyRDixpRTFD58=;
        b=JPf4IfyM7ShsSenKboBGR6oCEH/5Gn1rRGxFlQyzjgF8mhNF34L1Cj6M+h9UJXRBOb
         2CCTqJSoaTmuR9FIgAWirIEX4zf/t6BOAr08fN34z3rwN22GRUMIizuT8Z3jjAhd8Bjo
         9gNPXXVft+nRPzvZ88fpv3KWSupBo7bI5BnY7DQstlexSqpf7DRrQjmzBmx/Re+nwDGM
         QSf+M74cRQzCqq7fAgpYIZcKo5ziSMYhg/xhQah+xXLRStBn6mV/kW6nWu8B/khKK+Qg
         yI5/YNW9AUlvNz6TRMXlsVNz3mRPa3IF8Y67+NqYI1PkojSOp7uWRv5KLYuj6G1uiBGU
         sRqw==
X-Gm-Message-State: AOAM531Evl/Fc6kfFDdpLoJSr/c3YxEICz0tEeXKV9/MV+thFFvcIzhS
	DkRGnpqKL8Y55YFx2zUlBgA=
X-Google-Smtp-Source: ABdhPJw4HtGL98YlzWAyNP6uNtN7iO0SjvGpKE0WeTisTVeFHPoOLP3qp+MX7IEwWa4LQTAHwqpY/A==
X-Received: by 2002:a65:52c6:: with SMTP id z6mr1365796pgp.132.1613853409040;
        Sat, 20 Feb 2021 12:36:49 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:70a2:885b:8c45:14d6? ([2601:202:4180:a5c0:70a2:885b:8c45:14d6])
        by smtp.gmail.com with ESMTPSA id lw17sm11714161pjb.11.2021.02.20.12.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 12:36:48 -0800 (PST)
Subject: Re: [meta-security] [PATCH V2 0/8] Some fixes for IMA/EVM
To: liu.ming50@gmail.com, yocto@yoctoproject.org
Cc: sergio.prado@toradex.com, dbaryshkov@gmail.com
References: <20210220121822.1873572-1-liu.ming50@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <8825c9a1-89ed-a765-685b-0be1b4342ebd@gmail.com>
Date: Sat, 20 Feb 2021 12:36:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210220121822.1873572-1-liu.ming50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 2/20/21 4:18 AM, liu.ming50@gmail.com wrote:
> From: Ming Liu <liu.ming50@gmail.com>
>
> Changes in patch set V2:
>
> 1 Split patches as suggested by Dmitry Baryshkov.
Thanks for for the changes.
This series is now being build tested etc.

Many thanks,

- armin

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

