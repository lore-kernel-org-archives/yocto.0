Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 112A3C4332F
	for <webhook@archiver.kernel.org>; Fri, 11 Nov 2022 07:52:22 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web08.3108.1668153140372859954
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Nov 2022 23:52:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RTrbdPk2;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id j4so7273210lfk.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 23:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vB20xWdyVK0g9/cFJ7GTt+1eY0pq5CO/pBZVxOfayqg=;
        b=RTrbdPk2iAPB/wJE0ajJiKUtixqMaEyEJV3X2Lv6wdZRMAu74VVK4rxSlpA6JE/MZJ
         IvLj765yUIYY++qethlMLMa7tZqzx3xd2RmGx/Y/PoanEM7OjjTY8qV16DwpQ9BJA0Pd
         Li8jwP4MMFIsMnEMT2B89Dx5DbNVW+oarK7/Su77/5o3PXVpnFIBLJW7n/v6lhYVu9s3
         bp44iqtwnBCL6vX6pgv1WZulSbWmEJVTs5AbGD3NHcP2RwX/48c/TuQtntY2yNerX0Jn
         lVstYgnpKqSqZD2/mCH6rguHFdcpE4x6trk6jWR6vX4/cZ50rGm6KT5CtH+qZmPdaYBx
         AW3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vB20xWdyVK0g9/cFJ7GTt+1eY0pq5CO/pBZVxOfayqg=;
        b=apkuI7wPjSLb/MXT6JF5oYjHeLpDBwkgDLffNyVPEiZe7u2W8yldqSX1ZbRVxVNNdo
         DfllZwlIK3xQEwo1JtaSy1WXrluWVGxQyZUqQEyyfoVlm0Ise7UvMy6fDPFqrrX7DYq8
         K1Q8JYmFZS+wdCuoFTkcHymgEeOEPEczukdAuzh55PaJ+hebyb/xwf9SYQGbrVhE8nrq
         KUDpJwOk4sauBV6npzbYtWCizp0DjnUQ46vleGPQl0HtaapszxzhR9+uJ+Jy1yHEfK0f
         md8vyaRtIpyIb4koPbqr9rgH3wGPkVDgu3WK9IBOCmwmqw4GSL5rmhVaSprf4LlRc5X/
         LZZQ==
X-Gm-Message-State: ANoB5pkUk/aG2eb6LLFvAwExa+0/F3Vycf776tezO7xWwEhm3STEnJue
	oHTo1zaqEmdKFWicdqRjSIBQQYhYzrD4J35mSxw=
X-Google-Smtp-Source: AA0mqf4/mfl2VQn6DnS/EDaAeO5N6TEFC5sXVOOQfM+1Bk4GQJqgRk5PJ+3dR8rWapKv49EOdqM3MBhictCOWcuc5hI=
X-Received: by 2002:ac2:41d4:0:b0:4a2:4d53:8294 with SMTP id
 d20-20020ac241d4000000b004a24d538294mr327346lfi.263.1668153138538; Thu, 10
 Nov 2022 23:52:18 -0800 (PST)
MIME-Version: 1.0
References: <e0b47be3-0b36-ef78-de3b-ba6c0f82d080@mistywest.com>
In-Reply-To: <e0b47be3-0b36-ef78-de3b-ba6c0f82d080@mistywest.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 11 Nov 2022 08:52:06 +0100
Message-ID: <CANNYZj-pXuyXKySbYf=2jEiaOYLHOcCf76qbsiPssGLA30EVnA@mail.gmail.com>
Subject: Re: [yocto] failing postinstall scriptlet
To: Mistyron <ron.eggler@mistywest.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Nov 2022 07:52:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58541

You need to show the whole log.

Alex

On Fri, 11 Nov 2022 at 07:29, Mistyron <ron.eggler@mistywest.com> wrote:
>
> Hi,
>
> I'm wondering how to resolve the following error:
>
> ERROR: sample-image-cp-lwb5plus-1.0-r0 do_rootfs: Postinstall scriptlets of ['lrd-networkmanager-sterling'] have failed. If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in /home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.
> ERROR: Logfile of failure stored in: /home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.430788
> ERROR: Task (/home/yocto/rzv_vlp_v3.0.0/build/../meta-mistylwb5p/meta-laird-cp-pre-3.4/recipes-packages/images/sample-image-cp-lwb5plus.bb:do_rootfs) failed with exit code '1'
>
> the log file ~/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.430788 contains the following on the bottom:
>
>    ...
>   wayland-1.18.0-r0.aarch64
>
> Complete!
>
> ERROR: Postinstall scriptlets of ['lrd-networkmanager-sterling'] have failed. If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in /home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs.
> DEBUG: Python function do_rootfs finished
>
> and the same does /home/yocto/rzv_vlp_v3.0.0/build/tmp/work/smarc_rzv2l-poky-linux/sample-image-cp-lwb5plus/1.0-r0/temp/log.do_rootfs
>
> Not very helpful, is it? How can I resolve this?
> Ron
> --
> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58540): https://lists.yoctoproject.org/g/yocto/message/58540
> Mute This Topic: https://lists.yoctoproject.org/mt/94953842/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

