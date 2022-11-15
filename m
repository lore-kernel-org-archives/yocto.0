Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0572DC4332F
	for <webhook@archiver.kernel.org>; Tue, 15 Nov 2022 12:06:45 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web12.4724.1668513996873622775
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Nov 2022 04:06:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=d0ioSfT5;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id x21so17213889ljg.10
        for <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 04:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t5xZhgpUsKyQMK0U8d3xe+t6U6W/YZJkdcy5beuQILg=;
        b=d0ioSfT53chdBFWXLoRdgWdeSdnOewlVH1Zm7HzRK+kqnuupATtWvuW/671qFPKR/B
         0tDB/4hMc7zejsG84kKlHi3fR/FZ+lKq4NeYwOZUy42HXzhkl5bRhnNSkmkoC7QWtofh
         xl5XI9vshWMfYOpTVaN6LEeaUUzjTVK+L36/4O9Hy8F5bQRHlGss3hHgfnqIjVd3kkHb
         zmJiIxEYD9zcFjgRYlmBi9tFkX6qYbc43PL8D1SNQ2e9d+hcdcrpJ3Mb0GbLjU7oH0V8
         ZVQXeMq4goIajGHLfC3CKUW8LrVD0CXq0vgFvn0XFlFJsJ8CMNLxTx0/hFOlCz0GXpDV
         kmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t5xZhgpUsKyQMK0U8d3xe+t6U6W/YZJkdcy5beuQILg=;
        b=fD+wpXkvsqEyWUMDUTqyH4LE2JSZ7ZVuNJJR7od5OtLwM9aa6L6zd/k68lzrgkHOXk
         mleoLZVDc8xW7eSx0p6m5CGzkyHR5UADv8heUi4CNhDrKZ+sHyXz2wvYuJxqWwO+OIK/
         c7/DlmQ+wEBhihiUc00PuOjUOP5MJ31ELBRdz4boSeAuroYKS1lIp9TfLq4Zsu20RAsM
         rRb8vNivh9F5HGwhdRyMV3FNADTXT2J/d3pgzE4G3DVRMwkQoqrlQ0OoOAaQxFlDTlBv
         LXVHtmWsxpyiLQ3MbRj/0sZkOY4PpBNHKTZd0ZIvUu2Vb+IulXT2N7FmRH/i2BtukN2d
         cdVw==
X-Gm-Message-State: ANoB5pkT4D4LFdW6T9Pj3EKaFhPiR2X0EA1XKIQQs9cIF31dWPjuDD2P
	k/bobxf0WGrjZtnPgEgYaktD6reLzpq9cEth6z4=
X-Google-Smtp-Source: AA0mqf5GQ1NX/X0we0xpIdZenD+QPyqlsSSGag6i0g6TYlZBCe0tjmYyQ5K4MpMnnf5KCWtC/dwyPZzassdEn6TJF/8=
X-Received: by 2002:a2e:b8c5:0:b0:277:8144:2eb6 with SMTP id
 s5-20020a2eb8c5000000b0027781442eb6mr6124646ljp.45.1668513994942; Tue, 15 Nov
 2022 04:06:34 -0800 (PST)
MIME-Version: 1.0
References: <DU2PR08MB73581AF8D4EAE35ED17F2B03F5049@DU2PR08MB7358.eurprd08.prod.outlook.com>
In-Reply-To: <DU2PR08MB73581AF8D4EAE35ED17F2B03F5049@DU2PR08MB7358.eurprd08.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 15 Nov 2022 13:06:23 +0100
Message-ID: <CANNYZj_Q1oLun2hM6BnFN2L1QVHewzD-4627vARSOJU0V5U=vQ@mail.gmail.com>
Subject: Re: [yocto] build 2 sdk toolchain
To: johann.obermayr@sigmatek.at
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 12:06:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58567

This is the correct way, yes. You can put SDKMACHINE into local.conf
(default is 'linux sdk'), or you can specify it on command line (in
which case it will override the local.conf setting).

Alex

On Tue, 15 Nov 2022 at 13:02, Johann Obermayr via
lists.yoctoproject.org
<johann.obermayr=3Dsigmatek.at@lists.yoctoproject.org> wrote:
>
> Hello,
>
>
>
> we use kirkstone.
>
> We will build
>
> Image
> Toolchain for linux
> Toolchain for windows
>
>
>
> Now we can build a image + linux sdk toolchain.
>
> That work correct.
>
>
>
> $ bitbake my-image
>
> $ bitbake my-image -c populate_sdk
>
>
>
> Now we will build a Toolchain for windows
>
> We have add meta-mingw
>
>
>
> $ SDKMACHINE=3Dx86_64-mingw=E2=80=9D bitbake my-image -c populate_sdk
>
>
>
> Is this the correct way ?
>
> Or what is a better solution for this.
>
>
>
> Best regards
>
>   Johann
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58566): https://lists.yoctoproject.org/g/yocto/messag=
e/58566
> Mute This Topic: https://lists.yoctoproject.org/mt/95040911/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

