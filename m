Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0327FC00140
	for <webhook@archiver.kernel.org>; Fri, 29 Jul 2022 03:00:11 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.3885.1659063605243646366
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 20:00:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=in0/lHAb;
 spf=pass (domain: gmail.com, ip: 209.85.215.175,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id q16so2997832pgq.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 20:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=SJnVqADy+xXInVD8/d7cvhk/p/wG8+Z1NaMYOEgf/bM=;
        b=in0/lHAbg8LhxCNDLXgLrcjRAjyPrXsqiD1rBwF9DXGoF1ZBQMFj/PQk8/+PmkDqao
         EE468KOdCcwJYgMFVr7n9aLASu8u05KaVzDFAsKwdp9pxHSSI8sxYKlvXJ6Sga/YqB/U
         po2T6AE0mDftqYZCnivhhyXdKLNiF/xDl/rMIVvvk3bRZufTNQwSxIF8l6bb3aeS42FT
         gmXxxgf3fcNN/M4RnJgZOQvcVPd80/yU4t8zTSGtxx655xJdbo5ek8zZ2yRChMidR/wj
         NA0NIgNLAdOYiLGMAFTAtEQT1hHqpQfgwil4Yt7pKEQpAP+LZsTkMLreud8DwQC3hFFM
         4xPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=SJnVqADy+xXInVD8/d7cvhk/p/wG8+Z1NaMYOEgf/bM=;
        b=AiETMtLD0vONJ7lFdyz2z8OQm68PudIEe/OZXr127unhJLI23+HWkfdaLHuIOEBwbu
         vr1dmXsFEFMyL3dTeB3ks4dLXpPz98/EfisleMfLtAJa+9Iku8fSOoAhJCTlWxlUa/na
         2DjBN+0dyqFNNDfq4KUXTOopDyHXRnOUo7tdupmg6dyPEUA1WX/xpXzWcankx1dvhH9j
         2k5MV694CSzYmLJ2JWHH8Y90JG1P2suOzaC1nWOhLdQOL+12qZoe6lED40S0qjmqbmYk
         q1oN9Lrr60t5Abeud29dHn45AmihnHJ3RFSN4+DZ/OyDnOKzs1nE+Tbs5c/d0LGh/X+x
         I6UA==
X-Gm-Message-State: AJIora/yw56GJvS2f+pLxBAcu8rlBB9Is+PA7rpnwLXYz1JOSh+IiBqM
	+5SaMkUVI86rkLvgXgbW1+Yzz2NTPkOnyXnct+y4LzwePGsv3A==
X-Google-Smtp-Source: 
 AGRyM1tQU0lPd0Gqlho8uVmVHw+38ceJOgdVfCCzlUXfq9CKXFEl7wgdlscxAeycOCyTBZlnK9YI3nHSWb4U6OvRuWY=
X-Received: by 2002:a63:9042:0:b0:41b:6b2c:895c with SMTP id
 a63-20020a639042000000b0041b6b2c895cmr1278143pge.605.1659063604393; Thu, 28
 Jul 2022 20:00:04 -0700 (PDT)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Thu, 28 Jul 2022 19:59:53 -0700
Message-ID: 
 <CABKMkPLZdPvwG3B_WcQYWCvcgbQJ0LzaRtQzypeNSUUvQDykJg@mail.gmail.com>
Subject: user service autostart
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ccbd2a05e4e8d8a7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Jul 2022 03:00:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57679

--000000000000ccbd2a05e4e8d8a7
Content-Type: text/plain; charset="UTF-8"

How does one enable a user service for a specific user at postinst?

User service in question is located in ${system_user_unitdir}.

Seems the problem is related to determining what user, which makes sense
why this combo is not allowed: "systemctl --user --root=..."

I'm figuring this run as root?  Is there a way to have it run for a
specific user?
systemd_postinst_ontarget () {
if [ "${SYSTEMD_AUTO_ENABLE}" = "enable" ]; then
for service in ${FLUTTER_USER_SERVICE_ESCAPED}; do
systemctl --user enable "$service"
systemctl --user start "$service"
done
fi
}

Thanks,
Joel

--000000000000ccbd2a05e4e8d8a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How does one enable a user service for=C2=A0a specific=C2=
=A0user at postinst?<div><br></div><div>User service in question is located=
 in ${system_user_unitdir}.</div><div><br></div><div><div>Seems the problem=
 is related to determining what user, which makes sense why this combo is n=
ot allowed:=C2=A0&quot;systemctl --user --root=3D...&quot;</div><br class=
=3D"gmail-Apple-interchange-newline"></div><div><div>I&#39;m figuring this =
run as root?=C2=A0 Is there a way to have it run for a specific user?</div>=
<div><div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);fo=
nt-family:Menlo,Monaco,&quot;Courier New&quot;,monospace;font-size:12px;lin=
e-height:18px;white-space:pre"><div><span style=3D"color:rgb(220,220,170)">=
systemd_postinst_ontarget</span> () {</div><div>    <span style=3D"color:rg=
b(197,134,192)">if</span> [ <span style=3D"color:rgb(206,145,120)">&quot;</=
span><span style=3D"color:rgb(156,220,254)">${SYSTEMD_AUTO_ENABLE}</span><s=
pan style=3D"color:rgb(206,145,120)">&quot;</span> =3D <span style=3D"color=
:rgb(206,145,120)">&quot;enable&quot;</span> ]; <span style=3D"color:rgb(19=
7,134,192)">then</span></div><div>        <span style=3D"color:rgb(197,134,=
192)">for</span> <span style=3D"color:rgb(156,220,254)">service</span> <spa=
n style=3D"color:rgb(197,134,192)">in</span> <span style=3D"color:rgb(156,2=
20,254)">${FLUTTER_USER_SERVICE_ESCAPED}</span>; <span style=3D"color:rgb(1=
97,134,192)">do</span></div><div>            systemctl --user <span style=
=3D"color:rgb(220,220,170)">enable</span> <span style=3D"color:rgb(206,145,=
120)">&quot;</span><span style=3D"color:rgb(156,220,254)">$service</span><s=
pan style=3D"color:rgb(206,145,120)">&quot;</span></div><div>            sy=
stemctl --user start <span style=3D"color:rgb(206,145,120)">&quot;</span><s=
pan style=3D"color:rgb(156,220,254)">$service</span><span style=3D"color:rg=
b(206,145,120)">&quot;</span></div><div>        <span style=3D"color:rgb(19=
7,134,192)">done</span></div><div>    <span style=3D"color:rgb(197,134,192)=
">fi</span></div><div>}</div></div></div></div><div><br></div><div>Thanks,<=
/div><div>Joel</div></div>

--000000000000ccbd2a05e4e8d8a7--

