Return-Path: <alexis.lothore@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E61A8E00E24; Sat, 11 Jun 2016 04:20:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alexis.lothore[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4831FE00DF4
	for <yocto@yoctoproject.org>; Sat, 11 Jun 2016 04:20:04 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id n184so21372025wmn.1
	for <yocto@yoctoproject.org>; Sat, 11 Jun 2016 04:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=GQJ9PVKGTANMTs1zhW6mBh+LrE2e5MUbFeGUWA2TQv0=;
	b=SP67OA0sv5aKRLheXPGJ0kZB3wK6xxzGH6nX4fhUt11SU5v0EPW3F9aPkGh6W2PiL7
	iaszYlXXpsevidLutKfOhMQZbuMmjkZe5dcocTSFTniFV+dj/5/+RoUYZBQnRVTtOgQj
	bYt+Fg7YhWAvHjRvOeWnfT0zbVqAskqk5gWisILlQao1iwYcyzjTHGW+nGGnDrYDU9sq
	LMYUuDum2B8B5pmbcx9GFTJ0m/Kq+07j+6NZZB+FlyIKfN2Hdui+c3SGebStzGX43x2n
	KR7Q3am0zHWBzu24RiLqt9bACXA6eS52X11edAZp3wmvAvdXc/mENwmcMop3B9I6B9ml
	No8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GQJ9PVKGTANMTs1zhW6mBh+LrE2e5MUbFeGUWA2TQv0=;
	b=Ka2NblggeFkqOqKyiFbV4Ri3DGgo9DQfgHHBf84erxK3Bji4Xt/Iq/s4tjbEnL9Y1K
	sD95cWpa6KMiuuVABBK64Iqp5sJuxdeiyT5dH024QWYjo60mucTNRSg9AAgZL/oT/dku
	jbzYl8OjqCVAKc6kPN9rnld7zwn2TfL1uKha3rc/4VXZfiv10eu5FbVaFG4+gnzQA0MD
	eu6skXCtHMmikCG7EyQuKabvbMieGWST1bHtFW/OrdQKsulTN9fCF+VOKSPeZicDhki4
	k3Ayzs5JGiTTRxQRQDsKtWNiWpDoDhxjcwITCj6sBK4yvk5oM3eZLlQrlDCheAB4Kq6l
	u31Q==
X-Gm-Message-State: ALyK8tLHJlz4vg9Ts1h9vEJGD+e3HhychJs68rvIApA7YZ+A01dV/ceMmMz5EZig3Zpf4r5jC93yFAhUWAUbHA==
X-Received: by 10.28.22.77 with SMTP id 74mr3335682wmw.36.1465644003123; Sat,
	11 Jun 2016 04:20:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.188.212 with HTTP; Sat, 11 Jun 2016 04:20:02 -0700 (PDT)
From: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@gmail.com>
Date: Sat, 11 Jun 2016 13:20:02 +0200
Message-ID: <CALmdmcAd4KFGbhGyWDqkFGMiBJGmqMdHLsruUJY8WHu5h+dCHQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Issue creating systemd service recipe
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
X-List-Received-Date: Sat, 11 Jun 2016 11:20:06 -0000
Content-Type: multipart/alternative; boundary=001a11467c502c65d80534fed64a

--001a11467c502c65d80534fed64a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
I am currently trying to set up an Iot showcase platform using lowpan-tools
on raspberry.
To do so, I added systemd and I am now trying to create a recipe installing
my lowpan configuration script and lowpan.service. I used
connman-init-systemd.bb in meta-eca as a template to my recipe, which looks
like the following (lowpan-init-systemd.bb):

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
SUMMARY =3D "Configuration files to set up Lowpan interface"
DESCRIPTION =3D "Used to configure a lowpan interface with systemd when
driver is loaded"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D0835ade698e0bcf8506ecda2f7b4f302=
"

SRC_URI +=3D "\
        file://COPYING \
        file://init.sh \
        file://lowpan.service \
"
S =3D "${WORKDIR}"

inherit systemd

SYSTEMD_PACKAGES =3D "${PN}"

SYSTEMD_SERVICE_${PN} =3D " lowpan.service"

FILES_${PN} +=3D " lowpan.service \
                 /opt/lowpan/init.sh \
"


do_install () {
    install -d ${D}{sysconfdir}/systemd/system
    install -d ${D}/opt/lowpan
    install -m 0755 ${WORKDIR}/lowpan.service
${D}{sysconfdir}/systemd/system
    install -m 0755 ${WORKDIR}/init.sh ${D}/opt/lowpan
}
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
and the service file, located in "files" :
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[Unit]
Description=3DLowpan interface configuration
Wants=3Dsys-subsystem-net-devices-wpan0.device
After=3Dsys-subsystem-net-devices-wpan0.device

[Service]
Type=3Doneshot
RemainAfterExit=3Dno
ExecStart=3D/opt/lowpan/init.sh

[Install]
WantedBy=3Dmulti-user.target
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I chose to inherit systemd to be sure that my service is not only installed
but also enabled at first boot.
However, when I try to bitbake this recipe only (or the whole image, which
has a IMAGE_INSTALL_append =3D "lowpan-tools lowpan-init-systemd"), I get t=
he
following error at some point :


*lowpan-init-systemd-1.0-r0 do_package: Function failed:
SYSTEMD_SERVICE_lowpan-init-systemd value lowpan.service does not exist*
Thinking it was due to file location, (trying to read systemd.bbclass, I
think the class does not find my service file) I tried adding ${S},
${WORKDIR} or so before lowpan.service in SYSTEMD_SERVICE, but it changed
nothing.
Can someone explain me what I am doing wrong in this case ?

--=20
Alexis Lothor=C3=A9
=C3=89l=C3=A8ve-Ing=C3=A9nieur =C3=A0 l'INSA de Toulouse
5A Automatique-Electronique : Syst=C3=A8mes Embarqu=C3=A9s Critiques
06.51.59.81.45

--001a11467c502c65d80534fed64a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div>I am currently trying to set up an Iot sh=
owcase platform using lowpan-tools on raspberry.</div><div>To do so, I adde=
d systemd and I am now trying to create a recipe installing my lowpan confi=
guration script and lowpan.service. I used <a href=3D"http://connman-init-s=
ystemd.bb">connman-init-systemd.bb</a> in meta-eca as a template to my reci=
pe, which looks like the following (<a href=3D"http://lowpan-init-systemd.b=
b">lowpan-init-systemd.bb</a>):=C2=A0</div><div><br></div><div>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</div><div><div>SUMMARY =3D &quot;Configuration files to set up=
 Lowpan interface&quot;</div><div>DESCRIPTION =3D &quot;Used to configure a=
 lowpan interface with systemd when driver is loaded&quot;</div><div>LICENS=
E =3D &quot;MIT&quot;</div><div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;m=
d5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;</div><div><br></div><div>SRC_UR=
I +=3D &quot;\</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://COPYING \</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://init.sh \</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 file://lowpan.service \</div><div>&quot;</div><div>S =3D &quo=
t;${WORKDIR}&quot;</div><div><br></div><div>inherit systemd</div><div><br><=
/div><div>SYSTEMD_PACKAGES =3D &quot;${PN}&quot;</div><div><br></div><div>S=
YSTEMD_SERVICE_${PN} =3D &quot; lowpan.service&quot;</div><div><br></div><d=
iv>FILES_${PN} +=3D &quot; lowpan.service \</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/opt/lowpan/init.sh \</div><div>&q=
uot;</div><div><br></div><div><br></div><div>do_install () {</div><div>=C2=
=A0 =C2=A0 install -d ${D}{sysconfdir}/systemd/system</div><div>=C2=A0 =C2=
=A0 install -d ${D}/opt/lowpan</div><div>=C2=A0 =C2=A0 install -m 0755 ${WO=
RKDIR}/lowpan.service ${D}{sysconfdir}/systemd/system</div><div>=C2=A0 =C2=
=A0 install -m 0755 ${WORKDIR}/init.sh ${D}/opt/lowpan</div><div>}</div><di=
v>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><div>and the service file=
, located in &quot;files&quot; :=C2=A0</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</div><div><div>[Unit]</div><div>Description=3DLowpan interface=
 configuration</div><div>Wants=3Dsys-subsystem-net-devices-wpan0.device</di=
v><div>After=3Dsys-subsystem-net-devices-wpan0.device</div><div><br></div><=
div>[Service]</div><div>Type=3Doneshot</div><div>RemainAfterExit=3Dno</div>=
<div>ExecStart=3D/opt/lowpan/init.sh</div><div><br></div><div>[Install]</di=
v><div>WantedBy=3Dmulti-user.target</div></div><div>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D</div><div><br></div><div>I chose to inherit systemd to be s=
ure that my service is not only installed but also enabled at first boot.</=
div><div>However, when I try to bitbake this recipe only (or the whole imag=
e, which has a IMAGE_INSTALL_append =3D &quot;lowpan-tools lowpan-init-syst=
emd&quot;), I get the following error at some point :=C2=A0</div><div><i><d=
iv><b><br></b></div><div><b>lowpan-init-systemd-1.0-r0 do_package: Function=
 failed: SYSTEMD_SERVICE_lowpan-init-systemd value lowpan.service does not =
exist</b></div><div><br></div></i></div><div>Thinking it was due to file lo=
cation, (trying to read systemd.bbclass, I think the class does not find my=
 service file) I tried adding ${S}, ${WORKDIR} or so before lowpan.service =
in SYSTEMD_SERVICE, but it changed nothing.</div><div>Can someone explain m=
e what I am doing wrong in this case ?</div><div><br></div><div>--=C2=A0<br=
></div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr">Alexis Lothor=C3=A9<div>=C3=89l=C3=A8v=
e-Ing=C3=A9nieur =C3=A0 l&#39;INSA de Toulouse</div><div>5A Automatique-Ele=
ctronique : Syst=C3=A8mes Embarqu=C3=A9s Critiques</div><div>06.51.59.81.45=
</div></div></div></div></div>
</div></div></div>

--001a11467c502c65d80534fed64a--
