Return-Path: <lpmeyer@ics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C97CFB448
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 15:11:54 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web10.55642.1728313910237833177
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Oct 2024 08:11:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ics.com header.s=google header.b=ePB0fU1Y;
 spf=pass (domain: ics.com, ip: 209.85.160.53, mailfrom: lpmeyer@ics.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-287f29182b0so589133fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 08:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ics.com; s=google; t=1728313909; x=1728918709; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g2BACOF0hSJL4x3xZoR5U5AnpbokSvWbTfKkCC5q4eY=;
        b=ePB0fU1YmjQDlb+c+ROqAWmHdYTZ5YX1JrEmVL7Ymo5EmFHmW8GFldZSN2qtjZl3Bj
         wibWqvtyK4kkRg5ccDGmRGy14D/EmwlILMTIu3p8UoEAjra4dgE1kWac+20WuGD/jnVT
         IWvRDoD7HcpCRhYNq5fNAVO6Y8YKS3x7G2QM4IFWj0KEf+GNoNL65i4pEndTpHxOMpRz
         I2j9aZssxzpTyh8+bVVc7xsPlmmG2cj6apCh4SkAIZcdDWrztsqnarM4J2+60Ta8gJwy
         veFQ/mJ4g/wWzkGAy4PNYjhXVU0CI2qScvKQAgHF5ReSv5pEjCRS/TD5ZUnwXlMzcJWk
         cVlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728313909; x=1728918709;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2BACOF0hSJL4x3xZoR5U5AnpbokSvWbTfKkCC5q4eY=;
        b=J+OQ08OHDr/A1Te+ulll90pBUkWmjNt51DFGtA/W8oHS4yRjZgalSPchz74YbVvTNA
         PcfYTnHrz+ntf+jkh8goSnpYeLbYlc3g+9T4ZArAUusWbd50/H3PWikZF4nZ2PEhCMBH
         wdwqBe6edFjZs2ubg6YHJXwDnipcV+4QQmnlNWlBx10ycMN2N8hg7PJaMd8wH7xzzbyc
         kfBddYcMBBwy79TDdsAqtgyvI9bSqpzn6BNIccFs5J+/VypVTLz7V9S+xr00Be0gise0
         22ntdxdvhDghpLeuG97K/5SrvuTUzGAWXI1TI/p4a3E10TO3Jai0IaRngD4NeO7dO7RM
         N/Ew==
X-Gm-Message-State: AOJu0Yxw1YsTWITIrsW9ev5EfPbCLrxDqqmFn+rIoLC6yfljVaNhJguJ
	CbFPKa0/Wi27Qmuf0Xn79/sz2Ea05UxttaNA03N+db1a8JhJwz3Us84EioORbpGBi0/Bm+gvrG5
	hobVGCRyU7j7zWX5T9AAlm/V69ln8H+CHSKtUBM5FlfI9cit2
X-Google-Smtp-Source: AGHT+IFp6NfKKdNoAd5rvyK0e/ZfWLO0v9wFyQaFJAyEIc3GiztH9sU7YJxJ2c9y0XQl/I+O5CBhtvDHmxYEbpq5oAo=
X-Received: by 2002:a05:687c:2bd7:b0:250:70bb:1a97 with SMTP id
 586e51a60fabf-287c1e16723mr7180358fac.24.1728313909001; Mon, 07 Oct 2024
 08:11:49 -0700 (PDT)
MIME-Version: 1.0
References: <17FB120285840E5F.4329@lists.yoctoproject.org> <17FB13B161187F1E.32205@lists.yoctoproject.org>
 <17FB4EF567AE3E89.29770@lists.yoctoproject.org>
In-Reply-To: <17FB4EF567AE3E89.29770@lists.yoctoproject.org>
From: =?UTF-8?Q?Lisandro_P=C3=A9rez_Meyer?= <lpmeyer@ics.com>
Date: Mon, 7 Oct 2024 12:11:33 -0300
Message-ID: <CABqjNW_sOfR3qF=_uxmAm+537GMpA_4UMyxLx0abwc+RFmfm6Q@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypy] scarthgap: reproducing videos with VLC
 or Qt using the GPU
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009b6bf40623e47094"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 15:11:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63947

--0000000000009b6bf40623e47094
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 4, 2024 at 2:08=E2=80=AFPM Lisandro P=C3=A9rez Meyer (ICS) via
lists.yoctoproject.org <lpmeyer=3Dics.com@lists.yoctoproject.org> wrote:

> I could make Qt 6 to use rpidistro-ffmpeg which reduces the load to ~84%
> but still not as ideal as I would have expected. VLC on RPi OS does work
> nice...
>

OK, VLC requires x11 support to work. Now it's kind of obvious, but took me
a while to get to that.

It is still using ~220% of the CPU, but I think that's fixed in newer
ffmpeg/vlc versions...

--=20
Lisandro P=C3=A9rez Meyer
Embedded Platform Engineer

--0000000000009b6bf40623e47094
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Fri, Oct 4, 2024 at 2:08=E2=80=AFPM Lisandro P=C3=A9rez Meyer=
 (ICS) via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org=
</a> &lt;lpmeyer=3D<a href=3D"mailto:ics.com@lists.yoctoproject.org">ics.co=
m@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">I could make Qt 6 to use rpidistro=
-ffmpeg which reduces the load to ~84% but still not as ideal as I would ha=
ve expected. VLC on RPi OS does work nice...<br></div></blockquote><div><br=
></div>OK, VLC requires x11 support to work. Now it&#39;s kind of obvious, =
but took me a while to get to that.</div><div class=3D"gmail_quote"><br></d=
iv><div class=3D"gmail_quote">It is still using ~220% of the CPU, but I thi=
nk that&#39;s fixed in newer ffmpeg/vlc versions...<br clear=3D"all"></div>=
<br><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" c=
lass=3D"gmail_signature"><div dir=3D"ltr"><div>Lisandro P=C3=A9rez Meyer<br=
></div>Embedded Platform Engineer<br></div></div></div>

--0000000000009b6bf40623e47094--

