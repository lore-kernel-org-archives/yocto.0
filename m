Return-Path: <smooge@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7887BC433EF
	for <webhook@archiver.kernel.org>; Thu, 30 Sep 2021 12:16:47 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web12.11614.1633004199132235490
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Sep 2021 05:16:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a011WlXN;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: smooge@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id dn26so21237359edb.13
        for <yocto@lists.yoctoproject.org>;
 Thu, 30 Sep 2021 05:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=V9Uxb/A8tP2EaqlXKeKeAq6K+4HOV5XyzbJ23cX/r74=;
        b=a011WlXNIt/NNhoRqA/Zxj0Aid/hyFH6xZZf9ZfFCbj4bog0YCYHbuUfaxOQ1ldQbG
         rH9Mc1b+NZZpv0nSMo97fZnzkKmv0LGE/md5VpzLcsCuzwcx2wpIzJjBIBYn9W6nRS+0
         ZOCJjhD9GgdgDNq8p6dt5Ph5bvFUNFbGzmdzqtBYSjokAd30pJUayhrXpOjgU6NPBZ9Q
         SOhTRBkC3+EiI8iAFNx5I25Emsxlc+eMF2g/25OttBQ2/r5gVtEIljNz4v9Sul0YqElx
         KDeJ6SM6MK4AgpDKVrul50ETKdhSuWNKz9gDD2Jm8e3GK5GpiH/RmorVUZPPXlU9kd58
         oDlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=V9Uxb/A8tP2EaqlXKeKeAq6K+4HOV5XyzbJ23cX/r74=;
        b=b7jZldJYvWEAUjP+bjHDqxZsKohqVAEW6+Y/QrhOsdFDJzPFGSOStU5S7uhBdaV7XU
         gdQPVOsTWUkZe3QqajMPrdv2J38Zluj8vhg7NJ7Ck1Jo+7Y8eZONDDLlRaWnToY07nFJ
         LSdyibWGO7dN6q+EA3HiPfnjev3VXPou9RTteokcH/bdte9RDBwFbTshmXJK3feoo9ar
         gwxThV2bylXZYCkdP0egfCZc2MqW8qUce2K7SsfxKtsJn4DcyE7aPIjP78IQEO7D9wrN
         EXiF3e3WuBKxuWgETT0dWBNsw8pguVTRFPntrZnzy2BnG2LAR6/zVCDul+S/4jqmx2s1
         dxDw==
X-Gm-Message-State: AOAM531zusrjRudpTbqrPbyojO/KpPQNfizfbo4/yOWU/V8B/7tCYH6p
	ilF28sxU/mDDMQtkvUfdO/UyZkM80ISPXDibYe0=
X-Google-Smtp-Source: 
 ABdhPJypoGKg01Yq0vyjTHqx/G+gjXlE0lLAswSbmvsB1kz82jsbot9S+SGNu8FXDKOAWsE15SoQIuQMLG476IKl68U=
X-Received: by 2002:a50:8161:: with SMTP id 88mr6926648edc.394.1633004197606;
 Thu, 30 Sep 2021 05:16:37 -0700 (PDT)
MIME-Version: 1.0
References: <0F37C22E-D0D7-4250-95F5-74F05E207F9B@keylevel.com>
In-Reply-To: <0F37C22E-D0D7-4250-95F5-74F05E207F9B@keylevel.com>
From: Stephen John Smoogen <smooge@gmail.com>
Date: Thu, 30 Sep 2021 08:16:26 -0400
Message-ID: 
 <CANnLRdgyY+AcyA_qFSaRLMMRhquB7BEj9QgnDuKNo=aURP2zFQ@mail.gmail.com>
Subject: Re: [yocto] Meta-respberrypi socketcan - how do I bring up the
 interfaces?
To: Chris Tapp <opensource@keylevel.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Sep 2021 12:16:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54916

On Thu, 30 Sept 2021 at 05:21, Chris Tapp <opensource@keylevel.com> wrote:
>
> I am trying to get a Waveshare CAN interface[1] running on an RPi4 using =
meta-raspberrypi with hardknott.
>

I am looking at getting one of these so do not have final answers.
However looking at
http://www.port.de/cgi-bin/CAN/CanFaqErrors
https://stackoverflow.com/questions/64892746/socketcan-device-state-stopped
https://www.can-cia.org/can-knowledge/canopen/network-management/

The STOPPED state indicates that the device is detecting some sort of
error and can not continue. My guess is that the iproute2 command
tried to bring things up and found the bus in a non-workable state or
too many errors. For other buses this could be due to non-termination
(aka is the CAN bus connected to anything?) For some buses they have a
'self-termination' if the leads do not have the voltages/resistance on
the end. Others will fail (like removing the end terminator on a
thinwire ethernet network or not having a good loop on one of the
RS422? networks (memory is fuzzy if this is the one or it was a
different one))

Sorry I can't be of more help.

> I have added ENABLE_SPI_BUS =3D =E2=80=9C1=E2=80=9D and ENABLE_DUAL_CAN =
=3D =E2=80=9C1=E2=80=9D to my local.conf and see the following at boot:
>
> [    2.858284] CAN device driver interface
> [    2.879431] mcp251x spi0.1 can0: MCP2515 successfully initialized.
> [    2.891019] mcp251x spi0.0 can1: MCP2515 successfully initialized.
> [  176.170231] can: controller area network core
> [  176.178987] can: raw protocol
>
> So, the interfaces are detected.
>
> However, I cannot bring the interfaces up. I am expecting to use somethin=
g like:
>
>   ip link set can0 up type can bitrate 1000000
>   ifconfig can0 up
>
> But that results in :
>
>   ip: either "dev" is duplicate, or "type" is garbage
>
> This appears to be due to the =E2=80=98ip=E2=80=99 command not working wi=
th Busybox, so I tried adding iproute2 to the image, but the command then h=
angs the system.
>
> I have tried skipping the =E2=80=98ip=E2=80=99 command, but ifconfig then=
 reports:
>
>   ifconfig: SIOCSIFFLAGS: Invalid argument
>
> I can get some information for the interface:
>
>   ip -s -d link show can0
>     link/can  promiscuity 0 minmtu 0 maxmtu 0
>     can state STOPPED restart-ms 0
>           mcp251x: tseg1 3..16 tseg2 2..8 sjw 1..4 brp 1..64 brp-inc 1
>           clock 8000000
>           re-started bus-errors arbit-lost error-warn error-pass bus-off
>           0          0          0          0          0          0       =
  numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535
>     RX: bytes  packets  errors  dropped missed  mcast
>     0          0        0       0       0       0
>     TX: bytes  packets  errors  dropped carrier collsns
>     0          0        0       0       0       0
>
> What do I need to do to bring the interface up?
>
> Chris
>
> =E2=80=94
>
> [1] https://www.waveshare.com/wiki/2-CH_CAN_HAT
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54914): https://lists.yoctoproject.org/g/yocto/messag=
e/54914
> Mute This Topic: https://lists.yoctoproject.org/mt/85969475/6036588
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [smooge@gmail.c=
om]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Stephen J Smoogen.
I've seen things you people wouldn't believe. Flame wars in
sci.astro.orion. I have seen SPAM filters overload because of Godwin's
Law. All those moments will be lost in time... like posts on a BBS...
time to shutdown -h now.

