Return-Path: <lpmeyer@ics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8634CF34CF
	for <webhook@archiver.kernel.org>; Thu,  3 Oct 2024 22:31:29 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
 by mx.groups.io with SMTP id smtpd.web11.9569.1727994683840041932
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Oct 2024 15:31:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ics.com header.s=google header.b=e/rYsdLC;
 spf=pass (domain: ics.com, ip: 209.85.210.54, mailfrom: lpmeyer@ics.com)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-710de2712eeso609824a34.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Oct 2024 15:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ics.com; s=google; t=1727994683; x=1728599483; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jVlUXMRBcFGJ51MjkJWOPSyX+R5vGyvKEmZnkJVSgaQ=;
        b=e/rYsdLCV1eLrjbs5W5lnHLC5X+Hob0CqZaxERmzSA/vxymV7ApIZPzXIeqk1ndTn5
         TFvmMLdIX6KbUiXNaGBljVTT5kv9esQ8gLSNGaKf6QEPY1l3Z7skqmlXVz3WTiCFkILf
         4fmZmbXTHClDI4VTCfPP7J/J/4EE2NVzB1vBF1l5+uX4kILgHTlww/YgNsHXcBXxJO8Y
         aIFgzA4VbH1j8flXinsFBA6cftuyx5nu8GZsBnIP3sfSy6ON+QR+j7g0qsD3Zu6yxqbK
         NsP0/xbih85N63sHvyLt3IlAEw0IoVptAkHZkbyaqrZYg3ARdRgJGnrxPWYXcsmqJ92U
         ZVjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727994683; x=1728599483;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jVlUXMRBcFGJ51MjkJWOPSyX+R5vGyvKEmZnkJVSgaQ=;
        b=Wh/Nz8FAhD+tcDufU+06hu+vYLEiYin+rWxVI1W/HQ0cAq3BvbHNthVen3a2jBpiT5
         oyVo8e/Qh39AchuQPk9cfncldliCTmutraFUg/2GQeUAv4LPSlTpILYlNPx1XfiILdVC
         aghqO7putzeuUbspoH4h+lsc7BpOuZJwjRSFx/hsA2JETi8CRGxY9NNdTjeRfuCNZ51b
         S8C//++xO4D6wK2CqfNjPTzbCcQMRhbcr614/8LQasnnp1EG1RxNdk21G+At+FTNNNLp
         cRz9bgNy6nmjGJJfZq43MnW4ooC5d7GddN3UDBvbhFtRJgz2iVaJpxiaPNYLlA7XJfa9
         gpFA==
X-Gm-Message-State: AOJu0Yx4u++FMc2D7dG8AhibZ9vapofOVxjEMScTaTuwZMWuAlCV2KJF
	S5JClGS/Jzz0ZSFgvIBB9GNDJsGNzvtKuiZa2PA+RXSaos/1y6bL9CQg6LqPCfE5shmcPYFv/C9
	rtNkgOhb3fjKLCLjwCQLEDEjIqMidwJYpuQfCpW6RwG3nWtAfriA=
X-Google-Smtp-Source: AGHT+IEr0Mfu6MaDGJYXLdmVxct2Fx8x1OkGcnwxwfV61tBWdO6JfTZvb/FgvaB3xzoIe1VajZrpejNL2q2E4g9DLbQ=
X-Received: by 2002:a05:6830:3813:b0:713:722c:835f with SMTP id
 46e09a7af769-7154e934c19mr703403a34.18.1727994682765; Thu, 03 Oct 2024
 15:31:22 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Lisandro_P=C3=A9rez_Meyer?= <lpmeyer@ics.com>
Date: Thu, 3 Oct 2024 19:31:07 -0300
Message-ID: <CABqjNW8-m1TTbh=BzSvYsZSbuu7z56=sfEszdtsNcZWF7UdnQw@mail.gmail.com>
Subject: [meta-raspberrypy] scarthgap: reproducing videos with VLC or Qt using
 the GPU
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Oct 2024 22:31:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63934

Hi!

I have been trying to reproduce videos on a Raspberry Pi 4 64 bits with:

- VLC
- Qt 5 Multimedia
- Qt 6 Multimedia

But in all cases I am facing issues and/or decoding via CPU instead of
using the GPU.

Let me summarize my findings and hopefully you can guide me to a solution.

In all cases I'm using Weston.

## VLC

Currently VLC defaults to `rpidistro-vlc` which, I understand, it's a
heavily patched VLC fork, and many patches are for using the GPU.
I've tried building VLC but then found out that it requires an older
taglib, failing to build from source. So I went ahead and forced an
older taglib (1.12, perhaps too much) which allowed me to at least
build VLC.

I noticed however that rpidistro-vlc is currently being built without
Qt, so I am using cvlc.

When I run cvlc I get:

```
rpi4:~$ cvlc big-buck-bunny-1080-60fps.mp4
[00000055b96bd120] main interface error: no suitable interface module
[00000055b968f410] main libvlc error: interface "globalhotkeys,none"
initialization failed
[00000055b96bd120] dummy interface: using the dummy interface module...
[0000007f740013f0] gles2 vout display error: parent window not available
[0000007f740013f0] gl vout display error: parent window not available
[0000007f740013f0] fb vout display error: cannot get terminal mode
(Inappropriate ioctl for device)
[0000007f94114d20] main video output error: video output creation failed
[0000007f9cd826d0] main decoder error: failed to create video output
[h264 @ 0x7f9cd92c30] get_buffer() failed
[h264 @ 0x7f9cd92c30] thread_get_buffer() failed
[h264 @ 0x7f9cd92c30] decode_slice_header error
[h264 @ 0x7f9cd92c30] no frame!
[0000007f780013f0] gles2 vout display error: parent window not available
[0000007f780013f0] gl vout display error: parent window not available
[0000007f780013f0] fb vout display error: cannot get terminal mode
(Inappropriate ioctl for device)
[0000007f74045e20] main video output error: video output creation failed
[0000007f9cd826d0] main decoder error: failed to create video output
[h264 @ 0x7f9cdae890] get_buffer() failed
[h264 @ 0x7f9cdae890] thread_get_buffer() failed
[h264 @ 0x7f9cdae890] decode_slice_header error
[h264 @ 0x7f9cdae890] no frame!
...
```

I noticed that RPi OS is shipping a newer version, so I took the time
to build it, but got the same result.

I did try to build it with Qt 5, but failed (I might need to apply
extra patches...?)

## Using Qt 5

Any video example in Qt Multimedia is simply using the CPU to render,
and goes REALLY slow.

## Using Qt 6

This is clearly still using the CPU but it's a little bit smoother than Qt =
5.

## Extra questions

Maybe I need to go with 32 bits and use the userland video driver?
Something else?

Any feedback here will be highgly appreciated.

Thanks in advance, Lisandro.

--=20
Lisandro P=C3=A9rez Meyer
Embedded Platform Engineer

