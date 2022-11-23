Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB65AC4332F
	for <webhook@archiver.kernel.org>; Wed, 23 Nov 2022 09:25:23 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.16290.1669195516319210722
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Nov 2022 01:25:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cz+RPUkD;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: marek.belisko@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id bp15so27257094lfb.13
        for <yocto@lists.yoctoproject.org>; Wed, 23 Nov 2022 01:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=csEvjRVtEtx5FO0LGJyPx2IyoCVZamXzjha1pL7lCQ8=;
        b=cz+RPUkDtvHdpmTcXW3ThdXY7z97mOCPvN4FHy94pzLYaV2KlNG7OZMlOzStMkwbwM
         eW8cdzn/vL30P3FIhKVjzeutZiDxbSSKQQ/WTg88QWcsjpW6SrO7opncw/PMqCAvyOad
         ONMw/+ugM9xQ2L8ANXhwDs1WeNPPwRLvPipoIt9lAm5Hmmgw6cvzEgg/JFPIAtZt4a4T
         k1S2RNfutIRljwy+08a3kownKN9Ef8GGflL8EffdNUBdLhP4e5IgLqOEDVm7uZ0l74tS
         oI0CniYKlIbUXFPAyMwPpcrMHCgNasS2b1+zuuNMK8HgeEllX2DfDnaJwaIPEr6X9I3J
         PirA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=csEvjRVtEtx5FO0LGJyPx2IyoCVZamXzjha1pL7lCQ8=;
        b=wPr99MQxPRz4yLzrr3afIUGL239hYhVGYVA/xF5pLvgn3RJSdBLCFEsZt38G1N30Un
         AGHN0oj3ED3qID0mk1k/ZApXH8jZBFpdMX9YewRm0I00MwA7ty4obbwKDuw+3J3xoYBj
         xd7NW6VwCpWfGa5zcq0pOsKE2YFXWnEUb9G96FRqWyaqdC7XgZpzcZW/bTQXxhtDYnUl
         iDyj0CDI82fPS+ijtEmVWiWUy1PlvLypG4sWRnhTcaCyp8BxhH09ltNrniMHwiV15jae
         hgqlZ2Jy2N28QcIxmC2pdfDb3ww9ibdAH/hmR5Xe8dIUZnakT0QNm+q/A2vkeEAJ4itu
         jCpg==
X-Gm-Message-State: ANoB5pljmk3Sf/akfmSiR3R2QkOE268xSlcdGorb8mvGTQUTj7h1L8ow
	5SDlXbO2V9JS3Mn3AtJP2OXfu6O8s3ZSWxN2UVY=
X-Google-Smtp-Source: AA0mqf6U0zlB06ec/qRdU4lXpuwvS9FT/HL9q0yxIpAbsvAaPpnA8/8kM+AburnBASOomGZXaJGVhY2UvTIgG62fBjQ=
X-Received: by 2002:ac2:4347:0:b0:4a4:782a:42ac with SMTP id
 o7-20020ac24347000000b004a4782a42acmr8651717lfl.468.1669195514427; Wed, 23
 Nov 2022 01:25:14 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv353AYvWGFeSskMzxUEgDvqf7YJEPAdf0B5w0z0avMjs6Q@mail.gmail.com>
 <27363.1669192868414660557@lists.yoctoproject.org>
In-Reply-To: <27363.1669192868414660557@lists.yoctoproject.org>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 23 Nov 2022 10:25:02 +0100
Message-ID: <CAAfyv36F5cDdfdOZf7RANHjDBQd-OdT4SosC2WLzQEbP-O7A+g@mail.gmail.com>
Subject: Re: [yocto] pseudo issue in kirkstone
To: apoplawski@kan-therm.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Nov 2022 09:25:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58623

Hi,

On Wed, Nov 23, 2022 at 9:41 AM apoplawski via lists.yoctoproject.org
<apoplawski=3Dkan-therm.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I have a similar problem. First, you need to disable pseudo before execut=
ing.
> On begin of the line containing sudo cryptsetup add environment variable
> definition: PSEUDO_DISABLED=3D1. This, however, does not solve the proble=
m
> of executing sudo. I've noticed from the recipe point of view, all files =
you don't own
> are nobody:nogroup. This happens whether the task is in fakeroot or not.
OK so adding PSEUDO_DISABLE=3D1 doesn't solve an issue. It's the same like =
before.
Any idea what was changed and why it was working in dunfell and not in
kirkstone?
>
> --
> Adam Pop=C5=82awski
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58622): https://lists.yoctoproject.org/g/yocto/messag=
e/58622
> Mute This Topic: https://lists.yoctoproject.org/mt/95191553/900721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [marek.belisko@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

BR,

marek
--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

