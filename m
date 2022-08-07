Return-Path: <pwicks86@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E3F0C25B0C
	for <webhook@archiver.kernel.org>; Sun,  7 Aug 2022 19:21:53 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web08.16876.1659900111528414596
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Aug 2022 12:21:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VIK786Cv;
 spf=pass (domain: gmail.com, ip: 209.85.208.170,
 mailfrom: pwicks86@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id u6so2524579ljk.8
        for <yocto@lists.yoctoproject.org>;
 Sun, 07 Aug 2022 12:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=5eosttscku+lwh09P89wHJX5hUmbcbK1ctH21GOw71o=;
        b=VIK786CvWT18obzD9uEGxZ/lLxwE4zTtVoAD+b0cBEib9vhw5cE4TkJ9NCMWfumerA
         8uShlt6gm4Dt+WAODawnl4huKUNLLrIbuprD6DnqRMe9TgviUeRjujH4UJ6QZo2+dEHZ
         YSVu/LxQNfzuDCtIUQzTG348+1KrlO3RzyN8x+FPD42/hUunN5a5A9iz20G1F1A8Vxs5
         imL5GYTBVJM/o+pIbhzUb0JoWCjpUWBkP+DWv95Q4UDOpIo7prwr6iXEibxQKCjGTVAr
         /YnpRTnClTO0IVGj9RqRBBSa+hZC4iSAtpzVtT2c8uYSiG2pXGzqIs0dKSgYS55LBwWi
         rxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=5eosttscku+lwh09P89wHJX5hUmbcbK1ctH21GOw71o=;
        b=PaihgzmsjTv8SuVJaJbf5/44boJ5P5W9g4lsHjC/7W3HLy6F3m5VnaeFrLz1ECbk4u
         SPq3ApY9cagmKrVOJUqPdwKsIirsTef/uVUPCURd2/eg7Wh8Gp78C+oHsYPodjQzbXnn
         ZWpUkfbkTZHENl1AvOnQlUxXHdNScGDf++KhKoN+9uTSfhrG9Ml7/kUURhkNlTeP4iDb
         53VBF4gT9wEhVjolyBvlFCTPpUu59W0+y2h2ln+e8cwOBSPxz1qf7m1ApBiMpkEHbRgd
         nDjTTDlP33piIlyljmqHfgp9ihJx6Djtx0d5m8/zzc4OT4t08asI4Li/hVbqGngQmAsS
         fIEg==
X-Gm-Message-State: ACgBeo1WGEE0YI1Wf52y/7kVaGtlfy/S6IkleWubpcnc+08aI0Sd6PUZ
	3amSzXbsSpbC2nXmBdmshb7j+LjrPn3qPr5oDRoQ+/3U
X-Google-Smtp-Source: 
 AA6agR5H/JUfHVHB7+QL7O0GVVz6P54wGX5ApqFYr4qky/ia9EO0/MkZuMFicfw1EiL0yyYMsocyRZxsTvFFRXZFiYE=
X-Received: by 2002:a2e:b983:0:b0:25f:d718:40e8 with SMTP id
 p3-20020a2eb983000000b0025fd71840e8mr1290993ljp.323.1659900108531; Sun, 07
 Aug 2022 12:21:48 -0700 (PDT)
MIME-Version: 1.0
From: Paul Wicks <pwicks86@gmail.com>
Date: Sun, 7 Aug 2022 12:21:10 -0700
Message-ID: 
 <CAOC70tue67GwmrdrJ1JduuscAyuDmctNmYaYr_Q-D=hC0A7Faw@mail.gmail.com>
Subject: Custom QA Checks
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000054eaf205e5ab9c13"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Aug 2022 19:21:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57791

--00000000000054eaf205e5ab9c13
Content-Type: text/plain; charset="UTF-8"

Is it possible to create additional QA checks such that they apply to all
recipes automatically? Or even just to all recipes in a given layer?

-Paul Wicks

--00000000000054eaf205e5ab9c13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is it possible to create additional QA checks such that th=
ey apply to all recipes automatically? Or even just to all recipes in a giv=
en layer?<div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature">-Paul Wicks</div></div></div></div>

--00000000000054eaf205e5ab9c13--

