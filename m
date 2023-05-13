Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69183C77B7C
	for <webhook@archiver.kernel.org>; Sat, 13 May 2023 12:39:29 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.45025.1683975010433659661
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 May 2023 03:50:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@calixto-co-in.20221208.gappssmtp.com header.s=20221208 header.b=LJgaieX8;
 spf=softfail (domain: calixto.co.in, ip: 209.85.218.52, mailfrom: sethu.m@calixto.co.in)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-966287b0f72so1571143166b.0
        for <yocto@lists.yoctoproject.org>; Sat, 13 May 2023 03:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=calixto-co-in.20221208.gappssmtp.com; s=20221208; t=1683975008; x=1686567008;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7qbyrYIEDq2HAAK2oHhKima48ztPUIUp1YUX+JBjquI=;
        b=LJgaieX8p+VlIpMTr0X0aOsZn+aLb+bIcMvYIrI80T1++x+zCY8JUqVf5giY82x7JY
         H2BaDBkPLDkNerdzY+qy6QLXTh5N+kAfSoWw8hohQK4SrU8ANvHReK32OHeg1wamzn8C
         GsQ+RVjrWwdxlPYU95cMcZujJIm92Rxv38/trlwK1Jc6juhdaECIUCYo8oOAkBk4an75
         4NMVb8rqKFumvhF+LvCEj4+nMLabr22MvHe6EpI3hgFtlA6R/upHZatx5rJSTVQfP+xK
         6bn57om5GLObZZxpEdM52dyRmS5bSD5BuuAeszYq3xgPbPuJGkRAJ7z0rpiYewJiDZs/
         F2eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683975008; x=1686567008;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7qbyrYIEDq2HAAK2oHhKima48ztPUIUp1YUX+JBjquI=;
        b=QmaCwcPdml8sU/3pXf0rSRFaVLDC0BnCU1OxYAkfcx37msuooYGdgIt1D0DmPyHZFS
         c72a8S7xKicUtSpc4ygMhuWJFyqCaeWI0WlyhEVLGmMNWV0/yFVgHytiUsROOG9TuAQu
         0ZMoOgWq6K122UWYl9He3wM+m2Dit/nmAGBGa8tEd4k63DYCieV6gbRvNulSbrIjOs9O
         nWZDxtOCdg70MaNHChtvWFwfK8XNUgYh9MGzz5UiwIORJe2xNmg7D8o7On0wDGjcaX5e
         u0sUNWwnCSY0mILGhQaVcX10zw3/JxgEyoCfxh7YBL4NxuL/hmniuX/qW/UEiCBcMtqu
         Tvgw==
X-Gm-Message-State: AC+VfDyrgVa4cAle1QWNRsdHPXy+RTLi4qyyGPMGLtusIFh0evZ2+c7O
	ImRFV7yPqwQnfSgTUSV0GTnupaOYycGdu0R8EANrJQMMg3kqrH6DnVo=
X-Google-Smtp-Source: ACHHUZ4AfPu61FGovg0o/VB4btY/a71xNdJ1lFz6g1nDGwctEx2qKNy20/0vY3fWK8RWJ/XOlTE6yz3IfNXiYlkj/Kk=
X-Received: by 2002:a17:907:1622:b0:94a:9f9a:b3c4 with SMTP id
 hb34-20020a170907162200b0094a9f9ab3c4mr28473461ejc.49.1683975008613; Sat, 13
 May 2023 03:50:08 -0700 (PDT)
MIME-Version: 1.0
From: "Sethu Madhav" <sethu.m@calixto.co.in>
Date: Sat, 13 May 2023 16:19:57 +0530
Message-ID: <CAFjAHzH1OcRk3widDQvwJ+wpWxahid=eTq5oaqhWcEsxA2jC2Q@mail.gmail.com>
Subject: Configuration file wrong or corrupted
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000033087405fb90fcf4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 May 2023 12:39:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60009

--00000000000033087405fb90fcf4
Content-Type: text/plain; charset="UTF-8"

Hi,
Iam working on dunfell and i'm trying to use fw_printenv and fw_setenv, but
i'm getting *Configuration file wrong or corrupted *message . Also the
fw_env.config file is not seen inside /etc/ folder.
I tried the commands after pasting a  fw_env.config file in /etc/ folder
but same result.

I included libubootenv in IMAGE_INSTALL variable


Is there any other configurations that need to be done . Please help on
this topic
Regards
Sethumadhav

--00000000000033087405fb90fcf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Iam working on dunfell and i&#39;m trying to use f=
w_printenv and fw_setenv, but i&#39;m getting=C2=A0<b>Configuration file wr=
ong or corrupted=C2=A0</b>message . Also the fw_env.config file is not seen=
 inside /etc/ folder.</div><div>I tried the commands after pasting a=C2=A0 =
fw_env.config file in /etc/ folder but same result.=C2=A0</div><div><br></d=
iv><div>I included libubootenv in IMAGE_INSTALL variable=C2=A0</div><div><b=
r></div><div><br></div><div>Is there any other configurations that need to =
be done .=C2=A0Please help on this topic</div><div>Regards</div><div>Sethum=
adhav</div></div>

--00000000000033087405fb90fcf4--

