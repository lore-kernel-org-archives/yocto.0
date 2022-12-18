Return-Path: <mirza@maneoz.tech>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE506C4332F
	for <webhook@archiver.kernel.org>; Sun, 18 Dec 2022 13:29:58 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.29456.1671370190801070893
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Dec 2022 05:29:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@maneoz-tech.20210112.gappssmtp.com header.s=20210112 header.b=xe66GZNo;
 spf=none, err=permanent DNS error (domain: mkrak.org, ip: 209.85.208.182, mailfrom: mirza@mkrak.org)
Received: by mail-lj1-f182.google.com with SMTP id z4so6654692ljq.6
        for <yocto@lists.yoctoproject.org>; Sun, 18 Dec 2022 05:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=maneoz-tech.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oX6n/25J0WkXDspxZuGpeKz1h55u5uyWPFZX/fCCxFw=;
        b=xe66GZNotYrnnemyhDXuR5uqfBHxQ1XP0kSSdpH76HwGhEDfGkLMFoBV9qkx7HEXyD
         vop8qdlazMkkmvoiKUK2iDTclq5AYH4TqdWXNNwJiB8rPAQxnq9A1YGdmCHnciG3Ybi6
         U95mpZwopuqTnRmNlz7S+CRPLUCCuSApoWo1c2zF+BLMOZUQuL5HiFF5v4J8Akwt9DcN
         JRUL+vL73ELHi+ABLu+m3oDqYkMMxPJyH+F7n38BXEbcZ4GhQk+RuwNQwmgvVyWnBhr7
         MBNR/+ldBqETdCqbrLkln647ilieK19qEUnVHQLZ+W1kdayVKbN3rl3wwZvv5DD5A5yU
         PPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oX6n/25J0WkXDspxZuGpeKz1h55u5uyWPFZX/fCCxFw=;
        b=VkHirBp/78nGKlTz6kvPdCp70Xs3wxrWlLAXfZ8Rv/2401EpjJx/ba5bXUF/2kALHS
         DBhojzXNh2kwTDGipV2+F7TyaRlcm0AQkf++wILSZwTRrHgTfHYINRTZXr6Ja9JKxKps
         auC+ghxWkEwZd/Ynv+90/Ba5cU5LGZB0Hua1i8pViFHFb708gy9xhZTJMZvsKr5ccD4A
         J7FjvtoWmSGgpRlICBI5yce226cCnsZH8Jumex9UQKbxTdF9AqM0JefNRmvyHuTjTsxi
         9ZZkW5mMyN9N78s12es6sHQ/XhOfcx/AayiOspIH2S1WjQeMpXhWRmdIF9vf58jKYTsh
         nbdg==
X-Gm-Message-State: ANoB5pmCi8tfx7k+jdFbMQdnIqmqGm3eKETpspPxvgB/UGHJV8sWDFJM
	kyXJvhBU43yaVrNqhYrW2nSxLJW2kmq7M/Gd/8vOEA==
X-Google-Smtp-Source: AA0mqf6hgvDczT8kxC70QGs51v4QqJNiMIkZU8mii/23gEhYIunmgtxAExhZakEi95zojFPDbd2McydI4uNQ7iXV1tI=
X-Received: by 2002:a2e:9b4b:0:b0:27a:b66:aa7b with SMTP id
 o11-20020a2e9b4b000000b0027a0b66aa7bmr6259678ljj.246.1671370188513; Sun, 18
 Dec 2022 05:29:48 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv364TTZFj8Z4FWCjFrcFhf4eWqnz9PW0QTW-y4NtrE3bfw@mail.gmail.com>
 <CAAfyv35O=kOjD1T3cBenxFEpV=uX16sAFciRcYv+PcEFZ1h0sA@mail.gmail.com> <CANNYZj9TcKBRZ5fjv=jidipQn=6Q6JY6ADEu7gJKtvg3Z5Y9KQ@mail.gmail.com>
In-Reply-To: <CANNYZj9TcKBRZ5fjv=jidipQn=6Q6JY6ADEu7gJKtvg3Z5Y9KQ@mail.gmail.com>
From: Mirza Krak <mirza@maneoz.tech>
Date: Sun, 18 Dec 2022 14:29:37 +0100
Message-ID: <CAJdEVdfQVHdF4WCZ6oOJvtMUARDJmUcJMCRfM6q50R3PJbhvpA@mail.gmail.com>
Subject: Re: [yocto] rust issue for armv6 in mainline poky
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Marek Belisko <marek.belisko@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005ff4bf05f01a3238"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Dec 2022 13:29:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58830

--0000000000005ff4bf05f01a3238
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Den m=C3=A5n 21 nov. 2022 kl 13:37 skrev Alexander Kanavin <
alex.kanavin@gmail.com>:

> Can you try the tip of master please?
>

Also came across this issue. Tip of master works just fine.

/ Mirza

--0000000000005ff4bf05f01a3238
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">Den m=C3=A5n 21 nov. 2022 kl 13:37 skrev Alexander Kanavin &lt;<=
a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt;:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Can you try the ti=
p of master please?<br></blockquote><div><br></div><div>Also came across th=
is issue. Tip of master works just fine.</div><div><br></div><div>/ Mirza<b=
r></div></div></div>

--0000000000005ff4bf05f01a3238--

