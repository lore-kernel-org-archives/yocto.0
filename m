Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7584C35FF3
	for <webhook@archiver.kernel.org>; Mon, 17 Mar 2025 09:24:48 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.216])
 by mx.groups.io with SMTP id smtpd.web10.48073.1742203479471594298
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Mar 2025 02:24:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=LWZMcGdC;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=L3EZ1hDw;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.216, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1742203477; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=LtCztV2VjDamiYpaVmiWJmVg41IP02Tz9RZfauuL7d124IaOBf9MGtTWXAzafgaU/e
    1oIjWIQ7EXiAumTO/rPu4z80vlh50RwNwKsDs+Q8OgwkKZjFFwiRQBeZsoY2XNej8X2S
    dId5yy7q1JN35uwgy7G2rOCrQmf2Z6OB6aawk0Jp+4+bR22lyaK9s99pxCusqOBMKB0C
    8KBcUfjuR6uYFNAzybfueNgOGYOhPyXskbMjls9gVdyH9MMDttCLfo4jwXYexvI8RuUw
    CIUgUF8luJaglFEa2zt48IsmkEqzGaDy/sNmdmqN/AHgD6Ir1FnCM0UE7GmFaVCJMPeg
    ntJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742203477;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=osnhFOnp68ZO0YKSSQD1zdNwPFJK2G7dU6jElOSXm6o=;
    b=TsykguQveYJC1PKdxS+lQl0i57ify4Q7+N6xlu4KozjHf4+wfRWATPh2ZiI5DMi6/B
    5OTFSCzA/mSZBgkF6HUydkJgnhSITkbSUqLSmAuI5rCqu1JNnsM4AECpAIZexOqZ7Ydp
    mIuy1FjQ8gEQdN6zirtYOJbnZ9PrOK0/XKF71bIUUM0mgxBm5cbK+XD+w70pplLzJbDF
    GccU0+TQAddF46zella6RAnsSfqyyM0qWBmEee0jU50YHSM+69KN7P/F+QhN1RmTN7V1
    gAK/fvFHOVcjR0jTxtPw6qsRf2CD6kQivnu3vWoaJryBawB5Bsy68YxYUkZJ0YQiiL9h
    pg3Q==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742203477;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=osnhFOnp68ZO0YKSSQD1zdNwPFJK2G7dU6jElOSXm6o=;
    b=LWZMcGdCjvIFApp3ypYFs8MR/43bkFC2LsiIJ5KFRBIipMS5elk4X2wqVJ6Z6OEXP5
    UItT2nvG0PZXwRaqkX+3tZ+R5yehoVpyKPoAFzsClZqD3g6zk12dEBIIXzJViicD0Jl3
    K+/UGSw05deJukhPVWZjDA2NY09VxohzzJhSCgiloU1bGGAXDG9QEVfqcfBXYQrNoplP
    Q2fMkVEmOSe5QK/MdKUu3sjVMuQsLJxsPrF2bIHqvlLmKle1TU1VGpbdK0nsYNOpiKhZ
    2Ded2t31krOOPn/DYmi8XFRoBabmmS+P0jTHYScJ0a0uWOzB871iATzTRZtN0MX4dVRk
    LcEg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742203477;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=osnhFOnp68ZO0YKSSQD1zdNwPFJK2G7dU6jElOSXm6o=;
    b=L3EZ1hDwxUPks92Ny80yEJiPywJsgzcRXyWqHoRjTZKbTB4cm6udFkMZfk5a9OVVft
    XYNIdlG/my7mZ7yEC3Dw==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7TVoM22VIJQXcvOsjy38"
Received: from ox-live-app204.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.3.0 AUTH)
    with ESMTPSA id j1bda812H9ObptU
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate)
    for <yocto@lists.yoctoproject.org>;
    Mon, 17 Mar 2025 10:24:37 +0100 (CET)
Date: Mon, 17 Mar 2025 10:24:37 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <852477278.5779554.1742203477554@webmail.strato.de>
Subject: Migrating npm installation script into Yocto BSP
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_5779553_2069286139.1742203477550"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev73
X-Originating-Client: open-xchange-appsuite
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Mar 2025 09:24:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64959

------=_Part_5779553_2069286139.1742203477550
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
=20
I have a BSP with a npm installation script. The script is sourced during t=
he initialization and contains the following commands:
=20
#!/bin/sh
=20
# Install Node.js version 18.20.2
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | =
bash
export NVM_DIR=3D"$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 18.20.2
=20
# Install pm2 via npm
npm --prefix /opt/app/backend/ install
=20
Now I=C2=B4m wondering how I can add this to the Yocto recipes of my BSP. T=
he current Dunfell BSP only supports npm 14.x but I need this upgrade to 18=
.20.
=20
How can I do it? Has someone done anything similar so far?
=20
Thanks for help!
=20
Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
=20
Ing. Daniel Kampert, M. Sc.
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
Phone: +49 (0)174 6932561
E-Mail: kontakt@daniel-kampert.de mailto:kontakt@daniel-kampert.de
Web: www.daniel-kampert.de https://www.daniel-kampert.de
------=_Part_5779553_2069286139.1742203477550
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div class=3D"default-style">
   Hi,
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   I have a BSP with a npm installation script. The script is sourced durin=
g the initialization and contains the following commands:
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">=20
   <div class=3D"default-style">
    <em>#!/bin/sh</em>
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    <em># Install Node.js version 18.20.2</em>
    <br><em>curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/i=
nstall.sh | bash</em>
    <br><em>export NVM_DIR=3D"$HOME/.nvm"</em>
    <br><em>[ -s "$NVM_DIR/nvm.sh" ] &amp;&amp; \. "$NVM_DIR/nvm.sh"</em>
    <br><em>nvm install 18.20.2</em>
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    <em># Install pm2 via npm</em>
    <br><em>npm --prefix /opt/app/backend/ install</em>
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Now I=C2=B4m wondering how I can add this to the Yocto recipes of my BS=
P. The current Dunfell BSP only supports npm 14.x but I need this upgrade t=
o 18.20.
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    How can I do it? Has someone done anything similar so far?
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Thanks for help!
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
  </div>=20
  <div class=3D"io-ox-signature">=20
   <div class=3D"default-style">
    Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Ing. Daniel Kampert, M. Sc.=20
    <br>Embedded Systems Solutions
   </div>=20
   <div class=3D"default-style">=20
    <div>
     Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland=20
     <br>Phone: +49 (0)174 6932561=20
     <br>E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de">kontakt@danie=
l-kampert.de</a>=20
     <br>Web:&nbsp;<a href=3D"https://www.daniel-kampert.de">www.daniel-kam=
pert.de</a>
    </div>=20
   </div>=20
  </div>=20
 </body>
</html>
------=_Part_5779553_2069286139.1742203477550--

