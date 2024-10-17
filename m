Return-Path: <Shilpakumar476@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D601D21266
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 09:18:14 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.45066.1729156688970689577
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 02:18:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=my+vzhLT;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: shilpakumar476@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb5740a03bso8571891fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 02:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729156687; x=1729761487; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jlCEh5f4FUc4n9AsvW8/eNIHYPJeEUGnvFflzqqf5y8=;
        b=my+vzhLTteXXA5p32H53C5cI26XXYPzZrwz3MQtfQeKWmmNLh5gqtJSTkpPd+QgAqF
         D5PkeVTFLwr4BdAiibS4h04zvTdSGMI8wCMLzI2It180INOLgDU7rHLP0hYIwkd/aUXq
         x1g4tCbci6jo0dOOLQ5L9vxBoBDTnH6vSepNLCjGhuMmZx93013EnA4OnPGX54F4Tyj5
         V27IytdBVTxvrWx9Ls+adRnATG1/PctlW89GTnVYH4WQ7zgI8nLkg/YFAD95Zb9eK6k5
         y2L8p3ewEz4fwNQNLRvXsCKgjWbX+7+QOw/xxvsrgKjzLI6oKO/vdBNEU7wnN/fn60DU
         iF7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729156687; x=1729761487;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jlCEh5f4FUc4n9AsvW8/eNIHYPJeEUGnvFflzqqf5y8=;
        b=tOISBaPrpDxXDLuhbcyWFxyj4njraemxpwGYL2CJQicwCim7s5uv/vzgrdTk+uG0pf
         4Z468arRd+nYcG7z0E6/myRDdxmw17Lgdzf0xS5/ZGzd0quAjTdgrqNvaA+XGi8lZLgi
         gaN+bKoEGqMeOqHzHLl2TYH5sxGfktxvDPDoI7w4K+ilgcyi57CDOyw5oSgOm1q+HTUl
         zwEyC7q1b6QcEcZWaCbHvvVx+sEIIxuMgOWKYdicxO8ONcziFEKd6WYt55q6NC/hwr02
         vTbU5mSpxlBzDB3slxHi3FPnu7E60io2i6uktued7/Oz8ddz+uhkp3E+NtgbaJa4bGrp
         tdDg==
X-Gm-Message-State: AOJu0YxS7DgOJKLhFsotkEVgb1Io6hPmU8D3DIoWFKYhQMyzGka8xLsr
	RUhR2ujYtxshK43L9A8a4h0M9mQg2KwinxtpX3VnRm5L6V6WJC8IRY5RzvdzRgHknsw1F2qh3WH
	YVPpsn0ijzo5VGcRrbCdq+o3uPg/e4w==
X-Google-Smtp-Source: AGHT+IFL5S0K3VbdvvYTb2F3lGC2vGg7lTvApx3bPpjpXfb2N6LYEQEyodzraN+HQTr3gi1qkN0xVPvAxEN8YbJe7Mg=
X-Received: by 2002:a2e:131a:0:b0:2fa:d84a:bd83 with SMTP id
 38308e7fff4ca-2fb32770fbamr89961731fa.24.1729156686564; Thu, 17 Oct 2024
 02:18:06 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj93_hwUFyshedbBsX6LhBVv8k_-anA+X-wvTdQ01KCg0g@mail.gmail.com>
 <2413.1729156088511552914@lists.yoctoproject.org> <CANNYZj-q5T5_ZxEEHueHoihsuB62ynAv+vKDUoOHQX2E2=Mv_g@mail.gmail.com>
In-Reply-To: <CANNYZj-q5T5_ZxEEHueHoihsuB62ynAv+vKDUoOHQX2E2=Mv_g@mail.gmail.com>
From: Shilpa <shilpakumar476@gmail.com>
Date: Thu, 17 Oct 2024 14:47:54 +0530
Message-ID: <CAOqiPbJMC4qxJu8yL8Aa+ZRdDuzTNbz7DYBVAC=LFAbzD-pJOA@mail.gmail.com>
Subject: Re: [yocto] How to create Tool to update commit hash in yocto recipe
 files #bitbake #yocto
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000010544c0624a8aaf6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 09:18:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64040

--00000000000010544c0624a8aaf6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For every yocto recipes Can we supply the commit hash, instead of explicit
supply do we have any other method

On Thu, 17 Oct, 2024, 2:41=E2=80=AFpm Alexander Kanavin, <alex.kanavin@gmai=
l.com>
wrote:

> On Thu, 17 Oct 2024 at 11:08, Shilpa via Lists.Yoctoproject.Org
> <Shilpakumar476=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > 'Devtool upgrade' typically used  for upgrading the latest version of
> the software.
> > But here I'm looking for the new Tool which can be used to update commi=
t
> hash in yocto recipe files
>
> You can explicitly supply the commit hash on the command line to
> 'devtool upgrade'. Check what --help says.
>
> Alex
>

--00000000000010544c0624a8aaf6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">For every yocto recipes Can we supply the commit hash, inste=
ad of explicit supply do we have any other method </p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, 17 Oct, 2024, 2:41=E2=80=AFpm Alexander Kanavin, &lt;<a href=3D"mailto:al=
ex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">On Thu, 17 Oct 2024 at 11:08, Shilpa via <a href=
=3D"http://Lists.Yoctoproject.Org" rel=3D"noreferrer noreferrer" target=3D"=
_blank">Lists.Yoctoproject.Org</a><br>
&lt;Shilpakumar476=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" ta=
rget=3D"_blank" rel=3D"noreferrer">gmail.com@lists.yoctoproject.org</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; &#39;Devtool upgrade&#39; typically used=C2=A0 for upgrading the lates=
t version of the software.<br>
&gt; But here I&#39;m looking for the new Tool which can be used to update =
commit hash in yocto recipe files<br>
<br>
You can explicitly supply the commit hash on the command line to<br>
&#39;devtool upgrade&#39;. Check what --help says.<br>
<br>
Alex<br>
</blockquote></div>

--00000000000010544c0624a8aaf6--

