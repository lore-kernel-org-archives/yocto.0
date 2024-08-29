Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36ACC83033
	for <webhook@archiver.kernel.org>; Thu, 29 Aug 2024 10:37:53 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.9780.1724927865606887167
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Aug 2024 03:37:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iVhuWZDR;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5334c4d6829so652481e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 03:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724927864; x=1725532664; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qhEzfJ1E7twbUXkwNxakKw+vvTlugz53lY9+kfzo2Lk=;
        b=iVhuWZDRjWE/pzzejCIx0j6bpgjC/KBK+8Iap7R+lLdqCrTTwynJon1TXCsaCQ7AUc
         peEkGklAmCtWuhPvMJTfB4/cj8ZWMUV+HL/dYboieaNxVoNpoYNKoCtAdp3yf77qc0mE
         kxOGZ2XC0bU+xVpfCO42G0fBtaCJ2YzwT4eYLImgsP9FGioqsDPAVvfoZd/tDekPP6Ns
         qP31/QaHFn8kXEH/Y+t5tZ6RPq1JVfkFxeWer+qZmN1XYUe6VQVYZ3BdcVrQ4uIhzi8I
         RG21dLKuC1ehugHIb/RhNGcj0aKDg5pZpnvCxZ/SNt1MWbysnO07RltVhX2DMWvQxi7B
         iJxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724927864; x=1725532664;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qhEzfJ1E7twbUXkwNxakKw+vvTlugz53lY9+kfzo2Lk=;
        b=Q9Nm5gXI6JFX8vR0uxYoPaP4xA+d0+GbHHd4gByTvoqZDJUX8BMBMwHucRNz12xeXA
         qRWwjuyx2Npd6h0I5SmAijDdw68IsCWwo/H8dXUSbhEArLmjXAQAQ4YqkfiTeMc4YBkO
         5LmYFoeihdaeao9xAes+qUWE3j+0v7fRFxz8Zmp+jKsZrwn+9eYmgQ6cJqkI5qGcl10c
         QM6cyZmosx5itzqJVZbiYATcIuJHFVlDGVAYMtcjk+PQbpMQxQ/FC2ozu+s+KyvynYsB
         YuH732Sx3ehNgkW59Pq6kqhcH4pKovz0RAB3lKhWIpkDnP9Qp0kYG5nYmwcCl91KCHTA
         FXKw==
X-Gm-Message-State: AOJu0Yy2rKpZHKgZWRZracdWMQK+IpfzbsEE5QIfRFyKfzA+zNFi6vEZ
	4uQ1ED7i2+CFxJu8w2QOrw12nAlenFYUkeiBtBM0HpLILzSMAGVmq2gQexV//MKviA7GODLnXMg
	HzXTztCiUt6DE3HTrgGDKuE48Gyc=
X-Google-Smtp-Source: AGHT+IGE3CeCZWmN9VBCwKe1VyDEnSp77ThuGiEPaXvQFINYriMGULDYnjJLX4d6JzInUBb5SeJhrR4hrmRiBCq+6jg=
X-Received: by 2002:a05:6512:3b14:b0:52c:c5c4:43d4 with SMTP id
 2adb3069b0e04-5353e5b72abmr1513067e87.53.1724927862913; Thu, 29 Aug 2024
 03:37:42 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9zHSbewBuEn38NtNhGtydzN_QtgZFozgYuEaYeZ=Ms+Q@mail.gmail.com>
 <18822.1724927734724846009@lists.yoctoproject.org>
In-Reply-To: <18822.1724927734724846009@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 29 Aug 2024 12:37:31 +0200
Message-ID: <CANNYZj_Ls-58iQkQOXbQMP2NTAKWBn08ivkwUJ8_y2NcAQ5KXA@mail.gmail.com>
Subject: Re: [yocto] Parallel task limit issue on 80 core (2 CPU) system
To: cebel.efecan@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000088454f0620d0107f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 10:37:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63765

--00000000000088454f0620d0107f
Content-Type: text/plain; charset="UTF-8"

I am unable to see the image. It's possible there are no more tasks,
because tasks dependencies prevent bitbake from adding more?

Alex

On Thu, 29 Aug 2024 at 12:35, Efecan Cebel via Lists.Yoctoproject.Org
<cebel.efecan=gmail.com@lists.yoctoproject.org> wrote:

> Hello,
>
> Actually, a situation exactly like the image below occurs. I start the
> build process, but 52 tasks are running at the same time. But I have 80
> cores.
>
>
> Best regards.
> Efecan
>

--00000000000088454f0620d0107f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am unable to see the image. It&#39;s possible there=
 are no more tasks, because tasks dependencies prevent bitbake from adding =
more?</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 29 Aug 2024 at 12:35, =
Efecan Cebel via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproje=
ct.Org</a> &lt;cebel.efecan=3D<a href=3D"mailto:gmail.com@lists.yoctoprojec=
t.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div>Hello,</div>
<div>=C2=A0</div>
<div>Actually, a situation exactly like the image below occurs. I start the=
 build process, but 52 tasks are running at the same time. But I have 80 co=
res.</div>
<div>=C2=A0</div>
<div><img width=3D"1314" height=3D"703"></div>
<div>=C2=A0</div>
<div>Best regards.</div>
<div>Efecan</div>
</blockquote></div>

--00000000000088454f0620d0107f--

