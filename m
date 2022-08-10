Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3253FC00140
	for <webhook@archiver.kernel.org>; Wed, 10 Aug 2022 15:38:36 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web09.7412.1660145907096903019
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 08:38:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=JUaFa154;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.128.42, mailfrom: jester@theyoctojester.info)
Received: by mail-wm1-f42.google.com with SMTP id
 s11-20020a1cf20b000000b003a52a0945e8so1175076wmc.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 08:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=CFBsQOEpo0dXSffs5d++uWLWg9r4XdDuf7sMwm9a85Y=;
        b=JUaFa154R/aa9JsS4yKJhg/fwjmYznwo8B1r+k4ipZrWsYFlt0FQKIIGPcNuuYJex4
         QRwh+aAubo/Gxm9ioRY+JZJcT0n7n2HJwvzkv1JfA6eD5DdFDuhz3mnVMNodn1nN3hMr
         6y3FqDxQJHtIDzyI/Sws9FzLSQwzexS9zioLreYygi2pTQuBk990nGHEBk/uJv6g6bVL
         ts/NLIxEFzrRNqUTrOSm7auSJHtmDZEIn/K2JeaZIcmFhJI8HuHuTffEQZselXOCC7hr
         GmKQnHrbpSSMOtMK6BBFhGSkgXVUNYtccjRpPnwEj3rAsp+4OU31OKfH6iKgnvT1NoiH
         9ztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=CFBsQOEpo0dXSffs5d++uWLWg9r4XdDuf7sMwm9a85Y=;
        b=n5wTjyWQ4SZyX/PLuOBG6w8TDDpLeQfF1605cVSOonY///C6gSOgDjTjMvzY/VWD/I
         UdxZ9ksGam+KpRxYOCVG1drWrmRxbgKgje08hRVKsgfPyJAcVu5Q/0hu20NhSSxdISNv
         7oNFOiRpZxjkUeYZ0V5CTxoORTdiUVIOKjr4e/EHFlT5hWWihzbxETh3P5sMvMiqh6Bj
         qw4eUKQZee9PyRuvLvXlLSAmw198hZYlm8TaNOL35GnSuZzLzXU8mwrWlZoUpu5OHS8I
         CPSACcoIkXwf9WiaHoS8Gkf9AFZbE+yPui6T3AbExnv8lmAdDyi+rC7fVgiYWJqNOq2d
         FCmQ==
X-Gm-Message-State: ACgBeo1Cx6Fr2sd42Fyb73EaKlWwTwvV3J/S9JVuVBQz+Tnx41yH6tfl
	+wtXatGEMG53Qrqrye4qW4VbZd3z6J70w+qzR9ICapx4pOC7mQ==
X-Google-Smtp-Source: 
 AA6agR6DciegpX8Dlpdk760hf6rJJinUtyX1EvakY1aPDeP4M75em9EbKTe4bMIAO+dfBupVa3yBMzndUa57ZCN3r4s=
X-Received: by 2002:a05:600c:2d05:b0:3a5:36eb:6ae9 with SMTP id
 x5-20020a05600c2d0500b003a536eb6ae9mr2869671wmf.33.1660145905228; Wed, 10 Aug
 2022 08:38:25 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 10 Aug 2022 17:37:59 +0200
Message-ID: 
 <CAEt6NwpR+6H=PhRS4oOU6mroKHRiAvUEnSDYOzTn48u6LkGoLA@mail.gmail.com>
Subject: Mini-Summit in Dublin: Hands on with the Yocto Project
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f4f69705e5e4d615"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Aug 2022 15:38:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57820

--000000000000f4f69705e5e4d615
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Howdy there!

We're happy to finally announce the Yocto Project Mini-Summit taking place
the day before ELC-E in Dublin!

Monday, September 12th, 2022 | 2:00 =E2=80=93 5:30 PM
Location: Convention Centre Dublin
Registration Cost: $25

Bring your boards, your questions, your problems, and your solutions to an
interactive hands-on session with fellow Yocto Project experts and
colleagues. We will be talking and coding hot topics like BSPs, layers,
release migrations, security, and much more. Space is limited; snacks and
beverages will be served.

How to Register: Pre-registration is required. To register for Hands-On
with Yocto Project, add it to your Open Source Summit Europe registration.

See for more details and link to registration:
https://events.linuxfoundation.org/open-source-summit-europe/features/co-lo=
cated-events/#hands-on-with-yocto-project

See you there!
Josef on behalf of the YP Advocacy group

--000000000000f4f69705e5e4d615
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Howdy there!<div><br></div><div>We&#39;re happy to finally=
 announce the Yocto Project Mini-Summit taking place the day before ELC-E i=
n Dublin!</div><div><br></div><div>Monday, September 12th, 2022 | 2:00 =E2=
=80=93 5:30 PM<br>Location: Convention Centre Dublin<br>Registration Cost: =
$25<br><br>Bring your boards, your questions, your problems, and your solut=
ions to an interactive hands-on session with fellow Yocto Project experts a=
nd colleagues. We will be talking and coding hot topics like BSPs, layers, =
release migrations, security, and much more. Space is limited; snacks and b=
everages will be served.<br><br>How to Register: Pre-registration is requir=
ed. To register for Hands-On with Yocto Project, add it to your Open Source=
 Summit Europe registration.<br></div><div><br></div><div>See for more deta=
ils and link to registration:=C2=A0<a href=3D"https://events.linuxfoundatio=
n.org/open-source-summit-europe/features/co-located-events/#hands-on-with-y=
octo-project">https://events.linuxfoundation.org/open-source-summit-europe/=
features/co-located-events/#hands-on-with-yocto-project</a></div><div><br><=
/div><div>See you there!</div><div>Josef on behalf of the YP Advocacy group=
</div></div>

--000000000000f4f69705e5e4d615--

