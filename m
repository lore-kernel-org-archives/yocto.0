Return-Path: <diego.sueiro@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9411AE005B3
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 08:31:03 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id f11so4648630qae.7
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 08:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=Xw0Ikd+Bu/kFLZUxJ1ouB2wb2SBzx9/ylBjFi4BZhaQ=;
	b=uDgUV8g/1SAIJ2E0KObrisSo/0pf/5fYqbh3CazSGP16+MGC7Dw1jzyBqPzEMUzBbd
	ZJsul2QW9VsXUUHoRg5rDg/ftKf7ABz+t8loOamXrx4FZNSuKLh1n+WbtntK4m6ZIoRN
	ljDc1CNFqmLc+wTx5X2THRW8xPv0L1ref6kj3pSxQUv8pmkTBVuDuHZWvsQmsqZrj1cM
	kRGxgnXxE3NC2z9wMBwkmLsmdPK4ozKHITh1VJgjp21btEdR64aynqVBUV5Wmt8KtZyG
	ds5A3eP0cwtJdcQXjxr+hQH18cRcnNW0ZkIh5nMUmMiERq9x2aCNAhr+M6Fl9XCR/mr+
	VhJA==
X-Received: by 10.140.46.119 with SMTP id j110mr22331593qga.32.1391099462583; 
	Thu, 30 Jan 2014 08:31:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.25.47 with HTTP; Thu, 30 Jan 2014 08:30:42 -0800 (PST)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 30 Jan 2014 14:30:42 -0200
Message-ID: <CAMCfZKGN2k1NpUtGiMGK48pi5rzaZQbXrnfPbiL=brGhr4vnxw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Python package recipe
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
X-List-Received-Date: Thu, 30 Jan 2014 16:31:09 -0000
Content-Type: multipart/alternative; boundary=001a11395aaa508cbd04f132956e

--001a11395aaa508cbd04f132956e
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I'm trying to create a recipe for Adafruit's BeagleBone IO Python Library:
https://github.com/adafruit/adafruit-beaglebone-io-python

The problem is that this python package generates some dtbos and install
them on /lib/firmware but these files were not presented on generated
package.

Here is my python-pybbio.bb:

DESCRIPTION = "Adafruit's BeagleBone IO Python Library"
SECTION = "devel/python"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://README.rst;md5=6c89ebda10e2f2efefe5e681a9a0c1f1"
SRCNAME = "pybbio"


COMPATIBLE_MACHINE = "(beaglebone)"

SRC_URI = "git://
github.com/adafruit/adafruit-beaglebone-io-python;branch=master"
SRCREV_pn-${PN} = "ff6f11abe7864e8db735b359365a85323bff2a06"

S = "${WORKDIR}/git"

inherit setuptools

PACKAGE_ARCH = "${MACHINE_ARCH}"


To get dtbos and all python files on the package I need to add these lines
in my recipe:

do_install_append() {
    install -d ${D}/${nonarch_base_libdir}/firmware
    install -m 0644 ${S}/overlays/*dt* ${D}${nonarch_base_libdir}/firmware/

}

FILES_${PN} = " ${nonarch_base_libdir}/firmware/* \
                 ${exec_prefix} \


It seems not good to me and I thought that there is a better solution.
Should I have to inherit another class to achieve this?

Note: I can easly install this on target using pip install


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

/*long live rock 'n roll*/

--001a11395aaa508cbd04f132956e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div style>I&#39;m trying to create a=
 recipe for=A0Adafruit&#39;s BeagleBone IO Python Library:</div><div style>=
<a href=3D"https://github.com/adafruit/adafruit-beaglebone-io-python">https=
://github.com/adafruit/adafruit-beaglebone-io-python</a><br>

</div><div style><br></div><div style>The problem is that this python packa=
ge generates some dtbos and install them on /lib/firmware but these files w=
ere not presented on generated package.</div><div style><br></div><div styl=
e>

Here is my <a href=3D"http://python-pybbio.bb">python-pybbio.bb</a>:</div><=
div style><div><br></div></div><blockquote style=3D"margin:0px 0px 0px 40px=
;border:none;padding:0px"><div style><div style>DESCRIPTION =3D &quot;Adafr=
uit&#39;s BeagleBone IO Python Library&quot;</div>

</div><div style><div style>SECTION =3D &quot;devel/python&quot;</div></div=
><div style><div style>LICENSE =3D &quot;MIT&quot;</div></div><div style><d=
iv style>LIC_FILES_CHKSUM =3D &quot;file://README.rst;md5=3D6c89ebda10e2f2e=
fefe5e681a9a0c1f1&quot;</div>

</div><div style><div style>SRCNAME =3D &quot;pybbio&quot;</div></div><div =
style><div style><br></div></div><div style><div style><br></div></div><div=
 style><div style>COMPATIBLE_MACHINE =3D &quot;(beaglebone)&quot;</div></di=
v>

<div style><div style><br></div></div><div style><div style>SRC_URI =3D &qu=
ot;git://<a href=3D"http://github.com/adafruit/adafruit-beaglebone-io-pytho=
n;branch=3Dmaster">github.com/adafruit/adafruit-beaglebone-io-python;branch=
=3Dmaster</a>&quot;</div>

</div><div style><div style>SRCREV_pn-${PN} =3D &quot;ff6f11abe7864e8db735b=
359365a85323bff2a06&quot;</div></div><div style><div style><br></div></div>=
<div style><div style>S =3D &quot;${WORKDIR}/git&quot;</div></div><div styl=
e>

<div style><br></div></div><div style><div style>inherit setuptools</div></=
div><div style><div style><br></div></div><div style><div style>PACKAGE_ARC=
H =3D &quot;${MACHINE_ARCH}&quot;</div></div></blockquote><div style><div>

<br></div></div><div style>To get dtbos and all python files on the package=
 I need to add these lines in my recipe:</div><div style><blockquote style=
=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div style><div>do_ins=
tall_append() {</div>

<div>=A0 =A0 install -d ${D}/${nonarch_base_libdir}/firmware</div><div>=A0 =
=A0 install -m 0644 ${S}/overlays/*dt* ${D}${nonarch_base_libdir}/firmware/=
 =A0 =A0 =A0=A0</div><div>}<br></div><div><br></div><div>FILES_${PN} =3D &q=
uot; ${nonarch_base_libdir}/firmware/* \</div>

<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${exec_prefix} \</div><div><br></di=
v></div></blockquote></div><div><br></div><div style>It seems not good to m=
e and I thought that there is a better solution. Should I have to inherit a=
nother class to achieve this?</div>

<div><br></div><div style>Note: I can easly install this on target using pi=
p install</div><div><br></div><div><br clear=3D"all"><div><div dir=3D"ltr">=
<div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administ=
rador do Embarcados<br>

<a href=3D"http://www.embarcados.com.br" target=3D"_blank">www.embarcados.c=
om.br</a><br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11395aaa508cbd04f132956e--
