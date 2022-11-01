Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B388FA373D
	for <webhook@archiver.kernel.org>; Tue,  1 Nov 2022 09:03:09 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.4053.1667293384787476227
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Nov 2022 02:03:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mb90Gnbd;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id u11so19973561ljk.6
        for <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 02:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=paEHbUyB5dxNEvYT/zoDXleKDsfIfKV3zdUCVFnoopc=;
        b=mb90GnbdYzANJRqlgV/NnqPyxVIlwVEny2J58J/l5vU+SaMCV8JE6rKfRSNVdU/I42
         YLpRJGgCPBshL/MT+6w4YvXdHekIpHFLp4d2U7RDCot6qudfPK4J5bKkuzaVYrlhSJGa
         S0rhDClzNMjAtzg1P3QG91cgYpd1hmi/HDasGfjdZcKJRQB/64kA6DhJFPFzbeZ9u4dw
         E5Ib1levEfQ3u2iqp3Xv8n7+rlQIj0squ8XL9ZvFyU0L1u5P3za378DdiurnCMtDFpFC
         5whK0tjnalrNP6/u8KKE/OeHDmWbU0gNl9oxgT3aDRla2MH7alnht3JuReM0CnptGtEl
         uHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=paEHbUyB5dxNEvYT/zoDXleKDsfIfKV3zdUCVFnoopc=;
        b=JkMX/MDFYj+tfq4BjoOO1IYVioAMHzEoVFZJx8EmQboTyxtByUfqiwBnbJJIKVidK0
         +wTZyU5NPQg3CB3gpt6oypbV4xlqKfckFFlVNh66WjoVvL79hFvwRiKR0xPyYwCGxQ+q
         TZ5P1hGdaua/AP2RHMm7V0bO6dFehDhMdOH4lCdmXkVn6fdl0sK4vCTyJTG9Y2OPBZGX
         vaAVfZYJS/YqXy4Ko2/56BzF8yZHK9/DYpw7PvkkFSYuapI5p8/s+mdhCiZt+I+YImHM
         w5c+LrlmTAaYiWffiPOhfM+2D6nq0tvnP2VWQZYeIYxYwV1L5wHHS0Te8rMDEMia2vgr
         zXWQ==
X-Gm-Message-State: ACrzQf0NtGfRDFjvxUe3X9CHw37OpGPTRFK1+ip8g8tySv2Y8TGYrdR4
	bKgC+sGTwa3HBTQrSt5T8scXKnVU6mFBbd4H6q8=
X-Google-Smtp-Source: AMsMyM4HYO0p5YFZPP5L3aB80QWJNzQpi60wSzWaj327rxDgWeLA5RzlA6kaLdMyFwCOOGP3TGIuQ+6nCnXialuxCgw=
X-Received: by 2002:a2e:844e:0:b0:26b:f5ee:b2bb with SMTP id
 u14-20020a2e844e000000b0026bf5eeb2bbmr7056200ljh.403.1667293382710; Tue, 01
 Nov 2022 02:03:02 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-d2VU60mv2CQtemOv-FBGoz+h_C42xXRfEgW4+jTGChA@mail.gmail.com>
 <25554.1667288241565515140@lists.yoctoproject.org>
In-Reply-To: <25554.1667288241565515140@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 1 Nov 2022 10:02:51 +0100
Message-ID: <CANNYZj_4dYa5=-svn-gHioAPfzTxGTE3wJAw+XUueFxVOrHAOA@mail.gmail.com>
Subject: Re: [yocto] Apply Patching #dunfell #patch #yocto #raspberrypi #linux
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 09:03:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58455

It is not possible to say what went wrong if I cannot see the changes
you did, what commands you type, and what is the outcome (vs. what you
expect). So you need to publish your code somewhere, and describe all
of those things.

Alex

On Tue, 1 Nov 2022 at 08:37, Nikita Gupta <nikitagupta2509@gmail.com> wrote=
:
>
> Hello Alex
>
> Because i had cloned linux-yocto for 4.12 as stated in (https://docs.yoct=
oproject.org/3.1.20/kernel-dev/kernel-dev-common.html#using-traditional-ker=
nel-development-to-patch-the-kernel) but after that i renamed it from 4.12.=
bbappend to 5.4 now error got resolved but my kernel has not patched it has=
 not become rt-patched.
>
> What else i can do for making rt-patched kernel for reaspberry image?
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58454): https://lists.yoctoproject.org/g/yocto/messag=
e/58454
> Mute This Topic: https://lists.yoctoproject.org/mt/94645313/1686489
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #patch:https://lists.yoctoproject.org/g/yocto/mutehashtag/patch
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #raspberrypi:https://lists.yoctoproject.org/g/yocto/mutehashtag/rasp=
berrypi
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

