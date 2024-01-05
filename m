Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 748ADC3DA6E
	for <webhook@archiver.kernel.org>; Fri,  5 Jan 2024 14:18:06 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.24285.1704464278264779645
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jan 2024 06:17:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=xvtrsrp2;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.45, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a28d61ba65eso192228266b.3
        for <yocto@lists.yoctoproject.org>; Fri, 05 Jan 2024 06:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1704464277; x=1705069077; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ryKbLgHxXQI1+VMLtsUi9copA7FfeaTCkBX4AnhU6dc=;
        b=xvtrsrp28DRy7guh6ZR+5qa6l5qjQRatGyVMc7PzPeGlZVbrKNNucHFhkukp7AICCp
         65eLVpWBDj7lVH+IDfnkV02bNKCTB/9f5c9VupoA2LdbEJWMW6PmpcWWIgyr7DhANiiR
         OEN1A8H9RV+B6kInBdwc5V7JdvJDrQkJ248/3fTv2NKeXeUaVR5BTDNUdXZz0+ulFsUR
         Z36Uqx5l7PVVbngwmHWDpXrjJEioYn0al1e9hAP/Dha/OtaiTFj/QiShEFxvkdK5EqcT
         +oO7rM/7MTlgYjL4Yri2bEkkaSTZgxuYYpjceTJIEOfVG5JlrymTPvyAuma1mkn9GS1D
         nSLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704464277; x=1705069077;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ryKbLgHxXQI1+VMLtsUi9copA7FfeaTCkBX4AnhU6dc=;
        b=tHv0aib28Y0N8tdY34npkUqOCQX5tKI9wC9rSkHndbCxWfNt7xGTlgZm3b2vv/luC6
         /wyfd9di1m1nZVlJRBWPMGRLIjlg1n5Da0NoF2qo83YE6yWUPLbzrsUApKWTgUAC6RfU
         UrrLArfLdEr97dg89sBBdJaPKjrz7HtZgwNY0WsfwtGTqO6LBneAw2IN9QT6rClrdWq9
         UG1SZi1UOD230UV4vw32XVGL7TKIj2AvtkIjOPnbNqXlvKLNKvDATs8UkMlYSawSmPlU
         66T4aem09qKmbduXQszf21zfXuQJliIWVBTpj6B3WTXv9Fzhzm9lvv7A+G5xvbE6uvgW
         zyHQ==
X-Gm-Message-State: AOJu0Yw4Hf/SMMcmUb6P1ZbIuzNMvxjOU3rEjD1xiclDhsWXmw9zpmHj
	Wuo5ohxFYab8cRoK7coZXbL3LemlIM9nKxagKkbC6HYm4roVVw==
X-Google-Smtp-Source: AGHT+IE8ag+mzbuEVNf/mS93165Rwfgux7D0Y+KNY2ALCDpeQwvYaWqREDxbrda/ZuJ+yME0Hp3ErDeRNXGzVE1k2+w=
X-Received: by 2002:a17:906:4e99:b0:a28:aca7:8469 with SMTP id
 v25-20020a1709064e9900b00a28aca78469mr900205eju.189.1704464276438; Fri, 05
 Jan 2024 06:17:56 -0800 (PST)
MIME-Version: 1.0
References: <0101018cd8df6342-36454e00-32a1-4f54-b7d2-47db56f288e9-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018cd8df6342-36454e00-32a1-4f54-b7d2-47db56f288e9-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 5 Jan 2024 04:17:45 -1000
Message-ID: <CAOSpxdZd+W=MnEP_crgk-D=MQOeCAQw5CYTEVoTipi06ea5CmQ@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.3.2.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Jan 2024 14:18:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62096

This was an all green build, so we are good to go for QA

Steve

On Thu, Jan 4, 2024 at 11:06=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-4.3.2.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3.2.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6420
>
>     Build hash information:
>
>     bitbake: 72bf75f0b2e7f36930185e18a1de8277ce7045d8
> meta-agl: a492c25c1d2dd7a1bca42bc13d4b7449ab179a6a
> meta-arm: ae11c9d47374b7373dfead6b4217374484151f6f
> meta-aws: bdaaa71585e6d154ac34116d0f6c1e85fff86f63
> meta-intel: 039e45e21d2973fc3ce318a25beceae348e4428a
> meta-mingw: 49617a253e09baabbf0355bc736122e9549c8ab2
> meta-openembedded: 1750c66ae8e4268c472c0b2b94748a59d6ef866d
> meta-virtualization: 9e92984ff47b3ca2106b1d27a93af061b28d1e8a
> oecore: ff595b937d37d2315386aebf315cea719e2362ea
> poky: f768ffb8916feb6542fcbe3e946cbf30e247b151
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#371): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/371
> Mute This Topic: https://lists.yoctoproject.org/mt/103539862/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

