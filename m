Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2597DC04FFE
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 17:33:25 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web11.22454.1715708001450357104
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 May 2024 10:33:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MBF+GNIK;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-241572c02efso3498163fac.3
        for <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 10:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715708000; x=1716312800; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1sFkqx1OmcObJbhyHaknDh4Xokbvr7WlNkJfIKlEbo4=;
        b=MBF+GNIKC4dnDpbD6OOVlvMTeigCyvpf+S5p00bX+7CKYTb/6oVrL0wQi11XWgsKJ0
         Ip45CRkhO0WLRnD4ScGZofVQWogRlXXf6DWYQspU8Y5GvreE5bYCaRCIqPsgpfbjFV2/
         3qwt3lVDpFPMtykf5KaQnprFuKH1cA5ZnakRiqJAxmlX5pnO3pVo84+Pn9Q/JDlOziPI
         SOMCgjCHgR08nIqR6p/AfJJE9EqFESkqoRq1PKLsIt82JofaJbBWR4eWJ6RVHRqQJOni
         lXrIy4cYOdv7+N+V2+TN/yIzvSUyRxlkiEXG3R7yZKisE3SpcoRdo1xxa+EM8tV9l7jp
         2/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715708000; x=1716312800;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1sFkqx1OmcObJbhyHaknDh4Xokbvr7WlNkJfIKlEbo4=;
        b=hd9gckMpUTT8sFs63OkcB5yQirfd51Oy+u+e8/6irBDzA7PINZ/VaH94whb9lfQu17
         XftjxkYMK3r8cbd6MGsFVzSUmNtNzVOxp4O6v7u0d3J/OQs8Gi51XHzg4ha3QfbBPDSy
         5Y8QC5lB9vvkSUKlVZGdOE8+w6n7zaJSlHnbYJ8eS27ssZqbEMsFxi+iUXo4Lsu2Yc4W
         lGYw9YtI7qYIOl+VVHnHKKjdbu8kmUIH3ob1Xm36MoS8WxYetz42+LMGemS2mGzb+ZvA
         bdsyPjaa7LYVsAqj1WbmjWE3hJomTgOiys17LMpeuCgdbeaXBtywIU8wic39x6WlYpfR
         6tyQ==
X-Gm-Message-State: AOJu0YyrW43XHUCtNOrJHpfmT/WmEx/aa92SVnAAO3D2jUx8P7TyK3jH
	HtQlkkJO8qpFKmGhCnuybE8z3yyuMNBXabAjvR7Zdcv24e62peDlZg46DwoirEE1YKxfsKRfU5t
	Mzlo/Jbnj02cPmSycX6WExLVzbDgiLQIn2PBRfQ==
X-Google-Smtp-Source: AGHT+IFRfkU5zups29DeqOlpD7GYrmNs8MzPv31YMdwB7UDVXmDTay1oDCdqjuI5vA+K1W1EzrsSp6N0GsXA9zCyhc8=
X-Received: by 2002:a05:6870:64a4:b0:220:a138:f59f with SMTP id
 586e51a60fabf-24172a9d6famr15608125fac.31.1715708000389; Tue, 14 May 2024
 10:33:20 -0700 (PDT)
MIME-Version: 1.0
References: <AqAx.1715673358859537428.AIQN@lists.yoctoproject.org>
In-Reply-To: <AqAx.1715673358859537428.AIQN@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 14 May 2024 10:32:53 -0700
Message-ID: <CAMKF1spnJ9LqbMLoa-r85FLGXmwhXYhrpbMwZ_Jh4hLbC635dA@mail.gmail.com>
Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers found
 in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
To: yocto@lists.yoctoproject.org, Salahaldeen.Altous@leica-camera.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 17:33:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63094

On Tue, May 14, 2024 at 12:56=E2=80=AFAM Altous, Salahaldeen via
lists.yoctoproject.org
<Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi All,
>
> I have one yocto recipe which is using libsqlite3, the compile task is OK=
 but I got this error with do_package_qa
>
> /usr/lib/libexample.so.0.2.3 contained in package example requires libsql=
ite3.so()(64bit), but no providers found in RDEPENDS:example.? [file-rdeps]

Generally the linker should link in versioned solib, libsqlite3
provides libsqlite3.so.0 and shlibs solver will automatically resolve
that
so I would suggest to look into this package and check how its linking
with libsqlite and fix it

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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63083): https://lists.yoctoproject.org/g/yocto/messag=
e/63083
> Mute This Topic: https://lists.yoctoproject.org/mt/106090753/1997914
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

