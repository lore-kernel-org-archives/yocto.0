Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3C1EFF885D
	for <webhook@archiver.kernel.org>; Tue, 28 Apr 2026 11:30:03 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10860.1777375798524365626
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Apr 2026 04:29:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=QC10iehY;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: ycnakajsph@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-82cf636dac8so4807481b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 28 Apr 2026 04:29:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777375797; cv=none;
        d=google.com; s=arc-20240605;
        b=UP2StMyGONdJfvOMVphq+H/yzeBL9D0KcpEMX4B+mq4YrKySupJyVVBHFuoBCB98BP
         GCoLl6oJYt8q8946U9L+bPWtv7649RBYms/Lqb1Fijb1PH1WKkqXV+3zlZQqAmOvRJJ5
         jM/ww6OvSHexuJ4ZnXpLAhMLCF5Mkz4sSgZjrNzc4JTzPnwCgC9OQjHhnMKTNkxS17gw
         da3PjEYUsnLi0YNdObLK/W9iI8V+JGzpxRCiEB0Ea/7OyPTH0X14c8mBRDimz4j5IVyz
         cBmZY5xKyMgCyMlVhBroU0FqQubYdSNY8TeFpgbQck8VaWNV7GLCKzHSSaTVVRAfXrGG
         O+1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=frMNVcWSBotKLV5Wty9lwJhpESvqpMXdFYsPB6TYRlc=;
        fh=QrqEFvCsshd+62iz9n4q9RPCiDutWnaIeD1m27maUc4=;
        b=N9BHRB7vVD0P0UZmRFcodwhRD45MGU1NJZKYqrSWGslXNKfjDGkpilBu56dm6508UT
         GWGmrExz0F4VdRx7aV3I6kyupoDyl/DKIGGWgWt8Rx8rjzG/bBeJMSQpWAL0e8EOZ5TU
         HsfznXzY/yBbS8LAEdPwkR4YClvzzTF3lNxujeVcW+3n7j79wdLvCr4pxeuy1V0QhSya
         LJcfToP+S+2Wb6LPh/yfiz3OmSvG4bBAVA5XtsArcPViUQKYPWqTFlT+N5htpek1jTjy
         uUbZwEC5SQxCek/IMMZzZPdIxNkhKhwHFHyy/d9MaOQzHtMsDEEBGw+E1Ncuo0f8Y8MF
         32vw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777375797; x=1777980597; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=frMNVcWSBotKLV5Wty9lwJhpESvqpMXdFYsPB6TYRlc=;
        b=QC10iehYVYvaKAZiGj54/dywwbNVn3rGDn29sDs23Fq3Rk/tHZcavZWZvFphZLSPDf
         AMpkJyTnQOezv4TdyJG10EJ3vs7JZUaz6qhpZYphh9MjzcE/1CDJCzHElREJX3+8Rm00
         5Jy9tLlCspOaPRstE9EwHEgC2UyZSNJN4e/u/HqDSnvihda2fXYE7BT2xytT1Ln8PO6g
         woX+Qc5491aO4DwmHF2H8DUIfvnyHmYi1ebPTTrZwbjJYWWiTGFbvhzhOz5p/G53q7gn
         wa9svOLfjVRlLtgrN+Pkzs68idHf8BEnJez+Jy5EZ+cthlD/KOLmXhGMLLBy2RomeWrX
         Bbvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777375797; x=1777980597;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=frMNVcWSBotKLV5Wty9lwJhpESvqpMXdFYsPB6TYRlc=;
        b=khlshSD8JwotNlU8U2xNNYs4Sa5Ruq24EDm7kWmtm8FoZvusDSf5Z037nAeZuJ747J
         2W5rMepGOVvyLE2n+Teg30hxvt/f6YQ1UzVQVsx0WlGAGUYMjhuQoxLjnQmhO6CMjNO2
         jt+InCbSYaklkxyWnXNX8jNlUi6Y9vxs18rfITFHhlZSt1e51JPvPRKyKt1nFvMoka8Z
         krdTXtj5YIbrlXJHaFMiRK7La4KCKv23fAcauyTr4CxW7XZLKmygHw0LqHSDg5SaRjBu
         BsdLpCOUt+eMqm5IA56DN0QGJJ2RXQa6KXmzOs1wzc93MW0I0JKmvRJEAwOF8CDIgaJe
         jMrg==
X-Gm-Message-State: AOJu0YzK7nGdvlutPZ891jw1TjdKd5dm9FzdeXF1U+iS5B1jaF6V+3rW
	TTYkTUj2bHaRKw8T5buNsTfDlIn+N06dIB8pOhYPFVHHPS9+ZL+x8o9x6Dqt9SOiFJ4mOkvoAkB
	e50FiCnsS6lcI6NfAwoL5mxE5sCXIYjO1RONm
X-Gm-Gg: AeBDies48omeqqjuzutHeEMKCrs3okwF1gwr2UPU8ebxTKcfKDYBE9A6GbEVYJDLwU9
	jL/ZMxPGpr3+qvffk4vjSRT62D/UPb2ODsSw2cjURp19MmMvhty3d63AOj63774XVjRjq1WppSP
	rSOF8QfScJAGxCGBgnfkNbbjsgG+U4hUkMmYguigm5dfy8elDjqY9eaAc1aElbkTVfRWimRRe8F
	oXtaTFblkme0sM+dPjJ20t3JDU1Q6umSOHCWhn7spA/73M/51UUkCB/N+3/j4V/6zJ3FBIgaoS8
	PrD66clQV2bB1MjUSpYCbTBrc75Vj97Tog==
X-Received: by 2002:a05:6a00:3691:b0:82f:6cd5:1ead with SMTP id
 d2e1a72fcca58-834ddb2dda7mr2803775b3a.16.1777375797306; Tue, 28 Apr 2026
 04:29:57 -0700 (PDT)
MIME-Version: 1.0
References: <0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com>
 <41bc2926a6e99fa9e1f24d4bf7df486a6f489adf.camel@linuxfoundation.org>
 <CAC3TgALNd8yFbHO7vqnSwYPggczp1gmMrAgCoXoWbW_i6FVs9w@mail.gmail.com>
 <53c2c6f263b874cbf8382fa7d5993aac51835cbd.camel@linuxfoundation.org>
 <1637251.1777280730612486891@lists.yoctoproject.org> <1665690.1777326933976571713@lists.yoctoproject.org>
 <1670816.1777359973403332268@lists.yoctoproject.org>
In-Reply-To: <1670816.1777359973403332268@lists.yoctoproject.org>
From: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Date: Tue, 28 Apr 2026 13:29:45 +0200
X-Gm-Features: AVHnY4IsoKuCIwEQGbq4v8dwoeEgOx_ZBZM1eX9ViO_V3CAs2kWKl_dwrNTQiUc
Message-ID: <CAC3TgAJg-z_DsZUZjV8pkKsW4AKAkgQF4tPO7eJU3mf0fj_zYg@mail.gmail.com>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.rc1)
To: yocto@lists.yoctoproject.org, vlad.pruteanu@p3-group.com
Cc: danorris@gmail.com, 
	"yann.cardaillac@balena.io" <yann.cardaillac@balena.io>
Content-Type: multipart/alternative; boundary="00000000000007e8d20650838d19"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Apr 2026 11:30:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66453

--00000000000007e8d20650838d19
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

Thanks for the patch Vlad, I see it was integrated in bitbake's master
branch, do you have any idea when we would be able to have it
in Scarthgap or Kirkstone?

Can we do something to help integrate the patch?

Regards,

Yann CARDAILLAC,
---------------------------------------------------------------------------=
-----------------------------------------



On Tue, Apr 28, 2026 at 9:06=E2=80=AFAM vlad.pruteanu via lists.yoctoprojec=
t.org
<vlad.pruteanu=3Dp3-group.com@lists.yoctoproject.org> wrote:

> Hi,
>
> This patch solves the issue
> fetch2/crate: use CDN for fetching crates
> <https://patchwork.yoctoproject.org/project/bitbake/patch/20260427135122.=
1504143-2-johanam@axis.com/>
>
> Best regards,
> Vlad Pruteanu
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66452):
> https://lists.yoctoproject.org/g/yocto/message/66452
> Mute This Topic: https://lists.yoctoproject.org/mt/118986370/3617030
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ycnakajsph@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000007e8d20650838d19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi guys,</div><div><br></div><div>Thanks for the patc=
h Vlad, I see it was integrated in bitbake&#39;s=C2=A0master branch, do you=
 have any idea when we would be able to have it in=C2=A0Scarthgap=C2=A0or K=
irkstone?</div><div><br></div><div>Can we do something to help integrate th=
e patch?</div><div><br></div><div>Regards,</div><div><br clear=3D"all"></di=
v><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><div>Yann CARDAILLAC,<br></div>-----------------=
---------------------------------------------------------------------------=
------------------------<br><br></div></div></div><br></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Apr 28, 2026 at 9:06=E2=80=AFAM vlad.pruteanu via <a href=3D"http=
://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;vlad.pruteanu=3D<=
a href=3D"mailto:p3-group.com@lists.yoctoproject.org">p3-group.com@lists.yo=
ctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div>Hi,<br><br>This patch solves the issue<br><a href=3D"htt=
ps://patchwork.yoctoproject.org/project/bitbake/patch/20260427135122.150414=
3-2-johanam@axis.com/" rel=3D"noopener" target=3D"_blank">fetch2/crate: use=
 CDN for fetching crates</a><br><br>Best regards,<br>Vlad Pruteanu</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66452): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66452" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66452</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118986370/361=
7030" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118986370/3617030</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ycnakajsph@gmail.com" target=3D"_blank">ycnakajs=
ph@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000007e8d20650838d19--

