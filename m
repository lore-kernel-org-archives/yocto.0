Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F09B7C04FFE
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 09:36:22 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.11179.1715679378438596061
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 May 2024 02:36:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iDSUsWsV;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-51f0b6b682fso5798483e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 02:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715679376; x=1716284176; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kHm2g72bJjL9zgV/dE6sD7DA241DWX0JFDBESu6Athc=;
        b=iDSUsWsVoqxd3h9huFRlvuMDdhxKEhtRkZrvwAVY784ZDpy3gN3+G0Exr3hEF+bOri
         PT29noQ2wbxCYD1KyCC5vojURsbY4Fa/M3opwtpfto/9uUbDGm1SB0aqqchFL4CHaF9k
         43ZxznqqR+YnrK9ExH15krZ/ExPZ/ELPzkWUx4MGxZu2mQnUOZqO84HqMLGBPGyNklcG
         eEEaIrWb2jsh5LKgWvPqHN74BJ4I7CB/lvdkNt4Oq1FLoJU5ihwKAHaXhaflGfefCTW5
         Jk2gtr0uLuxcDLHISFRw6CRfxzArb1CTeTquQnkQMHY1HeW7bUt53I0g65DANm30uQbD
         Ai3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715679376; x=1716284176;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kHm2g72bJjL9zgV/dE6sD7DA241DWX0JFDBESu6Athc=;
        b=JCzfgwDCFaIEwkHlG0UP/omw8FyLUfm6jHwg4A2x9tWUF9bUot4/RHGzlgLiHEhvEi
         Z7zKi/OJzsR94NJ6tK4akxyv8RqIHd+bNp6nneL759hVtLk+E+JYXuLilGL37neviL9J
         jTcwk1idunWandIxhPCQYkh5bRUqi/nTVYuZP5fKXhE8Y9WxkivzjzuvqyLRvxmNWEJ/
         QcBzWFxMhznIgwLss3AfJZOg3QAiv3v+8RWAK+NOEjSe1sSxJBgDZiD1IwupktJbX4tq
         Gb/op9t/1RZVB5xU0RE3q1kUAakmRZ1gZClb7yAUeOu3+BAFcrAgwrHRPlE6CL9qEbwV
         Btfw==
X-Gm-Message-State: AOJu0YzL1fGwsg9CF0nT6U2DdWrj+eJOgXMLX1uES7A0W3QhPl7GqImD
	WyufWBQjn9YFcw+PJobfY0aIc1D3BGe282b57dvBDVDWd28ytaT0TgpoS/R1SiqBZDrpXwTiwgs
	rf8gmbmPrnkd5i4xjm7zv/Yqul2f5qg==
X-Google-Smtp-Source: AGHT+IHZcsUDBIjYESZdHGiGHPbueiH7ovCVvvHATUH0Wge7Z6PS4oIJgAEWbGTK6yKXhe0u5O0v9up5YIq4BbiPKRY=
X-Received: by 2002:a05:6512:686:b0:522:33bb:ff7f with SMTP id
 2adb3069b0e04-52233bbffddmr11137110e87.26.1715679376188; Tue, 14 May 2024
 02:36:16 -0700 (PDT)
MIME-Version: 1.0
References: <CO6PR11MB560278C97BA078A862F09B26EDE32@CO6PR11MB5602.namprd11.prod.outlook.com>
 <3449.1715678480890913883@lists.yoctoproject.org>
In-Reply-To: <3449.1715678480890913883@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 14 May 2024 11:36:04 +0200
Message-ID: <CANNYZj9BYkmFHB+_hdt0pvqnyNJLgMdT5tGQgKYODhnuwLON1A@mail.gmail.com>
Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers found
 in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
To: yocto@lists.yoctoproject.org, Salahaldeen.Altous@leica-camera.com
Cc: Chen Qi <Qi.Chen@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 09:36:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63088

You need to show what you're building too. Can you share the
log.do_configure/compile/install?


Alex

On Tue, 14 May 2024 at 11:21, Altous, Salahaldeen via
lists.yoctoproject.org
<Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi Qi,
>
> On Tue, May 14, 2024 at 01:42 AM, Chen Qi wrote:
>
> How about using the following setting?
>
> RDEPENDS:${PN} +=3D =E2=80=9Csqlite3=E2=80=9D
>
>
>
> I have added this (RDEPENDS_${PN} +=3D "sqlite3") to the recipe but I see=
 the same error!!
>
>
>
>
>
> Regards,
>
> Qi
>
>
>
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of Alexander Kanavin
> Sent: Tuesday, May 14, 2024 4:34 PM
> To: Salahaldeen.Altous@leica-camera.com; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers fo=
und in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
>
>
>
> Can you show the complete recipe?
>
>
>
> Alex
>
>
>
> On Tue 14. May 2024 at 9.56, Altous, Salahaldeen via lists.yoctoproject.o=
rg <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi All,
>
> I have one yocto recipe which is using libsqlite3, the compile task is OK=
 but I got this error with do_package_qa
>
> /usr/lib/libexample.so.0.2.3 contained in package example requires libsql=
ite3.so()(64bit), but no providers found in RDEPENDS:example.? [file-rdeps]
>
>
>
> I have added this to the example recipe RDEPENDS but still the problem is=
 not solved, any idea?
>
> DEPENDS +=3D " sqlite3"
> RDEPENDS_${PN} +=3D " libsqlite3.so()(64bit)"
>
>
>
> Regards,
>
> Salahaldeen
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63087): https://lists.yoctoproject.org/g/yocto/messag=
e/63087
> Mute This Topic: https://lists.yoctoproject.org/mt/106090753/1686489
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

