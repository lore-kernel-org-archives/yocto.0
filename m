Return-Path: <arun@c3mdc.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E675BC4332F
	for <webhook@archiver.kernel.org>; Tue,  1 Nov 2022 14:06:00 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web09.590.1667311559229907232
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Nov 2022 07:05:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@c3mdc-com.20210112.gappssmtp.com header.s=20210112 header.b=w/DcwNnW;
 spf=neutral (domain: c3mdc.com, ip: 209.85.208.180, mailfrom: arun@c3mdc.com)
Received: by mail-lj1-f180.google.com with SMTP id u11so21040021ljk.6
        for <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 07:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=c3mdc-com.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Jl8E5bFBioy06QYPdtj637Rorg+Q0d2UhtbBx17UPm4=;
        b=w/DcwNnW83nmqjpJKz7OfrpeCJbzKZYoBbmjRurURRg1iQMZmczSij2wZ7zeRLf+ye
         iA/YnKVQCSlCwyrI9T+Jfps5gUUc15Q+v8r8/158roInFZm6tC1tG8MinBHnaOmf27gO
         ydBjdBMV/xQNRH29F09dJNrxkjxNnstKS5SmNLSx7XRsmj2UvePFuKSzNiJsmOxW2ia0
         o223m0kepM6dNBuRw38H47MI14wWP8LraNQwECS/LsmWbY+E+1eUNyOqtKh44GQu6MkI
         x17HgmPmwSyzoK1JeDt1+/LgEXuDzTjzRn+XeL8qlc9Anzgj3kpl9VjYu8f/7wiHwO71
         F1og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jl8E5bFBioy06QYPdtj637Rorg+Q0d2UhtbBx17UPm4=;
        b=g8uDf8gWm1kXmNrIa8eIeqzTM7LyI51QqRc+JH3KVTTuUWNRmxudOm7NcXc/bRZyKq
         ET4z76vdTsjvFUqWkF1g+GupxjdwXkBWJ2xhXNDeJnTkGaRJDOSVQXyzVqlmIkutVFNA
         YLKo9f93fFxVT8pZq4PapvW2AikzCmTJukbuxnShrgKddETksxQ4k1XSjoX0l4DcESTE
         vmkbyOIRn0LJhIRuWIOv7Y9etr3lOt0H+0WKnMT/GSUcHNsjnxErP2KQQfcGFUomaboq
         Mhsks7zFgUalz6jcsLcvNAvvYQQRZb4TbEUIslzBO5DvixgNvWXIV64YhvYH6YDF5GcV
         MVSA==
X-Gm-Message-State: ACrzQf3sx87kC+hKUlzf4+eDXN8i4a9E8mSFxC6aNIhwsaA8e4OOc0bf
	JaTedFb+rjvUHOlWK78VbS9L2JuX21BjG55yO5GZiabMnV2dGqVl
X-Google-Smtp-Source: AMsMyM7PaJOQa3dSprnIDFzDGUNRM91oWmHSK6dYEdsr+QclJbUj9jpku8y03I/4LaKNOvNdjc6uJ+guKSIEq9OjMJo=
X-Received: by 2002:a2e:a211:0:b0:277:1888:e14b with SMTP id
 h17-20020a2ea211000000b002771888e14bmr851827ljm.339.1667311556988; Tue, 01
 Nov 2022 07:05:56 -0700 (PDT)
MIME-Version: 1.0
From: Arun C <arun@c3mdc.com>
Date: Tue, 1 Nov 2022 19:35:45 +0530
Message-ID: <CANKWXuZF2-+mpjHyd1CAgBXirdNnntZx9U_LBBE_SK7+=U+hYA@mail.gmail.com>
Subject: [meta-security]Circular dependency issue when using dm-verity feature
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000015ab1105ec693986"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 14:06:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58458

--00000000000015ab1105ec693986
Content-Type: text/plain; charset="UTF-8"

Hi,

I was trying to build a linux image for the microchip SAMA7 board with the
dm-verity feature of the meta-security layer. But using this layer for
dm-verity causes a circular dependency error during build.

my *local.conf *changes:






*INITRAMFS_IMAGE_BUNDLE = "1"INITRAMFS_IMAGE =
"dm-verity-image-initramfs"DM_VERITY_IMAGE =
"custom-image-sama7"DM_VERITY_IMAGE_TYPE = "squashfs"IMAGE_CLASSES +=
"dm-verity-img"*

I have to comment out the line:
*do_rootfs[depends] +=
"${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYPE}"*
in the dm-verity-image-initramfs.bb file to avoid this circular dependency.
But then the .itb file in the new wic image is not updated with the new
rootfs ROOT_HASH. So the dm-verity check during boot fails and the image
won't boot.

I'm using the dunfell branch. Is there any way to fix this issue and get a
working wic image?

--00000000000015ab1105ec693986
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I was trying to build a linux image for the mic=
rochip SAMA7 board with the dm-verity feature of the meta-security layer. B=
ut using this layer for dm-verity causes a circular dependency error during=
 build.<br><br>my=C2=A0<i>local.conf=C2=A0</i>changes:<br><br><i>INITRAMFS_=
IMAGE_BUNDLE =3D &quot;1&quot;<br>INITRAMFS_IMAGE =3D &quot;dm-verity-image=
-initramfs&quot;<br><br>DM_VERITY_IMAGE =3D &quot;custom-image-sama7&quot;<=
br>DM_VERITY_IMAGE_TYPE =3D &quot;squashfs&quot;<br>IMAGE_CLASSES +=3D &quo=
t;dm-verity-img&quot;</i><br><br>I have to comment out the line:<br><i>do_r=
ootfs[depends] +=3D &quot;${DM_VERITY_IMAGE}:do_image_${DM_VERITY_IMAGE_TYP=
E}&quot;</i><br>in the=C2=A0<a href=3D"http://dm-verity-image-initramfs.bb/=
" target=3D"_blank">dm-verity-image-initramfs.bb</a>=C2=A0file to avoid thi=
s circular dependency. But then the .itb file in the new wic image is not u=
pdated with the new rootfs ROOT_HASH. So the dm-verity check during boot fa=
ils and the image won&#39;t boot.<br><br>I&#39;m using the dunfell branch. =
Is there any way to fix=C2=A0this issue and=C2=A0get=C2=A0a working wic ima=
ge?<br></div>

--00000000000015ab1105ec693986--

