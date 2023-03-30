Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC3BC761A6
	for <webhook@archiver.kernel.org>; Thu, 30 Mar 2023 09:20:40 +0000 (UTC)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.web10.20821.1680168039446215154
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 02:20:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=VlKBCZIZ;
 spf=pass (domain: gmail.com, ip: 209.85.217.45, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f45.google.com with SMTP id h15so15734641vsh.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 02:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680168038; x=1682760038;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4s2z6h8g1pcjTG51I0ZMP7KEpYvZlttMRzoB8LZjaCs=;
        b=VlKBCZIZiTxSZI4ynKa67icBGrk3zxfrTkC44bh58+GyJgMtGqa4dk+OigWVp9ou8M
         cGYTLjfRBEvpnwF9OlPvTSsQCvvu050AZefPgpYJJT9rII5MAc/ynljXp7SydHnifVe/
         gEpOdqekimAG2CteX8E2UO+mIWuAdxhA9S0mSIymLeHLCCmJeCBvTcJ+TJknKM/bRKq2
         gXIYZX/UB3MhyQuv4stmwf/i0epkNdSIDicAwpyeOEB2BgvRUcGcgb2nHQIZA84uT+IQ
         NNwcpTMvAOtB/XARnpphh9wX/wwtaEPu/1ZVh2/ZA3SVDclUL5HnDH++qp7GUNc3eXpS
         L0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680168038; x=1682760038;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4s2z6h8g1pcjTG51I0ZMP7KEpYvZlttMRzoB8LZjaCs=;
        b=fW4ca4FRQTA9KOucFOaDOpK+x/VUHH3hRj0tp15rL+oexni5h1fZtxshWC+ou2Hx+a
         wLXawrCCEHSNltur7KC8QldEIqay1Lk1NHPnBWLhXgP2y3Hysxo//sM/nrDlMhSm1q+W
         sEODR7sRbEW4LCn9zU+hNMY8Bk9P6FvzUMpJO791dmW9Os13YZZpK8gDNbnUCbhhpqwF
         fuYv+1g/D7DOtMnyf012ZQ1jx/XUdw89MpWU4pMPTqUL6G4ApgsxwhluSlnClMyYIEKM
         WO37ETr2dlbEpOva78SfL3a3ATeSkfdByboWSY+juuG9Bsjw0faKDtjIB8PVNw/v3ZHk
         YOcg==
X-Gm-Message-State: AAQBX9e1UWQLgwzDObNeAxMyvUJieSgcsK++Hlon2SSLZ7kpAaExw++W
	34tMdlqNTEED2Sqdfz9nhTmSikQxLLsoVJmQ0R8W//tKHxvbzg==
X-Google-Smtp-Source: AKy350Yw6PtUVrup7T5IsWBzGbpLkvW5HhwhWV3Rp5gq8y+RYGCqzyq2mpVi+PFA1rIOK89mlYPvHvDyC+lVo5+bkpU=
X-Received: by 2002:a67:ca87:0:b0:425:d255:dd38 with SMTP id
 a7-20020a67ca87000000b00425d255dd38mr12328287vsl.1.1680168038336; Thu, 30 Mar
 2023 02:20:38 -0700 (PDT)
MIME-Version: 1.0
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 30 Mar 2023 10:20:27 +0100
Message-ID: <CANPvuRmPDaqPUDK+Qn-iMQ7i=gqz_Jgz6rMef4o0Yj4+0u518g@mail.gmail.com>
Subject: [RFC][yocto][meta-lts-mixins][kirkstone/go] Backport golang from
 master to kirkstone
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Jose Quaresma <jose.quaresma@foundries.io>, Ricardo Salveti <ricardo@foundries.io>, 
	Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000168df705f81a9b78"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 09:20:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59546

--000000000000168df705f81a9b78
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

The golang version in kirkstone is the 1.17 and because of this is not
possible to use some recent version of other projects like docker that
requires a more recent version of the language.

I have a kirkstone branch [1] available at Foundries.io with the golang
backported from the oe-core master that I liked to submit to the
meta-lts-mixins [2].
Alex is the maintainer of the dunfell golang backport and this kirkstone
branch is based on that version.

Would that be interesting for the project? How should I proceed?

[1] https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go
[2] https://git.yoctoproject.org/meta-lts-mixins

Jose

--
Best regards,

Jos=C3=A9 Quaresma

--000000000000168df705f81a9b78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>The golang version in kirkstone is the 1.17 and=
 because of this is not possible to use some recent version of other projec=
ts like docker that requires a more recent version of the language.<div>=C2=
=A0<br>I have a kirkstone branch [1] available at Foundries.io with the gol=
ang backported from the oe-core master that I liked to submit to the meta-l=
ts-mixins [2]. <br>Alex is the maintainer of the dunfell golang backport an=
d this kirkstone branch is based on that version. <br><br>Would that be int=
eresting for the project? How should I proceed?<br><br><div>[1] <a href=3D"=
https://github.com/foundriesio/meta-lts-mixins/tree/kirkstone/go">https://g=
ithub.com/foundriesio/meta-lts-mixins/tree/kirkstone/go</a><br>[2] <a href=
=3D"https://git.yoctoproject.org/meta-lts-mixins">https://git.yoctoproject.=
org/meta-lts-mixins</a><br><br>Jose<br class=3D"gmail-Apple-interchange-new=
line"><div><br>--<br></div><div dir=3D"ltr" class=3D"gmail_signature" data-=
smartmail=3D"gmail_signature"><div dir=3D"ltr">Best regards,<br><br><div>Jo=
s=C3=A9 Quaresma</div></div></div></div></div></div>

--000000000000168df705f81a9b78--

