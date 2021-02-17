Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.5019.1613551880675876441
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 00:51:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GnSOmpal;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id n10so2579870wmq.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 00:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C75/1pPVIkF7GANB3fSWkny9cz5TzQv5/Ff0mALOu/Y=;
        b=GnSOmpalnT0qd5aYUCyru3BWUeeBADUCotBXTALg3Wjw0E11Ap4U/fbpDz90CKRwSc
         qv8PFAQPjPL85PDK/SF6LtlE/+JUK64UYqm1tFOI+NgKCeboNjiYAZf8mrW/uIrrbiWY
         5dHLaGJo4vZ+AaLAfY/rIB9drR9Wya8hQFdJIEI7qU68qjavhkkdZIjosZYg5pjJXmv7
         ol4hiI1ox66cbUf6gyrpYwufeQH74BtcqM7mW74YV4FBpGlK0DfDC3awLJLBtu99LGfr
         f+leLfnGXYzHy9YwGElINNYh2c3btMKsy3V1PO4kE+BCnObu5C8eZc61Ynab9NXSGKo6
         4pag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C75/1pPVIkF7GANB3fSWkny9cz5TzQv5/Ff0mALOu/Y=;
        b=WLMb5459T5LxrD/VkstuqYKZu1kESeDVcwXwqje8xpz2bq8aT0Aoc+mW+ToCP5qg50
         QYAHcMjy2YXjhod0RRKqvcB8TTtruDvtVmf26Zp1p3JV/c77xCfGmov9j1CxVxZHf06U
         +H4A4A+fPQTsWbrUZsEmntSsmAn5MnYpKe1ew1as5nkLmiNJLiSOzEEkcPwOEtICc/n+
         5nnRzX/mKppmk6R4tJOXiTMlLORnQlExheTY1aKCspE8FQCphvg2ynwAgTnDDMWm5UL3
         pTjwfPKsQQ5MO+5L96pI2yopqs8y19+bxGZ89fYGeI2GccdvhU/IgNYl2+Sl/meq0VRD
         1lyw==
X-Gm-Message-State: AOAM530MN21aXDXG3Zsk4WEy+1yAGi7EgbpzWdz2hHbam7ZjGNrVmWb7
	GpkHu4iD2rDl1ICnkJUgXQkNBmbuxFM=
X-Google-Smtp-Source: ABdhPJzLH/DLXZVG0cp16D0nND8ymjw4ObPsl09HCjiwTx+ZkiKsF3wFFOReY+nTnotsF2Of+TK6bg==
X-Received: by 2002:a05:600c:4ec6:: with SMTP id g6mr6304494wmq.2.1613551879150;
        Wed, 17 Feb 2021 00:51:19 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-149-189.home.otenet.gr. [2.86.149.189])
        by smtp.gmail.com with ESMTPSA id o124sm1890661wmo.41.2021.02.17.00.51.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 00:51:18 -0800 (PST)
Subject: Re: [yocto] Regarding Mender integration
To: U RAVI KUMAR <uppadaravi2511@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <166309ED54D39BDA.14473@lists.yoctoproject.org>
 <CACX=-dXKrvx1R_VebcaGNd9W5Yp2XhNZp9rxG_0rS44uJ=qo8g@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <d602a58e-4990-7e56-3114-e35f5803a8d9@gmail.com>
Date: Wed, 17 Feb 2021 10:51:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CACX=-dXKrvx1R_VebcaGNd9W5Yp2XhNZp9rxG_0rS44uJ=qo8g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

Please see my comments in-line.

On 16/02/2021 19:48, U RAVI KUMAR wrote:
>     I have some issues while integrating the mender on the yocto
>     project.I have included meta-mener-core,meta-mender-raspberrypi
>     layers.And iam getting the following error:
> 
>     ERROR: u-boot-1_2020.07-r0 do_patch: Command Error: 'quilt --quiltrc
>     /home/ravi_uppada/work/vm/sato/poky/build/tmp/work/raspberrypi4_64-poky-linux/u-boot/1_2020.07-r0/recipe-sysroot-native/etc/quiltrc
>     push' exited with 0  Output:
>     Applying patch 0001-configs-rpi-enable-mender-requirements.patch
>     patching file configs/rpi_0_w_defconfig
>     Hunk #1 FAILED at 19.

...

This looks like the patch you/mender try/tries to apply does not work 
with your u-boot version.[0]

[0] 
https://github.com/mendersoftware/meta-mender/tree/master/meta-mender-core/recipes-bsp/u-boot

Which Yocto version do you use?

Which Mender version do you use?

You could look into creating your own Mender integration[1] instead of 
the mender class.

[1] 
https://docs.mender.io/system-updates-yocto-project/board-integration/bootloader-support/u-boot/manual-u-boot-integration

I think the right place to ask Mender specific questions is here[2].

[2] https://hub.mender.io/

Regards,

Robert


