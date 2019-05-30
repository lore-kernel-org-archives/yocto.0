Return-Path: <serkan.tuerker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52676E00D4E; Wed, 29 May 2019 19:37:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (serkan.tuerker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDDCEE00D47
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 19:37:11 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id b20so205059oie.12
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 19:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1FT+TPhDgZzC4lYOuFw0TPAMzf27oj3v3SakfeOy0iM=;
	b=RY/r1yv8DzCsenF3oKuLeKD7tzMo4ViIXr7XMa1QO00ONp8SyNRcWVhH1sDdsvMJ4A
	Kwq/ZUZ6ypaZ6j3GHrBIZla8cBQpX1ISHCQ39y6r6GNgwpVs0e4Z7dcDzyVm5ziEkKWt
	qVvqxBxGPGCCo7krAfwxGu/4RNqdruKLV8t4hXDvQ9CXgciCYjQd5C0R9KVOtlgPZ6iW
	aYnbHTqrQwoTAUl/YoevEgwOWIG7OUxPHzy/gGdUc3hT3WJG2OD6D8Pw0cNxeUVY3cfX
	I1N7DXbWqmDmaLAIZ1CNcLbq6bEXk5d/mMCeHtb4o2BZeCAPB7VgS8vR7/ry8XSrpwTf
	R2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1FT+TPhDgZzC4lYOuFw0TPAMzf27oj3v3SakfeOy0iM=;
	b=QRFvApJagVl+7oP07PpEhseXYVVkiZkglRfRpDJWC/n8NbGCZSrNvCs0BqC2On+oK0
	GCjNIihmkbVujVsor0XtHmpXbYBqRslauMWTvQo4ySFPzjX50BQlJ48AhteotZou2q/R
	i8CEBW1FpioQyQNK2A12iM3Vb2ZwLqfJhh1gWigu3YF1DpvFekpTIoS0nHgc/ozXJOt/
	Sd3KxO4hLEgqWCTft9i7oWaGS31Gg4LtjLb0VgnNI/rLzlFFJPNlA1UVqvGbePARP1mR
	lWAmvwWdDbS0eYlDNUVdKFKB32T+k/VJGMT7GxFqQ6eSOeBvGpzu6YhFWSTFF/kxe9st
	Yf7w==
X-Gm-Message-State: APjAAAUeB3+1xFl5NtjLccpWxd+X1Zzh6gOCHCuKllYY5tj1AJULIk5q
	scli4/Ab6dHcLazB/cuQkSvlxO+B+7ppHtO1eMySwDtq544=
X-Google-Smtp-Source: APXvYqwL8SxFqVFue9fPflvcG0QC8z4k8wdelJHy+IhwOWf+t3g5TtZP5m7rxMR/qr4l5rAkH9jKMH/MT0/CKYylHsY=
X-Received: by 2002:aca:f582:: with SMTP id t124mr1065206oih.56.1559183830802; 
	Wed, 29 May 2019 19:37:10 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Serkan_T=C3=BCrker?= <serkan.tuerker@gmail.com>
Date: Wed, 29 May 2019 19:37:00 -0700
Message-ID: <CALEwogiTw_xO+T4-vopZGQ+6MZOC+qCdTfug4wAWLJN-saa81Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Python module not found when using autotools
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
X-List-Received-Date: Thu, 30 May 2019 02:37:14 -0000
Content-Type: multipart/alternative; boundary="0000000000005fe634058a11c6d3"

--0000000000005fe634058a11c6d3
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am trying to write a bitbake file for a project. The project uses
autotools for configuring the project before building it.
While configuring it, it searches for several python modules, where some of
them are custom modules I wrote the bitbake recipe for.
Even though the python module builds and installs correctly to the sysroot
directory, it is not found in the configure step.

====================================================================
python-soundcloud_0.5.0.bb
*-----------------------------------------------------------------------------------------------------------------------*








*LICENSE = "MIT"LIC_FILES_CHKSUM =
"file://LICENSE;md5=31fa3a9dc818e0087893d63583d2d21a"SRC_URI[md5sum] =
"40c1d32afd019ed11ec1fbee3e84e31f"SRC_URI[sha256sum] =
"aad2003592cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653d5"DEPENDS_${PN}
= "${PYTHON_PN}-modules"PYPI_PACKAGE = "soundcloud"*



*inherit setuptools pypiRDEPENDS_${PN} = "${PYTHON_PN}-modules"*
-----------------------------------------------------------------------------------------------------------------------

*python-soundcloud is succesfully installed to
"BUILD/sysroots/raspberrypi3/usr/lib/python2.7/site-packages/soundcloud"*

====================================================================
tizonia.bb
-----------------------------------------------------------------------------------------------------------------------










*SUMMARY = "Tizonia Library"DESCRIPTION = "Tizonia"LICENSE =
"LGPL-3.0"LIC_FILES_CHKSUM =
"file://COPYING.LESSER;md5=e6a600fd5e1d9cbde2d983680233ad02"SRC_URI =
"git://github.com/tizonia/tizonia-openmax-il.git;protocol=https
<http://github.com/tizonia/tizonia-openmax-il.git;protocol=https>"SRCREV =
"9004bc40b89eeafb04b28fbb2b772e47dd62fdc9"S = "${WORKDIR}/git"DEPENDS =
"mediainfo log4c python-pip python-soundcloud"*





*inherit autotools ccache pkgconfig pythonnativeRDEPENDS_${PN} = "libstdc++
mediainfo log4c python-soundcloud"EXTRA_OECONF += "-C"*
-----------------------------------------------------------------------------------------------------------------------

*The error message I get from bitbake:*












*| checking for python2.7... (cached)
/home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/bin/python-native/python|
checking for a version of Python >= '2.1.0'... yes| checking for a version
of Python >= '2.7'... yes| checking for the distutils Python package...
yes| checking for Python include path...
-I/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/include/python2.7|
checking for Python library path...
-L/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib
-lpython2.7| checking for Python site-packages path...
/home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/lib/python2.7/site-packages|
checking python extra libraries... -lpthread -ldl  -lpthread -lutil -lm|
checking python extra linking flags... -Xlinker -export-dynamic| checking
consistency of all components of python development environment... yes|
checking python module: soundcloud... no| configure: error: failed to find
required module soundcloud*

Does somebody know what I am doing wrong? I cannot figure it out, any help
is appreciated!

Cheers,
Serkan

--0000000000005fe634058a11c6d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am trying to write a bitbake =
file for a project. The project uses autotools for configuring the project =
before building it.</div><div>While configuring it, it searches for several=
 python modules, where some of them are custom modules I wrote the bitbake =
recipe for.</div><div>Even though the python module builds and installs cor=
rectly to the sysroot directory, it is not found in the configure step.</di=
v><div><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div><div><a href=3D"http://python-soundcloud_0.5.0.bb">python-soundclo=
ud_0.5.0.bb</a></div><div><i>----------------------------------------------=
-------------------------------------------------------------------------</=
i></div><div><i>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;f=
ile://LICENSE;md5=3D31fa3a9dc818e0087893d63583d2d21a&quot;<br><br>SRC_URI[m=
d5sum] =3D &quot;40c1d32afd019ed11ec1fbee3e84e31f&quot;<br>SRC_URI[sha256su=
m] =3D &quot;aad2003592cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653=
d5&quot;<br><br>DEPENDS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;<br><br>P=
YPI_PACKAGE =3D &quot;soundcloud&quot;</i></div><div><i><br>inherit setupto=
ols pypi<br><br>RDEPENDS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;</i></di=
v><div>--------------------------------------------------------------------=
---------------------------------------------------<br></div><div><div><br>=
</div><div><b>python-soundcloud is succesfully installed to &quot;BUILD/sys=
roots/raspberrypi3/usr/lib/python2.7/site-packages/soundcloud&quot;</b></di=
v><div><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br></div><div><a href=3D"http://tizonia.bb">tizonia.bb</a></div><div>--=
---------------------------------------------------------------------------=
------------------------------------------</div></div><div><i>SUMMARY =3D &=
quot;Tizonia Library&quot;<br>DESCRIPTION =3D &quot;Tizonia&quot;<br>LICENS=
E =3D &quot;LGPL-3.0&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING.LES=
SER;md5=3De6a600fd5e1d9cbde2d983680233ad02&quot;<br><br>SRC_URI =3D &quot;g=
it://<a href=3D"http://github.com/tizonia/tizonia-openmax-il.git;protocol=
=3Dhttps">github.com/tizonia/tizonia-openmax-il.git;protocol=3Dhttps</a>&qu=
ot;<br>SRCREV =3D &quot;9004bc40b89eeafb04b28fbb2b772e47dd62fdc9&quot;<br><=
br>S =3D &quot;${WORKDIR}/git&quot;<br><br>DEPENDS =3D &quot;mediainfo log4=
c python-pip python-soundcloud&quot;</i></div><div><i><br>inherit autotools=
 ccache pkgconfig pythonnative<br><br>RDEPENDS_${PN} =3D &quot;libstdc++ me=
diainfo log4c python-soundcloud&quot;<br><br>EXTRA_OECONF +=3D &quot;-C&quo=
t;</i><br></div><div>------------------------------------------------------=
-----------------------------------------------------------------<br></div>=
<div><br></div><div><b>The error message I get from bitbake:</b></div><div>=
<i><br></i></div><div><i>| checking for python2.7... (cached) /home/develop=
er/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/bin/python-native/python=
<br>| checking for a version of Python &gt;=3D &#39;2.1.0&#39;... yes<br>| =
checking for a version of Python &gt;=3D &#39;2.7&#39;... yes<br>| checking=
 for the distutils Python package... yes<br>| checking for Python include p=
ath... -I/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/in=
clude/python2.7<br>| checking for Python library path... -L/home/developer/=
build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib -lpython2.7<br>| checki=
ng for Python site-packages path... /home/developer/build-webos-ose/BUILD/s=
ysroots/x86_64-linux/usr/lib/python2.7/site-packages<br>| checking python e=
xtra libraries... -lpthread -ldl =C2=A0-lpthread -lutil -lm<br>| checking p=
ython extra linking flags... -Xlinker -export-dynamic<br>| checking consist=
ency of all components of python development environment... yes<br>| checki=
ng python module: soundcloud... no<br>| configure: error: failed to find re=
quired module soundcloud</i><br></div><div><br></div><div>Does somebody kno=
w what I am doing wrong? I cannot figure it out, any help is appreciated!</=
div><div><br></div><div>Cheers,</div><div>Serkan=C2=A0</div></div>

--0000000000005fe634058a11c6d3--
