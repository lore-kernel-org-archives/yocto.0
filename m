Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7996.1614920053490848798
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 20:54:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YfJlRjym;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 981D038C065C
	for <yocto@yoctoproject.org>; Fri,  5 Mar 2021 04:54:12 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id d9so603050ote.12
        for <yocto@yoctoproject.org>; Thu, 04 Mar 2021 20:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=dUO/EOxR4fGez233knoV95GnlzH7iaIB/kMfOVv+x2E=;
        b=YfJlRjymutlL8ybkVxVBcJ/JgaO3fZM0Yff8jk7Zo/sPgxTitN3MciSxtxpB/WHf+q
         JWKeO1bv8qgl/r8ktAUSYBYCGPC7Bdp8xU51AbpVDoz9SOFHeptfx5jVgnIbF9k9qgtk
         bUxo04MIHhFy3EmJB8lAKk4+QwVm4KX+2n3tgRvHomV99ngyqfrJo7YkLpijXSbuz6zg
         ymbqp0nJPqU9wywNQeLhlNP7VtwKV9YqxRos7Jb7+t8lXdEwv+hO2f7McF8x9k0ewsPP
         OwsBxkGDY3xvVcsCdHEMoLdvtg86vxbiSAeqKHXUdXLTUnGUXhDlcBUHMFx6BW7mOWQ9
         HRcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=dUO/EOxR4fGez233knoV95GnlzH7iaIB/kMfOVv+x2E=;
        b=HgXNW75JPYYE5/AoZ3gF/zKDRjo2ccW9pvM5gZZA9JUXP+ArMobE+nEDghalJ2PWfF
         00jCH7I/UCTxQga0MgJh2RqZP5rV9decE7ctz8W3Ob5LUVS5B9JGBDxbKCqO85eAGntV
         7YFqcZ8MSCkughqndaKSEGIb6ZKRg9qHcGHe549x4UL9LnCpcAYbTJFKy7fcpGRRbCPA
         we1n5GFpi4E3jS5GgYYNogaOKr+dPQs8gXU/n4fRrHFZpQeWjj5lPBfxIwf7mv7JDJPd
         dxgdV60xOy3RRpKuBNaYoEAY6fjJLXnHEUcNuzzP74R/JFiOXV2DoF5Ry/xjtFB6dpxp
         GNpw==
X-Gm-Message-State: AOAM5305PkzFit0ZflJEZy84C3cw8e70W8RZF1UnYb6jtbTO+9f0xhIL
	bDaTKHATPaQzDMUkOWToCkE=
X-Google-Smtp-Source: ABdhPJxhtj+gOQVJoUyPoNAshLcyqnW0E8sd6OK3tfKq3lOCoRkK3LIFk7wggJen3NyZOQKImQY8HQ==
X-Received: by 2002:a9d:226a:: with SMTP id o97mr6476868ota.362.1614920051780;
        Thu, 04 Mar 2021 20:54:11 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:819c:344d:6859:4a23? ([2601:202:4180:a5c0:819c:344d:6859:4a23])
        by smtp.gmail.com with ESMTPSA id e17sm391400otl.75.2021.03.04.20.54.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 20:54:11 -0800 (PST)
Subject: Re: [meta-security][dunfell][PATCH 0/9] Some IMA/EVM fixes to dunfell branch
To: liu.ming50@gmail.com, yocto@yoctoproject.org
Cc: sergio.prado@toradex.com, Ming Liu <ming.liu@toradex.com>
References: <20210302145745.1891826-1-liu.ming50@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <18d24d31-6910-1da2-77f6-3b352302652c@gmail.com>
Date: Thu, 4 Mar 2021 20:54:10 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210302145745.1891826-1-liu.ming50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

series in build testing

-armin

On 3/2/21 6:57 AM, liu.ming50@gmail.com wrote:
> From: Ming Liu <ming.liu@toradex.com>
>
> Cherry pick some IMA/EVM fixes to LTS dunfell branch, with these 
> patches applied, I could run a ima enabled image with sysvinit/systemd
> on qemuarm/qemuarm64 and some NXP machines.
>
> Ming Liu (9):
>   ima-evm-utils: set native REQUIRED_DISTRO_FEATURES to empty
>   initramfs-framework-ima: fix a wrong path
>   ima-evm-keys: add recipe
>   initramfs-framework-ima: RDEPENDS on ima-evm-keys
>   meta: refactor IMA/EVM sign rootfs
>   README.md: update according to the refactoring in
>     ima-evm-rootfs.bbclass
>   initramfs-framework-ima: let ima_enabled return 0
>   ima-evm-rootfs.bbclass: avoid generating /etc/fstab for wic
>   ima-policy-hashed: add CGROUP2_SUPER_MAGIC fsmagic
>
>  meta-integrity/README.md                      |  4 ++-
>  meta-integrity/classes/ima-evm-rootfs.bbclass | 33 +++++++++----------
>  .../initrdscripts/initramfs-framework-ima.bb  |  2 +-
>  .../initrdscripts/initramfs-framework-ima/ima |  3 +-
>  .../ima-evm-keys/ima-evm-keys_1.0.bb          | 16 +++++++++
>  .../ima-evm-utils/ima-evm-utils_git.bb        |  1 +
>  .../ima_policy_hashed/files/ima_policy_hashed |  3 ++
>  7 files changed, 41 insertions(+), 21 deletions(-)
>  create mode 100644 meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
>

