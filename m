Return-Path: <chrisfriedt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B83EC4332F
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 21:12:34 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.2086.1670533943955055693
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 13:12:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GcC7+BS7;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: chrisfriedt@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id f7so558493edc.6
        for <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 13:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8ovjc1Ywt9dWP2fxI89a0m4BqfdZvQbOLJQzFZXtoPo=;
        b=GcC7+BS7M3QU4wDe5PUPmtCEFQlN8mflbP5ZozZBA2KGqYTlgjE16z0h0/Rlk78NFM
         aLXUrC4ruv84EnvxMMQsyy6JuEx6rjNiwtFC7qRWvrrDRABIl5Bc+ewI8W4E+0PO2o+b
         BzqU5Sr4IGw+uGUjToe1WTUMoIWceMkZu4cJy4pPPMrRorB0sjGU/bqmBxDeFsMFHGaC
         aPelCszCZraJnOrbuK4eF6irB5zgzWKwFCL0QI3qGsfcbkmRR/3FsTRgdfn0d5DClqTh
         VggrxMSux76UmixXTSK/HS3RDY03a0YWUHTu6KPavyrQiOzGDinWu2kN6AzSqFiZH2W+
         RnJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ovjc1Ywt9dWP2fxI89a0m4BqfdZvQbOLJQzFZXtoPo=;
        b=qXzBLBZpqjASR5InbR6e5aAJ90WyWwWZXY0BFLMI75mNTVsMn7vZ9vxxCh+YtFpMAi
         MD+RdFk5OhrxELWv27VuK4MkbN/3MPe5N0BQLYYng8cQiCdSeUP79RMDOdSv452xbAaH
         SuLoqqvBXDpjj+zjz9tt/KI3Yns4/HpKnoM3d9yGbC5Ojech+H0yEaou6yX6eFNt6+ot
         L7vEMlhCsup//NeN/jkgYjGeHpQi92+VcyjnmXlO3v6UVhsFsnh0qxWsc4SsBSgpXOk+
         kBkyQDC01z1EYTQkgMVj/k4au0LMieEITQvOySKSFHgKV36qZGKY3Ms2wrWq9/JYsW2X
         eRpg==
X-Gm-Message-State: ANoB5pnuOM31i+MKsGYxhuSrCroWtbb59HXTaPK6qw/oLHSdMmAw+B/e
	ZwFP3K3DwXes7STE++FPIj+VjziJaPifBcYUf8A=
X-Google-Smtp-Source: AA0mqf5OfnPH3T+PZ8CFLOHWbArpVZK7FX+E26D9CPFDUyVondBX1bG+sWqQTriW0Fr3q71t/A4G8i5sLPQkVopKTBc=
X-Received: by 2002:aa7:cd4d:0:b0:46a:832a:b851 with SMTP id
 v13-20020aa7cd4d000000b0046a832ab851mr57242278edw.127.1670533942393; Thu, 08
 Dec 2022 13:12:22 -0800 (PST)
MIME-Version: 1.0
References: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
 <172E4A3E9370D7CD.20831@lists.yoctoproject.org> <CAF4BF-R5ingAhi=Xk9tuVCht72E1kGVHTOtdC5YUTVUp_tuGsg@mail.gmail.com>
 <CADkTA4O=B0nwpPHsTk=NrkZYOTo7ghpYHAuBt_52eztRTVwskw@mail.gmail.com>
 <CAF4BF-SwmOdR8ot5TELjPbckei=XwnBf9wJPJNy6SGw+hWQ6-A@mail.gmail.com> <CANNYZj_+p7Wqg4zkOFEWbeRte+5VJfHR4hOJcDBCszpCtOa41Q@mail.gmail.com>
In-Reply-To: <CANNYZj_+p7Wqg4zkOFEWbeRte+5VJfHR4hOJcDBCszpCtOa41Q@mail.gmail.com>
From: Christopher Friedt <chrisfriedt@gmail.com>
Date: Thu, 8 Dec 2022 16:12:11 -0500
Message-ID: <CAF4BF-T=ycaUR+-CAys1X0nO6vNOLJz9bm58S82qP=bFwrH0WA@mail.gmail.com>
Subject: Re: [yocto] do_install hangs on native tasks
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000038c21d05ef577e7e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 21:12:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58768

--00000000000038c21d05ef577e7e
Content-Type: text/plain; charset="UTF-8"

On Thu, Dec 8, 2022, 3:30 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> Is it specifically make processes that are hanging?
>
> Alex
>

Not specifically, make has worked without issue.

Specifically, it seems to be restricted to do_install, on these nativesdk
recipes, when calling git in a subshell or script from make.

>
>>

--00000000000038c21d05ef577e7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Dec 8, 2022, 3:30 PM Alexander Kanavin &lt;<a =
href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Is it specifica=
lly make processes that are hanging?</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Alex</div><div dir=3D"auto"></div></blockquote></div></div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Not specifically, make has worke=
d without issue.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Specifi=
cally, it seems to be restricted to do_install, on these nativesdk recipes,=
 when calling git in a subshell or script from make.=C2=A0</div><div dir=3D=
"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><di=
v class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left=
:1ex;border-left-color:rgb(204,204,204)"><br>
</blockquote></div></div>
</blockquote></div></div></div>

--00000000000038c21d05ef577e7e--

