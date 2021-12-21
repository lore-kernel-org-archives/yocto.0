Return-Path: <arik.kleiman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07164C433EF
	for <webhook@archiver.kernel.org>; Tue, 21 Dec 2021 08:11:07 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web09.3471.1640074263537229267
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 00:11:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hR5qUupG;
 spf=pass (domain: gmail.com, ip: 209.85.210.44,
 mailfrom: arik.kleiman@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id
 h19-20020a9d3e53000000b0056547b797b2so15734556otg.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 21 Dec 2021 00:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=UhrDR16yRSLxIRKPrIPIemmMxEmOPkVF0gyjCRaFxuo=;
        b=hR5qUupGG8KeoV/ejt0JNy59G+vwtaCx7yKJKJ5hAy3wYTiE1NRC7DX8lnUDZlnly2
         Y5dWvGYg2LWDkq5NCRlT8UnQFn1aFn0/CI680WwEMwbV+RvFMbnqIZ1T1Ex6Z9HpDg1J
         HyNj9DYyeE4hQBZpehpvM/S8LO/ngZa1ULyCyQsnGWOHSdd/fDbY0YSf7yZBvS62XKzf
         6YUJ8V/eSyQJEmCYTwIeSFZy6iN0yRKDABIIH6dmJGy/+HGSuvImY/Jg+Y1QGbNpm1JY
         YmzDQhY/eVMGxXlEUiDmaDzcVJMAFkrN66b1ADL6x/3rTgUI+kFeE2A5XGGkgbHWv+2s
         N1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=UhrDR16yRSLxIRKPrIPIemmMxEmOPkVF0gyjCRaFxuo=;
        b=sR0zvK47khMQy3BvVDit6fsu4R73Oys/ooFEb7tv7dIsAtVF0fPoR/ds7KFbaJHSTw
         zmfvTohMgtvjxy5xHeueiJLkJqof736r5wZef6SnixtW2Tqhhn0bIw/TZSYkob2th5RL
         T9i8bjWMEi2k8lppZE3kYfP5Ig6qrwImc6GUa9INUwWmt23b5A1f1NBh37o/p3S9RNjA
         Q5lYfOM0r+bhXl1HFh0GjQyERPUIz+G7HOQiyqq2/1Fb6tDqwUL/89U7I6ITM4T17Kbm
         N6XJsjzp8sRR76YptF6vl8BMSfpK37e1cRvYSUM8PlLp2B/BMRDulcH9Pz69gwFZkn4a
         IaEg==
X-Gm-Message-State: AOAM532j0Nt+mFgOkh2T+5NtOGEHbqUWcUzDR2btz5hFKwYbKeerVkr1
	Y8gAzIu9KyUtgt4HND8sUaLa1RFlU0I2iGn+LoKj9oHS
X-Google-Smtp-Source: 
 ABdhPJyYE2E3KWk2pNyLMo4kpTHaaDwfgImb9enULqi0DeW8imlrefA11N3t/QRYT1q8SeKxQvA3YwWMdU9B2SRGUYg=
X-Received: by 2002:a9d:7084:: with SMTP id l4mr1347671otj.225.1640074262617;
 Tue, 21 Dec 2021 00:11:02 -0800 (PST)
MIME-Version: 1.0
From: Arik Kleiman <arik.kleiman@gmail.com>
Date: Tue, 21 Dec 2021 10:08:51 +0200
Message-ID: 
 <CAGeH+D0Wo9TNb-OA9_-fEzE5KhhK1Ls1XttH0PZozcJ=DJjQ8A@mail.gmail.com>
Subject: timedatectl (update read only system with local time)
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d424e205d3a38b8c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Dec 2021 08:11:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55631

--000000000000d424e205d3a38b8c
Content-Type: text/plain; charset="UTF-8"

Im looking for a way to add timedatectl to image.

What i need is basically setting up local date (according to time zone) on
a read only file system.


From what i read, there is a way to do this via timedatectl, but can't find
recipe for that.
 (is there another way?)


Thanks
Arik

--000000000000d424e205d3a38b8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"background-color:rgb(255,255,255)">Im look=
ing for=C2=A0</span><span style=3D"background-color:rgb(255,255,255);color:=
rgb(33,33,33);font-family:-apple-system,helveticaneue;font-size:16px">a way=
 to add timedatectl to image.</span><div dir=3D"auto"><div dir=3D"auto" sty=
le=3D"color:rgb(33,33,33);font-family:-apple-system,helveticaneue;font-size=
:16px;background-color:rgb(255,255,255)"><br></div><div dir=3D"auto" style=
=3D"color:rgb(33,33,33);font-family:-apple-system,helveticaneue;font-size:1=
6px;background-color:rgb(255,255,255)">What i need is basically setting up =
local date (according to time zone) on a read only file system.</div><div d=
ir=3D"auto" style=3D"color:rgb(33,33,33);font-family:-apple-system,helvetic=
aneue;font-size:16px;background-color:rgb(255,255,255)"><br></div><div dir=
=3D"auto" style=3D"color:rgb(33,33,33);font-family:-apple-system,helvetican=
eue;font-size:16px;background-color:rgb(255,255,255)"><br></div><div dir=3D=
"auto" style=3D"color:rgb(33,33,33);font-family:-apple-system,helveticaneue=
;font-size:16px;background-color:rgb(255,255,255)">From what i read, there =
is a way to do this via=C2=A0<span style=3D"line-height:1.5">timedatectl, b=
ut can&#39;t find recipe for that.</span></div><div dir=3D"auto" style=3D"c=
olor:rgb(33,33,33);font-family:-apple-system,helveticaneue;font-size:16px;b=
ackground-color:rgb(255,255,255)"><span style=3D"line-height:1.5">=C2=A0(is=
 there another way?)<br></span></div><div dir=3D"auto" style=3D"color:rgb(3=
3,33,33);font-family:-apple-system,helveticaneue;font-size:16px;background-=
color:rgb(255,255,255)"><span style=3D"line-height:1.5"><br></span></div><d=
iv dir=3D"auto" style=3D"color:rgb(33,33,33);font-family:-apple-system,helv=
eticaneue;font-size:16px;background-color:rgb(255,255,255)"><span style=3D"=
line-height:1.5"><br></span></div><div dir=3D"auto" style=3D"color:rgb(33,3=
3,33);font-family:-apple-system,helveticaneue;font-size:16px;background-col=
or:rgb(255,255,255)"><span style=3D"line-height:1.5">Thanks=C2=A0</span></d=
iv><div dir=3D"auto" style=3D"color:rgb(33,33,33);font-family:-apple-system=
,helveticaneue;font-size:16px;background-color:rgb(255,255,255)"><span styl=
e=3D"line-height:1.5">Arik</span></div><br></div></div>

--000000000000d424e205d3a38b8c--

