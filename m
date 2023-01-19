Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6EF5C00A5A
	for <webhook@archiver.kernel.org>; Thu, 19 Jan 2023 11:34:10 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.42969.1674128049150801906
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jan 2023 03:34:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com header.s=20210112 header.b=iXibi+MF;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.46, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f46.google.com with SMTP id ud5so4899200ejc.4
        for <yocto@lists.yoctoproject.org>; Thu, 19 Jan 2023 03:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+ff8vjLrUSDWpxyWYGbSmCYh917+Fusfma2vLo9A+BA=;
        b=iXibi+MFCzKYIs+vjb3Ppbwx131YSQ83RZAXyX476KJClE2xh+Cx9IqcxiXJt2H4be
         RbTeXLuxsavfmNXyPi3AjpQhgrbIENBvddE0vPSROf+nuNK1tGO35zs7zGTzauIews9m
         DjLiIA4Ku4PYP4NaK+oyKlDPLNsMSSiogFVDTWzSXlOBt5MvUIphhtjIHNiA44sAlu3H
         9br/HRdXtp7RdDj/vhLaoXqFRsaXB8gdUa/WozaQp2O8aEp0UwHQxcKU362brF1gwx3A
         j+n8JrOVmlWCmBKtKmJSnCTnXwRn0KEEslq8j7Yed9dcpPAztjDTBQMP0QZlTzO2M6pN
         JawA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+ff8vjLrUSDWpxyWYGbSmCYh917+Fusfma2vLo9A+BA=;
        b=h7zcDCrRLydRz3GI5aG+IwdCsyvHdih1LjrsBi1bVlrV7u4bFru97q1cA3fINyRxNh
         Djkm63gmCDjGxXOfspoqgcrYK1ll7DtMtp7etmghQyhV15HLJsvIOULZQzVMsigXganM
         OxCcO4pr49yJ+j2fipnKrx8tMPCJ7Ti1jvedLwc2/zSI+pwxNJfl6ahonw9OGpjRoU/N
         qesFBL5iMq2xaqwSl3ZMvt9o7GdAwBrFUhVqaq33tA4Xt/O1+m21lXUf9HVEusz/OrNi
         +pTdOHD2m6lQJ39x+QENZCs0LhsR9IkWveXzUV+3Q3UaA627YykqR6QiJ+QLVyjDWvZN
         Tncg==
X-Gm-Message-State: AFqh2kpiZshaXPp1wYLj1bDpTr10iHKsrcmh1d5OS20M5JmQu2y4fPb5
	p03xklYsQxP1I5KudQZOGaWBUiiPBc4i4Jaw0k9SEu5MjbjGzg==
X-Google-Smtp-Source: AMrXdXvmYstMzRbsprMpAPRT3trbtR39TIp9oO9zYyvDkwdMF8x9cQGd14x0mH7CgcIcI35fwqZUP1SrBGb75GRds5k=
X-Received: by 2002:a17:906:6d17:b0:84d:33bc:652a with SMTP id
 m23-20020a1709066d1700b0084d33bc652amr1466076ejr.68.1674128047435; Thu, 19
 Jan 2023 03:34:07 -0800 (PST)
MIME-Version: 1.0
References: <CAEt6Nwp1jn_pB-XVJEAHyT6_9LoCugmQi1vRZKd_ne4W3Uj8Lg@mail.gmail.com>
In-Reply-To: <CAEt6Nwp1jn_pB-XVJEAHyT6_9LoCugmQi1vRZKd_ne4W3Uj8Lg@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 19 Jan 2023 12:33:41 +0100
Message-ID: <CAEt6NwqaOZkJ09zj5C_dgeoSdLQ1GSBAGr7VWT+ygoxRFkXiNg@mail.gmail.com>
Subject: Fwd: OE Workshop in Brussels, February 6th - gentle reminder
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009386b105f29c4fed"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jan 2023 11:34:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59019

--0000000000009386b105f29c4fed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all you Open, Embedded, and even OpenEmbedded people out there!

This is your gentle reminder that we are hosting an OE Workshop in Brussels
on Monday, February 6th - the day after FOSDEM at Avenue Louise 523, 1050
Brussels, Belgium.

Find a preliminary schedule at
https://pretalx.com/openembedded-workshop-2023/featured/ and if you are
around by then, don't forget to register:
https://pretix.eu/OpenEmbedded/workshop-2023/

Greetz,
Josef on behalf of the OE board

PS: lunch will be provided =F0=9F=8D=BD=EF=B8=8F

--0000000000009386b105f29c4fed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Hello all you =
Open, Embedded, and even OpenEmbedded people out there!<div><br></div><div>=
This is your gentle reminder that we are hosting an OE Workshop in Brussels=
 on Monday, February 6th - the day after FOSDEM at=C2=A0Avenue Louise 523, =
1050 Brussels, Belgium. </div><div><br></div><div>Find a preliminary schedu=
le at=C2=A0<a href=3D"https://pretalx.com/openembedded-workshop-2023/featur=
ed/" target=3D"_blank">https://pretalx.com/openembedded-workshop-2023/featu=
red/</a> and if you are around by then, don&#39;t forget to register:=C2=A0=
<a href=3D"https://pretix.eu/OpenEmbedded/workshop-2023/" target=3D"_blank"=
>https://pretix.eu/OpenEmbedded/workshop-2023/</a></div><div><br></div><div=
>Greetz,</div><div>Josef on behalf of the OE board</div><div><br></div><div=
>PS: lunch will be provided =F0=9F=8D=BD=EF=B8=8F</div></div>
</div></div>

--0000000000009386b105f29c4fed--

