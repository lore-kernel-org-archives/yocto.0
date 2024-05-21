Return-Path: <mlynch@hi-techniques.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28E0C25B74
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 13:56:15 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.20288.1716299773646851482
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 06:56:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hi-techniques-com.20230601.gappssmtp.com header.s=20230601 header.b=kKtmMGd+;
 spf=pass (domain: hi-techniques.com, ip: 209.85.219.53, mailfrom: mlynch@hi-techniques.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6a04bae513cso11061726d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 06:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hi-techniques-com.20230601.gappssmtp.com; s=20230601; t=1716299772; x=1716904572; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sLVWKJot/jFj03nUFZL8aZFSWqVT59G104tHzeY7cSM=;
        b=kKtmMGd+uJJzL6e4ZQdhc9T4i9A8U4Y+csAp/EMtCxTcrXwAVWhGPPLjvr/3PD5f1e
         q/kg+M27p6GqINLQwsfK9XmENb/RnmPRneZUJtwAXqK5p8fWclgAqdug5WmC9WARMZTB
         KSuinng1oBKSzNbTKfen5w4WpU6Le8ndDhl9aSm0XHjojJ9cIL5PlMIRNV4iRqu2KKi4
         /DAuX3NblUhINKxS3EUx0QYASWa2zCwOxjM2g76IND/2nkeqlZ6aF2dcovA5yEg9bFTT
         Exei8XGKtku8rtC6oz4TgveyN9rJdcCcF/RyZbJHiW+8u0TwtPLh2A6yE3R/x3tcj58i
         M3WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716299772; x=1716904572;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sLVWKJot/jFj03nUFZL8aZFSWqVT59G104tHzeY7cSM=;
        b=j/58OmjQJn9SP2qPtyKAfOGviipLvbHqEwK6lC2wDjqfk0ZFb/0AIP5Lc884SqPQR7
         IgeeSPPllvNr6pcXMqxG280O+7LcxWHFuWWme/zblzXkSupMwW7fWn/0sZlk7wwrt1MD
         MiFLstjFuw3iZYK5SwBiC5mCzUL1Ryy7Vj/JUZ5ErXViTNk6zLGvfGVsefqN/MUNm7vH
         LtCGmfW1qpXPaK0uhu7kWOwg1SgoJhaObSQxdjDXUft3BNnGXipr0kP9fjAReMlHXazp
         i9+HsZaBnPPO2cJhrZAVDIlplXO+uH0BEMnoZ3DQ5Q97QrVPinmQOTKpOdGGqA58+74z
         k+hA==
X-Gm-Message-State: AOJu0YwcjgEUxRFqh8tKYAUW6bOmYPGSX29Q0vm7t0gdSNAQPPrwZ9CN
	NnAyYOyiUQi5dtKaXE6glOt1sz97c3FSUZL+EUfpttZyrG1/mmkhsXzQHzTKh0Ny/kgNB+X3Few
	zY/8m94js0D/JSQC7GbS4N+C/yllp5lGikqTtNA==
X-Google-Smtp-Source: AGHT+IGGRokhSzPrZbOg0+u9GbOENj1CjVMHOp7RP0f7B8TkZwKMxJFMtHkMqP7fhjZyHhzWQuoBu4FeYOiTsOT3Kps=
X-Received: by 2002:a05:6214:488d:b0:6a9:4af:44c9 with SMTP id
 6a1803df08f44-6a904af4691mr106437836d6.31.1716299772536; Tue, 21 May 2024
 06:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8_mHfpn_ngONnPW9tUQmZ_T3oJX-w=bpHC-CbiijSaCw@mail.gmail.com>
 <9920.1716294702750645500@lists.yoctoproject.org> <CANNYZj8pL+LLbQifBgFbGBqrfyYE0oDJ-Yvy76r-pQGmiG1qXQ@mail.gmail.com>
In-Reply-To: <CANNYZj8pL+LLbQifBgFbGBqrfyYE0oDJ-Yvy76r-pQGmiG1qXQ@mail.gmail.com>
From: Michael Lynch <mlynch@hi-techniques.com>
Date: Tue, 21 May 2024 08:56:01 -0500
Message-ID: <CADSA=uGbsWmTDhG8C2TO7b_Y477=3o1ROROzGB-oiVWxL+yKMA@mail.gmail.com>
Subject: Re: [yocto] meta-readonly-rootfs-overlay and #scarthgap
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004552180618f72e67"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 13:56:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63153

--0000000000004552180618f72e67
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As you stated, Mike is my name, and my email address is valid.  So what's
the problem?  Just like "in real life" the other information is
confidential and I'm not at liberty to share it.

On Tue, May 21, 2024 at 7:37=E2=80=AFAM Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> Your name is 'Mike' and your email is 'chiefsleepyeye@gmail.com'. That
> is not a real identity or an introduction. I'd want to know who you
> are, who is your employer, and what is your project and product. Just
> like in real life.
>
> Alex
>
>
> On Tue, 21 May 2024 at 14:31, mlynch via Lists.Yoctoproject.Org
> <mlynch=3Dhi-techniques.com@lists.yoctoproject.org> wrote:
> >
> > Not sure what you mean by "where that layer is hosted".  If you are
> referring to the repository it is,
> https://github.com/marcusfolkesson/meta-readonly-rootfs-overlay.
> >
> > Also not sure what you mean by "anonymously", my email and name are
> shown.
> >
> > Anyway, I'll just email the maintainer.
> >
> >
> > -- Mike
>


--=20
*-- Mike Lynch*

--0000000000004552180618f72e67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As you stated, Mike is my name, and my email address is va=
lid.=C2=A0 So what&#39;s the problem?=C2=A0 Just like &quot;in real life&qu=
ot; the other information=C2=A0is confidential and I&#39;m not at liberty t=
o share it.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, May 21, 2024 at 7:37=E2=80=AFAM Alexander Kanavin &lt;<a=
 href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Your name is =
&#39;Mike&#39; and your email is &#39;<a href=3D"mailto:chiefsleepyeye@gmai=
l.com" target=3D"_blank">chiefsleepyeye@gmail.com</a>&#39;. That<br>
is not a real identity or an introduction. I&#39;d want to know who you<br>
are, who is your employer, and what is your project and product. Just<br>
like in real life.<br>
<br>
Alex<br>
<br>
<br>
On Tue, 21 May 2024 at 14:31, mlynch via <a href=3D"http://Lists.Yoctoproje=
ct.Org" rel=3D"noreferrer" target=3D"_blank">Lists.Yoctoproject.Org</a><br>
&lt;mlynch=3D<a href=3D"mailto:hi-techniques.com@lists.yoctoproject.org" ta=
rget=3D"_blank">hi-techniques.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Not sure what you mean by &quot;where that layer is hosted&quot;.=C2=
=A0 If you are referring to the repository it is, <a href=3D"https://github=
.com/marcusfolkesson/meta-readonly-rootfs-overlay" rel=3D"noreferrer" targe=
t=3D"_blank">https://github.com/marcusfolkesson/meta-readonly-rootfs-overla=
y</a>.<br>
&gt;<br>
&gt; Also not sure what you mean by &quot;anonymously&quot;, my email and n=
ame are shown.<br>
&gt;<br>
&gt; Anyway, I&#39;ll just email the maintainer.<br>
&gt;<br>
&gt;<br>
&gt; -- Mike<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><b>-- Mike Lynch</b></div></div>

--0000000000004552180618f72e67--

