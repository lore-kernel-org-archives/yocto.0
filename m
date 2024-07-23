Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6203FC3DA49
	for <webhook@archiver.kernel.org>; Tue, 23 Jul 2024 16:30:35 +0000 (UTC)
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
 by mx.groups.io with SMTP id smtpd.web11.327.1721752234178052520
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jul 2024 09:30:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VmWvTIrk;
 spf=pass (domain: gmail.com, ip: 209.85.160.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-261e543ef35so1637501fac.3
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jul 2024 09:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721752233; x=1722357033; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=22Ry2Rpbxt//6DJzsLB9Vtsc2QRu9gqsO9eTBqkGaIs=;
        b=VmWvTIrkUZPHQPFOxoFKqyRw9qRXe0IUt4/AIOi+hU94wdRZAplZ8aUm2OCSZhAANL
         fAcho8/8iGgkWcvw9voG7ng/F0fz254Tf16pGeM/eLAWcV4Pn73+awb3D7rZGxq+nhju
         H+3gVunaivt4XQMZhBrfbOpMjm1wE2rBDngx7qYoN93zawLGuhCTsftDI7msg0Emx0tb
         Uzx+lIBrcmCVlmkEeyPHVyAHgvL/FuIqY2y6wy0eh8fVQ5JJojOwsVjvJoTiev+p3YPw
         7vsxfgQnxNgi4dYs7zT7WDHeAR8hkUza3OGQJeiOS8vYXL/9px+m8OUpkgDRtHnnyPVH
         2SZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721752233; x=1722357033;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=22Ry2Rpbxt//6DJzsLB9Vtsc2QRu9gqsO9eTBqkGaIs=;
        b=v5EDPmHJNPTiPMvLN8wE5olUnxRvamplAzQreir6cph39NaxC2YzkorCqNxWM6l71j
         ZQsww7hbgH/xw6EoGeRs5vPzAQ7lXbqrgqQBSqPcDxFB4Vl3rGf6N6OPYXkBfEJadEDv
         sFj2iUarRQql6km57ACTzm7hhab+8CAhwCElqJgbsmm3czhdGyL8kRjS8sphuCi2fdcA
         jqDg1pSqf+DmnQFIaPiCFFcfUWx7h0b0BC5A2j7/m52X/UOKMVQhhiVkZXVNdjiGOqc5
         3qG5zdJAhoLXWGhVTIa4k57nY5/3SqH5giSDjEQP4x08Ap9bCitoWnAmf5U9YbimyfUu
         8Igw==
X-Gm-Message-State: AOJu0Yx/3V7edZ2plioQgO1PAPbNGFUg0ljtNu6sSWjSy2pwE+Vb/7Ep
	lRgfwKNDJE1FGrssghg/ZZwe+fwkczKmPaQr/qjmEYnM+uace2zf0Jp91COKf2VXrNFKTlnEZjR
	jKUtRAhD/pQKcsL9+Guz5G0PEBKcP1plcmUk=
X-Google-Smtp-Source: AGHT+IEfTej/xQggBzoqtI7ZGMfQQQKdG1zQFX6x+erCEFsyP6SgmrMmESEs8f2h6j7ns5tX3OOR2oORDSsFtV0GTHo=
X-Received: by 2002:a05:6870:96ac:b0:24f:ef6b:353e with SMTP id
 586e51a60fabf-263ab67f103mr10252755fac.36.1721752233157; Tue, 23 Jul 2024
 09:30:33 -0700 (PDT)
MIME-Version: 1.0
References: <P7hn.1721720933205323471.IEh8@lists.yoctoproject.org>
In-Reply-To: <P7hn.1721720933205323471.IEh8@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 23 Jul 2024 09:30:06 -0700
Message-ID: <CAMKF1sqaSSdJ5K6q2YX=Fypz8d9g463DUKdE_ZpOVr9zZ_5MsA@mail.gmail.com>
Subject: Re: [yocto] Enable LinuxFB on Raspberry Pi 4 #framebuffer #qt
 #raspberrypi #scarthgap
To: yocto@lists.yoctoproject.org, bartiszosti@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jul 2024 16:30:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63561

On Tue, Jul 23, 2024 at 12:49=E2=80=AFAM bartiszosti via
lists.yoctoproject.org <bartiszosti=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Hello,
> How to enable the LinuxFB on the Raspberry Pi 4?
> I'd like to start a Qt6 GUI app with the LinuxFB platform, but currently =
I have such output:
>
>
> qtwidgets[229]: Unable to figure out framebuffer device. Specify it manua=
lly.
> qtwidgets[229]: linuxfb: Failed to initialize screen
> qtwidgets[229]: no screens available, assuming 24-bit color
>  qtwidgets[229]: Cannot create window: no screens available
>
> So far, I set CONFIG_FB=3Dy, but still I don't have any fb devices under =
/dev.
> How do I enable it?

How are you launching it ?
We have it working for odroid-c4 here
https://github.com/YoeDistro/yoe-distro/blob/master/conf/projects/odroid-c4=
/config.conf#L28-L33
for rpi we use EGLFS and it works well as well.

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63556): https://lists.yoctoproject.org/g/yocto/messag=
e/63556
> Mute This Topic: https://lists.yoctoproject.org/mt/107500803/1997914
> Mute #framebuffer:https://lists.yoctoproject.org/g/yocto/mutehashtag/fram=
ebuffer
> Mute #qt:https://lists.yoctoproject.org/g/yocto/mutehashtag/qt
> Mute #raspberrypi:https://lists.yoctoproject.org/g/yocto/mutehashtag/rasp=
berrypi
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarth=
gap
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

