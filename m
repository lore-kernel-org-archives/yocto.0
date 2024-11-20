Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4855D63933
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 12:04:43 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.11760.1732104274736705552
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 04:04:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=zt3mNBwM;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53da24e9673so2431370e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 04:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732104273; x=1732709073; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x1ZBm6fkdd4eGuf2464hpKVSO23CGyuFbUTtVglW/Zk=;
        b=zt3mNBwMin1lI2OOdtz16KK74CC4Uq+IZ8CEK2yqjlPQLhipHaPWAJ+P2k9ohBiktN
         vQCBgNcHzhuIm/GJSUrmD2Lj3/7K7nLPXOXGafD6W9at4CqrxA2wlszN+OxGSl4SVW+F
         0JNl28BnFtX4o+JVf2TpuYE6Ldj9Y/KpWSFzC4M4suut3SMB+1FgjdfHQFWnjVjHkEqI
         tFV8zf9h8X3njI9N6tiRmY91Jcn2CtG+PxSUGAnvKeli0beq18dSkXHSCiKrnN5odrhl
         Je/CBHmsWx7vV3T9kB95U1BNON7/qXnQ/X8kAykWEyxlTUWlr8Kzt+4gBv7zS6q9WSa4
         9WtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732104273; x=1732709073;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x1ZBm6fkdd4eGuf2464hpKVSO23CGyuFbUTtVglW/Zk=;
        b=eYC+UZUxIZ5yfAX7eutTu3FOLUmKDmOXzGhGDhtDbd5D1et7b6tqofUc5UV4JhYASF
         GNDMtjzy5SiroI24zfZRb7Ea85EtYuWn9OUIgSA+W0t8iPx1KqlxZbZhhMqoMrqxSctW
         vzUvjYohxfpps4FEEYJBlwHiacp55Mxu4y47OVKmVRdA2nPUXXdaxzvF+Z0qj/xE+i7x
         IAkPd7zyNHHeFEzMekAoa5wunPZ8PubGYZEhe7mOlu6AcyhN5BJm/7gJAL2gAUfDf0PR
         yo1Lk7qFxUUfpZwtOtO4ezsyAmpz9GIax8l+JTXgrTSrhIOI5Tp9Eg/+XR85+G5sCXf1
         xASQ==
X-Gm-Message-State: AOJu0YxpGDkpkLBSWk8WB5a5ssr2p/PJhe6W7UjPuob7dAwx6k3FkjAs
	9XvoXLjUW0GWDrTQRRKXN8reNhenTMfbSnDscfgh2+H1xJRay5eIu/4CEjOYxKXsmatczFQE3gr
	LD8c=
X-Google-Smtp-Source: AGHT+IHSNbVpcTL/COBFG1/RCudU75touJqtlYDJvG5ynRy5XO6ooaDCv2xVIEGwLi3ec5M6EdSOoA==
X-Received: by 2002:ac2:5bce:0:b0:53d:a9c1:f6d with SMTP id 2adb3069b0e04-53dc13375a0mr783182e87.13.1732104272870;
        Wed, 20 Nov 2024 04:04:32 -0800 (PST)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd3fc547sm604526e87.67.2024.11.20.04.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 04:04:32 -0800 (PST)
Date: Wed, 20 Nov 2024 14:04:29 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, thore.boeckelmann@inoex.de
Subject: Re: [yocto] ext4 issues with scarthgap .wic image
Message-ID: <Zz3QTawLRIwhrQvd@nuoska>
References: <ed7dbfe9-1861-4e5b-9954-03bf8404920a.970c85df-582b-4473-a7de-31be6a2b58c9.8a47a721-58ad-47e5-be44-609511a60ac9@emailsignatures365.codetwo.com>
 <ed7dbfe9-1861-4e5b-9954-03bf8404920a.5f629621-7c71-47da-aee6-727c8a7b4e6a.21f4d927-51fb-4187-a3f2-1b08161ff7e2@emailsignatures365.codetwo.com>
 <FR3PPF317299CA9C4E72FD30F5D38A3C18A8F212@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <FR3PPF317299CA9C4E72FD30F5D38A3C18A8F212@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 12:04:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64309

Hi,

On Wed, Nov 20, 2024 at 11:37:51AM +0000, tboeckel via lists.yoctoproject.org wrote:
> Hi!
> 
> I am building an image for an iMX8 system and recently upgraded from hardknott to scarthgap. The image (wic.bz2) is created successfully, but after deploying it to an SD card I am not able to resize the partition via resize2fs. resize2fs always tells that the filesystem is using unsupported features.
> 
> After investigating further with gparted I found out that the ext4 partition was created with the C12 feature (orphan_file). I am using Ubuntu 22 and hence use resize2fs 1.46.5. There are some forum which suggest resize2fs 1.47.x as a workaround, but I don't cannot upgrade that easily to Ubuntu 23 or 24 yet.
> 
> I also built another image for an iMX93 system based on mickledore where I experience EXACTLY the same issue. For that system it was sufficient to add this line to conf/local.conf:
> EXTRA_IMAGECMD:ext4 += " -O ^orphan_file"
> 
> After that the created ext4 filesystem was compatible to Ubuntu 22's resize2fs 1.46.5 again.
> 
> Unfortunately this did not help f�r the scarthgap build. No matter what I try, the additional options don't make their way to the call of mkfs.ext4.
> 
> What am I doing wrong and what can I do about that? What is the difference between mickledore and scarthgap in this respect?

I think these kind of changes are expected in yocto major version updates.
If new ext4 etc features would need to be explicitly enabled, then users
and maintainers would be flooded with them. Upstream defaults are better
even if they sometimes are not backwards compatible.

I would not expect yocto tooling to always be compatible with other Linux distros
so I would rather add the resize2fs etc partition resize tooling to the
image itself and resize partition(s) on the target at runtime. This can be
part of the target 'flashing' process. This is IMO more future proof.

Cheers,

-Mikko

