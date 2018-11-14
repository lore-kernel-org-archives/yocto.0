Return-Path: <slaterc@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E385E00C49; Wed, 14 Nov 2018 01:11:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (slaterc[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04CBBE00950
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 01:11:21 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id j202-v6so12935427oih.10
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 01:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zuMJmgYEzuNpKv27HcMbQ663anFC4WIqT8d7aZ1Az3A=;
	b=sdKhQftVBv/CM3Zv0X1w5M5GjAUavNFBrUdh6ox8+De0SoWg+lx6or58SS4ZjvK0Om
	oY2+iLBrw8ZM+MMO0Kv++iBp3SMskzMuZMnxdpU9sYbgfRCYdoFGgutdS4uwakFd25me
	gFq23UDyDiQQkKCyHREmNG/VWmAY6ey2peXvid4+YISBj8SdT02Wc0TL1zjbIeOuO6mn
	I+XMkFi8F4D4CBAIr1DEWJWNubqkn097dZbpkA050secQ6byBG60CWpzCcWxXl+CNHnh
	fqGvAAOCd5NSE7CB2zYVVMjV99W92NiURry6LavfCfuWbtkaPykbEzvL7K2wVWpPwpGA
	L0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zuMJmgYEzuNpKv27HcMbQ663anFC4WIqT8d7aZ1Az3A=;
	b=FBCC7jaC1qumR+KixjkwkC09ip+QqgGrVce9xZ/1OGETyRnUdK+CbaDIQ7uFnt4SGm
	Ig7e//p1nokoEOBhddNZEAQ3yHR1PIHZnDoGABhoVjlYKLHeybPR/yuncmGbww64+FIx
	ljv8nPprkR6o3mPw5c7sEancCylikA8ZWxEqjhqLK+hKnKiHZCzP7M25PPE5H9rMWdXg
	hgxMeCvn6+KMyhokbqCsS4bIfiFN+urVYSM4EELB1ztMGUhdDK46y4/zLJ+SfVBEWClu
	OXsXbmwGf4pxMfMDJQMlbCevn/mf7GGWMR9/CVDz6X6zsiI2U1Y1eLeekm3x+SIRPa2I
	Qt0Q==
X-Gm-Message-State: AGRZ1gK5UpYvBQndh305NKTwoFJbKxibGYSygYNCqmeRVUa3plYxMXpV
	dqaDX13nrIoDlfGCz9/JtXqhOI0nsxFhTC/WhqYsYwOg
X-Google-Smtp-Source: AJdET5ciLQ0vPzphfPCALVqbEBYe5d9fsvTMbWDQ03O8IMZHkHe47rUqp0gmM9Tmjsnv4aCAeTt1EadHQWmYw1jO24A=
X-Received: by 2002:aca:ac3:: with SMTP id k64mr577372oiy.78.1542186681270;
	Wed, 14 Nov 2018 01:11:21 -0800 (PST)
MIME-Version: 1.0
From: Conor Slater <slaterc@gmail.com>
Date: Wed, 14 Nov 2018 10:11:10 +0100
Message-ID: <CAH+z4xQb_RwqZD8tViAMUeSgPSwhA6sXiFe-+3y7Q=zajNNj2A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Enable wpa_supplicant@wlan0.service on boot with systemd
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
X-List-Received-Date: Wed, 14 Nov 2018 09:11:22 -0000
Content-Type: multipart/alternative; boundary="000000000000508803057a9c511d"

--000000000000508803057a9c511d
Content-Type: text/plain; charset="UTF-8"

Dear All,

I'm trying to start wpa_supplicant with wlan0 as the interface on boot
using systemd.

I've created the following .bbappend for wpa_supplicant to install the new
configuration and enable the wpa_supplicant@wlan0.service. This doesn't
enable the service and somehow breaks being able the start the
wpa_supplicant@wlan0.service.

Has anybody else figured out how to get this to work?

$ cat wpa-supplicant_2.%.bbppend:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " file://wpa_supplicant-wlan0.conf"

inherit systemd

SYSTEMD_PACKAGES = "${PN}"
SYSTEMD_SERVICE_${PN} += " wpa_supplicant@wlan0.service"
SYSTEMD_AUTO_ENABLE = "enable"

do_install_append () {
    install -d ${D}${sysconfdir}/wpa_supplicant
    install -m 0644 ${WORKDIR}/wpa_supplicant-wlan0.conf
${D}/${sysconfdir}/wpa_supplicant/
}

As a workaround, I created a .bbappend to manually create the symlink for
systemd which does enable the service. Although, I would like to know if
there is a better way of doing this.

$ cat wpa-supplicant_2.%.bbppend:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " file://wpa_supplicant-wlan0.conf"

do_install_append () {
    install -d ${D}${sysconfdir}/wpa_supplicant
    install -m 0644 ${WORKDIR}/wpa_supplicant-wlan0.conf
${D}/${sysconfdir}/wpa_supplicant/
    install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants
    ln -s ../../../../lib/systemd/system/wpa_supplicant@.service
${D}${sysconfdir}/systemd/system/multi-user.target.wants/wpa_supplicant@wlan0.service
}

--000000000000508803057a9c511d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Dear Al=
l,<div><br></div><div>I&#39;m trying to start wpa_supplicant with wlan0 as =
the interface on boot using systemd.</div><div><br></div><div>I&#39;ve crea=
ted the following .bbappend=C2=A0for wpa_supplicant to install the new conf=
iguration and enable the wpa_supplicant@wlan0.service. This doesn&#39;t ena=
ble the service and somehow breaks being able the start the wpa_supplicant@=
wlan0.service.</div><div><br></div><div>Has anybody else figured out how to=
 get this to work?</div><div><br></div><div>$ cat wpa-supplicant_2.%.bbppen=
d:=C2=A0=C2=A0<br></div><div><br></div><div><div>FILESEXTRAPATHS_prepend :=
=3D &quot;${THISDIR}/files:&quot;</div><div><br></div><div>SRC_URI_append =
=3D &quot; file://wpa_supplicant-wlan0.conf&quot;</div><div><br></div><div>=
inherit systemd</div><div><br></div><div>SYSTEMD_PACKAGES =3D &quot;${PN}&q=
uot;</div><div>SYSTEMD_SERVICE_${PN} +=3D &quot; wpa_supplicant@wlan0.servi=
ce&quot;</div><div>SYSTEMD_AUTO_ENABLE =3D &quot;enable&quot;</div><div><br=
></div><div>do_install_append () {</div><div>=C2=A0 =C2=A0 install -d ${D}$=
{sysconfdir}/wpa_supplicant</div><div>=C2=A0 =C2=A0 install -m 0644 ${WORKD=
IR}/wpa_supplicant-wlan0.conf ${D}/${sysconfdir}/wpa_supplicant/</div><div>=
}</div></div><div><br></div><div>As a workaround, I created a .bbappend to =
manually create the symlink for systemd=C2=A0which does enable the service.=
 Although, I would like to know if there is a better way of doing this.</di=
v><div><br></div><div>$ cat wpa-supplicant_2.%.bbppend:</div><div><br></div=
><div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;</div>=
<div><br></div><div>SRC_URI_append =3D &quot; file://wpa_supplicant-wlan0.c=
onf&quot;</div><div><br></div><div>do_install_append () {</div><div>=C2=A0 =
=C2=A0 install -d ${D}${sysconfdir}/wpa_supplicant</div><div>=C2=A0 =C2=A0 =
install -m 0644 ${WORKDIR}/wpa_supplicant-wlan0.conf ${D}/${sysconfdir}/wpa=
_supplicant/</div><div>=C2=A0 =C2=A0 install -d ${D}${sysconfdir}/systemd/s=
ystem/multi-user.target.wants</div><div>=C2=A0 =C2=A0 ln -s ../../../../lib=
/systemd/system/wpa_supplicant@.service ${D}${sysconfdir}/systemd/system/mu=
lti-user.target.wants/wpa_supplicant@wlan0.service</div><div>}</div></div><=
div><br></div></div></div></div></div>

--000000000000508803057a9c511d--
