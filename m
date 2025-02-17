Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A3D6C021A9
	for <webhook@archiver.kernel.org>; Mon, 17 Feb 2025 18:12:24 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.332.1739815938585258824
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 10:12:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IdbMwSJE;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kiernan@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-30a2cdb2b98so13690541fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 10:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739815936; x=1740420736; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ldOeli8wVNzhNlhcN+aIdokxn1pvUbvn4DV7dUy4Ggw=;
        b=IdbMwSJE5jSWdxYhaZzCWydNpE846rByzjyrR38C/riWPA16lSqdZFQmGwRDqjw44t
         39QaVzoijDM42aGyI1IwGaUrAHn36FJz43NrXCO3SMWvuSuRGAzmtjVW1UTnknGteTmY
         0Uv2DVlJE7wsGgE6XlbNyVOrvy5PAL95CvnCjjFMhqJVBzD2trG65B4I7fkamEFVpJl0
         67C9QMnoIaNpHOPg/WQXW/vJlf5uLIpXjc3FoeYoQHwjI2JaQ+hziPb0s7Y1EOhd+Vrk
         1rwrNgRd8GwScruvpLIrSDcGhdNeFrIiHrjFZdR4p7kY6/dKTKa4/4639s/3VnZNSXx3
         MReg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739815936; x=1740420736;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ldOeli8wVNzhNlhcN+aIdokxn1pvUbvn4DV7dUy4Ggw=;
        b=R2r0qYaOpmF1zklTB9XToAbwRQkeVqzFNrx4mIm5nBdqamSNT7bFR9Z+QmFT9B0gqs
         fcxGYaX71/JWSiPTEfWln7luBDqmqlVpsa1QhngczbnoYCp6Hu3PK2nwf2iFzV6n6YBo
         YwyVFk0FCyWvOgtNsaJrjJ+RV11nKYwNssqeOCLOWyq/UrwEpg5vj1Lr4neWW0RLFLl0
         IGnEBVs+FvJ2rVLC9y6tkPTJ0bUlGmUt/IHCxJfDXZLQk1r5pJ/W01fjyqFUzbBx6Uq7
         /85flgUdQXJk7IyFkxH0P9wlkNKMEGjgOC6rWD4tihaIcPgFi51oUIFG5Lyci3y1ECAn
         h8fA==
X-Gm-Message-State: AOJu0YwjTT00rAuktxStf9Gkmbz+5BdAEKCO2450AjdzBeclFvJNfhm1
	J/dCTxOSo7z67vGkCbDERVG3pyrYBG8MUz66hqfsOBG0MPXeEKbsaxUQUT90vfqMDJhLNNTPqER
	Y6Onw9o1zNkLxuoQbJ/k/AesWPbwq/2LF
X-Gm-Gg: ASbGnct3gIQTJadg2hA3zVZ1aR+Hzy+HI0IQMXNjbLfyiXU/VD5cNsQV9QqzkJxP+Gv
	frLcWLxsalDcueGH0ieSfbmpaVtOxWYd5B2GLRaBU4oGXOWYyqpHUDmSftDdu39xa7tsauxgoiD
	oqa3w=
X-Google-Smtp-Source: AGHT+IHRaSByBLjQ0BvGKIHBZjtp8h5rQtnqHTp7SXTHzfJIG+ZqJC6jfyUvbw+jngHiw2KKurEmVhXsZSfgyXI/BLo=
X-Received: by 2002:a05:6512:ac2:b0:545:2f0d:884a with SMTP id
 2adb3069b0e04-5452fe765a8mr3556897e87.46.1739815935725; Mon, 17 Feb 2025
 10:12:15 -0800 (PST)
MIME-Version: 1.0
References: <CAJo0Az7KJrcS0FvCXLfiT3P_MnSpacWp8mJo5Fe_gc-8drRrxg@mail.gmail.com>
In-Reply-To: <CAJo0Az7KJrcS0FvCXLfiT3P_MnSpacWp8mJo5Fe_gc-8drRrxg@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Mon, 17 Feb 2025 18:12:03 +0000
X-Gm-Features: AWEUYZnBL6qZasuEX7Szw1ykOhW6Yt2EOEZYFG-MkaplNDDupv7CN_6JaZ0F_ws
Message-ID: <CAO5Uq5To2o2vaJqhF3g9_dv2DoXF18Y__YqT1O=RsX4CFJU_-Q@mail.gmail.com>
Subject: Re: [yocto] [auh] Question setting up AUH locally
To: yocto@lists.yoctoproject.org, t.f.g.geelen@gmail.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 18:12:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64822

On Mon, Feb 17, 2025 at 6:09=E2=80=AFPM Tom Geelen via lists.yoctoproject.o=
rg
<t.f.g.geelen=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi all,
>
> I am currently trying to set up AUH locally in order to ease the
> maintenance of the layer I'm maintaining (meta-homeassistant).
> I have followed the steps given here
> https://docs.yoctoproject.org/dev-manual/upgrading-recipes.html and
> have configured it to parse all the recipes in my layer (99% python
> based recipes).
>
> Now I have a problem. It correctly parses all recipes, however it
> finds no upgrade candidates. This is strange as I know some are in
> need of an upgrade, and a newer version is available on pypi for
> instance. Moreover I get quite some skips with the following error:
>
> Skip package meta-homeassistant/python3-hass-nabucasa (status =3D
> UNKNOWN_BROKEN, current version =3D 0.87.0, next version =3D 0.80.0)
>
> Where does it get the 'next version' value from as the latest version
> upstream is 0.92.0.
> I might have misconfigured something. I used the default
> upgrade-helper.conf with the following additions:
>
> layer_mode=3Dyes
> layer_name=3Dmeta-homeassistant
> layer_dir=3DBUILDDIR/../sources/meta-homeassistant
> layer_machines=3Dqemux86-64
>
> Thanks in advance,
>

You might have tripped over the same thing I did - you need to have a
RECIPE_MAINTAINER set for the recipe.

RECIPE_MAINTAINER:pn-s6 =3D "Alex Kiernan <alex.kiernan@gmail.com>"

etc.

> Tom
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64821): https://lists.yoctoproject.org/g/yocto/messag=
e/64821
> Mute This Topic: https://lists.yoctoproject.org/mt/111236531/3618097
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kiernan@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Alex Kiernan

