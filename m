Return-Path: <j.casas@falconelectronica.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2719C4167B
	for <webhook@archiver.kernel.org>; Fri, 10 Nov 2023 06:02:02 +0000 (UTC)
Subject: Files copied to /usr/local during installation get removed misteriously
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?SmF2aWVyIENhc2FzIE1hcsOtbg==?= <j.casas@falconelectronica.com>
X-Originating-Location: Lodosa, Navarre, ES (185.128.171.24)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Nov 2023 22:02:00 -0800
Message-ID: <AeAa.1699596120034371631.CWXr@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PTAtQr9CcpOtld61nTOp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 06:02:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61649

--PTAtQr9CcpOtld61nTOp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have a recipe that creates some directories in /usr/local and copies ther=
e some files using do_install:append

>=20
> inherit qmake5
> OE_QMAKE_PATH_HEADERS =3D "${OE_QMAKE_PATH_QT_HEADERS}"
> DEPENDS +=3D "qtbase qtdeclarative qtmultimedia libgpiod"
>=20

>=20
> RDEPENDS:${PN} +=3D "qtxmlpatterns qtdeclarative-qmlplugins qtbase-plugin=
s
> ttf-dejavu-sans qtquickcontrols qtquickcontrols2 qtfreevirtualkeyboard
> libgpiod valgrind
>=20
> do_install:append () {
> install -d ${D}${bindir}
> install -d ${D}/usr/local/test
> install -m 0775 qt_test ${D}${bindir}
> install -m 0775 ${S}/test.db ${D}/usr/local/test
> cp -r ${WORKDIR}/Resources ${D}/usr/local/test/resources
> cp -r ${WORKDIR}/LocalFiles ${D}/usr/local/test/LocalFiles
> }
> FILES:${PN} +=3D "${bindir}/qt_test"
> FILES:${PN} +=3D "/opt/*"
> FILES:${PN} +=3D "/usr/local/test/*"
>=20
>=20
>=20

When I build the image, I see the folders appear in /usr/local as expected =
while creating the rootfs but at some point they are removed and, by the ti=
me the rootfs creation finishes, they are gone.
If I take the ipk package and install it on the embedded device the folders=
 and files are created correctly so I guess that the recipe is fine but the=
re is some task during the rootfs creation that deletes all the files in /u=
sr/local (my folders are not the only ones that are deleted).

Who could be doing that or how can I debug it to find the culprit?

Kind regards,
Javi

--PTAtQr9CcpOtld61nTOp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,&nbsp;<br />I have a recipe that creates some directories in /usr/local =
and copies there some files using do_install:append<br /><br />
<div>
<blockquote>
<div>inherit qmake5</div>
<div>OE_QMAKE_PATH_HEADERS =3D "${OE_QMAKE_PATH_QT_HEADERS}"<br />DEPENDS +=
=3D "qtbase qtdeclarative qtmultimedia libgpiod"</div>
</blockquote>
</div>
<blockquote>
<div>
<div>RDEPENDS:${PN} +=3D "qtxmlpatterns qtdeclarative-qmlplugins qtbase-plu=
gins ttf-dejavu-sans qtquickcontrols qtquickcontrols2 qtfreevirtualkeyboard=
 libgpiod valgrind</div>
</div>
<div>
<div>&nbsp;</div>
</div>
<div>
<div>do_install:append () {</div>
</div>
<div>
<div>install -d ${D}${bindir}</div>
</div>
<div><span style=3D"white-space: normal;">install -d ${D}/usr/local/test</s=
pan></div>
<div><span style=3D"white-space: normal;">install -m 0775 qt_test ${D}${bin=
dir}</span></div>
<div><span style=3D"white-space: normal;">install -m 0775 ${S}/test.db ${D}=
/usr/local/test</span></div>
<div>&nbsp; &nbsp; cp -r ${WORKDIR}/Resources ${D}/usr/local/test/resources=
</div>
<div>&nbsp; &nbsp; cp -r ${WORKDIR}/LocalFiles ${D}/usr/local/test/LocalFil=
es</div>
<div>}</div>
<div>FILES:${PN} +=3D "${bindir}/qt_test"</div>
<div>FILES:${PN} +=3D "/opt/*"</div>
<div>FILES:${PN} +=3D "/usr/local/test/*"<br /><br /></div>
</blockquote>
<div>When I build the image, I see the folders appear in /usr/local as expe=
cted while creating the rootfs but at some point they are removed and, by t=
he time the rootfs creation finishes, they are gone.<br />If I take the ipk=
 package and install it on the embedded device the folders and files are cr=
eated correctly so I guess that the recipe is fine but there is some task d=
uring the rootfs creation that deletes all the files in /usr/local (my fold=
ers are not the only ones that are deleted).<br /><br />Who could be doing =
that or how can I debug it to find the culprit?<br /><br /><br />Kind regar=
ds,<br />Javi<br /><br /><br /></div>
<div>&nbsp;</div>

--PTAtQr9CcpOtld61nTOp--

