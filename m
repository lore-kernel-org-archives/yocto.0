Return-Path: <majchrzycki.mateusz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D262E00D6A; Sun, 17 Nov 2019 11:44:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (majchrzycki.mateusz[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7D8EE00852
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2019 11:44:22 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 94so12619063oty.8
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2019 11:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9NrY3F3+59txhw7djEiru4eV1Fgy3cVVcuZLBxQrVLU=;
	b=pDpaKXTcBm4jO74lQEau8YnBDOxgDtzf0hsx7H0Kz+DHW4GdMAmnLFblmtgCy5WNEf
	MN3eEn4Jks0Z/GJT5pbSns7C8Tk+4CsdAaD15KJsLWG9ayj6ypaOWgyPgOmQy71I7v21
	ygYU2asw6nkRB8puBFettjs0QfAz+4wBsr/Kmo6FoZ2iZ8m5S3roh7MXbroZ61PA27OD
	xp8oBM6ToAjrdcVzunAct02Q1fxcxqx01gB4GRVB/nsamuRs2H6JY+DDx6zr2c/Bmy0a
	CwINf5b3lmgrf3YC8eh150ALcGGtvrsDhJuDEr7rpVgf1LyDRKzxW6M0BOCe5qYJKpnL
	ze/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9NrY3F3+59txhw7djEiru4eV1Fgy3cVVcuZLBxQrVLU=;
	b=V1jU56pYOSVf4qrXH4IOgSO6Gd+wxKWuhwwea4yKZ8X+cTpAK3FR3xmzs6SSyIRwDz
	MMQj+8wKKkZ4NAQ+AmZBA/BvXdKa3WSw9q80iOM/mdQ/+boSTJTc6bUhHx67UlUsKECZ
	eif5z8vTRuev/HjdDJkkkCX47Q+k+anrcm11KLegiwS0+K05I3EpbhBU6EG287/hIuMU
	LzfahbNhTGNvzURYwuenNtdAT8Za2FZsFg3+SinhZUGoZOXsSB75FyxefVq2P1phWRit
	pTspyg1W/TdC3yh87O8Gjr1q9nMW+xxWTtZxgwSlR325V2/X1QFm6radgAhdmZeiKd01
	RPbQ==
X-Gm-Message-State: APjAAAWNOvAnuLHTMFuhP0OJOlXOLAc+HVKWbKxp68I2QDInCSagEV4k
	/qC4aNLuLPlc1gAr+VB5agpGYdxF9AnC+0k9Y5u2/bJHGQQ=
X-Google-Smtp-Source: APXvYqyCA0rsG2PurbifpUgIJQhSc+dNmkW8M+kzRdtoR6qVUuxhiYRVEeUP5swF9IPE7wOWPZ8/AWcLwUa3O44G8nw=
X-Received: by 2002:a05:6830:c2:: with SMTP id
	x2mr18617969oto.257.1574019861749; 
	Sun, 17 Nov 2019 11:44:21 -0800 (PST)
MIME-Version: 1.0
From: Mateusz Majchrzycki <majchrzycki.mateusz@gmail.com>
Date: Sun, 17 Nov 2019 20:44:10 +0100
Message-ID: <CADQzoRtS-ksG19HM-i1t+dS7Z+pKP7VW+Xru7uoSCKWX9KGnHg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Enable systemd service with parameter
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 17 Nov 2019 19:44:23 -0000
Content-Type: multipart/alternative; boundary="000000000000baa5920597900ea5"

--000000000000baa5920597900ea5
Content-Type: text/plain; charset="UTF-8"

Hi!
I have a pretty unusual problem. I need to enable a systemd service
(openvpn) with a profile as a parameter (typically you do it by 'systemctl
enable openvpn@profile'). But the profile on build time doesn't exist (it
is just symlink to non existing file).
My recipe bb looks like (I'm omitting SUMMARY etc.):

inherit systemd
SYSTEMD_SERVICE_${PN} = "openvpn@clientprofile.service"
SYSTEMD_AUTO_ENABLE = "enable"
DEPENDS = "openvpn"
SYSTEMD_PACKAGES = "${PN}"

do_install() {
install -d ${D}${sysconfdir}/openvpn/
ln -sf /data/etc/openvpn/clientprofile.conf
${D}${sysconfdir}/openvpn/clientprofile.conf
}

Unfortunately, on build I get the following error:
ERROR: openvpn-client-1.0-r3 do_package: SYSTEMD_SERVICE_openvpn-client
value openvpn@clientprofile.service does not exist
ERROR: openvpn-client-1.0-r3 do_package: Function failed:
systemd_populate_packages

What am I doing wrong? I suppose the symlink is not a problem as normally
systemctl enables service with non-existent file as a parameter (it fails
on start, but not enabling).

Best regards,
Mateusz

--000000000000baa5920597900ea5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><span style=3D"font-family:Arial,Helvetica,sans-serif">Hi!</sp=
an><br></div>I have a pretty unusual problem. I need to enable a systemd se=
rvice (openvpn) with a profile as a parameter (typically you do it by &#39;=
systemctl enable openvpn@profile&#39;). But the profile on build time doesn=
&#39;t exist (it is just symlink to non existing file).<br>My recipe bb loo=
ks like (I&#39;m omitting SUMMARY etc.):<br><div class=3D"gmail_default" st=
yle=3D""><br>inherit systemd<br>SYSTEMD_SERVICE_${PN} =3D &quot;openvpn@cli=
entprofile.service&quot;<br>SYSTEMD_AUTO_ENABLE =3D &quot;enable&quot;<br>D=
EPENDS =3D &quot;openvpn&quot;<br>SYSTEMD_PACKAGES =3D &quot;${PN}&quot;<br=
><br>do_install() {<br>install -d ${D}${sysconfdir}/openvpn/<br>ln -sf /dat=
a/etc/openvpn/clientprofile.conf ${D}${sysconfdir}/openvpn/clientprofile.co=
nf<br>}<br></div><br>Unfortunately, on build I get the following error:<br>=
ERROR: openvpn-client-1.0-r3 do_package: SYSTEMD_SERVICE_openvpn-client val=
ue openvpn@clientprofile.service does not exist<br>ERROR: openvpn-client-1.=
0-r3 do_package: Function failed: systemd_populate_packages<br><br>What am =
I doing wrong? I suppose the symlink is not a problem as normally systemctl=
 enables service with non-existent file as a parameter (it fails on start, =
but not enabling).<br><br>Best regards,<br>Mateusz<div><br></div></div>

--000000000000baa5920597900ea5--
