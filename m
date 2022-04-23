Return-Path: <toyonembedded@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A53AC35280
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:11 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web12.11015.1650747383770316502
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Apr 2022 13:56:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=deX6rUuC;
 spf=pass (domain: gmail.com, ip: 209.85.214.173,
 mailfrom: toyonembedded@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id c12so18457391plr.6
        for <yocto@lists.yoctoproject.org>;
 Sat, 23 Apr 2022 13:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=epiof9IFSDJWUA4r2aTM4kSokRns1z3DHP1/LQUZFOw=;
        b=deX6rUuChtEop5Tby7KHvtiP7BQ5gH/t//yuvbPdcBzjvSqzvcB8V5HiQcDvjUrSML
         sznOvZ3N+2Be8ygJIIdGkbJPsGFNkX/tnX0f496FisIIrUuY1G01QR5+79eSo1BZOxJy
         dL1VIh8cM7YnrD81QYNMEWRpfezqbZSdNy8Ynb399c895wmvaFVyikQ3Mi7+kZanVRpv
         htz/RsS5iP109Hp8TzfslvSxdpTl1ZIdeuzoUvsFUFXws68jXsL+oLh4iVG52oH01SZm
         UVx1PZToy5bFB9DHvfxU2A3PKa2KrY4PtINTuieHPGv1/BrXMlwXK2CW7gLu6+NsNtSd
         fmHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=epiof9IFSDJWUA4r2aTM4kSokRns1z3DHP1/LQUZFOw=;
        b=c4yINPenHFdoxLc5FKwmSx458ZR+h3+FvRHM0gPhUVOoIXNs88FsfIe4xoR/oF8/Vu
         MfDvdOC7LYEhNYrENfRT02b2+05SvIdoc8Ic0hL7LVDmmiyrnhPeN8fLWYH9zqNUqI/J
         16QlfpiEQ/JU3B3bUZvkKaJQpRsYIlCS+XnzJnFTzRdVBGCsN+zny+pIK7UQMi8YUeVp
         W7l7LD+6Vaxw7aX3s6ZhS7smGDTm41KGtp4NS1kx7tIQaez4Zgaa5DOE+0VAb4sdWx1M
         pWWbYWYmvzo9UGlMC6iUHYdG4zhorPzlaSWNokTq6fyQXTVxc7nBQA7bbSRQjkOpx7wf
         OKsg==
X-Gm-Message-State: AOAM5327XBNGh5ts57oRJnLzPqkxvUbw7jnMAwkiJNuiBZk0u0JX67nt
	LaFxkOHJhT7DJP2p8WLtgYy5r+0LYwDzJ+PL45AHYgs7C/g=
X-Google-Smtp-Source: 
 ABdhPJxhA4qGoQGpfqFckLWJhshWdDZd4hcZnwB4x6rrbqMkZKVY8+NsZj+I2iGdtFyFqs3DQBTEA84at1Q6nGstJ7s=
X-Received: by 2002:a17:902:820f:b0:158:c308:d4c5 with SMTP id
 x15-20020a170902820f00b00158c308d4c5mr10457211pln.155.1650747382767; Sat, 23
 Apr 2022 13:56:22 -0700 (PDT)
MIME-Version: 1.0
From: Embedded 1 <toyonembedded@gmail.com>
Date: Sat, 23 Apr 2022 13:56:11 -0700
Message-ID: 
 <CA+4rcE4K6aPMpAcgTsAcj7AY1YNF1sw2uUh=j3dToFGWg=f53g@mail.gmail.com>
Subject: have busybox prompt for password in initramfs boot
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005d247805dd5893ed"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56851

--0000000000005d247805dd5893ed
Content-Type: text/plain; charset="UTF-8"

when I boot my initramfs and run init=/bin/sh I'm not prompted for a
password. How can I require a password before entering the shell?

This is my initramfs recipe

IMAGE_FEATURES = ""
EXTRA_IMAGE_FEATURES = ""

export IMAGE_BASENAME = "test-initramfs"
IMAGE_LINGUAS = ""

PACKAGE_INSTALL = "\
  base-files \
  base-passwd \
  busybox \
"

IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"

inherit core-image

inherit extrausers
EXTRA_USERS_PARAMS = "usermod -p $(openssl passwd test) root;"

--0000000000005d247805dd5893ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>when I boot my initramfs and run init=3D/bin/sh I&#39=
;m not prompted for a password. How can I require a password before enterin=
g the shell?</div><div><br></div><div>This is my initramfs recipe</div><div=
><br></div><div>IMAGE_FEATURES =3D &quot;&quot;<br>EXTRA_IMAGE_FEATURES =3D=
 &quot;&quot;<br><br>export IMAGE_BASENAME =3D &quot;test-initramfs&quot;<b=
r>IMAGE_LINGUAS =3D &quot;&quot;<br><br>PACKAGE_INSTALL =3D &quot;\<br>=C2=
=A0 base-files \<br>=C2=A0 base-passwd \<br>=C2=A0 busybox \<br>&quot;<br><=
br>IMAGE_FSTYPES =3D &quot;${INITRAMFS_FSTYPES}&quot;<br><br>inherit core-i=
mage<br><br>inherit extrausers<br>EXTRA_USERS_PARAMS =3D &quot;usermod -p $=
(openssl passwd test) root;&quot;<br><br><br></div></div>

--0000000000005d247805dd5893ed--

