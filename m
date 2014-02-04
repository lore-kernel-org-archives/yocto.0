Return-Path: <diego.sueiro@gmail.com>
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68D4EE0030B
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 02:05:44 -0800 (PST)
Received: by mail-qc0-f171.google.com with SMTP id n7so13068846qcx.2
	for <yocto@yoctoproject.org>; Tue, 04 Feb 2014 02:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=lYB9VfF9h6zuY+LNSBSQm91DlnoHWQ0O2l1y5UdfLlE=;
	b=VHXbTMQdrOd3Wr1YvhluLVzCDHM3cgnV1tD/DuCie/1/16WlDjto/Su3NX8XCB/QUN
	vNat6exZUJxzp/4DrQfRSj+aLvY0YU5rTzAjw1xK79pO2FzXIHcnrKqZTD5/CqcehVfp
	kzXJoJlchvbhuNWUerZ/9gT5o8Rim75yAtQ6TeFhkrSJqox5C1cqFkgt41B6PPb738g/
	Ot2RfdTSemY1Llg3ZSBQu5D3bHv16fuH1aQUxHsyLXx1Ls+v9wwRnfz9RDFTHCX+ds9H
	2yumVkn7Zp7wBcQw+lDp6CI04b14VauuvmQ0qmScRyLUdLB3njOIl8Kmq/j/bABge0Ol
	ky6g==
X-Received: by 10.224.151.147 with SMTP id c19mr64312274qaw.86.1391508344073; 
	Tue, 04 Feb 2014 02:05:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.25.47 with HTTP; Tue, 4 Feb 2014 02:05:23 -0800 (PST)
In-Reply-To: <CAMCfZKGN2k1NpUtGiMGK48pi5rzaZQbXrnfPbiL=brGhr4vnxw@mail.gmail.com>
References: <CAMCfZKGN2k1NpUtGiMGK48pi5rzaZQbXrnfPbiL=brGhr4vnxw@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 4 Feb 2014 08:05:23 -0200
Message-ID: <CAMCfZKFYTE=oRsXWwRzKNKpvZdPZe8GEby+rB0BY6qCeffWdZw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python package recipe
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
X-List-Received-Date: Tue, 04 Feb 2014 10:05:46 -0000
Content-Type: multipart/alternative; boundary=089e0153673e8cf3d404f191c81d

--089e0153673e8cf3d404f191c81d
Content-Type: text/plain; charset=ISO-8859-1

Folks,

Any suggestions?

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

/*long live rock 'n roll*/


On Thu, Jan 30, 2014 at 2:30 PM, Diego Sueiro <diego.sueiro@gmail.com>wrote:

> Folks,
>
> I'm trying to create a recipe for Adafruit's BeagleBone IO Python Library:
> https://github.com/adafruit/adafruit-beaglebone-io-python
>
> The problem is that this python package generates some dtbos and install
> them on /lib/firmware but these files were not presented on generated
> package.
>
> Here is my python-pybbio.bb:
>
> DESCRIPTION = "Adafruit's BeagleBone IO Python Library"
> SECTION = "devel/python"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://README.rst;md5=6c89ebda10e2f2efefe5e681a9a0c1f1"
> SRCNAME = "pybbio"
>
>
> COMPATIBLE_MACHINE = "(beaglebone)"
>
> SRC_URI = "git://
> github.com/adafruit/adafruit-beaglebone-io-python;branch=master"
> SRCREV_pn-${PN} = "ff6f11abe7864e8db735b359365a85323bff2a06"
>
> S = "${WORKDIR}/git"
>
> inherit setuptools
>
> PACKAGE_ARCH = "${MACHINE_ARCH}"
>
>
> To get dtbos and all python files on the package I need to add these lines
> in my recipe:
>
> do_install_append() {
>     install -d ${D}/${nonarch_base_libdir}/firmware
>     install -m 0644 ${S}/overlays/*dt*
> ${D}${nonarch_base_libdir}/firmware/
> }
>
> FILES_${PN} = " ${nonarch_base_libdir}/firmware/* \
>                  ${exec_prefix} \
>
>
> It seems not good to me and I thought that there is a better solution.
> Should I have to inherit another class to achieve this?
>
> Note: I can easly install this on target using pip install
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
>
> /*long live rock 'n roll*/
>

--089e0153673e8cf3d404f191c81d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>Folks,</div><div style><br></div>Any suggestion=
s?<div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div>R=
egards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador =
do Embarcados<br>

<a href=3D"http://www.embarcados.com.br" target=3D"_blank">www.embarcados.c=
om.br</a><br><br>/*long live rock &#39;n roll*/<br></div></div>
<br><br><div class=3D"gmail_quote">On Thu, Jan 30, 2014 at 2:30 PM, Diego S=
ueiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" targe=
t=3D"_blank">diego.sueiro@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">

<div dir=3D"ltr">Folks,<div><br></div><div>I&#39;m trying to create a recip=
e for=A0Adafruit&#39;s BeagleBone IO Python Library:</div><div><a href=3D"h=
ttps://github.com/adafruit/adafruit-beaglebone-io-python" target=3D"_blank"=
>https://github.com/adafruit/adafruit-beaglebone-io-python</a><br>


</div><div><br></div><div>The problem is that this python package generates=
 some dtbos and install them on /lib/firmware but these files were not pres=
ented on generated package.</div><div><br></div><div>
Here is my <a href=3D"http://python-pybbio.bb" target=3D"_blank">python-pyb=
bio.bb</a>:</div><div><div><br></div></div><blockquote style=3D"margin:0px =
0px 0px 40px;border:none;padding:0px"><div><div>DESCRIPTION =3D &quot;Adafr=
uit&#39;s BeagleBone IO Python Library&quot;</div>


</div><div><div>SECTION =3D &quot;devel/python&quot;</div></div><div><div>L=
ICENSE =3D &quot;MIT&quot;</div></div><div><div>LIC_FILES_CHKSUM =3D &quot;=
file://README.rst;md5=3D6c89ebda10e2f2efefe5e681a9a0c1f1&quot;</div>
</div><div><div>SRCNAME =3D &quot;pybbio&quot;</div></div><div><div><br></d=
iv></div><div><div><br></div></div><div><div>COMPATIBLE_MACHINE =3D &quot;(=
beaglebone)&quot;</div></div>
<div><div><br></div></div><div><div>SRC_URI =3D &quot;git://<a href=3D"http=
://github.com/adafruit/adafruit-beaglebone-io-python;branch=3Dmaster" targe=
t=3D"_blank">github.com/adafruit/adafruit-beaglebone-io-python;branch=3Dmas=
ter</a>&quot;</div>


</div><div><div>SRCREV_pn-${PN} =3D &quot;ff6f11abe7864e8db735b359365a85323=
bff2a06&quot;</div></div><div><div><br></div></div><div><div>S =3D &quot;${=
WORKDIR}/git&quot;</div></div><div>
<div><br></div></div><div><div>inherit setuptools</div></div><div><div><br>=
</div></div><div><div>PACKAGE_ARCH =3D &quot;${MACHINE_ARCH}&quot;</div></d=
iv></blockquote><div><div>
<br></div></div><div>To get dtbos and all python files on the package I nee=
d to add these lines in my recipe:</div><div><blockquote style=3D"margin:0p=
x 0px 0px 40px;border:none;padding:0px"><div><div>do_install_append() {</di=
v>


<div>=A0 =A0 install -d ${D}/${nonarch_base_libdir}/firmware</div><div>=A0 =
=A0 install -m 0644 ${S}/overlays/*dt* ${D}${nonarch_base_libdir}/firmware/=
 =A0 =A0 =A0=A0</div><div>}<br></div><div><br></div><div>FILES_${PN} =3D &q=
uot; ${nonarch_base_libdir}/firmware/* \</div>


<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0${exec_prefix} \</div><div><br></di=
v></div></blockquote></div><div><br></div><div>It seems not good to me and =
I thought that there is a better solution. Should I have to inherit another=
 class to achieve this?</div>


<div><br></div><div>Note: I can easly install this on target using pip inst=
all</div><div><br></div><div><br clear=3D"all"><div><div dir=3D"ltr"><div>R=
egards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador =
do Embarcados<br>


<a href=3D"http://www.embarcados.com.br" target=3D"_blank">www.embarcados.c=
om.br</a><br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>
</blockquote></div><br></div></div>

--089e0153673e8cf3d404f191c81d--
