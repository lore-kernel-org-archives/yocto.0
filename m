Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686C4C369D9
	for <webhook@archiver.kernel.org>; Wed, 30 Apr 2025 16:41:37 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web10.422.1746031290990009738
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Apr 2025 09:41:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hO1k3XOA;
 spf=pass (domain: gmail.com, ip: 209.85.167.177, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3f6a92f234dso81061b6e.3
        for <yocto@lists.yoctoproject.org>; Wed, 30 Apr 2025 09:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746031290; x=1746636090; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4k8MbdMvVRkJwnKXoeYkA7EhSOswxTAAKRA9lV+eLqU=;
        b=hO1k3XOApNlyESlRoQglGM6VZISyy4UUcGXDA8OZ8nPrYgxNFvbULJodFFzuCjF/9M
         cSCARfKDsnV+4D/dXGEkJ/OL0mDWiwLmfFEOYN36FXLdc1fj/OeG3BlPAuGMCppyvXwN
         QBupyKermP0ryd4UW/mJnsBid/GLmFXFTKVF97Ao+a6shsBJZ8wEp0lCq+3tXdvf3+qT
         IOyMAAyOqufRpE8xZsnPE2dE33Rj6aSjCvGR2XPo1hZGVONmccCgy/9I/y1lqDjEfDrD
         DBFfX89zj6kVjPHTklvtuqiVNxD3ujZPmkIDKpeLV9SllCFnfKXb6tuElVUQl3jmqFmL
         ypbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746031290; x=1746636090;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4k8MbdMvVRkJwnKXoeYkA7EhSOswxTAAKRA9lV+eLqU=;
        b=gs0xLvaXkOo4g71ovlLNZm1+3ZtNeLNTnWtNJiNwjWLaWWp5mvtGhGYnomSByzAF36
         u0q00q7lHDTV39Oq34b4KL5x3lvXwZbXimdOLTxRKolWiZjbveR4iUwk/wr3eoLYD0sd
         qll/u52PVgAxPNWUV1IO185sZLx3Og8tA09FQGj2SmqLYzbwCy5xrVeD/Rxl85KhknEs
         cAeu0GH2TyVBUkCJPYHyQIdH/1C8mvgpsHLYFgnslEF6TTK7MQqOrDYyMHXkEC/Q+aqj
         fyqtKh5ry3vBER4g4+mLOpcINVtXzrvoMCEakaE+GJWzH3pgcKG2e0HEbr/MoWRhuqyw
         HzPg==
X-Gm-Message-State: AOJu0YwC1phear6F0N5pzFWroMgf1W7Q4O0H8Hlfe3DvdU/aG6XevoZW
	yX/zDL68GobeOU6+/2zW7JvttyR9NlOWNlq5kIhmgYKtEh3EqIxTDl+d+XU0lL8MRtJHFQRfXZP
	sLIVXBji8GodFayNnF8FaofRL1JxhkweguL8=
X-Gm-Gg: ASbGncvkO96zTfWoSzvyCh5rgeG82HgcpieZA6zEbOf1JB01+MBW3aR+dSj8vFFLi4R
	hiZgFdWo+RGmsqMzJ3nPMAvpV6ZtQq8VgrBeRye61PSurTyuJVbVdgGkwb+NoGSxye+VKev8XWN
	KKr76NZRFQXAqw4dOWOzgn
X-Google-Smtp-Source: AGHT+IFvEe/VU8LH1nCdW3wa/GYMcVJPveI6dURfsyPfLAXRg5QE9tzyEVyIAcrCpikaqnCeIQ2b9jAvbY/B1zp+RRM=
X-Received: by 2002:a05:6808:3384:b0:3fe:bc96:b82d with SMTP id
 5614622812f47-402d24f94a2mr2077744b6e.36.1746031290073; Wed, 30 Apr 2025
 09:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <MW3PR18MB3513AD1432554BA95BFA34208B832@MW3PR18MB3513.namprd18.prod.outlook.com>
In-Reply-To: <MW3PR18MB3513AD1432554BA95BFA34208B832@MW3PR18MB3513.namprd18.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Apr 2025 09:41:03 -0700
X-Gm-Features: ATxdqUGeTR2uDWrTe_R7QlCXwdHPSoCNH27Wk6olcMCIYjJqRuaG5IqZpA-t-DY
Message-ID: <CAMKF1sqDG0vdC-L5pc6pTntNFsXX1O+5YJgkwX6rRxF8RMoUQw@mail.gmail.com>
Subject: Re: [yocto] How can I increase the size of /dev/root in QEMU using runqemu
To: yocto@lists.yoctoproject.org, jairo.mejiaaponte@belden.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Apr 2025 16:41:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65272

You can try using IMAGE_ROOTFS_EXTRA_SPACE

On Wed, Apr 30, 2025 at 1:24=E2=80=AFAM Jairo Mejia Aponte via
lists.yoctoproject.org
<jairo.mejiaaponte=3Dbelden.com@lists.yoctoproject.org> wrote:
>
> Hi all,
>
> I want to be able to use devtool to deploy a recipe on a running QEMU ins=
tance to avoid creating always an image for the QEMU while I am working as =
I normally do on Hardware. However, I got always the same error
>
> ERROR: insufficient space on target
>
> I tried to use the variables of Yocto to increase the size of the rootfs =
like IMAGE_OVERHEAD_FACTOR but it does not change the size of QEMU itself. =
Is there a way from the runqemu command to increase that size? At this poin=
t I found some QEMU commands to do the process, but they used another execu=
table. I thought to use qemuparams parameter for the trick, but I don't kno=
w which QEMU commands are supported, and which command should I use for tha=
t.
>
> Any help is welcome, thank you for your time,
>
> Jairo R. Mejia Aponte | Embedded Software Linux Engineer
>
> Netmodule | Hirschmann Automation & Control GmbH
>
> Location Eschborn | Frankfurter Str. 10-14 | 65760 Eschborn | Germany
>
> jairo.mejiaaponte@belden.com | www.netmodule.com | www.belden.com
>
> ________________________________
> DISCLAIMER:
> Privileged and/or Confidential information may be contained in this messa=
ge. If you are not the addressee of this message, you may not copy, use or =
deliver this message to anyone. In such event, you should destroy the messa=
ge and kindly notify the sender by reply e-mail. It is understood that opin=
ions or conclusions that do not relate to the official business of the comp=
any are neither given nor endorsed by the company. Thank You.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65268): https://lists.yoctoproject.org/g/yocto/messag=
e/65268
> Mute This Topic: https://lists.yoctoproject.org/mt/112535535/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

