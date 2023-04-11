Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6071CC77B6F
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 14:50:22 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.15974.1681224613287045537
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Apr 2023 07:50:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=coaLIyyN;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id x31so4728561ljq.10
        for <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 07:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681224611; x=1683816611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oCR11xCF3zyJpwhciJZ3i6dUB/oYwARgu/SnRvYZmXY=;
        b=coaLIyyNfljOAVe9+Sz1fam4eL9ORWgJ8mfOg2LLicsQDhyyouLKTENji2tKP6gXzh
         ri0hdueyxUKAH1/baaZ1TeDYAlhHFZf/H4kaRo2CyBlKkZgGMnocOQk9k3A1JyT4rtGb
         eABdTTxgV6M6PAHFPvIcdJ+xWy7IH2j4+Qc+qPVK06GwtooXEXEVqrObCOHvrtzWjUul
         1rhV93MjGgLHOQTZ7IiP4Xtc1WVyUhy58+oMFS2SPEGeT+zfRI3R4C2xN+Y50QKso2P0
         TfeeykusvfuazuYs+UaTD965dshZ75R8MHrQ/XQSkiAxdlrM+xoK6KBea5/P3Sd4wnSU
         kgmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681224611; x=1683816611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oCR11xCF3zyJpwhciJZ3i6dUB/oYwARgu/SnRvYZmXY=;
        b=ynF+PjKpNE+5HvZ1ScDZRbCBMDMhlCJjorxWsSTsk6vBX6ZWS2tR/bt1UtITiJ40Mw
         1p2tVBEumvFTo7pYUBhQWUmSmndQaD12focin2/mAqCl9ihkCZWaWO3zPbQw8cX3pyc6
         4/mhNAtCUy4ECpNV8umf62fkJ1w6aV7QrguQ9yba+ldlU96X4/g3LpEuRG3vAqUMMqn5
         oE7On3l4itsF/JRuDx5ausDvgxOXerwONqoDgs+tlYeV6gBT1c0OHcqKDBqaZrVwM7/A
         Ff7yJzRipOg0zJXTXUJIrBQSDgGqs8yZhtsrRR0i41z8XmH5TrimRN4fCl0j1pQKGppQ
         vU6g==
X-Gm-Message-State: AAQBX9cEXZE2VfaVEz/ieahgO1Rauj4+QOKlYsHiL0vGW0iwLoFMSAAr
	uOrAAOiYW1IL+IqW1C8miT/D89a9YckbIkUjbcD9RJHn
X-Google-Smtp-Source: AKy350YumJaKoLGnR+fFQAxwKhewGyW7nTo63v12TbHt3hx7OD+WekFR1eqB0/hGzh/h5fa6PNl1xxBKqQaCYY1WAQc=
X-Received: by 2002:a2e:80c3:0:b0:2a3:5c1c:ec20 with SMTP id
 r3-20020a2e80c3000000b002a35c1cec20mr3269713ljg.7.1681224611483; Tue, 11 Apr
 2023 07:50:11 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_ga--eO9pUFMw_YTkiULoN9JiDWpRkpXjsHToVxoFw5Q@mail.gmail.com>
 <28742.1681223487079543700@lists.yoctoproject.org> <CANNYZj_tAJfT36OLXFs0Mzoh4Sa_GcpA-RqU8k_+iTYYZwU0qQ@mail.gmail.com>
In-Reply-To: <CANNYZj_tAJfT36OLXFs0Mzoh4Sa_GcpA-RqU8k_+iTYYZwU0qQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Apr 2023 16:49:59 +0200
Message-ID: <CANNYZj9q3zBCguBussvczdj=CuuEqY4zvvOEw2jO-kPrHXq13g@mail.gmail.com>
Subject: Re: [yocto] create-layers-setup Yaml support #bitbake
To: talhacali@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 14:50:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59683

Better yet, just run 'create-layers-setup' to recreate the json over
the previous one. You'd need to adjust CI though.

Alex

On Tue, 11 Apr 2023 at 16:47, Alexander Kanavin <alex.kanavin@gmail.com> wr=
ote:
>
> This 'renovate bot' should not be specifying its own configuration in
> comments inside files that it wants to update, that's such a bad idea.
> You need to teach it use a configuration placed into an external file.
>
> Alex
>
> On Tue, 11 Apr 2023 at 16:31, <talhacali@gmail.com> wrote:
> >
> > So, how a renovate bot works is that it parses the files for a specific=
 regular expression that we determine and checks the line after this regula=
r expression. So it needs to be in the same json file.
> >
> > For example:
> >
> > {
> >     "sources": {
> >         "poky": {
> >             "git-remote": {
> >                 "branch": "master",
> >                 "describe": "4.2_M2-676-gdf3ce81ed3",
> >                 "remotes": {
> >                     "origin": {
> >                         "uri": "https://github.com/yoctoproject/poky.gi=
t"
> >                     }
> >                 },
> > // renovate: datasource=3Dgit-tags depName=3Dyoctoproject/poky lookupNa=
me=3Dhttps://github.com/yoctoproject/poky.git
> >                 "rev": "df3ce81ed3e5491b084041c5bcbd16dada129cf9"
> >             },
> >             "path": "poky"
> >         }
> >     },
> >     "version": "1.0"
> > }
> >
> > So, for this file, renovate bot will find the line in red beginning wit=
h "// renovate: ", and then check the next line which is "rev": "df3ce81ed3=
e5491b084041c5bcbd16dada129cf9", if that commit is not the latest commit, t=
hen it will replace it with the latest.
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#59681): https://lists.yoctoproject.org/g/yocto/mess=
age/59681
> > Mute This Topic: https://lists.yoctoproject.org/mt/98196703/1686489
> > Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbak=
e
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

