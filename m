Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83EC5C61DA3
	for <webhook@archiver.kernel.org>; Tue, 21 Feb 2023 07:19:05 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web11.37304.1676963940153767694
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 23:19:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XJ8izO2Z;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1720f9792bbso3761442fac.4
        for <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 23:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QzavTjeMFjxsK1p8nTE5NMtoJtLjAhB4pS8oKfSsQiU=;
        b=XJ8izO2Z+uFK4i5pAqsk4I5Yr0DvSiRfdpjFLVdIvs6rM/q52OtVxtq0s9XWBpal1z
         obi4CG6GJHwaMo0ItnpLzpkDCXJmPAhB0lFkkE5vUF4ekK461HbV0SvTZ5SYI8WgWqSJ
         XJbp/tSoiMJYzBNhjhm3dQldQKsAgPI/msv7P7mTQdHvvNNDTCvG+YeS3ovm8GbcM/N0
         ikNuQZ6Drw5YSHo994kjDMBGSPVvhjcETH+aaEdfPTosk3Rhtpw0h3p4myJZDfuhq6az
         Azsb57D4VdsO20I5e3HDh1iunkx5rpjgbmFrUyy4LyE6aPWCu04yGfaiXf6ex0vy3weS
         aBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QzavTjeMFjxsK1p8nTE5NMtoJtLjAhB4pS8oKfSsQiU=;
        b=ST0ETJRXDZykfhtRkMkCa5Go3c07rCrISgIHVYGbCmNuGBDcohA9oqh6QfzJCwD3Nk
         df6CZS8PT2vou8mtWKytQrEexp7Nr8rhG5kE0BO5pNmNaPj4KQ5tERuC8eC9PI0/7HjB
         i0J4fJgvSI8o+QLsuoiKuVh+6GnYZErTTux2DuvYeTXT9Dwq4Md9DL1YshqylqdtBf7Z
         6NPMIg2sCSWm5iYIq3VeKTZtfTR+nYP/slFOkFQ3CjGjCq0fPVzi1wvjv2YekaM57/Kf
         RpJ2sl4VulPdzF6E2uSSfg/nX/90XmGdufGfoSlzJ11thhe2erKm+Hyh+vZ0gnFcroyt
         sYkA==
X-Gm-Message-State: AO0yUKVNlvo4hHqFVTuI0t5WL7eNO04lR5LnJs6rANsA8lWLZYWamocO
	dCF5zwkTQC1K4Dq8RbMcHZlCP3ktiBsH9VeEa2I=
X-Google-Smtp-Source: AK7set92ZMLIqJct9SO4gj4Nh6hljb6fivixpDgcIWNftvnM/313azXaWRkIQQTuvoqWftOhgWudW/WP8jtz/SgAXgk=
X-Received: by 2002:a05:6870:d1c9:b0:163:767b:82cb with SMTP id
 b9-20020a056870d1c900b00163767b82cbmr1169412oac.277.1676963939222; Mon, 20
 Feb 2023 23:18:59 -0800 (PST)
MIME-Version: 1.0
References: <e0c2ab60-7907-dc4c-521d-eec2f408ab4d@mistywest.com>
In-Reply-To: <e0c2ab60-7907-dc4c-521d-eec2f408ab4d@mistywest.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Feb 2023 23:18:33 -0800
Message-ID: <CAMKF1sonQ9FdWoURfV=P5pq3QUTXuOjKhAVRbpAD+9wWbjt=+Q@mail.gmail.com>
Subject: Re: [yocto] trying to install files when those files already exist
To: Mistyron <ron.eggler@mistywest.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 07:19:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59264

On Mon, Feb 20, 2023 at 8:20 PM Mistyron <ron.eggler@mistywest.com> wrote:
>
> Hi,
>
> I'm running into a "is trying to install files into a shared area when those files already exist." error and am not sure how to resolve it. I get the following:
>
> ERROR: linux-renesas-5.10.83-cip1+gitAUTOINC+e52825e45b-r1 do_packagedata: The recipe linux-renesas is trying to install files into a shared area when those files already exist. Those files and their manifest location are:
>   /home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/kernel-module-cfg80211-5.10.83-cip1-yocto-standard
>     (matched in manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)
>   /home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/kernel-module-cfg80211-5.10.83-cip1-yocto-standard.packaged
>     (matched in manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)
>   /home/yocto/rzg_vlp_v3.0.0/build/tmp/pkgdata/smarc-rzg2l/runtime/lib32-kernel-module-cfg80211-5.10.83-cip1-yocto-standard
>     (matched in manifest-smarc_rzg2l-kernel-module-lwb5p-backports-laird.packagedata)
> Please verify which recipe should provide the above files.
>
> It obviously has something to do with the drivers for the lwb5p laird module I'm trying to add.
>
> How do I go about resolving this on my dunfell based build?
>

there are two recipes building same files which end up in same
location on target rootfs. So you should either disable the in-kernel
module or not include out of kernel module recipe
> --
> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59263): https://lists.yoctoproject.org/g/yocto/message/59263
> Mute This Topic: https://lists.yoctoproject.org/mt/97102802/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

