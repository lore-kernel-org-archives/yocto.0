Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9E1CC0218C
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 08:17:08 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.220])
 by mx.groups.io with SMTP id smtpd.web11.47054.1737965825884311881
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 00:17:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=aNWf5ylf;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=ofsLvUlr;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.220, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1737965823; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=X9jyzAYO2HMoAzlBk3S2Y2qkOllG/A4z/l7iM1Zxc3IaWQKEsfcED0M2vRnhic9WnX
    ToMlC4Uw1TBHmMc4YSc9c+IE1JuLm+oQub8+Fu9rVg7jN27U4LtQAUmD2BPRZZ5NjbbQ
    55fVxZTFuGB0OojTgxFZWUKT20kyPau3lgGaL04ffDL6oDrairifNddmbhoCK9p9f53z
    K9bvbR8CiUm4/PQalTEuoM3d55XY8rREMiIFiGrVNOl9/GF518l0K+DrEYmWRBDAQZ4q
    b4D35k6spJ6KksP8aL41E/GjFCVBEl5iGCcy1z/LuMF2WUlyXiG09Hk4M/kGI0OoDYMn
    I2oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1737965823;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=BzfuvdduGLgkoPTyVW4QHfd4JHB05otPpnb/YhoY1lA=;
    b=ZI+l02Yv71Px6gDSeY3Y9gup6QkX+qbOqLHWxqOX1+LrrXPrzyseiAmxft+nJP8/Vy
    I6ygZNGvD1GrompuSQ/x4Mx3vZgSyyv8ln3P5+FGlnafCailUB3gOhsf822k7Mmxmbrt
    XTuMYQS5T7F+XfP02rRcNQaIZn4Tqh42L9IF9uB8EC8/tgPVohz2M3anq46s2ixTKE33
    Yfnipg5NgrNJQCQz9rvYIx1K3u9QkRDWHm4TeHbfGUuq5OITmkSr3+vrflgMlzZaYEer
    0AuHe69O0RvTlbszq9Wk8fe8vJ1/wDVLWvohCddrQB6QuD3Of58H1FtDTgrqIk8ERcDs
    FD5w==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1737965823;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=BzfuvdduGLgkoPTyVW4QHfd4JHB05otPpnb/YhoY1lA=;
    b=aNWf5ylfX/E3Dinh2/n36WDwW48s0gbKyj8wwqmDDQN/BQKLPsD7+G9U4tMWXjpL8N
    XPIAzom783FYq2Ucy/PODc8ELAEIlwBWjtmX/IT7GAhhRpscc1K27DLaO3hb07a8e40r
    iySkxEmywzufeqJPLT6RdUqSzrcr4S3bO6W52CKinWjW4s1COTXFx1AnsoI/T8VCx7dP
    oXiN5poZVAhwH0SRB/EQIt0W5j/c0QUIatGgA3xiZ5EjmbYG7jPWwM/kC/Bux66C6pW0
    IcB89yUglgh+prKJHWMGuumoDYrSbjteat8HSYgY2WuCkepi8K89Tgqgeyx1PEOXXwaJ
    WvSA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1737965823;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=BzfuvdduGLgkoPTyVW4QHfd4JHB05otPpnb/YhoY1lA=;
    b=ofsLvUlrJ56JLaZGYzOEw4KFkYu8LCICbga3gXjdaqC302r3hmGyiDS0V2T8HR9nwG
    vgCPQWBG7z21hlQgb1Dg==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7TVoM22VIJQXcvOsjy38"
Received: from ox-live-app105.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.17 AUTH)
    with ESMTPSA id j04bdd10R8H3srN
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate)
    for <yocto@lists.yoctoproject.org>;
    Mon, 27 Jan 2025 09:17:03 +0100 (CET)
Date: Mon, 27 Jan 2025 09:17:03 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <128471553.2634211.1737965823800@webmail.strato.de>
Subject: Kirkstone - Missing python3-pycrypto with salt
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2634210_1550456047.1737965823798"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev72
X-Originating-Client: open-xchange-appsuite
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 08:17:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64631

------=_Part_2634210_1550456047.1737965823798
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
=20
I try to build a Kirkstone image for an iMX8MP with salt and I get this err=
or

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'python3-pycrypto' (but ../layers/openembedded-core=
/meta-cloud-services/meta-openstack/recipes-support/salt/salt_3001.1.bb DEP=
ENDS on or otherwise requires it). Close matches:
python3-m2crypto
python3-pycryptodome
python3-scrypt
NOTE: Runtime target 'salt' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['salt', 'python3-pycrypto']
ERROR: Required build target 'hannah-core-image' has no buildable providers=
.
Missing or unbuildable dependency chain was: ['hannah-core-image', 'salt', =
'python3-pycrypto']
=20
I=C2=B4m curious because I can not find the recipe in my layers. Is this a =
bug in Kirkstone or how can I fix it?
=20
Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
=20
Ing. Daniel Kampert, M. Sc.
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
Phone: +49 (0)174 6932561
E-Mail: kontakt@daniel-kampert.de mailto:kontakt@daniel-kampert.de
Web: www.daniel-kampert.de https://www.daniel-kampert.de
------=_Part_2634210_1550456047.1737965823798
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
   I try to build a Kirkstone image for an iMX8MP with salt and I get this =
error
   <br>
   <br>
  </div>=20
  <div class=3D"default-style">
   <em>NOTE: Resolving any missing task queue dependencies</em>
   <br><em>ERROR: Nothing PROVIDES 'python3-pycrypto' (but ../layers/openem=
bedded-core/meta-cloud-services/meta-openstack/recipes-support/salt/salt_30=
01.1.bb DEPENDS on or otherwise requires it). Close matches:</em>
   <br><em>python3-m2crypto</em>
   <br><em>python3-pycryptodome</em>
   <br><em>python3-scrypt</em>
   <br><em>NOTE: Runtime target 'salt' is unbuildable, removing...</em>
   <br><em>Missing or unbuildable dependency chain was: ['salt', 'python3-p=
ycrypto']</em>
   <br><em>ERROR: Required build target 'hannah-core-image' has no buildabl=
e providers.</em>
   <br><em>Missing or unbuildable dependency chain was: ['hannah-core-image=
', 'salt', 'python3-pycrypto']</em>
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   I=C2=B4m curious because I can not find the recipe in my layers. Is this=
 a bug in Kirkstone or how can I fix it?
  </div>=20
  <div class=3D"default-style">
   &nbsp;
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
------=_Part_2634210_1550456047.1737965823798--

