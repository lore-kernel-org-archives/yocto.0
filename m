Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0978CC38A02
	for <webhook@archiver.kernel.org>; Mon, 31 Oct 2022 08:26:20 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.6897.1667204769956388797
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Oct 2022 01:26:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PDorfuQ8;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id o12so18082256lfq.9
        for <yocto@lists.yoctoproject.org>; Mon, 31 Oct 2022 01:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Cqk2+V1YA/rAi0iYvf+/GPNUAj1p/PrmNsK2HYNEnTM=;
        b=PDorfuQ87cN1cqMXaOM7mAMOLMY1AP/a96/mZV1TwfiNatvdO/vjk3a73x04Dbd6sa
         AgKUnNVF75jnbzr8lVHBkLOw0h3dtGLE0awKMKWEPcRkT6WaQNHwYkXnOAQeVoqLMhsW
         BZ8IbCAl8ivauNyiX3wOOkSjvWOzKR5mT6/pzgG4qc7rDTJwGySR8QMRvznmiYU8udAE
         9uE5kZlKfyC25cX9L2nKyNVmZsq5q1OgW89d61Jd+D4bq4aldVkagO28DCzq63F/vCnf
         Rx7lOh9KAXG84YJhe9d6OFK2U7uw34Jy/F19hLsZUlqKGfjLU1LjOui82KK2bHskPrUx
         HUUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cqk2+V1YA/rAi0iYvf+/GPNUAj1p/PrmNsK2HYNEnTM=;
        b=EzQF7vPegUg8nGPLolNmJTHF1ub1xUuJt1Qr2CFJTG9VrednT06aIJACGFrg5lzinI
         OJAyfvnqeviEx9cllTfAYkOVxSyGzUlldyndlyl/KWQG+rvjSxaKl72PSR/SDxsh1jAx
         ZqiuT1g0pK73Oxdv4hfywnwSxPrefS1wF0unEd3YAKsVOgzem1OKvtE3QbezaJwzbBzt
         MPsMhYT+5f5WmFgxB5NgE8yeli+PVx+2Rz7DOKPk5lw+msaajEjlJUDmGjcGTY6Plj18
         WxNbBgOPSeEChB6IfxMGWOJMdiOA6LizyfZQcA6p2gRB6th6Yshi5RzCg81OyfudTdzq
         HoTA==
X-Gm-Message-State: ACrzQf3hb29nG1fPFOiDZk7/2dHDNqeDNdrw2+8jju5t1AWquQjwg45t
	vCaMdhlQq3kjlmLTliHiSo8xI27Q5DnkDvRz/Mc=
X-Google-Smtp-Source: AMsMyM6NPnk39BkJ+qokOHE/Yp8mSpR/qmDvBKyVzmYUkDNnHSAMlgXJOAEIInsJyT1IkghVhCZCdmMnEfQC6Yvl+gk=
X-Received: by 2002:ac2:4c8e:0:b0:4a2:7d0d:c7a5 with SMTP id
 d14-20020ac24c8e000000b004a27d0dc7a5mr4739718lfl.367.1667204767825; Mon, 31
 Oct 2022 01:26:07 -0700 (PDT)
MIME-Version: 1.0
References: <jD2p.1667043506225622597.BAL8@lists.yoctoproject.org>
In-Reply-To: <jD2p.1667043506225622597.BAL8@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 31 Oct 2022 09:25:56 +0100
Message-ID: <CANNYZj-d2VU60mv2CQtemOv-FBGoz+h_C42xXRfEgW4+jTGChA@mail.gmail.com>
Subject: Re: [yocto] Apply Patching #dunfell #patch #yocto #raspberrypi #linux #kernel
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Oct 2022 08:26:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58442

There is a version mismatch. If you want to patch the 5.4 kernel, why
is the bbappend for 4.12?

Alex

On Sat, 29 Oct 2022 at 13:38, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello List
>
> i want to apply rt-patch in raspberry-pi by following (using-traditional-kernel-development-to-patch-the-kernel) So in order to achieve that i created my own meta-layer and put that patch in bblayers. In oreder to apply patching i did following steps .
>
> I downloaded patch file from (https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.4/older/patch-5.4.70-rt40.patch.gz) unzip and rename with (patch-5.4.70-rt40.patch)
> I put that patch file in yocto/meta-mylayer/recipes-kernel/linux/linux-yocto.
> And given patch file's path in yocto/meta-mylayer/recipes-kernel/linux/linux-yocto_4.12.bbappend by following lines
>
>             FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>             SRC_URI_append  = "file://patch-5.4.70-rt40.patch"
> (As described in above document))
>
> when i am trying to bake my recipe : bitbake core-image-base then following error is showing
>
> Loading cache: 100% |############################################| Time: 0:00:01
> Loaded 3004 entries from dependency cache.
> ERROR: No recipes available for:
>   /home/nikita/yocto/meta-mylayer/recipes-kernel/linux/linux-yocto_4.12.bbappend
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> Can anyone please suggest me how can i apply rt-patch in my raspberry-image with above method by solving corrensponding error.
>
> Thanks in advance
> Nikita Gupta
>
> ~
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58436): https://lists.yoctoproject.org/g/yocto/message/58436
> Mute This Topic: https://lists.yoctoproject.org/mt/94645313/1686489
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #patch:https://lists.yoctoproject.org/g/yocto/mutehashtag/patch
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #raspberrypi:https://lists.yoctoproject.org/g/yocto/mutehashtag/raspberrypi
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

