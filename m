Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
 by mx.groups.io with SMTP id smtpd.web12.19990.1599925818101598308
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Sep 2020 08:50:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=klMqUfiq;
 spf=pass (domain: gmail.com, ip: 209.85.210.196, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f196.google.com with SMTP id c196so9486372pfc.0
        for <yocto@lists.yoctoproject.org>; Sat, 12 Sep 2020 08:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=x9HDjoTHSMek/Y7Rmok/TGnRtRgfdWrgbdivrnX/f04=;
        b=klMqUfiqsRHGz1if5cAQATdVwLfnZGVx1TJXraabMEaV3+SwK/vBiambCHBeeMkto+
         Ksa97yfXy8yGOIvHe1VZiKkQAarlGjQQ6s51MTtlqMclCnxaPSWCvp+t47phAWeUTBZ/
         qsEUIYcLrggF1kJfGFVCbB/QRlTD+41rDr9ZIzbkemtqNCMQu3iDfImVo09aOr9dgYSB
         7p8FcOvzXvLFAKPHQK/QU2xPVsGMaed4PHpYgx+W2uCJBjeN8Jc5GtTHB7IEzv79AWCr
         bnMWcgHYgmQA/hW7mzLGEKy1svEVvkDjp8ZklKpoY5+0F9nBig7GRSH+gWBhQq+TLtBR
         N2QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=x9HDjoTHSMek/Y7Rmok/TGnRtRgfdWrgbdivrnX/f04=;
        b=LJXxmIqtNhLWUIG0VARFxlzvCEcB5ai8g5WoJ4nn8/PctGwDVkIWN3cstGjcjeRvsi
         5t24G6rrDzmuhyRnWFQxu0a20X+fU6zII0M/V5dfXIx0/R8HEiYmvm2+fiMFmUHf85uq
         8+O20Hc0Qcm6EXXyogofgvXVh/2rcdZqGsjpN9tpZiGyKT2aLaI77lBi7hXhP5QVOpLR
         7V/Zv3ipYbc3C7c7EQ9pgEPh9M1+OHCCiBNzDf3d+cCtq2EeJlbBwtg64Jhqo4THLyTF
         lWhK/hFA5TnkRgBdGTBfoM9D5C6cHZus1AS77KVwZBDmYVhpn3G2NE+3vp1wYM8jTVaS
         UGAw==
X-Gm-Message-State: AOAM530ojeXGCo55JFI1X194+vlXxJfHbLDlT+lONzSFyB+0p0kccqkL
	yTzXjON4s3yWCAwlX2jBTSE=
X-Google-Smtp-Source: ABdhPJxGEVR+mZ2vsw4LO6sXM7wu6YxIgkwewE/8QkzYfPScfb9B6RXt/bDJcPE6RoH4PpWU8hw8Sw==
X-Received: by 2002:a63:3483:: with SMTP id b125mr5218910pga.24.1599925817511;
        Sat, 12 Sep 2020 08:50:17 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:e1aa:69c3:1411:f726? ([2601:202:4180:a5c0:e1aa:69c3:1411:f726])
        by smtp.gmail.com with ESMTPSA id l7sm4332955pjz.56.2020.09.12.08.50.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 08:50:17 -0700 (PDT)
Subject: Re: [meta-security][PATCH 0/6] Some small dm-verity improvements
To: Niko Mauno <niko.mauno@vaisala.com>, yocto@lists.yoctoproject.org
Cc: brgl@bgdev.pl, bgolaszewski@baylibre.com
References: <20200907171737.108284-1-niko.mauno@vaisala.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <d3aa515a-4d75-fd30-4069-3e3a684f4c92@gmail.com>
Date: Sat, 12 Sep 2020 08:50:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907171737.108284-1-niko.mauno@vaisala.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 9/7/20 10:17 AM, Niko Mauno wrote:
> This set of patches addresses some small issues in dm-verity rootfs
> facility, which were observed while making use of dm-verity-img.bbclass
> to generate dm-verity rootfs images for real arm-based hardware. For
> purposes of establishing this changeset, the default 'qemux86-64'
> machine was used as a reference.
>
> During testing/development the following additional settings were
> defined in local.conf:
>
>   DM_VERITY_IMAGE = "core-image-minimal"
>   DM_VERITY_IMAGE_TYPE = "ext4"
>   IMAGE_CLASSES += "dm-verity-img"
>   INITRAMFS_IMAGE_BUNDLE = "1"
>   INITRAMFS_IMAGE = "dm-verity-image-initramfs"

I have used the above and added it to the gitlab-ci.

> And the following command line was used to test the changes with qemu:
>
>   KERNEL=.../build/tmp/deploy/images/qemux86-64/bzImage-initramfs-qemux86-64.bin \
>     QB_NET=none \
>     runqemu \
>     nographic \
>     qemuparams="-nic none" \
>     qemux86-64 \
>     .../build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-*.rootfs.ext4.verity

Thanks for the example. I should help in creating a selfttest.

series merged.

-armin
>
>
> Niko Mauno (6):
>   dm-verity-img.bbclass: Fix bashisms
>   dm-verity-img.bbclass: Reorder parse-time check
>   dm-verity-image-initramfs: Fix do_rootfs dependency
>   dm-verity-image-initramfs: Ensure verity hash sync
>   dm-verity-image-initramfs: Bind at do_image instead
>   linux-yocto(-dev): Add dm-verity fragment as needed
>
>  classes/dm-verity-img.bbclass                    | 12 ++++++------
>  recipes-core/images/dm-verity-image-initramfs.bb |  7 +++++--
>  recipes-kernel/linux/linux-yocto-dev.bbappend    |  1 +
>  recipes-kernel/linux/linux-yocto_5.%.bbappend    |  1 +
>  4 files changed, 13 insertions(+), 8 deletions(-)
>

