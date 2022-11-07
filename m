Return-Path: <ayushchauhan.2009@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6849C433FE
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 09:08:50 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web12.1356.1667812129607773718
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Nov 2022 01:08:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ei8rU+Kx;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: ayushchauhan.2009@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id x2so16467228edd.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 01:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oKsNpVJHfyfBtjrtpm71y73LybpvkEwep5bR0PiDF44=;
        b=ei8rU+KxFpaKjp+VR12IbJBO3rwu4OEREPHCye0xguGcQBc+rDXMcNrna1nJ9Aihah
         QlzV11Za4tlAZXtYcpLx4TGXHoblzEBS15mdr3kSxHKEbKW6gxmUsUZ9r9AP2uegpgbT
         5IaAwGTBDZWGoMYfJeJmxNhjz/+kX6ZwJ71vrz6l4J0b8LRxuhw3DTQT7nftH/1jE/Iw
         NwKDrXXe8eFdyR3y8Z85et1JH6GkMf3YualgwIJFXLovIG8P41lLmtEPUmcSPlaghs7k
         Ha1xh6A1Vq6TBShJeo1gZ4vm0sL97NRqQ0sYIbVo7/rIQTfcy+a3mFQQsA+laBqIMXVV
         W4XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oKsNpVJHfyfBtjrtpm71y73LybpvkEwep5bR0PiDF44=;
        b=U4u98DmU4/VmN67Odh4XwNPTiXmermcjxSSXIiD6mOo2aj/yeLHYfHA/RpnnutcBDY
         wIbWwm12P/5g6DoGfRZy0mAhrZrO+V018BFeP3SQVVDxn8K1uaZ2CenF1PokxDszoAcb
         6hPs61T7tjYE5/B4ix4fWxq2RckYaASYVA4IxrE8X2CU+C7fjiSM4FF19D75Ct7dkTea
         68L/Mc7W+Nr6CkXgyLFIyiqE8HKglLQ4dGxQnUJQha72MPw5b7rcEQyVpzxjztYnxRDB
         GKs1Xp9zPLnjxhuYMqyo8hOJNySBP5D/5x2qOlxX414p8dXLnijPEklVUz8SVGRpn4WE
         jpGQ==
X-Gm-Message-State: ACrzQf3RKasgmuEgUFr7xenNfnf0/WHnb9ypHvLUAz26NPzVWUZB5Qj7
	zpO0RG9FKzOFIpg2FOApMFWg1TcGF9obWQkaoj8TwOdF
X-Google-Smtp-Source: AMsMyM6gRg4OTe2zB4V8kfmLxmBTXrRZZqK+5Huz2kPp9OCm6NFSavX7c4NiWF+86JticMrH5LxKYYxYoDokwo+PyUU=
X-Received: by 2002:aa7:c04f:0:b0:457:1b08:d056 with SMTP id
 k15-20020aa7c04f000000b004571b08d056mr51152672edo.146.1667812127724; Mon, 07
 Nov 2022 01:08:47 -0800 (PST)
MIME-Version: 1.0
From: Ayush Chauhan <ayushchauhan.2009@gmail.com>
Date: Mon, 7 Nov 2022 14:38:36 +0530
Message-ID: <CAM3Ajnoh505LDU_WSKGfaAXErqFCH4L-7xfQWL9xXEhJ_Wugpw@mail.gmail.com>
Subject: Installing custom yocto linux on QNX hypervisor
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006cdaac05ecddc5e7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 09:08:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58511

--0000000000006cdaac05ecddc5e7
Content-Type: text/plain; charset="UTF-8"

Hello,
Can you please guide me through the process to install custom yocto linux
on qnx hypervisor.
Need to go through the process from starting dor deploying a custom linux
on qnx hypervisor v2.2

Please guide through the steps.

Thanks & Regards,
Ayush
-- 
ayush

--0000000000006cdaac05ecddc5e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"border-color:rgb(0,0,0);color:rgb(0,0,0)">Hello,</span><div =
dir=3D"auto" style=3D"border-color:rgb(0,0,0);color:rgb(0,0,0)">Can you ple=
ase guide me through the process to install custom yocto linux on qnx hyper=
visor.=C2=A0</div><div dir=3D"auto" style=3D"border-color:rgb(0,0,0);color:=
rgb(0,0,0)">Need to go through the process from starting dor deploying a cu=
stom linux on qnx hypervisor v2.2=C2=A0</div><span style=3D"border-color:rg=
b(255,255,255)!important;color:rgb(255,255,255)!important;background-color:=
rgba(0,0,0,0)!important"><br></span>Please guide through the steps.<div dir=
=3D"auto"><br></div><div dir=3D"auto">Thanks &amp; Regards,=C2=A0</div><div=
 dir=3D"auto">Ayush</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature">ayush </div>

--0000000000006cdaac05ecddc5e7--

