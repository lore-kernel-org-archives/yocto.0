Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F63C021BC
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 15:06:02 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.20])
 by mx.groups.io with SMTP id smtpd.web11.10155.1740495959717842696
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 07:06:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=eAuQCXXI;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=mbPWeBVb;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 85.215.255.20, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1740495957; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=gLEhjhN++qI4ebcke3Wp3/43Iz1y98iYhBvUmO3LbSfe/ligbyOU3PhL8VhLMH0bhK
    ES/izzS0RwuH0SivXEOfkskjNBP2Z06a7eQ8ZwJveDZ7W1oMKIraZrLTYkSrAZAHEJPY
    NS2JIyp3fgrrL/MPCgyXVgwUI1AvV99Fkgjm7KN+LBD/ZGLIcXRMJ+gwue1EuNSR0Him
    pZ8LplK5B5GoajP2JkyqhHoe628X2mPMn5oZCq5WNaLlBEEsDaAaq4cjne3sYKUNwkhd
    9a2H35wjqOt4wl+P1I6bhZiir6EluxfMG9daGmll7JrPfBZl2wkQFzJoHXmvU4ZWUJF7
    wmuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1740495957;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=iSEaQ0n6nqmWaW0XNwn7u6rt6QPrX99oRG9+m+KPBDA=;
    b=sjpFJpO3chJEfVrBS1HXIpBikOkfyuLWff2xPhDxiSSyU8oppQTb3+VfTNPDAH1sDg
    pDtAsx4B6wIm362KZdXSqJqsVd8QoUlOndcjb8oMt4RIadMzUl3OcpAwuZ/aVhmfDuK2
    0gej82r+IV2jaxHtM+T4J3qrv3tFqHCfioiRxrYpvjpGi+rg/wk1ydM0ZLOLgt+MYd+a
    ankJKNvSVWqTVDHTHBOCH7Ggddus+pwvpQDolQUB26Xd4QA7M3/mMOg9mNp0ZW/pEuS3
    REfPx+dbF0YJL88dozqfeIEdd8C6xnrR8WEdBs2ulot2caL2z+Uk5zTA6B18eZV8i3KX
    uHLA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1740495957;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=iSEaQ0n6nqmWaW0XNwn7u6rt6QPrX99oRG9+m+KPBDA=;
    b=eAuQCXXIqo9GtmZO1b4P/v6vSqjN9d6n6D3FhiqXnG155ivdkgHV7eoSlBnpZFhmDi
    a5XFWUwi5PvW6IeTD1lz6Cst/5+D2/UNGZbXeBzLDa5/W4Ww+f5+Sp95Nzf78ZCMDohO
    JVrxsaSv2ZNx6VXwdTPVckQH3r+H/kDlTsIYLaRqxHSleMtj5mh3CC4DxfyFquCv5V0C
    ApMW6tod26VSCtNBHJbCb2ft8L+accmKL3jKYPs6Q0ClF1La8rVjqE9sDcDzxAyB+xqy
    iu52r766pQADu5+s9zsO9ZRO8EyUntITWdweKaDl9KKfAPNTbYT+umy6R75Vcp8gBxp0
    VC1w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1740495957;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:Message-ID:To:From:Date:Cc:Date:From:Subject:Sender;
    bh=iSEaQ0n6nqmWaW0XNwn7u6rt6QPrX99oRG9+m+KPBDA=;
    b=mbPWeBVbt/kqFuXSpZRvyNw3r7DB/jdfdwocA7dKJxYMBBKezFFd14fmt+S7hlQXCn
    JAxz07Gja5LtAzuuLKCQ==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7T1oMG+TLVuVbxkCQk4="
Received: from ox-live-app305.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.23 AUTH)
    with ESMTPSA id jfbddf11PF5vA54
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate)
    for <yocto@lists.yoctoproject.org>;
    Tue, 25 Feb 2025 16:05:57 +0100 (CET)
Date: Tue, 25 Feb 2025 16:05:57 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <751653524.2812887.1740495957756@webmail.strato.de>
Subject: Yocto Dunfell - Modify OpenSSH configuration
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2812886_565289271.1740495957749"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev73
X-Originating-Client: open-xchange-appsuite
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 15:06:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64865

------=_Part_2812886_565289271.1740495957749
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
=20
I=C2=B4m working on a Dunfell BSP (Toradex BSP5) and want to add and modify=
 the OpenSSH configuration. So I=C2=B4ve added "recipes-connectivity/openss=
h/openssh_%.bbappend" with this content
=20
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
=20
# Apply the SSH configuration
# - Disable password authentication
# - Disable X11 forwarding
# - Enable public key authentication
do_install_append () {
  sed -i -e 's:^#PubkeyAuthentication.*$:PubkeyAuthentication yes:g' ${D}${=
sysconfdir}/ssh/sshd_config
  sed -i -e 's:^#PasswordAuthentication.*$:PasswordAuthentication no:g' ${D=
}${sysconfdir}/ssh/sshd_config
  sed -i -e 's:^#ChallengeResponseAuthentication.*$:ChallengeResponseAuthen=
tication no:g' ${D}${sysconfdir}/ssh/sshd_config
  sed -i -e 's:^#UsePAM.*$:UsePAM no:g' ${D}${sysconfdir}/ssh/sshd_config
  sed -i -e 's:^#X11Forwarding.*$:X11Forwarding no:g' ${D}${sysconfdir}/ssh=
/sshd_config
=20
  install -d 0700 ${D}${ROOT_HOME}/.ssh
  install -m 0600 "${TOPDIR}/keys/ssh/${DEPLOY_ENV}/id_ed25519.pub" ${D}${R=
OOT_HOME}/.ssh/authorized_keys
}
FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"
=20
And I added TASK_BASIC_SSHDAEMON =3D "openssh-sshd openssh-sftp openssh-sft=
p-server" to my OS configuration. The generated image contains OpenSSH (I=
=C2=B4ve checked the version) but no authorized_keys or modified configurat=
ion.
=20
What is wrong here?
=20
Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
=20
Ing. Daniel Kampert, M. Sc.
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
Phone: +49 (0)174 6932561
E-Mail: kontakt@daniel-kampert.de mailto:kontakt@daniel-kampert.de
Web: www.daniel-kampert.de https://www.daniel-kampert.de
------=_Part_2812886_565289271.1740495957749
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
   I=C2=B4m working on a Dunfell BSP (Toradex BSP5) and want to add and mod=
ify the OpenSSH configuration. So I=C2=B4ve added "<strong>recipes-connecti=
vity/openssh/openssh_%.bbappend</strong>" with this content
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">=20
   <div class=3D"default-style">
    <em>FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"</em>
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    <em># Apply the SSH configuration</em>
    <br><em># - Disable password authentication</em>
    <br><em># - Disable X11 forwarding</em>
    <br><em># - Enable public key authentication</em>
    <br><em>do_install_append () {</em>
    <br><em>&nbsp; sed -i -e 's:^#PubkeyAuthentication.*$:PubkeyAuthenticat=
ion yes:g' ${D}${sysconfdir}/ssh/sshd_config</em>
   </div>=20
   <div class=3D"default-style">
    <em>&nbsp; sed -i -e 's:^#PasswordAuthentication.*$:PasswordAuthenticat=
ion no:g' ${D}${sysconfdir}/ssh/sshd_config</em>
    <br><em>&nbsp; sed -i -e 's:^#ChallengeResponseAuthentication.*$:Challe=
ngeResponseAuthentication no:g' ${D}${sysconfdir}/ssh/sshd_config</em>
    <br><em>&nbsp; sed -i -e 's:^#UsePAM.*$:UsePAM no:g' ${D}${sysconfdir}/=
ssh/sshd_config</em>
   </div>=20
   <div class=3D"default-style">
    <em>&nbsp; sed -i -e 's:^#X11Forwarding.*$:X11Forwarding no:g' ${D}${sy=
sconfdir}/ssh/sshd_config</em>
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    <em>&nbsp; install -d 0700 ${D}${ROOT_HOME}/.ssh</em>
    <br><em>&nbsp; install -m 0600 "${TOPDIR}/keys/ssh/${DEPLOY_ENV}/id_ed2=
5519.pub" ${D}${ROOT_HOME}/.ssh/authorized_keys</em>
    <br><em>}</em>
   </div>=20
   <div class=3D"default-style">
    <em>FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"</em>
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    And I added <strong>TASK_BASIC_SSHDAEMON =3D "openssh-sshd openssh-sftp=
 openssh-sftp-server"</strong> to my OS configuration. The generated image =
contains OpenSSH (I=C2=B4ve checked the version) but no <strong>authorized_=
keys</strong> or modified configuration.
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    What is wrong here?
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
------=_Part_2812886_565289271.1740495957749--

