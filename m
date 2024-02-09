Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBDA7C4828F
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 10:48:45 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.8813.1707475724600042517
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 02:48:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=I+TTsbMe;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d0a0e40672so8938801fa.0
        for <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 02:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707475722; x=1708080522; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sUllA0VEZBgRmHyE3rrFy/WSOzKM9ZUiAo+/O4JG/Ls=;
        b=I+TTsbMeB1UV8s1ZTBASlYBInyV4Lh4zRAa/THJqrfyJVUq4b5ycvVpOXsuLVSC1CN
         g18fZxwNp0deCDF6QGvNY/NMVIgImLZKGr/xOHNo7ldZW1xZtjDHu1BNCN78Qi0bTLuG
         qhLhse1CZyZgmwzVO0nEoZb1XgGX1Wa+LNJ2zYvTk/cIXmmD+SCeTBqIn5X19n072E5Q
         3lAVj7ePTOHNdjvRhLD8tDq6AsqkBsYpiQepyzs9kwLoCmw2NlVAsq5NSyWFtj8zTS7z
         RgyyDagT94Ki5mDdgc6OLY4i3ST7zPqGipGQQiZaJI6/kltxl2mScHmr250YJxLNN/cN
         2mvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707475722; x=1708080522;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sUllA0VEZBgRmHyE3rrFy/WSOzKM9ZUiAo+/O4JG/Ls=;
        b=qhGYiy+mf3IwMVwEE2ys3fMt+O37pt1nU22n5yTqDVPVgy3lSsF3LdU3nl9caH6cN7
         B/Njq8hZpjKV8FUqEryzrQ1wVtKXmn4gRGFe+6WFvoxnpM6xieJbYB/TRnMuJh1xhobJ
         oYL7UcP/zk5CrTFWQqaNMevvtcU4B1l9ClEV/pxD0DAVjB0AjmfrZLAM0W+kyRN+nOeK
         KO/yY4G/Gq2BBl//0BQoqvF95xghVzsg9XC0YFMUEaymQMr5x8UHhlrX3bsUJgQ3/HlM
         V92gfccGMEOVKoddbg6KCJpuMAwFbbcS9NcbmTB7lHkzg+aRG+YQvyhDLzGgFYwEoMrR
         dKoQ==
X-Gm-Message-State: AOJu0YzdjG2jiSiqIaeFTWRDeEadPV+eF2jIoFtOO05NC+S0dGoPPVmE
	fct4K2CWG3qoEn5S7EmyDOo2l6VZL9xViX24p1dVTqA7zpt5QZMDv+SowF/DpdrBcmYB7Y7vN41
	M8T+vfjhIrqElvsPHxaY/dW/D+2bTAMIf
X-Google-Smtp-Source: AGHT+IHSPr2gpKEx9azTO5ItxJz8Fb1Dg/zd85QyKNFHYywbEEi6LVtquiGMtKzQjrPOyIQqMgi2hNPVQ4FrIhykXNY=
X-Received: by 2002:a2e:9cd8:0:b0:2d0:d0d7:141b with SMTP id
 g24-20020a2e9cd8000000b002d0d0d7141bmr229880ljj.12.1707475722088; Fri, 09 Feb
 2024 02:48:42 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv34eGKsP-EvTxO4=ERjZL5=ahUMuDq_JHGgw3903gRP-0g@mail.gmail.com>
 <0428CEE9-BDC6-4DA4-8ED0-BAB5A3AC2F6D@arm.com>
In-Reply-To: <0428CEE9-BDC6-4DA4-8ED0-BAB5A3AC2F6D@arm.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 9 Feb 2024 11:48:30 +0100
Message-ID: <CAAfyv34sK-ip84i1X7j+kfzdNAkRCrYuS+hWDYv7=oMf9MkgnA@mail.gmail.com>
Subject: Re: [yocto] cve-check output display
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e0b7e50610f0abdd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 10:48:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62446

--000000000000e0b7e50610f0abdd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 9, 2024 at 11:47=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> w=
rote:

> On 9 Feb 2024, at 08:57, Marek Belisko via lists.yoctoproject.org
> <marek.belisko=3Dgmail.com@lists.yoctoproject.org> wrote:
> > Does there exist some tool for viewing output from cv-check feature?
>
> The output is either human-readable text files, or machine-readable JSON.
>
> If you want something prettier than the text then I=E2=80=99m not aware o=
f any
> tooling to transform the JSON, but it shouldn=E2=80=99t take more than a =
little bit
> of jinja2 templating to make a nice HTML page.
>
OK thanks for the info.

>
> Ross


BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000e0b7e50610f0abdd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 9, 2024 at 11:47=E2=80=AFAM R=
oss Burton &lt;<a href=3D"mailto:Ross.Burton@arm.com">Ross.Burton@arm.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On 9 Feb 2024, at 08:57, Marek Belisko via <a href=
=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lis=
ts.yoctoproject.org</a> &lt;marek.belisko=3D<a href=3D"mailto:gmail.com@lis=
ts.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>=
&gt; wrote:<br>
&gt; Does there exist some tool for viewing output from cv-check feature?<b=
r>
<br>
The output is either human-readable text files, or machine-readable JSON.<b=
r>
<br>
If you want something prettier than the text then I=E2=80=99m not aware of =
any tooling to transform the JSON, but it shouldn=E2=80=99t take more than =
a little bit of jinja2 templating to make a nice HTML page.<br></blockquote=
><div>OK thanks for the info.=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
<br>
Ross</blockquote></div><div><br></div>BR,<div><br></div><div>marek<br clear=
=3D"all"><div><br></div><span class=3D"gmail_signature_prefix">-- </span><b=
r><div dir=3D"ltr" class=3D"gmail_signature">as simple and primitive as pos=
sible<br>-------------------------------------------------<br>Marek Belisko=
 - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 0=
8005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitt=
er: #opennandra<br>web: <a href=3D"http://open-nandra.com" target=3D"_blank=
">http://open-nandra.com</a></div></div></div>

--000000000000e0b7e50610f0abdd--

