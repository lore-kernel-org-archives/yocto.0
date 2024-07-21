Return-Path: <ppanaccio78@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B330EC3DA5D
	for <webhook@archiver.kernel.org>; Sun, 21 Jul 2024 07:00:29 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.20894.1721545228429409024
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Jul 2024 00:00:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=P4MM1i9d;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: ppanaccio78@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-447f05bfdcfso17708041cf.2
        for <yocto@lists.yoctoproject.org>; Sun, 21 Jul 2024 00:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721545227; x=1722150027; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cZ1iELOJmqNNFpM12IkEW2hKDFmiJ7mnOtiDh4G/RAI=;
        b=P4MM1i9dkiM/zM+QlC/SvOXTC3btoZTXZW2n3QY6kLcu5N8OARPE0GBPMLyig5wGLe
         OqoM9NMeYO3ahyla7+YH0rUV87SwIsz9YCitSYnB1VUeuxip4B/LzkHsH+64fB84w1EC
         QYxWl2DJ4q5peLWPktQHZzroiei0wCuR3HLK88/AXqzcgvqQ746jw1aAu3XmUTdMgp0y
         Bjj3DaAbmzV+K2FNuif+LKuxIvdgIB9DZZmpdMJAIOcVYo+AqDT4fxAEVYKeTbdATo2U
         6a88d1aM4sa1XcGa7zWFwJy/4nGi+1VmJS14hfZnSPz2HyJZwLc1lZxbBln3AaPdDVVJ
         Yj9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721545227; x=1722150027;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cZ1iELOJmqNNFpM12IkEW2hKDFmiJ7mnOtiDh4G/RAI=;
        b=rIGTtoUU+sY/wGYOCa+tvVrYKUBDJ1zaGzxa5zCveVsh4G3HOpgyPDjFlEyJmLAekA
         g9ZLeOhi7qXsrWautlavxqXhHRb2T2A1jJv0p+c0U255Ntrtj+WsbAQuFJvVeP19rS5s
         7oWSlJLT1P0a6Q3vkAYOjcYejIXVcLkg9wwuq8g8VkC/FnM//UNWokfrdEY/54zfn2/P
         CrX1fDn0yEgNOv4WL5BieusrxxKra0o0qbTsoOCvZpjVrd//Vp/+kid1yge5c31EpiCY
         q8Ar63W9ldVXaEeMXtAn14VWyxkMx0cJ08CxbuBganKGMaPcSvDNrZEW3GHLyakHB9l8
         FdXA==
X-Gm-Message-State: AOJu0YyB17ZKx1CXM8l2cjz7Sdgi8MWE2HRT1sb6Jn3y33k4Aawoe/s+
	+oBAHszcYqRWVgSDu/Ge317sSEHQpmW7Qthn3akt5kM5jQFHyKmfktL3dji7PVhFpboeWqEYS40
	oN4ct2zI7esofzS95DoLEmP0Mb98=
X-Google-Smtp-Source: AGHT+IFKhl3j/dojwdF0LGPskYo7cwYOAYqcrmDQLRTD6MEGeWFiH0lTexhdb4SE6dOFl2Ut4V+CdotJ9HrcAlSn+h8=
X-Received: by 2002:ac8:58cd:0:b0:446:5d98:bbb1 with SMTP id
 d75a77b69052e-44fa52a0016mr61763381cf.32.1721545227262; Sun, 21 Jul 2024
 00:00:27 -0700 (PDT)
MIME-Version: 1.0
References: <U46J.1721525980821149221.YLk8@lists.yoctoproject.org> <2346.1721543640629901553@lists.yoctoproject.org>
In-Reply-To: <2346.1721543640629901553@lists.yoctoproject.org>
From: Paul Panaccio <ppanaccio78@gmail.com>
Date: Sun, 21 Jul 2024 09:00:15 +0200
Message-ID: <CA+vHWb42X3tVVMNoPBqkAKt_hQ-BYkRQU8NMyrba_wbVFjPfiw@mail.gmail.com>
Subject: Re: [yocto] NAND together with SD CARD images
To: koansoftware@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bc632c061dbc7b73"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jul 2024 07:00:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63542

--000000000000bc632c061dbc7b73
Content-Type: text/plain; charset="UTF-8"

Hi Marco,
By further reading around it looks like MACHINE is something that
represents a specific board configuration and not a specific board. Names
could be tremendously misleading. It looks like this is the recommended
approach by NXP too.
Thanks
Bye


Il dom 21 lug 2024, 08:34 Marco Cavallini via Lists.Yoctoproject.Org
<koansoftware=gmail.com@lists.yoctoproject.org> ha scritto:

> Hello,
> we usually declare two different MACINEs, one mymachine-nand.conf and one
> mymachine-sdcard.conf.
>
> Cheers,
> --
> Marco Cavallini | KOAN sas
> Bergamo - Italia
> embedded software engineering
> https://KoanSoftware.com
>

--000000000000bc632c061dbc7b73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Marco,<div dir=3D"auto">By further reading around it l=
ooks like MACHINE is something that represents a specific board configurati=
on and not a specific board. Names could be tremendously misleading. It loo=
ks like this is the recommended approach by NXP too.</div><div dir=3D"auto"=
>Thanks=C2=A0</div><div dir=3D"auto">Bye</div><div dir=3D"auto"><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">I=
l dom 21 lug 2024, 08:34 Marco Cavallini via <a href=3D"http://Lists.Yoctop=
roject.Org" target=3D"_blank" rel=3D"noreferrer">Lists.Yoctoproject.Org</a>=
 &lt;koansoftware=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" tar=
get=3D"_blank" rel=3D"noreferrer">gmail.com@lists.yoctoproject.org</a>&gt; =
ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Hello,</div>
<div>we usually declare two different MACINEs, one mymachine-nand.conf and =
one mymachine-sdcard.conf.</div>
<div>=C2=A0</div>
<div>Cheers,</div>
<div>--<br>Marco Cavallini | KOAN sas<br>Bergamo - Italia<br>embedded softw=
are engineering<br><a href=3D"https://KoanSoftware.com" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">https://KoanSoftware.com</a></div>
</blockquote></div>

--000000000000bc632c061dbc7b73--

