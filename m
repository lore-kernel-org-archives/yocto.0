Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C646C0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 21:51:26 +0000 (UTC)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
 by mx.groups.io with SMTP id smtpd.web11.6080.1738273884041629212
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 13:51:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NgOx2Kus;
 spf=pass (domain: gmail.com, ip: 209.85.160.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-29f87f1152cso668588fac.2
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 13:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738273883; x=1738878683; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xOYrQLMM7i0LQX1HZwfb5vABZ7R8prttdHAWqLpE9dc=;
        b=NgOx2Kus3SnFf8q0xb/G3F1IbzBw2hCJYOLB5mAwrL+2jFkSX1uHNWrNNPM1qVF7ei
         z0cUTvAwz4GngUYjAY8iFzdISzaBY6QiG/LA/ORy3QczFaF3Eut3GseS5uOG9bXp3ZX1
         P08LQ+UA7ZGmIQ3LVaqYhJwbZ9OnMX2is81h/UkiYbqK7h1CQ5vvWZAwj5UbRH42UeJd
         zZKBE6lHDvXVySWKIZxHb1swC7GAQD4JatibfjMln/ZrgU4ELW8scuiDFiGEdHP16t3T
         aUHVOGD0tK7IY1cc4lZpY2sYS/2mn2cC94LfPL4gJaqL0w3wG5VzQ4f0YE+V5FSjoWi0
         C64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738273883; x=1738878683;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xOYrQLMM7i0LQX1HZwfb5vABZ7R8prttdHAWqLpE9dc=;
        b=FB9oPsjEgHMyjNVMSCkXl75vMQwl6HtlsvV0GkTDRA3ntCIQcaL0D3Z5eEpqN4G+Fe
         /43PHksnD9w6M23taPWDTJ6nX721AewD1yDy1OJnFaaLSE+UV5kEk0A5RogWtNFxDcEA
         pPi/RuaF1673YmS3l9IOwMR2a7LuHDh6qp3eTB3VKY38y9DzHNcKbSL1CxvUUXLqWQn0
         CekUgxVRIwv3RLIjhpTh9qOt1SOGBM8ngGmqm6L2NCWlD6Xn0QflrVH5KhTgTKL8GkoF
         XCVpQuNYDTdSdWLMh8tVRVBxCTpVKm1rq04uqaDlt61vfOQGwyJidq7KoVMEuyz2dPXQ
         CFiQ==
X-Gm-Message-State: AOJu0Ywuj++srxqztSc0YrqEs7kjVUng1VM6a/vQCE/xRpXHAfStA7AY
	MyepYHXjescSSpzoKEzaQvybZ+73JJznry/BpkqqDsZqKMVawzW92rUctlj3HhtAWfEx431xRLq
	Kpzbhc+2Cj0ryJajFwP8N3ui45rXQx7K/FMM=
X-Gm-Gg: ASbGncufRHWXZAJmxzb9W74IJNY835oH1+QYHjc30jpaFgllbKQfGBQB1h+UfvWIh9d
	zKZ3PEzXrhkqnmyhBsqXW7UwQAjTYre3LDK1cuwdWaDIm/ZOUItfjFnhJraK3Mqu6+peCIXf1X1
	FvuPirpdq3bZsCFhWaAsKsyjxEjw==
X-Google-Smtp-Source: AGHT+IFAT1u2BJ1te1xTnGjR8oFTLIHQGgxPzsc2kep5BBQ2wB4rKPa5aQgzwvqhUcJLstHpjCXFtO+9tqKkYrwV08E=
X-Received: by 2002:a05:6871:630e:b0:29e:4985:fef with SMTP id
 586e51a60fabf-2b32ef7560bmr5643773fac.3.1738273883153; Thu, 30 Jan 2025
 13:51:23 -0800 (PST)
MIME-Version: 1.0
References: <MW5PR13MB5632F256FE6E4330430196EFFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
In-Reply-To: <MW5PR13MB5632F256FE6E4330430196EFFDE92@MW5PR13MB5632.namprd13.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Jan 2025 13:50:57 -0800
X-Gm-Features: AWEUYZl1Grk-eWJwtMenBfpBvm1vf5poUteA6qwEdP2YW0BqG4gAJF_6catdREE
Message-ID: <CAMKF1spR-X_bM=-xKeG4vNATeKn9qOkw5NgX6ChCLkvOLAjQzA@mail.gmail.com>
Subject: Re: [yocto] How to determine distro for a YP-based image?
To: yocto@lists.yoctoproject.org, tim.bird@sony.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 21:51:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64685

On Thu, Jan 30, 2025 at 11:48=E2=80=AFAM Tim Bird via lists.yoctoproject.or=
g
<tim.bird=3Dsony.com@lists.yoctoproject.org> wrote:
>
> Hello YP users,
>
> Is there any way to tell what distribution or bitbake image name was used
> by looking at the contents of an image.
>
> I recently built a distribution based on Poky,  using 'bitbake core-image=
-minimal'.
> I had hoped that I could see this recorded somewhere in the image, so I c=
an distinguish
> between that image and another image I sometimes use from Texas Instrumen=
ts
> while running on Linux inside the image.
>
> It doesn't look like YP populates /etc/os-release, where distribution inf=
ormation
> is normally stored.  Is that right?

The reference images from poky do not include os-release package which will
provide this information, so you can manually add it via local.conf to
IMAGE_INSTALL
distros do add it for their specific images e.g.
https://github.com/YoeDistro/yoe-distro/blob/master/sources/meta-yoe/recipe=
s-core/images/yoe-simple-image.bb#L21

>
> Is there anywhere else inside the image where information about the distr=
o
> being built is stored?
>
> I'm relatively inexperience with YP.  Is there somewhere in the build whe=
re
> the bitbake command that was used to create the image is stored.  Could
> this or other data be used to synthesize an appropriate /etc/os-release f=
ile?
>
> Thanks,
>  -- Tim
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64683): https://lists.yoctoproject.org/g/yocto/messag=
e/64683
> Mute This Topic: https://lists.yoctoproject.org/mt/110903643/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

