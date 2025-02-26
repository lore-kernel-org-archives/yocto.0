Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B827EC021B8
	for <webhook@archiver.kernel.org>; Wed, 26 Feb 2025 06:21:38 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.220])
 by mx.groups.io with SMTP id smtpd.web10.444.1740550889057463348
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 22:21:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=Cdo9Mk3z;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=5hkjZJxV;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.220, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1740550886; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=r0U+TWsBOMC15hGR5U2tHUtVgjib+S4+P9bKkSJ2J9NdJ/2ubVnMtTatFcQ4qQnsOv
    XMOFx+CbHQgyh1mo6vKLsgzphSBG7W/IBIn8iV03Nuok5b+sqgTcs229+WbC0z2Z/qEo
    4M01Pvqk/fxpz+5scRxrMRYYu8qA8wybJVsFdTH/Ahr+LEfMYKqbprUVjYgVMj7exuLP
    etg899kYpXmg+iFLAu2ucqrRZeSeIOKXyQl4TFZsi634WRw2AVDIv55cCVsiTGR3KYi/
    UiKLJoQtXHV88o2hpqE75VxFsq9cBqdpGlLCselBvoyurtiQuuvxl73aKt0Aki9IhSD2
    qKlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1740550886;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=itJhqFTOWZmroYlVJ9KMgD+wUPfCzzKt3/lQ64AMlVc=;
    b=TPm/PbNKlaHDafY1A0WPGOBxo2BX3s3hZpyy3ObeDVSCRRNwYEvBBz8donIzUxt0e/
    bPRoSkjylHriVbIM6E04Y2oJ9jpNSFalqrFJULEaMVu5nO0HxpVCj0yJ/Xr6J/QpV+BD
    KdZerETNCXToenA+X+WJ/5Xqde3/laq6DhlUtE7h1x0iuh4Ih45l01VN5GNsbXnxfl8u
    gqpTGf7KbLp47OwBiW1hSAF2OxOZ9dRfs51M7nGqkTH4i4xkZbh3qsDDV8sYTB2R8KGB
    iddTVNOxdngAg1cjMSqM+aVIkaKKC0LKhZBTNSjOzhHZkDyBWvuvqWBlU78/GlCmMjVw
    9Nvw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1740550886;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=itJhqFTOWZmroYlVJ9KMgD+wUPfCzzKt3/lQ64AMlVc=;
    b=Cdo9Mk3zG5MwcYI9IBLp6VzVMUbYETcaG3DUS+SV+bYpYjZJgAefJLeIgm9J9A2+rp
    2r9jaHUEwy/BXzQRJwTzcmnHfoVWOs6cOjP2I+1gWSq55HryNEMamGk596kyRpWx7MVL
    OSG2jLGbdIHYJXJ/dbpVSgVPcLNR2WRrh6bDYohdNfUI6kA6fCYYs5MYCGvzAAIkRxV7
    wgv/tSkUSgxgwuRafWD2WAiW3OJkbr0Kipl5X6lv90jG25vW6PahYa1Ne4254KQa1xbM
    XHOCYdaCiUT83WXHEdX3l/qPrDQCAkIxdeHYXZ0pfC6ACsEYP9EjpoqVeaGtpei2hqOE
    vtsA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1740550886;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=itJhqFTOWZmroYlVJ9KMgD+wUPfCzzKt3/lQ64AMlVc=;
    b=5hkjZJxVPRv6TndI4aJSevkEMLS+SMYvfh6tMnQyall2HYvK3IAEqABb9kBF1UL08W
    DtsisdQMP5rKuayyUEBA==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7T1oMG+TLVuVbxkCQk4="
Received: from ox-live-app405.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.23 AUTH)
    with ESMTPSA id jfbddf11Q6LQBdy
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Wed, 26 Feb 2025 07:21:26 +0100 (CET)
Date: Wed, 26 Feb 2025 07:21:26 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com,
	"Alexander Kanavin via lists.yoctoproject.org"
 <alex.kanavin=gmail.com@lists.yoctoproject.org>
Message-ID: <199985764.584582.1740550886762@webmail.strato.de>
In-Reply-To: <CANNYZj9hSsTKV5PEHztiJ6z+9DBTaQTLzCor0K7xi4mfUq-m5Q@mail.gmail.com>
References: <751653524.2812887.1740495957756@webmail.strato.de>
 <CANNYZj9hSsTKV5PEHztiJ6z+9DBTaQTLzCor0K7xi4mfUq-m5Q@mail.gmail.com>
Subject: Re: [yocto] Yocto Dunfell - Modify OpenSSH configuration
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev73
X-Originating-Client: open-xchange-appsuite
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2025 06:21:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64874

Hi Alex,

I=C2=B4ve checked several files for informations.=20

1. log.do_rootfs: OpenSSH is added but I can=C2=B4t see anything about my m=
odifications
2. files-in-package.txt for aarch64-tdx-linux openssh gives me the followin=
g output

drwxr-xr-x root       root             4096 ./home
drwx------ root       root             4096 ./home/root
drwxr-xr-x root       root             4096 ./home/root/.ssh
-rw------- root       root              106 ./home/root/.ssh/authorized_key=
s

3. log.do_install doesn=C2=B4t list my file

Do you have any other tips?

Thanks!

> Alexander Kanavin via lists.yoctoproject.org <alex.kanavin=3Dgmail.com@li=
sts.yoctoproject.org> hat am 25.02.2025 17:02 CET geschrieben:
>=20
> =20
> Either the needed changes aren't being packaged correctly (check
> ${WORKDIR}/packages-splt for openssh recipe), or the needed package
> isn't being installed into the image (check
> ${WORKDIR}/temp/log.do_rootfs for the image).
>=20
> Alex
>=20
> On Tue, 25 Feb 2025 at 16:06, Daniel Kampert via
> lists.yoctoproject.org
> <kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:
> >
> > Hi,
> >
> > I=C2=B4m working on a Dunfell BSP (Toradex BSP5) and want to add and mo=
dify the OpenSSH configuration. So I=C2=B4ve added "recipes-connectivity/op=
enssh/openssh_%.bbappend" with this content
> >
> > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> >
> > # Apply the SSH configuration
> > # - Disable password authentication
> > # - Disable X11 forwarding
> > # - Enable public key authentication
> > do_install_append () {
> >   sed -i -e 's:^#PubkeyAuthentication.*$:PubkeyAuthentication yes:g' ${=
D}${sysconfdir}/ssh/sshd_config
> >   sed -i -e 's:^#PasswordAuthentication.*$:PasswordAuthentication no:g'=
 ${D}${sysconfdir}/ssh/sshd_config
> >   sed -i -e 's:^#ChallengeResponseAuthentication.*$:ChallengeResponseAu=
thentication no:g' ${D}${sysconfdir}/ssh/sshd_config
> >   sed -i -e 's:^#UsePAM.*$:UsePAM no:g' ${D}${sysconfdir}/ssh/sshd_conf=
ig
> >   sed -i -e 's:^#X11Forwarding.*$:X11Forwarding no:g' ${D}${sysconfdir}=
/ssh/sshd_config
> >
> >   install -d 0700 ${D}${ROOT_HOME}/.ssh
> >   install -m 0600 "${TOPDIR}/keys/ssh/${DEPLOY_ENV}/id_ed25519.pub" ${D=
}${ROOT_HOME}/.ssh/authorized_keys
> > }
> > FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"
> >
> > And I added TASK_BASIC_SSHDAEMON =3D "openssh-sshd openssh-sftp openssh=
-sftp-server" to my OS configuration. The generated image contains OpenSSH =
(I=C2=B4ve checked the version) but no authorized_keys or modified configur=
ation.
> >
> > What is wrong here?
> >
> > Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> >
> > Ing. Daniel Kampert, M. Sc.
> > Embedded Systems Solutions
> > Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> > Phone: +49 (0)174 6932561
> > E-Mail: kontakt@daniel-kampert.de
> > Web: www.daniel-kampert.de
> >
> >=20
> >
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64867): https://lists.yoctoproject.org/g/yocto/messag=
e/64867
> Mute This Topic: https://lists.yoctoproject.org/mt/111378266/9229641
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kontakt@daniel=
-kampert.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards

Ing. Daniel Kampert, M. Sc.=20
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland=20
Phone: +49 (0)174 6932561=20
E-Mail: kontakt@daniel-kampert.de=20
Web:=C2=A0www.daniel-kampert.de (https://www.daniel-kampert.de)

