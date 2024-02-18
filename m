Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2AEC48BF6
	for <webhook@archiver.kernel.org>; Sun, 18 Feb 2024 13:08:42 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.17408.1708261716067362256
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Feb 2024 05:08:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ipTw/tlx;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d1094b5568so46331791fa.1
        for <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 05:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708261714; x=1708866514; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h2g7yU0Tt1mCgriKzGDDuauE0YJVqCoDoZ7WrRWoN+E=;
        b=ipTw/tlx/ZpUXGgK8i2iEPsHO3J81moruXi5aN8hH85IHMayapuVB6h7RRjuhsM3dQ
         2TQhooIyUgnR2bvbnEiPkeA2mAoZ+iYZ9AhhFzk5wr2tudJKZdT6BWJZ5Lp0aV9mYFIq
         ipSqw+4/wGJtmMWGSbFsGG1Qjv7mqI+6eUXUHtylEW+C4n4yYNwfmDn542AlMycAhIxL
         XzvL1qyS/WKnZZGcLf7CDVCPyhDMgXfdS8RNysDmLuKqGboy/lgoLncPSR6UEgnYmvme
         7v3+xby+U0WMj+Nsw4XCCiEnwjHqhA/bvhFDdC1+0xmz6b/T5mXisKqUa1EIahEmLH+X
         Uvcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708261714; x=1708866514;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h2g7yU0Tt1mCgriKzGDDuauE0YJVqCoDoZ7WrRWoN+E=;
        b=bENb/07tiL+U1JBTMz9trvEpa6aOotydwN8vizuOi1+y/zQI8wLQNkpY0Rcv+M+iJ5
         3rhm1VK0skP1Ja1nVFk5mQpqxZDrubtWJ8ajt4SRVOMSN9em7WeJyBQ3XtLEcAM2wsU6
         eDSmVwbni7Yi5zVcJHXnjDoVRinGr+4Hwmv3Y+FdZ1Zv6S3kqMbGG99dvDTgRDiKs3Rw
         dH/G1vsn+1U0b/wNCVYsIS8tYs1b+EXGhZLbS1H2w0/komkrPWmBO9dxStVeTrmMpU2s
         nQePo6M6QD7J8okXOA3pXjjnqGq12OsgpremL8csajY0jxIMmk5DLWvc4CkMQtTnZ9iY
         p3sQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6cGLi5CApMdLuzh7yKFyNtgKNlSXRpve1HxpPjNYJAFpYd3mOD2Ndbd5ZcWVyPPqwqSzsYR8vLDOVJNGIV3sS7jY7ArOlN/5S3HC6
X-Gm-Message-State: AOJu0YwPIgwqEjRMIGMs7H7exc4OvwLHVaeCPTPpGqdxCN5K2lpLNqpK
	WrEK4xM71SAceV6yINilBD7cPLNSCzYNXLOd9jzxmlEIiB7lAygOJS0fUyAIW/qpKOxQWW27zQZ
	76DpLIO03ydnFctnfXHxXjMXETCY=
X-Google-Smtp-Source: AGHT+IEMe1LI57kfjkr0gJEomMENByHLQ3nVgodo1j1H1pBTp2SYZTrTAlpkfXBv4k7zIRBRyQlv+RCC0aJxPKcOdQ4=
X-Received: by 2002:a05:651c:548:b0:2d2:2e6b:dd5 with SMTP id
 q8-20020a05651c054800b002d22e6b0dd5mr2586830ljp.39.1708261713810; Sun, 18 Feb
 2024 05:08:33 -0800 (PST)
MIME-Version: 1.0
References: <sqob.1708253760230085588.pekk@lists.yoctoproject.org>
In-Reply-To: <sqob.1708253760230085588.pekk@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 18 Feb 2024 14:08:22 +0100
Message-ID: <CANNYZj8LwDJ09+Q-wq5eRrVZATOnRSYrM=d8p_xQR5_DMPGo4g@mail.gmail.com>
Subject: Re: [yocto] WHAT IS YOCTO PROJECT ACTUALLY MEAN?
To: cqthoctap@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a29b920611a7aca8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Feb 2024 13:08:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62532

--000000000000a29b920611a7aca8
Content-Type: text/plain; charset="UTF-8"

I think you could start with this page

https://www.yoctoproject.org/development/technical-overview/


Alex

On Sun 18. Feb 2024 at 11.56, <cqthoctap@gmail.com> wrote:

> Hi everyone,
>
> I am new to Yocto and sorry for my poor english.  I have a question is
> that, what actually Yocto is?. I am so confuse about this term. Of courses
> i have done some research and the definition on the internet is "*Yocto is an
> open source collaboration project that helps developers create custom
> Linux-based systems*", but what does that actually mean. Is Yocto is a
> combine of some tool like Kbuild, mkimage to build Linux kernel and Uboot
> for example. Please help me clear this mist
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62530):
> https://lists.yoctoproject.org/g/yocto/message/62530
> Mute This Topic: https://lists.yoctoproject.org/mt/104425785/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a29b920611a7aca8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I think you could start with this page</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto"><div><a href=3D"https://www.yoctoproject.o=
rg/development/technical-overview/">https://www.yoctoproject.org/developmen=
t/technical-overview/</a></div><br></div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun 18. Feb 2024 at 11.56, &lt;<a href=3D"mailto:cq=
thoctap@gmail.com">cqthoctap@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,2=
04)"><p>Hi everyone,</p>
<p>I am new to Yocto and sorry for my poor english.=C2=A0 I have a question=
 is that, what actually Yocto is?. I am so confuse about this term. Of cour=
ses i have done some research and the definition on the internet is &quot;<=
strong>Yocto=C2=A0<span style=3D"font-family:arial,sans-serif;color:rgb(77,=
81,86)">is=C2=A0</span><span style=3D"font-family:arial,sans-serif;color:rg=
b(95,99,104)">an open source collaboration project that helps developers cr=
eate custom Linux-based systems</span></strong>&quot;, but what does that a=
ctually mean. Is Yocto is a combine of some tool like Kbuild, mkimage to bu=
ild Linux kernel and Uboot for example. Please help me clear this mist</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62530): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62530" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62530</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104425785/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/104425785/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000a29b920611a7aca8--

