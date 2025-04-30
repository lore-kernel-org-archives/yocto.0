Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF66C369DC
	for <webhook@archiver.kernel.org>; Wed, 30 Apr 2025 09:45:19 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.12987.1746006316765331426
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Apr 2025 02:45:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=cikPefM7;
 spf=pass (domain: linaro.org, ip: 209.85.167.45, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54d6f93316dso8034767e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 30 Apr 2025 02:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746006315; x=1746611115; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UmsQocl3bHARv+SFZcl1euUz8wbE8H8Ojs/9srBbKpY=;
        b=cikPefM7O1Il331sOnEbTSpxE0EpdfGOASDI17ID0CkmL1VVjrRRU/I4Gbm7Wz2mUc
         vX8/ISJXlOt0Z8W+ODEgaeRB95Z+ve3hOGai3sFnjmLDMky04Og5JeI0sdgI3dCN5K70
         g3dzu35pQ9bxiWkbSQHS2YhvS98Oxd2L0lnf9fKsRh4tAFSWIEwOcNy9Z+WmPqS5k0Kz
         kbNnkxF5HY+jxFNSsD0L03wuH669R6zprCOS8yLFc6lfS8Tewpj3dnv903LCLQ8uWzdd
         zS8BhkdaJ+yoTRYyMuWUZwsRzaeSKXHh8DEdQXKbY5t7EQgWVBSVrqLK8tSD0dJ+x5eu
         6xyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746006315; x=1746611115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UmsQocl3bHARv+SFZcl1euUz8wbE8H8Ojs/9srBbKpY=;
        b=UDzP5xiDTs3Tzo6YT7MKmwAEgYmbZXbAkbdx/D6w/7LNRoE1viybu1YgdU17iRf/Ai
         bxGNUE4BDx5PueISQA3MaBUnJ8QDl4cr4SvfAveM111sUbDe8N+mNY0Td1cZwgOxXTjT
         0N8LkJWhURCge25jgGso0UICmWw+9qkePCKNrlrDCF96Yd66nPWTqH3/TINMcUTTBc2q
         E6aAfMTkX73AsDVTbgfR9+Y15kxPfyLcPeDTGR5BOZM3YA5ZMKy2Xv6zoK8abAvKcWH7
         oO6+uu/15oXZLRhJ+n3OUMqE1spHhIw2x9qjG+e0z+0W/TwN5QKulWsmGImWNXofx+Xp
         inSQ==
X-Gm-Message-State: AOJu0YysadcDT4JBmRySsuho/Q8KhyqiMqmeDXFNduqZ+XRg3qxDuoFC
	zYOQFI7t5NYOsMiVoBWjPcTX3aAhOTqm8lJ6i8b8DaY8sI9lzhDB1HfS7M7ArLOD8dBWJUxy3I6
	rqCA=
X-Gm-Gg: ASbGncuVAqWO5lTzqpYuM9tud+tCwVyIDQhj0kYL+9CFm8UkwGNtfFOxDIU6Ynu9JJ1
	zaItfiC6cg9dnyG8LnZjrq+TzX6HQxCMwjQHa9OMM109qaBy7sUUGThE12g4vAXn8cqMBEJqkmC
	zfSFVhy8R47ZRp9E2FYhmL96DXx9OejpH0IFZJ1DZ9I98CIdphKaZ5QHJbmqcCyvN08tHl960HX
	4XI/VenEJZcyP3zseGprawKoLNo8sAG09UIcY3jzuAht6gy19EsU/Q2RYvL6M+gE7e0xL1Nr82E
	twgB8oSFfWVr6/r81j7Zbq5DGAZDuxIhd5kth/leNJ5QVvszuOL5XCOU2LzjbB/y5HY/bhYDZg=
	=
X-Google-Smtp-Source: AGHT+IGKAnP32I7tdOkD86lO3MKYn/U2sIgpVMbz1MijhHlLE8WNaRFoQ120v3KeNZ1bCTGClcVi7A==
X-Received: by 2002:a05:6512:31c1:b0:549:b28b:17ca with SMTP id 2adb3069b0e04-54ea33ae4b8mr808743e87.37.1746006314858;
        Wed, 30 Apr 2025 02:45:14 -0700 (PDT)
Received: from nuoska (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3a671sm2103756e87.75.2025.04.30.02.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 02:45:14 -0700 (PDT)
Date: Wed, 30 Apr 2025 12:45:12 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, jairo.mejiaaponte@belden.com
Subject: Re: [yocto] How can I increase the size of /dev/root in QEMU using
 runqemu
Message-ID: <aBHxKPwwol8Jw7Kz@nuoska>
References: <MW3PR18MB3513AD1432554BA95BFA34208B832@MW3PR18MB3513.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW3PR18MB3513AD1432554BA95BFA34208B832@MW3PR18MB3513.namprd18.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Apr 2025 09:45:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65270

Hi,

On Wed, Apr 30, 2025 at 08:24:30AM +0000, Jairo Mejia Aponte via lists.yoctoproject.org wrote:
> Hi all,
> 
> I want to be able to use devtool to deploy a recipe on a running QEMU instance to avoid creating always an image for the QEMU while I am working as I normally do on Hardware. However, I got always the same error
> 
> ERROR: insufficient space on target
> 
> I tried to use the variables of Yocto to increase the size of the rootfs like IMAGE_OVERHEAD_FACTOR but it does not change the size of QEMU itself. Is there a way from the runqemu command to increase that size? At this point I found some QEMU commands to do the process, but they used another executable. I thought to use qemuparams parameter for the trick, but I don't know which QEMU commands are supported, and which command should I use for that.
> 
> Any help is welcome, thank you for your time,

This depends on which image type you use. For wic the default is that
there is no extra space on the image and all configured partitions
are created. If you want to, for example, extend the rootfs on target
to fill the disk but still build minimal images, then this can happen
with wic and systemd repart configuration, but the default wic images
will not contain space for that unlike real HW which may have larger
mmc/sdcard or other block storage.

My workaround for wic and runqemu has been in image recipe to:

IMAGE_EMPTY_SPACE_FOR_ROOTFS ?= "+10G"
IMAGE_CMD:wic:append() {
    set -x
    # to resize image before bz2 or qcow2 are created from plain .wic
    qemu-img resize "$out.wic" "${IMAGE_EMPTY_SPACE_FOR_ROOTFS}"
}

This will add 10Gb of empty space to the generated wic image. Compressed
wic images will see no size increase but runqemu will see the empty space
and can then run systemd repart and increase the size just like on
real HW with bigger block storage. Using "snapshot" option to runqemu
is possibly needed as well to keep the original .wic intact and discard
all changes for each runqemu invocation.

Alternatively the qemu-img resize trick can be done outside of bitbake
build if the tool is available, for example in testing environment.

Hope this helps,

-Mikko

