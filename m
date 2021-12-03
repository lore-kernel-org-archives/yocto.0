Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEADC433FE
	for <webhook@archiver.kernel.org>; Fri,  3 Dec 2021 17:11:27 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.14249.1638551486370484253
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Dec 2021 09:11:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=sFhg1ttk;
 spf=pass (domain: burtonini.com, ip: 209.85.221.42,
 mailfrom: ross@burtonini.com)
Received: by mail-wr1-f42.google.com with SMTP id d9so7134287wrw.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 03 Dec 2021 09:11:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=s6ohiPFhgntOZcHDDZ0t6FxFSAPi2MjMmfwyDSn4hRo=;
        b=sFhg1ttkuWpq33LXSB8iT+mADpGEBiiV1ZafXv63MqG8lYmvsPre6j3J+vPj7S9rNX
         WoJi2g6sZP/QVrJRvZViHWOL/kd4T50lnzg0cmLpHfnF6o/vrHEkfbjXNyAlYbzz0eRL
         opYgSiH2MtPJERe38BoPjXFuFkDrZmhsjYrEo1eyryQgAEDbFW2h2Typ7gRxpLD1ta29
         /w5rCHeofBcpMQdEdVfExFTLUsg4GxO+n4DZ2bZ3TlL1THNULueiucMuQy0sih1VUrDM
         I5IPD8yzZ6OhWZgCMgnI+MNCPDhRCQmT3ctIgSdlv3JNYfo2lCD0qqB8Vgwmy3uyCJ1a
         Js2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=s6ohiPFhgntOZcHDDZ0t6FxFSAPi2MjMmfwyDSn4hRo=;
        b=HjTzHLELs3hjaIFrwT2gdbjcdMx7PMobzrQ5vmGhcVA5Yjx17vbzqD/4WatkWfTEsx
         1qTZryw0pVdri8u7e9i/DA72jyO7A2QgDUe7DA/a74R159nflh1gXrrBaVanGjHUAeph
         e1F61p4aa7GB3HtCdeOtxKW9c3nhfHpX77xGkhffbx5s6h1MZ/WVbfxbcQWxUaupXRmG
         hO9+shEfffxbizxjcQdcL8ONhTvlTHS+R8JTie/FBv8I8qUF/e1Tky9IW2jkhKWFz92c
         rLsRr6gBGo8cqfHDXCZ2ZFTa5r3g9vgutaUl/j7pW2YGv9t1Y9rHTB68Nr6xRFgpmrfT
         Usiw==
X-Gm-Message-State: AOAM531U+lv0o+iYcBhEzypffxlTCELMR0DXXuTHIdtTuc7vIyInI2Vk
	kHIAnqdsyvU24b7vNn2aKIlzm/P5+2d2HIRVFnRyQw==
X-Google-Smtp-Source: 
 ABdhPJxiDth+LIWbtVCBmsdi/dYgW6rHPbR4dlO1egn6CAjE7ojudZTtSnvBUHJzKTXDG6xMwCdFuOSHdAhdv+KhxaY=
X-Received: by 2002:a5d:4443:: with SMTP id x3mr23695848wrr.189.1638551484640;
 Fri, 03 Dec 2021 09:11:24 -0800 (PST)
MIME-Version: 1.0
References: <01xb.1638548163207924225.zrOc@lists.yoctoproject.org>
In-Reply-To: <01xb.1638548163207924225.zrOc@lists.yoctoproject.org>
From: Ross Burton <ross@burtonini.com>
Date: Fri, 3 Dec 2021 17:11:13 +0000
Message-ID: 
 <CAAnfSTv8jekPiX-_fkqn2u+3LEL96TsDz+6R0MiQq2ksUWysVw@mail.gmail.com>
Subject: Re: [yocto] native tool from target recipe
To: kkubkowski@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Dec 2021 17:11:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55479

On Fri, 3 Dec 2021 at 16:16, <kkubkowski@gmail.com> wrote:
> Hi all,
> I have what I believe is a basic question yet I cannot find any definitiv=
e answer: is it possible for a target recipe (e.g. u-boot or barebox) to pr=
ovide a native tool (i.e. mkimage) for the build system without the need to=
 rebuild the providing recipe as a native one? To be more specific: I am us=
ing barebox as a bootloader and it always builds mkimage for host. I would =
like to use it later during the build process in another recipe (e.g. after=
 the kernel is built) but I don't want to rebuild the bootloader as a nativ=
e package. Given how flexible the build system is I suppose it is doable, b=
ut what is "the proper" way?

The usual solution is for the recipe to allow building native and you
install the tools from that recipe for the target recipe to use.

The better solution is that the source knows how to build host tools
for the host and target binaries for the target.  barebox does, so
just set HOSTCC=3D${BUILD_CC} when you call make.

Ross

