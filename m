Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CBFD1BDE0
	for <webhook@archiver.kernel.org>; Mon,  4 Nov 2024 18:38:26 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.3189.1730745504866500892
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Nov 2024 10:38:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZptNT4cQ;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539ebb5a20aso4796287e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 10:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730745503; x=1731350303; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bZ3OBOsWRWI9g1sdW3mZSY0vXcjLhnDEbyANuGaHMDY=;
        b=ZptNT4cQzkF8UgWTMn5FLi9UCICjFW3S8w/7bH5Bz5HlGs+FSeHoMhmS8n2p7Idqoc
         tevMKXpK7Jx0XDE1C9qXPPTV5/JIJDWmL46j3QMnc+4OwLEU3adoKxaHlyh865SJTchw
         SdyVkhuCqoXrZydDo3QKvnZ0HxSsp6jG4/v90Y4ACRhHxhVjO0IWB0lK0qzvxFZJOFk4
         3f80tlqZbG0TtprqgF59Z+OHdXay0qvS92genlK++7mqnE+12y8gg0xfe+eIoWm5toFJ
         AlSoaH3LF/dgPWIqvOiEIZ+Rld6ReH08jTEFLRzyJ3domBDVibsNc1EEYFy79a3o5+iM
         pyHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730745503; x=1731350303;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bZ3OBOsWRWI9g1sdW3mZSY0vXcjLhnDEbyANuGaHMDY=;
        b=NWrQfGWw0p4kc/t/ywsm2KW1xiVsYbssLTnKuU3zsnFw/cbYPZsYjQvnmLhXtH42NM
         uAM9JrFnTtLNoBRyaFLyMskkGvMDNu25ZPtiQhqyM/EWjb2NJaNwGmtEh1U0xdljuzDj
         tVZ12Lcy1A8+i006SSBwjpETgsvBoOvLPTNFkU79ooB/vQLUJSmuVZcE6q7DOkwL0X5u
         gLbb9VGtjIlVvN7hQKaWTtVJ9yQhPTUTV+74Ql1l6RTfktSuG4hkiNm/YvktEamipaAO
         CM5JZrojKHRdHH+f+MCpbKrDNRyt8d8qmBceCenug8SoD+W3Q6SK3JAaIvs2Om72fEdv
         aA9Q==
X-Gm-Message-State: AOJu0YxUEma5fukE9PLsBLfZipfT2F5migg3I1c1weidkmD9sGb49MkU
	uf3aBHpjb8EU44no4oYSKz8pCCH4d8vHJTg53bvyVprXN4aqkDr+L7vn7UUyNqyZ9FlnSSklVQx
	IN8636bAvma//io3T5qc5V8DtDDE=
X-Google-Smtp-Source: AGHT+IEY3rxTbqPgb1U3C5NIgRr6kx3ND8O4N25FkQDlb5xJB9mB1WZqBymDHBtwdL4chaDUFjkDfWzQk5eifefFD9g=
X-Received: by 2002:a05:6512:3b1e:b0:539:e1c6:2128 with SMTP id
 2adb3069b0e04-53d65e11a8dmr5961286e87.39.1730745502450; Mon, 04 Nov 2024
 10:38:22 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj_z1gYHeJ80=-_JTZTygpxBCc+QROKoDdZFGD7KyC-eAg@mail.gmail.com>
 <10699.1730743529722789256@lists.yoctoproject.org>
In-Reply-To: <10699.1730743529722789256@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 4 Nov 2024 19:38:11 +0100
Message-ID: <CANNYZj-81+zMMgT0cbjcP5OdR5rjBMaZeJKJMvcQwxdjBiE=hA@mail.gmail.com>
Subject: Re: [yocto] Set global variable based on recipes versions
To: sidali.teir@cysec.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000decad806261a96ac"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 18:38:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64213

--000000000000decad806261a96ac
Content-Type: text/plain; charset="UTF-8"

But adding a recipe to a layer will not add it to any image. You still need
to place it explicitly in a list somewhere.

Alex

On Mon 4. Nov 2024 at 19.05, Sid-Ali via Lists.Yoctoproject.Org
<sidali.teir=cysec.com@lists.yoctoproject.org> wrote:

> This would not be dynamic, I wanted to do that during parsing time so that
> even if I add another recipe, I would have the variable updated
> automatically without the need to re-define it
>

--000000000000decad806261a96ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">But adding a recipe to a layer will not add it to any ima=
ge. You still need to place it explicitly in a list somewhere.</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon 4. Nov 2024 at 19.05=
, Sid-Ali via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.=
Org</a> &lt;sidali.teir=3D<a href=3D"mailto:cysec.com@lists.yoctoproject.or=
g">cysec.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;=
border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)=
"><div>This would not be dynamic, I wanted to do that during parsing time s=
o that even if I add another recipe, I would have the variable updated auto=
matically without the need to re-define it</div>
</blockquote></div></div>

--000000000000decad806261a96ac--

