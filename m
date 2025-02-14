Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D491CC02198
	for <webhook@archiver.kernel.org>; Fri, 14 Feb 2025 11:19:58 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.18803.1739531992706135887
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2025 03:19:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FkdJla2B;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kiernan@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5452c1daabeso297920e87.1
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2025 03:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739531990; x=1740136790; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OoJwQz4wOGkdhypfREt9wCDCmh1yYhaiN9Yx+o+1VsU=;
        b=FkdJla2B+05tMEln+9DAoScRfHuRBP01KaCJsqJXhhDs8J0s3vgffKmY9BAVPDNDjx
         7OKbGzQIQrJEtvHhRAFaUSAnxWkq9DXGvR6yfOsmgbTx43cMZYvdSM42rghV4ftM5CyP
         XajWsgx/DU/ByNz6NRYOk/GnPSPtEWzJ+tJd2TJD7XKG8zl7NbdkqIYMstfPenLop+Xp
         q7SGM51JSvu1NV+Q3/PPuMqfDaQcWU3jb1ZEmeJXQ5+7KVJbgD83r3sp3xyYElaiMjWo
         dAMkpm4TGAdTONynM30qT9sDgXHrZSJXCWGKE84X7WYiFnaBX3GANxyiLTS1aQ2Y+pGQ
         Zjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739531990; x=1740136790;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OoJwQz4wOGkdhypfREt9wCDCmh1yYhaiN9Yx+o+1VsU=;
        b=dF48SNJWHES3CMfJ3+0hBwEPQrsqr8NhpoX6UdOFL/DkntcCpJEIzrZdn2ZcpcnYHR
         xs2xvMZuYXurXUqP04nNAM/CzAeMOQuQwn3pPwkTxn+thzq7Fk9v6dusegsor289BfYP
         Bi3YzqcSBF1aIozbeOHbEIbQTK0Y76T56+tcBuZzNLzHZV8C8QvBHggH/5y+58ofvc0/
         Q7jHHTj9papP/Hu/bGdf+z5PGyJ3XsoZ17yPRP55aAeRaeCvfGQkvoUTt8CVfGAFXVzu
         V67G6hHmFdiyPr0t+mfilQuHXOvao0Y1ID2bVIS4V92Ap25JzQeBmt9FnezeQEsFncND
         LR7Q==
X-Gm-Message-State: AOJu0Yxagsg05zzUz/anaFH+rmq6irQwbJolJtY2w9/XPAQYJrofJ6yy
	wDPiuBL93QF9pvnhP9d5RmhwUKy7D6fClRpgLBtdclxBtDrbV5JqExHwj9n0GovlK3FGcTt62v3
	QDQZx0jFLk1dmtX+8laxH4f3LJHtDuaAZ
X-Gm-Gg: ASbGnctzpsVlGR6JCpcGlkwtv1/4UDnVWwssu//getoibUHMh0NAPBYtQG6cEPjNN8E
	OjiswG4kJWxIX252FksRiThceUBq7LqirpIJoSAX3DFSr94oAQVE6iQOPpVq3ptB4few55ZmvFs
	ip9zE=
X-Google-Smtp-Source: AGHT+IHY9juxtPHxWoRkldjg/B+82JmTjctKYlJ4F18LXTfLZd5usP96y7lyk6gpDYW87zGxK1JzO0QFiqxSXASVx9c=
X-Received: by 2002:a05:6512:6d6:b0:545:8a1:5381 with SMTP id
 2adb3069b0e04-5451826e9acmr3526848e87.11.1739531987893; Fri, 14 Feb 2025
 03:19:47 -0800 (PST)
MIME-Version: 1.0
References: <e1ee9abe9c5d3dcca060978c6136bad6d64567ca.camel@vrag.ch> <CANNYZj8KOYO+zTditFWH=RRM4hWG0xSMtwDQNUBUdP0Lf2TyEA@mail.gmail.com>
In-Reply-To: <CANNYZj8KOYO+zTditFWH=RRM4hWG0xSMtwDQNUBUdP0Lf2TyEA@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Fri, 14 Feb 2025 11:19:36 +0000
X-Gm-Features: AWEUYZm0Pk6Z5CmAlBMkv8UmW16fDJNFYclSxz9HGQy2glkk7qwx9YawAwJz5-w
Message-ID: <CAO5Uq5QU8B2em3=CaifbCtHW=6GvWMNBYo2r-ExjL4zbTqkWaQ@mail.gmail.com>
Subject: Re: [yocto] cargo does not build currently
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: david.daniel@vrag.ch
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2025 11:19:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64812

If you're seeing the same failure as me, its cargo-native and
python3-cryptography-native - I've just pulled the latest changes and
both failed to build here, cleaning them up seems to have fixed it.

On Tue, Feb 11, 2025 at 2:00=E2=80=AFPM Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Run bitbake -c clean cargo and try again. Something in those recipes does=
n=E2=80=99t do incremental builds properly.
>
> Alex
>
> On Tue 11. Feb 2025 at 14.55, David Daniel via lists.yoctoproject.org <da=
vid.daniel=3Dvrag.ch@lists.yoctoproject.org> wrote:
>>
>> Hi all
>> Some problem with the build of cargo just popped up. I am doing
>> currently builds on the master branches. It turns out after a sync of
>> my sources cargo does not build anymore. It spits weird error messages
>> that it cannot find the crate for libc:
>>
>>     can't find crate for `libc`
>>
>> Somehow things got mixed:
>>
>>     error[E0460]: found possibly newer version of crate `std` which `lib=
nghttp2_sys` depends on
>>
>> I attached the build output in case of interest.
>>
>> Has anyone an idea how I can fix this?
>> Thanks for any hints!
>>
>> Greets
>> Dave
>>
>>
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64765): https://lists.yoctoproject.org/g/yocto/messag=
e/64765
> Mute This Topic: https://lists.yoctoproject.org/mt/111122235/3618097
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kiernan@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Alex Kiernan

