Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A4CC3ABC3
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 14:18:02 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.77250.1747145875356448816
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 May 2025 07:17:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cQpNKqf3;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: sateesh0457@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-7082ce1e47cso54460097b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 07:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747145874; x=1747750674; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kpRk6xfeEfZVLDsm+9kQzxtZvAWhUMzqoY1lO4Yzf74=;
        b=cQpNKqf3gphPZWh/MBG55F3ECz1FlNj3xdtkBBGFhVDRyzkAvJhf3/TQFn0KC2kkN7
         foAgdirXJyl7dhUe9C1ZpcvzONrFVwbnjNmaNbmjgSXWOjk85Y0sIQkz5FGzOqljpmZ/
         G3+nefwAzLQc8Y5pgDDf6WmgvqxHHSz27BJIbamMYyJtWHKuKYKWj3UOGtkjR6/GOncc
         GBoVxYFcGlgr/pxJ24yM1f1kqoWEustVTwBxhj32aiKXz/vn4yTbpwZmZApvl6tzfjz5
         1FPpVe+8diXFt6H0SmHhFjUMejaXgN0JhC7AnYBhjqm5Lb1fdtyObVQAsm6mPWQr6CuH
         omgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747145874; x=1747750674;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kpRk6xfeEfZVLDsm+9kQzxtZvAWhUMzqoY1lO4Yzf74=;
        b=qbGyDguQXFPEGvyc2m9w5bOGfs3Vvs/yEXeHvy92289ELUO0aELdp0dcVymlSyRf6I
         Cjzxk7+TCiZp5D0BaErNJAY8J/5FEHn4iSTZHiyDSAWbvbgeVhhludbGtPnsIlAy7zcc
         y4QFB0ChR+o/QxFge3+eUTPLbESCvpp54bbCsoRPrxQqrPVzVNuGTdPAQabSSvqM2XMt
         4x1DbDgk3hIcaEN7ldNrpvthuHx8bWzqrHCnWMxwwy0Gi4qK+nkeelwKQDSVQCu2MwK/
         1MxcBWLNiaLvCVAHXwXOLJxxnshOGcsk8VTNcn9j0cskEqCl2iM2SyldkVsY0HZeA/7q
         pv8w==
X-Gm-Message-State: AOJu0YxfSoH9H8ID/L45Iiq4IG5nDphw2GUE+6vnbtxeIYwa3nrpLGaF
	T5izxibB1rHzQPDMEIoz5pjLSe5ExzDhCcZfawerkEh+J2jXSiWpb0oo7VCm3BxCLgngj9+GYOM
	r/Lgwfjho/b46nSGGs9cQL7y1E3U=
X-Gm-Gg: ASbGncsfCjhVShpDQqbXDmHamB4eFrAD0F6Qs9tgnPq0XVSilQNf3St1pHloe/dPolC
	7y+zISuSP920ONyApItUeERiFU9GPzQTDMt3V76rp6+Ef4VM+loKTYAdnBB4dvtIxDWA1039yhe
	AVdC+Hh4uHJqV06divOa7z6sbR2R8TeeWm2zr1w1j9jDgnp/7+7eZhj9ZHj4ivfR0Ldi0=
X-Google-Smtp-Source: AGHT+IEnH09RGg2HpvjLhopebpctcIB1cIVWhIVx9qG+zE9qmCqcC2nLvDyIB0roEJThjLe1IDOb8v8XHzdZ9GFGBlE=
X-Received: by 2002:a05:690c:6ac6:b0:6fd:6589:7957 with SMTP id
 00721157ae682-70a3fb52757mr238915367b3.32.1747145874248; Tue, 13 May 2025
 07:17:54 -0700 (PDT)
MIME-Version: 1.0
References: <CACsETSs510LH+gc0bAwf+hLPUa9bg3X=SXmzM4BrP=i4BMbPJA@mail.gmail.com>
 <1013.1747145434111644585@lists.yoctoproject.org>
In-Reply-To: <1013.1747145434111644585@lists.yoctoproject.org>
From: sateesh m <sateesh0457@gmail.com>
Date: Tue, 13 May 2025 19:47:42 +0530
X-Gm-Features: AX0GCFtSB-1j-CHmkFzooeH6ytofPRfcN0d7wWoBIP8jhCxQLTe8EwP1KTJjszc
Message-ID: <CACsETSud6T4wLEcRZbn+4g_7qtnYa-MfhDR2QDfJm5B1sLr6uQ@mail.gmail.com>
Subject: Re: [yocto] GLIBCXX_3.4.30' not found
To: claudiubucur@hotmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000349c170635051984"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 14:18:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65333

--000000000000349c170635051984
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you done any python version and gcc version updated in your pc.

On Tue, 13 May, 2025, 7:40=E2=80=AFpm Klaus via Lists.Yoctoproject.Org,
<claudiubucur=3Dhotmail.com@lists.yoctoproject.org> wrote:

> ubuntu 22
>

--000000000000349c170635051984
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Have you done any python version and gcc version updated in =
your pc. </p>
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 13 May, 2025, 7:40=E2=80=AFpm Klaus via <a href=3D"=
http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Org</a>, &lt;claudiubucur=
=3D<a href=3D"mailto:hotmail.com@lists.yoctoproject.org">hotmail.com@lists.=
yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v>ubuntu 22</div>
</blockquote></div>

--000000000000349c170635051984--

