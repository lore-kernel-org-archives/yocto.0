Return-Path: <serkan.tuerker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62D05E00C14; Thu, 30 May 2019 12:08:37 -0700 (PDT)
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
	*      [209.85.210.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02163E00B65
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 12:08:34 -0700 (PDT)
Received: by mail-ot1-f66.google.com with SMTP id j49so6685718otc.13
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 12:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kfF6zqunccVn5ZdAPdJQSU3zkUXXph5+uqDS/QCR/lU=;
	b=FyAP6WdIZEzaur/nQH6OVJTdZb67MurgAPkfK9UPlybry6y30lKDC9tl/+26iNDD3N
	aE/cwKTiuGBg+LyyL2evbcujEXCmjyaplsKW8czGzQLzFFoSTzKkqfj29wqZaleSlLYL
	eayFouZcaRxAj6WJr1lzuhCjV9Z7gPy9qaQ5sQVMs3Zxwdk5Bl5Yu/iaqLl/yj7HvIcj
	GOSlLIqlpJgGi4ohAQF7K0EE1Xn8BC5ruyB94aFMw3/CdL6v2gUyWxfUGjwm00g9bvaU
	a0qTRjyrq2hwkfgTeyhUXEam5GlJT1Vq3JaTLPuE+ErWgpGZNN9wZE3xDbpBacKiZ+3B
	GQ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kfF6zqunccVn5ZdAPdJQSU3zkUXXph5+uqDS/QCR/lU=;
	b=DzsZHNUAjBR0OnnPE6sgGn/vkAxNV2NWrL1etGlxHlHKBJbFGHIWevvZkLaqNvdzXt
	AxYe1kPje/oLEDF476FkTfREUHd5CugsVZCREhRRWUrRN6hztd4oUXIxBeNs+18mxImZ
	iZ3vejJOAttu8KeUj00jUryfrAt0vgN4fqWZ/cG/VOhOW8/JZL4QC7SIpNX0vDbtw8Fh
	NFtGKMjPwJaZMWBqxXxdiaT3E9IeYrSk9LHm27bcMeK70FRU2+5VBPwzwZbwGzG1xs8p
	Wrb+BEZPiwZlXb3aqViQSzvGhbZyCpPHL73bXm7ikxuEnnIJgjnfMcNQ58vEpmWaeyk4
	1dEA==
X-Gm-Message-State: APjAAAUm+CH7UaP60bvBwEAI+IIJAU3GuUn+yfwYElAqrjNVr2NPgofV
	CMnKC02EqSllAWlXRyiL0ru5D1Fjt6Ecu7PcHGo=
X-Google-Smtp-Source: APXvYqwuFDv2hqEnOgMl5h9dgVj3pRDCpvf7J6qPe/XsQGgEew2wQa7yu3dkZChpPmgGbSGUPrCIqTyIzq4raF1lJJM=
X-Received: by 2002:a9d:6e1a:: with SMTP id e26mr4013091otr.188.1559243314285; 
	Thu, 30 May 2019 12:08:34 -0700 (PDT)
MIME-Version: 1.0
References: <CALEwogiTw_xO+T4-vopZGQ+6MZOC+qCdTfug4wAWLJN-saa81Q@mail.gmail.com>
	<CANNYZj8D8RjHcJV4bLsVQDEPkSdhiYU7vyWWZUAP+J-ZpNwN+g@mail.gmail.com>
In-Reply-To: <CANNYZj8D8RjHcJV4bLsVQDEPkSdhiYU7vyWWZUAP+J-ZpNwN+g@mail.gmail.com>
From: =?UTF-8?Q?Serkan_T=C3=BCrker?= <serkan.tuerker@gmail.com>
Date: Thu, 30 May 2019 12:08:23 -0700
Message-ID: <CALEwogg926iAfj+nyYJPJd92f3ByBi0+0uS8Uvof4DeB5Kpniw@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
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
X-List-Received-Date: Thu, 30 May 2019 19:08:37 -0000
Content-Type: multipart/alternative; boundary="000000000000ddd30a058a1f9fd7"

--000000000000ddd30a058a1f9fd7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

thank you for the quick reply. Doing the ./configure part on the host
machine for host (basically, compiling tizonia on Ubuntu) works fine, there
it can find the soundcloud module. I just don't understand where autotools
(during bitbake) is looking for the soundcloud module and what I have to do
to make it work.

Cheers,
Serkan

On Thu, May 30, 2019 at 11:46 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> This is really an autotools question, not a yocto question. Specifically,
> what happens at this point?
> *| checking python module: soundcloud... no*
>
> Quite likely, the autotools script runs native python and asks it to
> import soundcloud, which fails. You need a different approach, maybe
> checking for the module file in the target sysroot.
>
> Also, do not use python 2.7. All upstream support for it ends in 6 months=
.
>
> Alex
>
> On Thu, 30 May 2019 at 04:37, Serkan T=C3=BCrker <serkan.tuerker@gmail.co=
m>
> wrote:
>
>> Hi all,
>>
>> I am trying to write a bitbake file for a project. The project uses
>> autotools for configuring the project before building it.
>> While configuring it, it searches for several python modules, where some
>> of them are custom modules I wrote the bitbake recipe for.
>> Even though the python module builds and installs correctly to the
>> sysroot directory, it is not found in the configure step.
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> python-soundcloud_0.5.0.bb
>>
>> *-----------------------------------------------------------------------=
------------------------------------------------*
>>
>>
>>
>>
>>
>>
>>
>>
>> *LICENSE =3D "MIT"LIC_FILES_CHKSUM =3D
>> "file://LICENSE;md5=3D31fa3a9dc818e0087893d63583d2d21a"SRC_URI[md5sum] =
=3D
>> "40c1d32afd019ed11ec1fbee3e84e31f"SRC_URI[sha256sum] =3D
>> "aad2003592cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653d5"DEPEND=
S_${PN}
>> =3D "${PYTHON_PN}-modules"PYPI_PACKAGE =3D "soundcloud"*
>>
>>
>>
>> *inherit setuptools pypiRDEPENDS_${PN} =3D "${PYTHON_PN}-modules"*
>>
>> ------------------------------------------------------------------------=
-----------------------------------------------
>>
>> *python-soundcloud is succesfully installed to
>> "BUILD/sysroots/raspberrypi3/usr/lib/python2.7/site-packages/soundcloud"=
*
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> tizonia.bb
>>
>> ------------------------------------------------------------------------=
-----------------------------------------------
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *SUMMARY =3D "Tizonia Library"DESCRIPTION =3D "Tizonia"LICENSE =3D
>> "LGPL-3.0"LIC_FILES_CHKSUM =3D
>> "file://COPYING.LESSER;md5=3De6a600fd5e1d9cbde2d983680233ad02"SRC_URI =
=3D
>> "git://github.com/tizonia/tizonia-openmax-il.git;protocol=3Dhttps
>> <http://github.com/tizonia/tizonia-openmax-il.git;protocol=3Dhttps>"SRCR=
EV =3D
>> "9004bc40b89eeafb04b28fbb2b772e47dd62fdc9"S =3D "${WORKDIR}/git"DEPENDS =
=3D
>> "mediainfo log4c python-pip python-soundcloud"*
>>
>>
>>
>>
>>
>> *inherit autotools ccache pkgconfig pythonnativeRDEPENDS_${PN} =3D
>> "libstdc++ mediainfo log4c python-soundcloud"EXTRA_OECONF +=3D "-C"*
>>
>> ------------------------------------------------------------------------=
-----------------------------------------------
>>
>> *The error message I get from bitbake:*
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *| checking for python2.7... (cached)
>> /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/bin/pyth=
on-native/python|
>> checking for a version of Python >=3D '2.1.0'... yes| checking for a ver=
sion
>> of Python >=3D '2.7'... yes| checking for the distutils Python package..=
.
>> yes| checking for Python include path...
>> -I/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/includ=
e/python2.7|
>> checking for Python library path...
>> -L/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib
>> -lpython2.7| checking for Python site-packages path...
>> /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/lib/pyth=
on2.7/site-packages|
>> checking python extra libraries... -lpthread -ldl  -lpthread -lutil -lm|
>> checking python extra linking flags... -Xlinker -export-dynamic| checkin=
g
>> consistency of all components of python development environment... yes|
>> checking python module: soundcloud... no| configure: error: failed to fi=
nd
>> required module soundcloud*
>>
>> Does somebody know what I am doing wrong? I cannot figure it out, any
>> help is appreciated!
>>
>> Cheers,
>> Serkan
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000ddd30a058a1f9fd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alexander,<div><br></div><div>thank you for the quick r=
eply. Doing the ./configure part on the host machine for host (basically, c=
ompiling tizonia on Ubuntu) works fine, there it can find the soundcloud mo=
dule. I just don&#39;t understand where autotools (during bitbake) is looki=
ng for the soundcloud module and what I have to do to make it work.</div><d=
iv><br></div><div>Cheers,</div><div>Serkan</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 30, 2019 at 11:=
46 AM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.=
kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">This is really an autoto=
ols question, not a yocto question. Specifically, what happens at this poin=
t?<div><i>| checking python module: soundcloud... no</i><br></div><div><i><=
br></i></div><div>Quite likely, the autotools script runs native python and=
 asks it to import soundcloud, which fails. You need a different approach, =
maybe checking for the module file in the target sysroot.</div><div><br></d=
iv><div>Also, do not use python 2.7. All upstream support for it ends in 6 =
months.</div><div><br></div><div>Alex</div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 30 May 2019 at 04:=
37, Serkan T=C3=BCrker &lt;<a href=3D"mailto:serkan.tuerker@gmail.com" targ=
et=3D"_blank">serkan.tuerker@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></di=
v><div>I am trying to write a bitbake file for a project. The project uses =
autotools for configuring the project before building it.</div><div>While c=
onfiguring it, it searches for several python modules, where some of them a=
re custom modules I wrote the bitbake recipe for.</div><div>Even though the=
 python module builds and installs correctly to the sysroot directory, it i=
s not found in the configure step.</div><div><br></div><div>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><a href=3D"http://python-=
soundcloud_0.5.0.bb" target=3D"_blank">python-soundcloud_0.5.0.bb</a></div>=
<div><i>-------------------------------------------------------------------=
----------------------------------------------------</i></div><div><i>LICEN=
SE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D3=
1fa3a9dc818e0087893d63583d2d21a&quot;<br><br>SRC_URI[md5sum] =3D &quot;40c1=
d32afd019ed11ec1fbee3e84e31f&quot;<br>SRC_URI[sha256sum] =3D &quot;aad20035=
92cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653d5&quot;<br><br>DEPEN=
DS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;<br><br>PYPI_PACKAGE =3D &quot=
;soundcloud&quot;</i></div><div><i><br>inherit setuptools pypi<br><br>RDEPE=
NDS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;</i></div><div>--------------=
---------------------------------------------------------------------------=
------------------------------<br></div><div><div><br></div><div><b>python-=
soundcloud is succesfully installed to &quot;BUILD/sysroots/raspberrypi3/us=
r/lib/python2.7/site-packages/soundcloud&quot;</b></div><div><br></div><div=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div><a =
href=3D"http://tizonia.bb" target=3D"_blank">tizonia.bb</a></div><div>-----=
---------------------------------------------------------------------------=
---------------------------------------</div></div><div><i>SUMMARY =3D &quo=
t;Tizonia Library&quot;<br>DESCRIPTION =3D &quot;Tizonia&quot;<br>LICENSE =
=3D &quot;LGPL-3.0&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING.LESSE=
R;md5=3De6a600fd5e1d9cbde2d983680233ad02&quot;<br><br>SRC_URI =3D &quot;git=
://<a href=3D"http://github.com/tizonia/tizonia-openmax-il.git;protocol=3Dh=
ttps" target=3D"_blank">github.com/tizonia/tizonia-openmax-il.git;protocol=
=3Dhttps</a>&quot;<br>SRCREV =3D &quot;9004bc40b89eeafb04b28fbb2b772e47dd62=
fdc9&quot;<br><br>S =3D &quot;${WORKDIR}/git&quot;<br><br>DEPENDS =3D &quot=
;mediainfo log4c python-pip python-soundcloud&quot;</i></div><div><i><br>in=
herit autotools ccache pkgconfig pythonnative<br><br>RDEPENDS_${PN} =3D &qu=
ot;libstdc++ mediainfo log4c python-soundcloud&quot;<br><br>EXTRA_OECONF +=
=3D &quot;-C&quot;</i><br></div><div>--------------------------------------=
---------------------------------------------------------------------------=
------<br></div><div><br></div><div><b>The error message I get from bitbake=
:</b></div><div><i><br></i></div><div><i>| checking for python2.7... (cache=
d) /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/bin/pyth=
on-native/python<br>| checking for a version of Python &gt;=3D &#39;2.1.0&#=
39;... yes<br>| checking for a version of Python &gt;=3D &#39;2.7&#39;... y=
es<br>| checking for the distutils Python package... yes<br>| checking for =
Python include path... -I/home/developer/build-webos-ose/BUILD/sysroots/ras=
pberrypi3/usr/include/python2.7<br>| checking for Python library path... -L=
/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib -lpytho=
n2.7<br>| checking for Python site-packages path... /home/developer/build-w=
ebos-ose/BUILD/sysroots/x86_64-linux/usr/lib/python2.7/site-packages<br>| c=
hecking python extra libraries... -lpthread -ldl =C2=A0-lpthread -lutil -lm=
<br>| checking python extra linking flags... -Xlinker -export-dynamic<br>| =
checking consistency of all components of python development environment...=
 yes<br>| checking python module: soundcloud... no<br>| configure: error: f=
ailed to find required module soundcloud</i><br></div><div><br></div><div>D=
oes somebody know what I am doing wrong? I cannot figure it out, any help i=
s appreciated!</div><div><br></div><div>Cheers,</div><div>Serkan=C2=A0</div=
></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</blockquote></div>

--000000000000ddd30a058a1f9fd7--
