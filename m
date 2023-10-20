Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF880CDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 13:43:58 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.54569.1697809432424136218
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 06:43:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=xI0lr0WU;
 spf=pass (domain: smile.fr, ip: 209.85.218.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-9adb9fa7200so185980966b.0
        for <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 06:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1697809431; x=1698414231; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Uhb+u9dqhDzxKVKKuvSRAeKUE4XFM8VDMOxNsDZRyw=;
        b=xI0lr0WUSBIQ/NZAfVlGX+lKrXFcf24XdDoPSaDE9SAIKNd3Q8gjz6CJoHcdC9T7oT
         ws/gocKORIg0QgITYOsqSFPEtQfARQ9DTMBAV/Dzq12KcJvqhJHK8EQQ9J5umFD6GKRL
         WoHJaAVasKRg2rlla5bjjfCF5wwBlp3mvUtx9FyfeU1DQARDRdv/M4loEdrNMhFzZxB+
         N9rxLRxItRJtEBrh9gGWREjR/c1G6ii0RKdLWSEKJew1pracwiEzXVCYwLjuIx42xnhN
         wwWfIrUeC7XqPBu0kgAl+SB1rx3FBFan+0stPKg0bDTSD+Q7Oz5ko94cZkapMudek9LJ
         l9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697809431; x=1698414231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Uhb+u9dqhDzxKVKKuvSRAeKUE4XFM8VDMOxNsDZRyw=;
        b=i1A95sXb4hURXDYFkGG2ygl9SioWsWp9e0HLzAQYmljKQ8dQbG5V/xMT7z/5Ed3H8Z
         Ek3+KwB3GAqWqxVpf67J4+b9HBIIekLznYsU2x9S6HUGYjOIYpadR83PclMafVQ7DLLg
         cQVV+cSKi9j0iOCjoS751kEtHg/+jxOOOQmlcvyY6HFNg0IyHPIVV3KOffx6AqdkWKRJ
         lUgpCsPAb9cU7o4+QHnOtTJ64lbe2xciESYu8hvDaa7vBgWpB2P2gBAC1KKpoFF4Nj5X
         OG3QJsNt1CylNFLtI9DOh0WoBWaHxG9na+4CtEzHBUyfpyVbl0g3gNcEoU5CFrcKc8v8
         e48w==
X-Gm-Message-State: AOJu0YyNUstIkUpNzpvdycqJdUiWLnoS7tRdzfCEYhdbPwkcm/jjkD/D
	o4M+M5MShhC/qnRqNpaCCFDyX8mDkHLseTPzmvJ0FYejCvZSg4beLuI=
X-Google-Smtp-Source: AGHT+IFIYA3ofB+IB3oJH9BYUbLTLQjg7aGngmZVgPgeA0KokM2jNqzp2XrkWjt/tQOSp6w7yxPw6xFkjJYvOxx9III=
X-Received: by 2002:a17:907:3ea8:b0:9c3:ba22:4d65 with SMTP id
 hs40-20020a1709073ea800b009c3ba224d65mr1826546ejc.4.1697809430875; Fri, 20
 Oct 2023 06:43:50 -0700 (PDT)
MIME-Version: 1.0
References: <SI8G.1697802918201554942.vNSZ@lists.yoctoproject.org> <CAB3asfjOm1+SMBi2S4n5qrOnx-rNfgg48mjihaRekLY5-k35EA@mail.gmail.com>
In-Reply-To: <CAB3asfjOm1+SMBi2S4n5qrOnx-rNfgg48mjihaRekLY5-k35EA@mail.gmail.com>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Fri, 20 Oct 2023 15:43:23 +0200
Message-ID: <CAMSfU+4EP2UnoNUo7Fycsp-xPe0VcUOz3Wnwzatvbt06iC11Eg@mail.gmail.com>
Subject: Re: [yocto] Http access token fetching with gitsm fetcher
To: Adrian Freihofer <adrian.freihofer@gmail.com>
Cc: alexzoyv@gmail.com, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 13:43:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61434

Hi,

Le ven. 20 oct. 2023 =C3=A0 15:32, Adrian Freihofer
<adrian.freihofer@gmail.com> a =C3=A9crit :
> Did you already consider to write the credentials in a  .netrc file?
>
> Regards
> Adrian
>
> <alexzoyv@gmail.com> schrieb am Fr., 20. Okt. 2023, 13:55:
>>
>> Greetings!
>> I try to use gitsm fetcher to fetch bitbucket repository with read-only =
https access token. SRC_URI looks like this
>>
>> SRC_URI =3D "gitsm://******.git;protocol=3Dhttps;branch=3D${BRANCH};user=
=3Dazoykin:${TOKEN}"
>>
>> This recipe fetches parent repository, but is unable to fetch submodule,=
 writing fatal: could not read Username for 'https://tps-git.topcon.com': N=
o such device or address in log.do_fetch
>> It happens because url is passed to fetcher function already with user s=
tring. I suggest a patch to fix this issue

I'm sorry but this is a known WONTFIX bug :
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13550
See : https://git.openembedded.org/bitbake/tree/lib/bb/fetch2/gitsm.py#n127

The only supported way to do this (that I know of) is to use .netrc as
Adrian suggested.

Regards,
--=20
Yoann Congal
Smile ECS - Tech expert

