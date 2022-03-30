Return-Path: <poornesh@elmeasure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BE7BC433F5
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 11:51:05 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
 [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web10.6103.1648641064044660155
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 04:51:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@elmeasure.com header.s=google header.b=e9w2gTeS;
 spf=pass (domain: elmeasure.com, ip: 209.85.219.176,
 mailfrom: poornesh@elmeasure.com)
Received: by mail-yb1-f176.google.com with SMTP id f23so5903979ybj.7
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 04:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=elmeasure.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=NFu4vshAwAaa6O4C//TymF+iKWY/VF9F4ya7D2Y51AY=;
        b=e9w2gTeSzYQSR229pVcFrKHjJiPQlUnEEAcIZkbVwwpJASv+/Mr+jJvTD3hoF6EWLL
         hAMO3ZpAJRIK3PJrEu1/Ss1TMeI46qJ2esQxvIfSF/Jj9pYtSTK+6U86q3FZt2Yo8Xgv
         fhI6/Lp3xbVMbOO6/H++KO8vAMVIP346iTwS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NFu4vshAwAaa6O4C//TymF+iKWY/VF9F4ya7D2Y51AY=;
        b=NCZ/zFby8Hmeq4d6rMoPSCaDEPwA+A50pQhKdKeLfNuJWVzHpdzxz5JkHq4MJ4dltd
         tL+d8YnIhhH275/iau8a3tWBMU/YvcJ4DgBqne5snBkWpzD+7ZRYLc6ucCcaWNgJEHbC
         uu3HYpn8wVwOtszcjm8GdOCeSCLxyIhh9Ruu9cSxqepWcj3PRBhnIW/oID0Xemum0tBS
         L1fB2EO3T2x76x3jdce2oHefufvK1HE1o28EEbnYamBN1kHb9tLbak256eFwv1Ba/MEi
         P7YX5r9GoldwyLSM3pPX0cGaWLbcUj0eH1WVDAezCh1g3Q6kkpHi74SFOBlx3l+4Fvvg
         zmng==
X-Gm-Message-State: AOAM531gfaskVY7go9oS8cjnf4GjGjvyRvXtY/z1tZjBmRFiToxczvjl
	/Wvgg7RjgUZQ0d111Po/B8uJClcj/whwTVjmh1rSL6MT5Trl7/CsPuSeIsJaEz0iCOeVahl27rf
	iuFpT3pbkHv30vMuYIrAwuOIIhigQ0n2b7p8K2kQ=
X-Google-Smtp-Source: 
 ABdhPJyr65ux4eGAVg8wVe8AchbYSU0BlOPl6qbvV/TmVOJyfkrti+8whrvznfSscvdRSR5QK8bv3p3BGmnlP6jbogw=
X-Received: by 2002:a05:6902:4c3:b0:63c:fc6f:58aa with SMTP id
 v3-20020a05690204c300b0063cfc6f58aamr4774810ybs.396.1648641062985; Wed, 30
 Mar 2022 04:51:02 -0700 (PDT)
MIME-Version: 1.0
From: Poornesh G <poornesh@elmeasure.com>
Date: Wed, 30 Mar 2022 17:20:52 +0530
Message-ID: 
 <CANicU13WbNZrEax8DskvJ=9f8oMz2NT=XKf3+HVnZa8kVRxi8g@mail.gmail.com>
Subject: Re : Fetching source from Private git repo
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ec7cf605db6e287e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 11:51:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56597

--000000000000ec7cf605db6e287e
Content-Type: text/plain; charset="UTF-8"

Greetings !

Can anyone help me with the procedure , how I can fetch the source from a
private gitlab account .
Thanks in advance !

-- 








IMPORTANT: The contents of this email and any attachments are 
confidential. They are intended for the named recipient(s) only. If you 
have received this email by mistake, please notify the sender immediately 
and do not disclose the contents to anyone or make copies thereof.

Please, 
consider your environmental responsibility. Before printing this e-mail ask 
yourself: "Do I need a hard copy?"

--000000000000ec7cf605db6e287e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings !<div><br></div><div>Can anyone help me with the=
 procedure , how I can fetch the source from a private gitlab account .</di=
v><div>Thanks in=C2=A0advance !</div></div>

<br>
<p style=3D"font-family:arial,sans-serif;font-size:12.8px;color:rgb(34,34,3=
4);margin-bottom:12pt;background-color:rgb(255,255,255)"></p><p style=3D"fo=
nt-family:arial,sans-serif;font-size:12.8px;color:rgb(34,34,34);margin-bott=
om:12pt;background-color:rgb(255,255,255)"><br><img src=3D"https://elmeasur=
e-email-signature.s3.ap-south-1.amazonaws.com/Elmeasureemil.jpeg"><br></p><=
p style=3D"font-family:arial,sans-serif;font-size:12.8px;color:rgb(34,34,34=
);margin-bottom:12pt;background-color:rgb(255,255,255)"><span style=3D"colo=
r:rgb(89,89,89);font-family:Verdana,sans-serif;font-size:9pt">IMPORTANT: Th=
e contents of this email and any attachments are confidential. They are int=
ended for the named recipient(s) only. If you have received this email by m=
istake, please notify the sender immediately and do not disclose the conten=
ts to anyone or make copies thereof.</span></p><div style=3D"font-family:ar=
ial,sans-serif;font-size:12.8px;color:rgb(34,34,34);background-color:rgb(25=
5,255,255)"><p style=3D"margin-top:3pt"><span lang=3D"EN-GB" style=3D"font-=
size:8pt;font-family:Tahoma,sans-serif;color:rgb(0,127,0)">Please, consider=
 your environmental responsibility. Before printing this e-mail ask yoursel=
f: &quot;Do I need a hard copy?&quot;</span></p></div>
--000000000000ec7cf605db6e287e--

