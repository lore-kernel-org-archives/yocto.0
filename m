Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E6DCE00B65; Thu, 30 May 2019 11:46:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E7A2E0049C
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 11:46:41 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id y124so5788058oiy.3
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 11:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/4nOT9gh9e1C8gNo4MZTBLloIDG8I1jy0t7Rj2VH9dk=;
	b=rnKBUQujzzbQdEkUME/4ZKOty2ko09qci+UTVElYSMvVICjjw8NuqULluRdqtcfvS6
	Sz9odL/14hLd/H6e0xxD/nc8EShiL8pO2QskbbubkJ/qrCkZDvxd1mRTMHJXqBt/VvlU
	Uk/LJy8f76vY0DncjI5xfa9aqo+LTmAo4LO2DKQwS7IoIEDJm8iDsdS6dNCZKPQaNlBN
	k8HRD414MaJ/P0g02irAO3oZJMOXejSg0odvaQmXiWnbUxGFeg5gdWdOIe23yLvU6Ex5
	3rjyLe7Vr6sv/DhEwYXEmdhqp4RxyTzU5Emv6Lxe5b4tx7KgeHywgNHNLCD3KlzR0LuE
	Ic1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/4nOT9gh9e1C8gNo4MZTBLloIDG8I1jy0t7Rj2VH9dk=;
	b=XMLoieN7yqg+FacRY1/575jgQetbxKD2ibD2VzFMkwWk2gQnvA1USZkY2znyDYrw2U
	MhhMzTTko3WSU9bpbfEoiXHkyz40dZPesYCxsXDgH+0FRDeYRrI2RRMfJxbjsorgc9IO
	iDk/IRMjHvabol3DV4MzbaBCUzFyry8ETloXUfwqwrGplHGloKABjm0hwPDL6SBT/L7D
	XEu2b+WyMy64d/K/4c7KvJ5PFL2mIoEPLJXf2MuQWdkC3ie37nYoiz36i2/mErCugdK6
	PWv48lZxA+KjuvUjBUiClThLcUALuhlJ8tiep3cE9n6sUqEUMfLu3zWbQO6knyKa+Kei
	ifwg==
X-Gm-Message-State: APjAAAUuLixzTW7GGI+1aH1qJmBYlHp6fD5haNoDwCzuxHB6fnD0TkyK
	7pKZmGirdj+4N9n8cckwBiNgEwcu8gE4WnE6vfo=
X-Google-Smtp-Source: APXvYqzuJgKIuX/TenvtMjxuDJnsnKRIYdcoHfnREytq27TPo9OedQvAuOZrU4DgQIuguzkuZg+ZgHFbzdgKFatd+pk=
X-Received: by 2002:aca:6087:: with SMTP id u129mr3343058oib.70.1559242000702; 
	Thu, 30 May 2019 11:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <CALEwogiTw_xO+T4-vopZGQ+6MZOC+qCdTfug4wAWLJN-saa81Q@mail.gmail.com>
In-Reply-To: <CALEwogiTw_xO+T4-vopZGQ+6MZOC+qCdTfug4wAWLJN-saa81Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 30 May 2019 20:46:29 +0200
Message-ID: <CANNYZj8D8RjHcJV4bLsVQDEPkSdhiYU7vyWWZUAP+J-ZpNwN+g@mail.gmail.com>
To: =?UTF-8?Q?Serkan_T=C3=BCrker?= <serkan.tuerker@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Python module not found when using autotools
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
X-List-Received-Date: Thu, 30 May 2019 18:46:42 -0000
Content-Type: multipart/alternative; boundary="00000000000092209d058a1f51dc"

--00000000000092209d058a1f51dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is really an autotools question, not a yocto question. Specifically,
what happens at this point?
*| checking python module: soundcloud... no*

Quite likely, the autotools script runs native python and asks it to import
soundcloud, which fails. You need a different approach, maybe checking for
the module file in the target sysroot.

Also, do not use python 2.7. All upstream support for it ends in 6 months.

Alex

On Thu, 30 May 2019 at 04:37, Serkan T=C3=BCrker <serkan.tuerker@gmail.com>
wrote:

> Hi all,
>
> I am trying to write a bitbake file for a project. The project uses
> autotools for configuring the project before building it.
> While configuring it, it searches for several python modules, where some
> of them are custom modules I wrote the bitbake recipe for.
> Even though the python module builds and installs correctly to the sysroo=
t
> directory, it is not found in the configure step.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> python-soundcloud_0.5.0.bb
>
> *------------------------------------------------------------------------=
-----------------------------------------------*
>
>
>
>
>
>
>
>
> *LICENSE =3D "MIT"LIC_FILES_CHKSUM =3D
> "file://LICENSE;md5=3D31fa3a9dc818e0087893d63583d2d21a"SRC_URI[md5sum] =
=3D
> "40c1d32afd019ed11ec1fbee3e84e31f"SRC_URI[sha256sum] =3D
> "aad2003592cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653d5"DEPENDS=
_${PN}
> =3D "${PYTHON_PN}-modules"PYPI_PACKAGE =3D "soundcloud"*
>
>
>
> *inherit setuptools pypiRDEPENDS_${PN} =3D "${PYTHON_PN}-modules"*
>
> -------------------------------------------------------------------------=
----------------------------------------------
>
> *python-soundcloud is succesfully installed to
> "BUILD/sysroots/raspberrypi3/usr/lib/python2.7/site-packages/soundcloud"*
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> tizonia.bb
>
> -------------------------------------------------------------------------=
----------------------------------------------
>
>
>
>
>
>
>
>
>
>
> *SUMMARY =3D "Tizonia Library"DESCRIPTION =3D "Tizonia"LICENSE =3D
> "LGPL-3.0"LIC_FILES_CHKSUM =3D
> "file://COPYING.LESSER;md5=3De6a600fd5e1d9cbde2d983680233ad02"SRC_URI =3D
> "git://github.com/tizonia/tizonia-openmax-il.git;protocol=3Dhttps
> <http://github.com/tizonia/tizonia-openmax-il.git;protocol=3Dhttps>"SRCRE=
V =3D
> "9004bc40b89eeafb04b28fbb2b772e47dd62fdc9"S =3D "${WORKDIR}/git"DEPENDS =
=3D
> "mediainfo log4c python-pip python-soundcloud"*
>
>
>
>
>
> *inherit autotools ccache pkgconfig pythonnativeRDEPENDS_${PN} =3D
> "libstdc++ mediainfo log4c python-soundcloud"EXTRA_OECONF +=3D "-C"*
>
> -------------------------------------------------------------------------=
----------------------------------------------
>
> *The error message I get from bitbake:*
>
>
>
>
>
>
>
>
>
>
>
>
> *| checking for python2.7... (cached)
> /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/bin/pytho=
n-native/python|
> checking for a version of Python >=3D '2.1.0'... yes| checking for a vers=
ion
> of Python >=3D '2.7'... yes| checking for the distutils Python package...
> yes| checking for Python include path...
> -I/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/include=
/python2.7|
> checking for Python library path...
> -L/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib
> -lpython2.7| checking for Python site-packages path...
> /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/lib/pytho=
n2.7/site-packages|
> checking python extra libraries... -lpthread -ldl  -lpthread -lutil -lm|
> checking python extra linking flags... -Xlinker -export-dynamic| checking
> consistency of all components of python development environment... yes|
> checking python module: soundcloud... no| configure: error: failed to fin=
d
> required module soundcloud*
>
> Does somebody know what I am doing wrong? I cannot figure it out, any hel=
p
> is appreciated!
>
> Cheers,
> Serkan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000092209d058a1f51dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">This is really an autotools question, not=
 a yocto question. Specifically, what happens at this point?<div><i>| check=
ing python module: soundcloud... no</i><br></div><div><i><br></i></div><div=
>Quite likely, the autotools script runs native python and asks it to impor=
t soundcloud, which fails. You need a different approach, maybe checking fo=
r the module file in the target sysroot.</div><div><br></div><div>Also, do =
not use python 2.7. All upstream support for it ends in 6 months.</div><div=
><br></div><div>Alex</div></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, 30 May 2019 at 04:37, Serkan T=C3=
=BCrker &lt;<a href=3D"mailto:serkan.tuerker@gmail.com">serkan.tuerker@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border=
-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div=
><br></div><div>I am trying to write a bitbake file for a project. The proj=
ect uses autotools for configuring the project before building it.</div><di=
v>While configuring it, it searches for several python modules, where some =
of them are custom modules I wrote the bitbake recipe for.</div><div>Even t=
hough the python module builds and installs correctly to the sysroot direct=
ory, it is not found in the configure step.</div><div><br></div><div>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><a href=3D"http:=
//python-soundcloud_0.5.0.bb" target=3D"_blank">python-soundcloud_0.5.0.bb<=
/a></div><div><i>----------------------------------------------------------=
-------------------------------------------------------------</i></div><div=
><i>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://LICENS=
E;md5=3D31fa3a9dc818e0087893d63583d2d21a&quot;<br><br>SRC_URI[md5sum] =3D &=
quot;40c1d32afd019ed11ec1fbee3e84e31f&quot;<br>SRC_URI[sha256sum] =3D &quot=
;aad2003592cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653d5&quot;<br>=
<br>DEPENDS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;<br><br>PYPI_PACKAGE =
=3D &quot;soundcloud&quot;</i></div><div><i><br>inherit setuptools pypi<br>=
<br>RDEPENDS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;</i></div><div>-----=
---------------------------------------------------------------------------=
---------------------------------------<br></div><div><div><br></div><div><=
b>python-soundcloud is succesfully installed to &quot;BUILD/sysroots/raspbe=
rrypi3/usr/lib/python2.7/site-packages/soundcloud&quot;</b></div><div><br><=
/div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div=
><div><a href=3D"http://tizonia.bb" target=3D"_blank">tizonia.bb</a></div><=
div>-----------------------------------------------------------------------=
------------------------------------------------</div></div><div><i>SUMMARY=
 =3D &quot;Tizonia Library&quot;<br>DESCRIPTION =3D &quot;Tizonia&quot;<br>=
LICENSE =3D &quot;LGPL-3.0&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYI=
NG.LESSER;md5=3De6a600fd5e1d9cbde2d983680233ad02&quot;<br><br>SRC_URI =3D &=
quot;git://<a href=3D"http://github.com/tizonia/tizonia-openmax-il.git;prot=
ocol=3Dhttps" target=3D"_blank">github.com/tizonia/tizonia-openmax-il.git;p=
rotocol=3Dhttps</a>&quot;<br>SRCREV =3D &quot;9004bc40b89eeafb04b28fbb2b772=
e47dd62fdc9&quot;<br><br>S =3D &quot;${WORKDIR}/git&quot;<br><br>DEPENDS =
=3D &quot;mediainfo log4c python-pip python-soundcloud&quot;</i></div><div>=
<i><br>inherit autotools ccache pkgconfig pythonnative<br><br>RDEPENDS_${PN=
} =3D &quot;libstdc++ mediainfo log4c python-soundcloud&quot;<br><br>EXTRA_=
OECONF +=3D &quot;-C&quot;</i><br></div><div>------------------------------=
---------------------------------------------------------------------------=
--------------<br></div><div><br></div><div><b>The error message I get from=
 bitbake:</b></div><div><i><br></i></div><div><i>| checking for python2.7..=
. (cached) /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/=
bin/python-native/python<br>| checking for a version of Python &gt;=3D &#39=
;2.1.0&#39;... yes<br>| checking for a version of Python &gt;=3D &#39;2.7&#=
39;... yes<br>| checking for the distutils Python package... yes<br>| check=
ing for Python include path... -I/home/developer/build-webos-ose/BUILD/sysr=
oots/raspberrypi3/usr/include/python2.7<br>| checking for Python library pa=
th... -L/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib=
 -lpython2.7<br>| checking for Python site-packages path... /home/developer=
/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/lib/python2.7/site-package=
s<br>| checking python extra libraries... -lpthread -ldl =C2=A0-lpthread -l=
util -lm<br>| checking python extra linking flags... -Xlinker -export-dynam=
ic<br>| checking consistency of all components of python development enviro=
nment... yes<br>| checking python module: soundcloud... no<br>| configure: =
error: failed to find required module soundcloud</i><br></div><div><br></di=
v><div>Does somebody know what I am doing wrong? I cannot figure it out, an=
y help is appreciated!</div><div><br></div><div>Cheers,</div><div>Serkan=C2=
=A0</div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000092209d058a1f51dc--
