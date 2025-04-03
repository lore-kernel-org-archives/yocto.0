Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1935CC3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 11:26:41 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web11.11012.1743679599824149082
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 04:26:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BOtB6Xdx;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6e904f53151so7076646d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 04:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743679599; x=1744284399; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJpkGtpIuAOwDDn38NN+g6FHoSjqjSBQ+OJt7O6tFjQ=;
        b=BOtB6Xdx4GuBsh7pZmGQYCh168UByNII3k+1TXoOjJJrbXCRm7RiTVGKzBtA4A20Pc
         giBi1OnvW+CnOhV33PIwd+kDkjk26M1M44kzVsgya1Mdi1gDBXTwAieKVR47dvqOjt8d
         Kg4Cr2aP0uQIpX0ggm1RhZ2VyeNbava4huz738durx64OUDSXbfK/hFPQJWMWtspsWAH
         sLzpYKrxIz+OrWCPiP9vZdFZTqd2ukdE97+vKdm/9QKFxo5Nka2xuC+lEzjfsrAj9Lb0
         eFx4LS/VEpit9nLrFoJb/A+88dHc0FDG4Z+sFtdFMVpmBVnoVpXz0DR4jzOGIEdeEDLZ
         ZjHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743679599; x=1744284399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJpkGtpIuAOwDDn38NN+g6FHoSjqjSBQ+OJt7O6tFjQ=;
        b=Fxm0aAA+0X+K1vf8X6ZDaUnQ+CivTSlp5AqKOnbGsevqrraAtugDB8dKJpYMOAmI51
         VrkMzOflTN5YEcOmTFLWF0w7MnkO2ir/SowOV49ayMhCYLdba9PAi7j38ywKql7xiXJS
         BudCtabrnlKg009s9Kv6PQ1JE+yQNOidDDYBAY8sbK5PXglnyPx4TOjDDP8AtDbWjOF1
         7nro/VWDwOAlxhX6ioUBH5VYnGNVTX7yd/jlijKZwWuuK6Mf4o2X8DcEZbWzpJ+bw/51
         ZnAKgYgjOsIG+VZNpaL/WCe9tSSf6mLzNDVNq8gGCwAHIXlGH+VFhtHR+t+YQJxV97lY
         0GfQ==
X-Gm-Message-State: AOJu0Yx/8xupOsTVT/iGR5jVyr/9auS96ehi0au1lEmVihFUic9++tRV
	LqvGm3E/tF+GNQkDZO8SvfUsOvzQpCe/TEoyUWw2HE/E2FI5tg18RHPFA82I5qbdb4gV5w1gdzv
	dlUCw81gffjZ/90Nq8uzcA0BiawU=
X-Gm-Gg: ASbGncsRL/Equz715RXRYQq3nRFKnKka52JMELhHZV5y8xpFiFHsZQczdTqPXO/mgwa
	yi0p6If4Y1UQe0WPiTx1QQPmiVUdv0UMoSfa77wrTASLkIbaFvazDywoP8n6O7PZvnMLhOPYKLt
	B9htXDH40YVMeYxxyjkZeVSrNVoKPrmNn8vV/5BHbWvQI2Ooa7Wn1Q5Kwtkr7Q
X-Google-Smtp-Source: AGHT+IFHa/8wVgyGQgrrgtdqrn/0vun6L4ofkgIsx/uA87cDrm14lB+4I6bOYY3/FWeEBA0FfpVzZSGTrdFb5yPE5jM=
X-Received: by 2002:a05:6214:1c0e:b0:6d8:a39e:32a4 with SMTP id
 6a1803df08f44-6eed61d1a5fmr351989756d6.25.1743679598913; Thu, 03 Apr 2025
 04:26:38 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_LzJH1w_ieTQTbmpdhgaXKmjpWGkR=FqhvbG3zreKBkg@mail.gmail.com>
 <4900.1743679184541317939@lists.yoctoproject.org>
In-Reply-To: <4900.1743679184541317939@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Apr 2025 13:26:27 +0200
X-Gm-Features: ATxdqUGNqGvD49rTUO7EEe-Nt6jsAaqZNUgClRk2dkR6sElm99rppY2dnJXi8oY
Message-ID: <CANNYZj9uurddieEzEScQWNOqauv-g9+UqLNCv80TyCctKd6upw@mail.gmail.com>
Subject: Re: [yocto] Error while building python3.11 as an alternative for
 scarthgap (OpenSTLinux) #openstlinux #bitbake #yocto
To: abhijithkannan45@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 11:26:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65073

On Thu, 3 Apr 2025 at 13:19, Abhijith via Lists.Yoctoproject.Org
<abhijithkannan45=3Dgmail.com@lists.yoctoproject.org> wrote:
> Unfortunately, that option isn=E2=80=99t feasible for me at the moment. A=
s mentioned in my previous message, I am using the STM32MPU for learning pu=
rposes. The end goal is to have an image for the RZ/V2L with Python 3.11. H=
owever, the RZ/V2L currently only supports Python 3.8. I=E2=80=99ve reached=
 out to Renesas regarding support for a higher version, and they informed m=
e that I either have to wait until the end of the year for an official rele=
ase with Python 3.12, or build it myself. Since I cannot wait until the end=
 of the year for the official release, I am working on building an image wi=
th Python 3.11.
>
> Since I don=E2=80=99t currently have access to RZ/V2L hardware, I=E2=80=
=99m using the STM32MPU to learn and build an image with Python 3.11. I und=
erstand your concern, but this task has been assigned to me by my company. =
Our client provides the models and Python code, and they=E2=80=99ve made it=
 clear that they cannot proceed with Python 3.8. They require at least Pyth=
on 3.10.

This does not explain where 3.11 specifically is needed, and why
standard 3.12 from scarthgap is not going to work. If you provide
details about that, chances of getting help are much higher.

Alex

