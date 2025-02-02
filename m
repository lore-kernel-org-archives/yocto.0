Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A36C0218F
	for <webhook@archiver.kernel.org>; Sun,  2 Feb 2025 19:11:04 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.163])
 by mx.groups.io with SMTP id smtpd.web11.70599.1738523461724402154
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2025 11:11:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=TgbDu/th;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=+uXZ+xnX;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.163, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1738523458; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=auPKqp+bKcQez+4tDoQxjZvwmkVLY7bJkY619jtxYlhjvSH9ztSgLkL9eoXTOOFFC4
    5K+6bVDavNkPFdgFcVM7vDULEF3t5Z8Cgz+5oZ/HwUkuuYIqxChyT8ajygH0Pn6ZdrHX
    /ebScxFApP9Xgzri/UozJc4hatzvMuSyGKRya6BJP+rilLg9VDKfj1YbBs6YAy9b2zkG
    NVoWMy2FeDFfy2y+QraMEKJC+3oyfOfEqNmLLwyahsyq4qbC7WymCmGcknDC68/2ASUM
    ivt7SsqyZm4afETipRYd6OjRtzRPOvL1WfPHUktDzVlgw0sCvNhfOhDqtNTtgeh8F61e
    +THg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1738523458;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=w4HJwW9dcmQUgtzvq2MuUyEb59uA/VJp3a+mpabUfx8=;
    b=dobPemLJqW/Tx1N15khj1r4sdCIyNk7aEwXexbxsr1IRoZCXkVQZsxFVcEXDTSSgoS
    gDx9l+YeQgevKMvufR/JmjfcLWvNMwg1jJGLQJDKCNU8sx8oO52i1JeT+84euTJ5cmH5
    kELzZPGyHSvcXap0NMc0RtMuzyVRpg9+qpBCWThpn+O8j7AZaJEIvV3ZU4e5PlOjOx6h
    /SQRlic1B2QjV4KtFVpTv2kljbnPmKsprjbX8/+c0LHFKre6cdKh1irmcY7Ccj+wL2qU
    vq6l7eK4UuZQL9lRBAV6odVkOiDKHOFuRlgQQPaqdy6Vrwi7/c+/43xws1lvxOX4rC+9
    smKw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1738523458;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=w4HJwW9dcmQUgtzvq2MuUyEb59uA/VJp3a+mpabUfx8=;
    b=TgbDu/thgYo+fX+IGWDAnxFaz2amUVTtwC2QTh0N2kfmCc2dNEPmemHns71rGlevli
    2QEnF4FsvkkVopzGEsc0NrArYBZjeS4OEz2hrcA0VgMR0YSUVGRfAIlBQ1OQ07jik03L
    NoA6rCOEC1LfDZeOFo0QoZ7gHtcIyS3N7zBijSR39nk3xJWgJVJVJoC8ZHio0AG8kRCF
    LPegD5uNEaqy7qlTQG4Ltb14tjy4w+NSvd60hR8k8BF9hM7x1KDDjk+UYYNHI7kesmLH
    gPqiH8DNLqaHPlqkjnQV/OhjEOg4IIO7PLmLpLtlxTi1CpiuninArGnLZVGCkpa6oFqc
    EwQw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1738523458;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=w4HJwW9dcmQUgtzvq2MuUyEb59uA/VJp3a+mpabUfx8=;
    b=+uXZ+xnX4WE2xTL6e8YK320ADi6ZlfE31ICnPfT0+VWT8AVI1izhCxdg2KgXEAE3HL
    c2p9KvZzIx8SdipD59CA==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD5zV2MWTAzG2DHASCghoN6qS3ONTLk1B9p80P4eH/cU/xgdvP"
Received: from ox-live-app201.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.17 AUTH)
    with ESMTPSA id j04bdd112JAwGwP
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Sun, 2 Feb 2025 20:10:58 +0100 (CET)
Date: Sun, 2 Feb 2025 20:10:58 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com,
	"Gyorgy Sarvari via lists.yoctoproject.org"
 <skandigraun=gmail.com@lists.yoctoproject.org>
Message-ID: <372448140.3833563.1738523458718@webmail.strato.de>
In-Reply-To: <17aaec9a-64ac-494e-a66a-abd69e9e0197@gmail.com>
References: <2084383241.3521981.1738442810341@webmail.strato.de>
 <17aaec9a-64ac-494e-a66a-abd69e9e0197@gmail.com>
Subject: Re: [yocto] installs files in /var/volatile
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev72
X-Originating-Client: open-xchange-appsuite
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Feb 2025 19:11:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64696

Hi,

thanks for the explanation. I fixed it by removing the directory.

> Gyorgy Sarvari via lists.yoctoproject.org <skandigraun=3Dgmail.com@lists.=
yoctoproject.org> hat am 02.02.2025 13:21 CET geschrieben:
>=20
> =20
> On 01.02.25 21:46, Daniel Kampert via lists.yoctoproject.org wrote:
> > Hi,
> > I=C2=B4m building a layer to install wmbusmeters for Kirkstone and I ru=
n=20
> > into this issue:
> > ERROR: wmbusmeters-1.18.0-r0 do_package_qa: QA Issue: wmbusmeters=20
> > installs files in /var/volatile, but it is expected to be empty=20
> > [empty-dirs]
> > What does it mean and where does it come from / how can I solve it? My=
=20
> > recipe looks like this
>=20
> What does it mean - There are a number of folders that are not expected=
=20
> to contain
> files installed by application due to various reasons. One QA check[1]=20
> ensures that
> this is respected by the packages.
>=20
> Where it come from - The Makefile installs some directories in the=20
> /var/volatile folder.
> Frequently this folder is tmpfs, but even when it is not, its content is=
=20
> considered ephemeral, so
> installing anything here is frequently a bug. It can be used as a=20
> temporary folder during runtime, but
> if an application needs to store anything that will be needed after a=20
> reboot, this folder
> is not a good place.
>=20
> How can I solve it - There are a couple of ways. A couple of=20
> non-exhaustive options:
> - Delete this folder in a do_install:append() function ("rm -rf=20
> ${D}${localstatedir}/log" or something
> along the lines), and simply try to start the application. Maybe it=20
> re-creates the folder upon startup,
> and it will just work.
> - Do the same as in the previous suggestion, but add "--logfile=3Dsyslog"=
=20
> as a starting argument
> in your systemd unit file. Based on the readme this should make your=20
> application to use
> the syslog for its logs instead of a dedicated file.
> - If none if this is working for you, delete the folder still, but look=
=20
> into tmpfiles.d [2]
> and its configuration, how to recreate this folder during boot. This=20
> service creates folders and
> files early during startup, it is usable exactly in such cases. You can=
=20
> find a couple examples of its
> usage in Yocto also[3].
>=20
> [1]: https://docs.yoctoproject.org/4.0.24/ref-manual/qa-checks.html
> [2]: https://www.freedesktop.org/software/systemd/man/latest/tmpfiles.d.h=
tml
> [3]: e.g.=20
> https://git.yoctoproject.org/poky/tree/meta/recipes-extended/pam/libpam_1=
.5.2.bb?h=3Dkirkstone#n137
> > /inherit autotools-brokensep pkgconfig/
> > /DESCRIPTION =3D "The program acquires utility meter readings from wire=
d=20
> > m-bus or wireless wm-bus meters."/
> > /HOMEPAGE =3D "https://github.com/wmbusmeters/wmbusmeters"/
> > /LICENSE =3D "GPL-3.0-only"/
> > /LIC_FILES_CHKSUM =3D=20
> > "file://${COMMON_LICENSE_DIR}/GPL-3.0-only;md5=3Dc79ff39f19dfec6d293b95=
dea7b07891"/=20
> >
> > /# The Makefile is stripping. Overwrite the "STRIP" variable in the=20
> > Makefile and use the stripping from Yocto/
> > /EXTRA_OEMAKE +=3D "STRIP=3Dtrue"/
> > /CXXFLAGS +=3D "-DLIBXML_DOCB_ENABLED"/
> > /SRC_URI =3D " \/
> > /file://0001-set-libxml2-cxxflags-by-pkg-config.patch \/
> > /git://github.com/wmbusmeters/wmbusmeters;protocol=3Dhttps;branch=3Dmas=
ter \/
> > /"/
> > /# Use version 1.18.0/
> > /SRCREV =3D "2f2720d9d8e043304a366d11d933be9d535e17a5"/
> > /DEPENDS =3D "rtlsdr icu libxml2"/
> > /RDEPENDS:${PN} =3D "rtlsdr icu"/
> > /S =3D "${WORKDIR}/git"/
> > /FILES:${PN} =3D " etc \/
> > /var \/
> > /lib \/
> > /usr/bin \/
> > /usr/sbin \/
> > /${systemd_system_unitdir}/system/wmbusmeters.service \/
> > /"/
> > /SYSTEMD_SERVICE:${PN} =3D "wmbusmeters.service"/
> > /SYSTEMD_AUTO_ENABLE:${PN} =3D "enable"/
> > Thanks for help!
> > Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> > Ing. Daniel Kampert, M. Sc.
> > Embedded Systems Solutions
> > Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> > Phone: +49 (0)174 6932561
> > E-Mail: kontakt@daniel-kampert.de
> > Web: www.daniel-kampert.de <https://www.daniel-kampert.de>
> >
> >=20
> >
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64695): https://lists.yoctoproject.org/g/yocto/messag=
e/64695
> Mute This Topic: https://lists.yoctoproject.org/mt/110941591/9229641
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

