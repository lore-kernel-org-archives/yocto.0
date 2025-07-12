Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27C44C83F10
	for <webhook@archiver.kernel.org>; Sat, 12 Jul 2025 13:29:36 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web11.36019.1752326973057808415
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Jul 2025 06:29:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=wsOGb33D;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.177, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-716ee8947cdso30966917b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 12 Jul 2025 06:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1752326972; x=1752931772; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dB84RkuknEBz1C6U10y8qr+pG5KQsq0/eLQTgELp+1Y=;
        b=wsOGb33DDNGugWD2GabRM+1yXJgaxKRwJaWF3/eUZF5omZekEx8EzWlCYzsfkoNKM8
         xKQjXBkSj6AyDulNnj3jcPe+RmZZ8/gPdBBBasHDNi+p5i4jW/U9HELcvTH+k6n/WvsJ
         IPmX/BGvCixS4QkblUCwuYaVH48ixTNp6BRhuG/sia7gTn9YYahOEvTvqhBA6VkqnJl8
         F6dmnWm+Dw0SV2IfbGCm1Y40EOiKRSj2/yJNZU63e12b3VQbuQJH+95RM2xO7CMZQHZ5
         +AR+nhPwvDneJTi4aEc29arnRFk8d9nXRVUY6wnv7X3u2xUkbbhrjfLA73fBGmDdG6BM
         B5tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752326972; x=1752931772;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dB84RkuknEBz1C6U10y8qr+pG5KQsq0/eLQTgELp+1Y=;
        b=bk7ML894vJ7o8Her27ema5hQKFhx8MtcbdikxPKTqs6ldCrlgPNwG8X9f6yTA0pUgJ
         exgkxV8dX9KVuCXBrkqNALOVUA0UT6XecMWCYJZaVG1EONd90v+emEM67iz6+lWtIqIQ
         wBf4mntcHB4OF/UXURmiHTvC9oXI8e8PW/2422r8KTXjq1xA4VG5hmcWJGzHXIgWROMe
         AEhV9LsLJ2BJ735p9pCk6V/ONMEgHcoCbYRNq5grf2PeDXhnOr5SNqo7UkTfav0NeZTE
         vcS6CkZ55yfCgVzwJJ5OG/W82h9riRfP+nP7BvCbrCMdUJohtTyvRM8u/7CPBAB1aTSj
         5c0Q==
X-Gm-Message-State: AOJu0Yzmr6UQQrjYDkxY1UdAn0KatrZzd9kiCJf3Gtao+16wX0oNLeCq
	Tg6K7NmQ0yGJPw9SL8xe2K4eiaewAUX9mFeU+3cq+VuRMT5meut3jpR/D814/8+0I3mM9Jnp7og
	mFgrvJnfh+2nr0u85bgC0fMkqMjJB6fFYoCiaPnrd96jbpcKftRnO
X-Gm-Gg: ASbGncuQlPaPO9nIA5eNjBulrjOaW4V+P85YhUxF+NchCmRgcBZ6q5IcFFz28lDYmqD
	L1yWZVG8jOJFl5ukFfiVjv+7IDH5aXrZRSQboCum+IDdY1GMpVjFD743i729Gz0vAHD92iLPJvH
	HH7ZdCWKEMf1zJUVhbqNSbrY69pemKTDoGh2B3dNYSqKkpNHXBb0REPm5BZBnYDEcrPL+pacZZS
	jRPO8yenakVwRh8jcmu1AFuE1MN3wk5T0LW720=
X-Google-Smtp-Source: AGHT+IFj0n0Bc60psisRr/BXd8XZRITDrs/QzOTpMsOROye0aYizhknvpxOiyN4y+/7gQG232i+swBalNbhQxG3dY/M=
X-Received: by 2002:a05:690c:6385:b0:70e:16a3:ce96 with SMTP id
 00721157ae682-717d5dedd66mr124552007b3.26.1752326972038; Sat, 12 Jul 2025
 06:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <01010197fb30e9d5-ef39166e-58fd-4885-a2c0-93efc95705c6-000000@us-west-2.amazonses.com>
In-Reply-To: <01010197fb30e9d5-ef39166e-58fd-4885-a2c0-93efc95705c6-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 12 Jul 2025 06:29:21 -0700
X-Gm-Features: Ac12FXwZzt4VGP7yyETb6DV1sOL8HBbJmC9IifGkj7sZAE9CgHwijfJlEC6DI6c
Message-ID: <CAOSpxdZF7nJT+B6fpQfqHQ3fa8L=y38NWoq1LzrsgdDPkePKvg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.11.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Jul 2025 13:29:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65650

This was an "all green" build, so OK to proceed with QA

Steve

On Fri, Jul 11, 2025 at 1:32=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.11.rc1) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.11.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/1997
>
>     Build hash information:
>
>     bitbake: 139f61fe9eec221745184a14b3618d2dfa650b91
> meta-agl: 6ffa98047a37d1c04f60ff07f29db625e1066e91
> meta-arm: 8e0f8af90fefb03f08cd2228cde7a89902a6b37c
> meta-aws: 99809c787fce30b657487518af3efb1ebfe7f64a
> meta-clang: aef850f7fa53121c74b244b7ae40d31fb9809ccf
> meta-intel: 38e75c8c1059e5f37659c140c010eaa203238fd2
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: 727811eaf256b88fd135be99559f2cbf14c82fce
> meta-virtualization: a5449c0c50aa07d02186f548fe6bb6c1ce8823dc
> oecore: 7a59dc5ee6edd9596e87c2fbcd1f2594c06b3d1b
> poky: ae2d52758fc2fcb0ed996aa234430464ebf4b310
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
> View/Reply Online (#571): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/571
> Mute This Topic: https://lists.yoctoproject.org/mt/114107581/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

