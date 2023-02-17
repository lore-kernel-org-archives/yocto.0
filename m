Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B405C05027
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 08:31:42 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web10.2563.1676622692585515136
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 00:31:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20210112.gappssmtp.com header.s=20210112 header.b=5fLWQ8hv;
 spf=pass (domain: smile.fr, ip: 209.85.208.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-ed1-f54.google.com with SMTP id eg30so1192903edb.7
        for <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 00:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uA5LKtuKymzhBJoTq4aMNs8bEWzZJFfHaf1IfPJq7Wc=;
        b=5fLWQ8hvVhYpCfkZ8hcdGu1CI2o8Hw/bCaAYrJ1hfBL5lNjIMcfNjyTXuDadd9yNP+
         MQr7nxsOwN9YBGk5mQcg3KsSYNeIGAhceUb/JkK+VaFAnokwy/rDAIDQz4DOGNYBV+vk
         RUf62BYViAeCuYN2HG3xLwmskwsJZaWdYwhvc2OtGbAIur7G1Gc7Qv1HZnr0LW6UGXiI
         TQtNjRdORVpTeGFQScEucgjwYoMKl+MrKbzxtqYB5x0e8DP26VOKxXw9AMHAh7YNjtK9
         4fbfDRFI3ny0R1o4igasC1ebI4LJEMRUUeMXzXbIqZ2sKI4IcK3XBTiA/4RU7swNCHJv
         BYvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uA5LKtuKymzhBJoTq4aMNs8bEWzZJFfHaf1IfPJq7Wc=;
        b=f/jlzh0YXBoGYn6HbvBwxLOGQDXQLKuEkQQ9CM09I9NdkUtt79pqZhEkbKEI+zgcbp
         mSzfS2eWtpY79pRMRwXMFnVex3weExB/6TbCMNcyQ6gG86iIo4WgDXz9jp8E2EbM++6v
         1TFg8TE/a5c+4qSy4UiotyF1gWpTeggNZqVVkSBVnoqybmaiMaVbi+5BSDs5NyAV5wez
         HSDIesKm2B0C5syHMzeJ12cNzc3Je22etPW1I/+/0NHSZIFkGx7tmg3kMfpgNEhXT57/
         JyfK9Y8XgMhwWAtvn2ISq07dSv1+dv1Mqm4weEBCqK07gaAAJUC01kn2JNe7Cbro2rwZ
         a6Lw==
X-Gm-Message-State: AO0yUKVClze8EBXRZzBlVTzLTYYs6njsXsJs50i1M50pjSBDNjLJ+vVS
	0HQINRGIJctLOZ1t+OtN56Nst9C7vsobC0UT9qwnaw==
X-Google-Smtp-Source: AK7set+6d+ZLntP5qor1k0DAlXwws7eXYZcsTJGGi/OMZs6PRLtKIwTLHyj4KSM2iEboplfyzmEOJkdMemGIF9ytW7k=
X-Received: by 2002:a17:906:5e42:b0:877:747d:4a85 with SMTP id
 b2-20020a1709065e4200b00877747d4a85mr11125eju.3.1676622690706; Fri, 17 Feb
 2023 00:31:30 -0800 (PST)
MIME-Version: 1.0
References: <D36X.1676610504336239737.JLfk@lists.yoctoproject.org>
In-Reply-To: <D36X.1676610504336239737.JLfk@lists.yoctoproject.org>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Fri, 17 Feb 2023 09:31:04 +0100
Message-ID: <CAMSfU+6Vi+ff0sog4EvyTYZQEAaGnUXMDdoe5+ns=T30N-a1iQ@mail.gmail.com>
Subject: Re: [yocto] Importance of ECC RAM on the build computer
To: davidskeck@fastmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e6f5ed05f4e123ed"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 08:31:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59237

--000000000000e6f5ed05f4e123ed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

Le ven. 17 f=C3=A9vr. 2023 =C3=A0 06:08, <davidskeck@fastmail.com> a =C3=A9=
crit :

> Is there generally suggested advice regarding the importance of ECC on th=
e
> build computer? I'm very new to Yocto so I'm not sure if there is a chanc=
e
> the final build image could experience some corruption due to flipped bit=
s
> in RAM or if I'm totally overthinking this.


Last time I checked. The ECC vs non-ECC price difference was not worth the
time you may spend in case of a RAM bitflip.
Here, we put ECC RAM in our build systems and I guess it's quite the
industry standard.

It is also possible that Yocto does some kind of CRC checking of its own
> that makes this a non-issue. Any guidance would be appreciated. Thank you=
!
>

Yocto does source integrity checks (the stuff it downloads from the
internet) but it can't do much more after that.

I've yet to debug a RAM bitflip but I guess it may trigger any kind of
weird behavior which may be hard to debug and time consuming.

My advice is : keep your time and sanity, use ECC RAM.

Regards,
--=20
Yoann Congal
Smile ECS - Expert technique

--000000000000e6f5ed05f4e123ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Le=C2=A0ven. 17 f=C3=A9v=
r. 2023 =C3=A0=C2=A006:08, &lt;<a href=3D"mailto:davidskeck@fastmail.com">d=
avidskeck@fastmail.com</a>&gt; a =C3=A9crit=C2=A0:</div><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Is there generall=
y suggested advice regarding the importance of ECC on the build computer? I=
&#39;m very new to Yocto so I&#39;m not sure if there is a chance the final=
 build image could experience some corruption due to flipped bits in RAM or=
 if I&#39;m totally overthinking this. </blockquote><div><br></div><div>Las=
t time I checked. The ECC vs non-ECC price difference was not worth the tim=
e you may spend in case of a RAM bitflip.</div><div>Here, we put ECC RAM in=
 our build systems and I guess it&#39;s quite the industry standard.<br></d=
iv><div> <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">It is =
also possible that Yocto does some kind of CRC checking of its own that mak=
es this a non-issue. Any guidance would be appreciated. Thank you!<br clear=
=3D"all"></blockquote><div><br></div><div>Yocto does source integrity check=
s (the stuff it downloads from the internet) but it can&#39;t do much more =
after that.</div><div><br></div><div>I&#39;ve yet to debug a RAM bitflip bu=
t I guess it may trigger any kind of weird behavior which may be hard to de=
bug and time consuming.</div><div><br></div><div>My advice is : keep your t=
ime and sanity, use ECC RAM.<br></div><div><br></div><div>Regards,<br></div=
></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><=
font face=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"Ralewa=
y, regular">Smile ECS - Expert technique</font></div></div></div></div>

--000000000000e6f5ed05f4e123ed--

