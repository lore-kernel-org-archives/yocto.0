Return-Path: <serkan.tuerker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6612E00B65; Thu, 30 May 2019 13:26:13 -0700 (PDT)
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
	*      [209.85.167.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B01BE00B65
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 13:26:10 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id v25so5437714oic.9
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 13:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ejcbIh1yv4/Y4aR5WhA7ydym24nIJUv8R9hmeOcJewg=;
	b=bNlhSzNWtar3eIZkPn2hMLb3y2bsckT5jUhlWm9nsQSWK1Zvf+97kAaJ7YO5esbDmh
	Xb7tDGbYeeIS1vr6ecmQ9iCTL5xZyRybZ4QErBNF+RHOmJ8UMWKO9PBlQknWhbZjZP2n
	BeHljK5s2Ecl1QBOWOq3PR/+Uit8ykRjLPRmLtitSmAJJOMlFCParmeBOR6k3Tpu+16s
	OqIXxKOFvBRN0Xu3syB7nF+fzXe9ciAcp4gCl0BhydMRRrp97ZBAgOKM31rBY7a+fKxn
	Q/yoUZwgE/hZ6Cn9zz/1jLnmmLGU0lfspyiAlZ7erNU22Tre0t2gxW5jbO+o9SfBEpjR
	iGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ejcbIh1yv4/Y4aR5WhA7ydym24nIJUv8R9hmeOcJewg=;
	b=DhwgZi/zYfOzz57XFNp0M6EjTwjSBu8iSjwbSSWQqy/Y3fKVbJQG6VmolokoP4psBk
	8XiFih6ReukN3lVEs2Qrqjp6k8BIb1FoYMPnm/qD83B0H9a0nQ/9wVsDJspQCzdcfqi/
	JicJRFlCVXFlGJEKImyuQDtYk58DGATFrc/R1XKhdGObJTwEvl2cL+wCLPvsncLTMwx9
	CZ+HgS/Ppcsf350qojUeznhJSzsoF7d33K8KB7R3+hvwx0FD3PrBbAO5nVRLvGQm8xiZ
	Rv5OtDVDJ24/5fvIKeAY8EvDvtRJlEAQKRwMEkpEJpZfa8CWOUYw+ZSqank7rlRP7Bdj
	XP5A==
X-Gm-Message-State: APjAAAUVJAVJCfKJzLK/Hm/eI6aBML3fgF8oA2ja7u1zuSbETCcEe0Oe
	3POZ3bnCuVBbDWNUDJtrvK/F7GWhFXCwayRkGVh01oIw
X-Google-Smtp-Source: APXvYqxu3CaqFnrBdAFB7bDu7f4FEW8yvVpBDAQSTXX45LpYbQSZ49Ycwc2CFaLi7dSOTv1J6dwcJvwiNLytxgTfJVQ=
X-Received: by 2002:aca:f582:: with SMTP id t124mr4079988oih.56.1559247969726; 
	Thu, 30 May 2019 13:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <CALEwogiTw_xO+T4-vopZGQ+6MZOC+qCdTfug4wAWLJN-saa81Q@mail.gmail.com>
	<CANNYZj8D8RjHcJV4bLsVQDEPkSdhiYU7vyWWZUAP+J-ZpNwN+g@mail.gmail.com>
	<CALEwogg926iAfj+nyYJPJd92f3ByBi0+0uS8Uvof4DeB5Kpniw@mail.gmail.com>
	<CANNYZj-Gf3Va9JXPvKpPc0=A013F-4dR=qG0YyE8VU3jnyObOw@mail.gmail.com>
In-Reply-To: <CANNYZj-Gf3Va9JXPvKpPc0=A013F-4dR=qG0YyE8VU3jnyObOw@mail.gmail.com>
From: =?UTF-8?Q?Serkan_T=C3=BCrker?= <serkan.tuerker@gmail.com>
Date: Thu, 30 May 2019 13:25:58 -0700
Message-ID: <CALEwogi0mA4cHV_DWDdf92NP7o6o7WpMZZJZ+OAKeC_Nsdw=Ag@mail.gmail.com>
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
X-List-Received-Date: Thu, 30 May 2019 20:26:14 -0000
Content-Type: multipart/alternative; boundary="0000000000005a3647058a20b52c"

--0000000000005a3647058a20b52c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I understand the process of debugging build failures. I am just confused
why my approach doesn't work.
"python-soundcloud.bb" has the same format like other python module recipes
in meta-oe.
In tizonia.bb, I have added "python-soundcloud" to DEPENDS, so I assumed
bitbake would resolve the necessary path's, which are necessary for the
build.
It is also not only my fault not being able to fix this, it is also largely
related to the fact, that there is not much documentation around how to
start developing with Yocto in general.

 I am gonna continue banging my head.

Cheers.

On Thu, May 30, 2019 at 12:21 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> I guess you could start by looking at configure.ac in the failing
> component's source code and specifically which m4 macro it is using to fi=
nd
> the python module, then look at the definition of that macro and what it
> does. Sadly, this kind of thing - working your way through large,
> unfamiliar code base to debug a build failure - is typical when working
> with Yocto, and is pretty much a required skill.
>
> Alex
>
> On Thu, 30 May 2019 at 21:08, Serkan T=C3=BCrker <serkan.tuerker@gmail.co=
m>
> wrote:
>
>> Hi Alexander,
>>
>> thank you for the quick reply. Doing the ./configure part on the host
>> machine for host (basically, compiling tizonia on Ubuntu) works fine, th=
ere
>> it can find the soundcloud module. I just don't understand where autotoo=
ls
>> (during bitbake) is looking for the soundcloud module and what I have to=
 do
>> to make it work.
>>
>> Cheers,
>> Serkan
>>
>> On Thu, May 30, 2019 at 11:46 AM Alexander Kanavin <
>> alex.kanavin@gmail.com> wrote:
>>
>>> This is really an autotools question, not a yocto question.
>>> Specifically, what happens at this point?
>>> *| checking python module: soundcloud... no*
>>>
>>> Quite likely, the autotools script runs native python and asks it to
>>> import soundcloud, which fails. You need a different approach, maybe
>>> checking for the module file in the target sysroot.
>>>
>>> Also, do not use python 2.7. All upstream support for it ends in 6
>>> months.
>>>
>>> Alex
>>>
>>> On Thu, 30 May 2019 at 04:37, Serkan T=C3=BCrker <serkan.tuerker@gmail.=
com>
>>> wrote:
>>>
>>>> Hi all,
>>>>
>>>> I am trying to write a bitbake file for a project. The project uses
>>>> autotools for configuring the project before building it.
>>>> While configuring it, it searches for several python modules, where
>>>> some of them are custom modules I wrote the bitbake recipe for.
>>>> Even though the python module builds and installs correctly to the
>>>> sysroot directory, it is not found in the configure step.
>>>>
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>> python-soundcloud_0.5.0.bb
>>>>
>>>> *---------------------------------------------------------------------=
--------------------------------------------------*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> *LICENSE =3D "MIT"LIC_FILES_CHKSUM =3D
>>>> "file://LICENSE;md5=3D31fa3a9dc818e0087893d63583d2d21a"SRC_URI[md5sum]=
 =3D
>>>> "40c1d32afd019ed11ec1fbee3e84e31f"SRC_URI[sha256sum] =3D
>>>> "aad2003592cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653d5"DEPE=
NDS_${PN}
>>>> =3D "${PYTHON_PN}-modules"PYPI_PACKAGE =3D "soundcloud"*
>>>>
>>>>
>>>>
>>>> *inherit setuptools pypiRDEPENDS_${PN} =3D "${PYTHON_PN}-modules"*
>>>>
>>>> ----------------------------------------------------------------------=
-------------------------------------------------
>>>>
>>>> *python-soundcloud is succesfully installed to
>>>> "BUILD/sysroots/raspberrypi3/usr/lib/python2.7/site-packages/soundclou=
d"*
>>>>
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>> tizonia.bb
>>>>
>>>> ----------------------------------------------------------------------=
-------------------------------------------------
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> *SUMMARY =3D "Tizonia Library"DESCRIPTION =3D "Tizonia"LICENSE =3D
>>>> "LGPL-3.0"LIC_FILES_CHKSUM =3D
>>>> "file://COPYING.LESSER;md5=3De6a600fd5e1d9cbde2d983680233ad02"SRC_URI =
=3D
>>>> "git://github.com/tizonia/tizonia-openmax-il.git;protocol=3Dhttps
>>>> <http://github.com/tizonia/tizonia-openmax-il.git;protocol=3Dhttps>"SR=
CREV =3D
>>>> "9004bc40b89eeafb04b28fbb2b772e47dd62fdc9"S =3D "${WORKDIR}/git"DEPEND=
S =3D
>>>> "mediainfo log4c python-pip python-soundcloud"*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> *inherit autotools ccache pkgconfig pythonnativeRDEPENDS_${PN} =3D
>>>> "libstdc++ mediainfo log4c python-soundcloud"EXTRA_OECONF +=3D "-C"*
>>>>
>>>> ----------------------------------------------------------------------=
-------------------------------------------------
>>>>
>>>> *The error message I get from bitbake:*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> *| checking for python2.7... (cached)
>>>> /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/bin/py=
thon-native/python|
>>>> checking for a version of Python >=3D '2.1.0'... yes| checking for a v=
ersion
>>>> of Python >=3D '2.7'... yes| checking for the distutils Python package=
...
>>>> yes| checking for Python include path...
>>>> -I/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/incl=
ude/python2.7|
>>>> checking for Python library path...
>>>> -L/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib
>>>> -lpython2.7| checking for Python site-packages path...
>>>> /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/lib/py=
thon2.7/site-packages|
>>>> checking python extra libraries... -lpthread -ldl  -lpthread -lutil -l=
m|
>>>> checking python extra linking flags... -Xlinker -export-dynamic| check=
ing
>>>> consistency of all components of python development environment... yes=
|
>>>> checking python module: soundcloud... no| configure: error: failed to =
find
>>>> required module soundcloud*
>>>>
>>>> Does somebody know what I am doing wrong? I cannot figure it out, any
>>>> help is appreciated!
>>>>
>>>> Cheers,
>>>> Serkan
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>

--0000000000005a3647058a20b52c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I understand the process of debugging build failures. I am=
 just confused why my approach doesn&#39;t work. <br>&quot;<a href=3D"http:=
//python-soundcloud.bb">python-soundcloud.bb</a>&quot; has the same format =
like other python module recipes in meta-oe.=C2=A0<div>In <a href=3D"http:/=
/tizonia.bb">tizonia.bb</a>, I have added &quot;python-soundcloud&quot; to =
DEPENDS, so I assumed bitbake would resolve the necessary path&#39;s, which=
 are necessary for the build.</div><div>It is also not only my fault not be=
ing able to fix this, it is also largely related to the fact, that there is=
 not much documentation around how to start developing with Yocto in genera=
l.=C2=A0</div><div><br></div><div>=C2=A0I am gonna continue banging my head=
.=C2=A0</div><div><br></div><div>Cheers.</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 30, 2019 at 12:21=
 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.ka=
navin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">I guess you could start by looking at <a hr=
ef=3D"http://configure.ac" target=3D"_blank">configure.ac</a> in the failin=
g component&#39;s source code and specifically which m4 macro it is using t=
o find the python module, then look at the definition of that macro and wha=
t it does. Sadly, this kind of thing - working your way through large, unfa=
miliar code base to debug a build failure - is typical when working with Yo=
cto, and is pretty much a required skill.<div><br></div><div>Alex</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, 30 May 2019 at 21:08, Serkan T=C3=BCrker &lt;<a href=3D"mailto:serkan.t=
uerker@gmail.com" target=3D"_blank">serkan.tuerker@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Hi Alexander,<div><br></div><div>thank you for the quick reply. Doing the=
 ./configure part on the host machine for host (basically, compiling tizoni=
a on Ubuntu) works fine, there it can find the soundcloud module. I just do=
n&#39;t understand where autotools (during bitbake) is looking for the soun=
dcloud module and what I have to do to make it work.</div><div><br></div><d=
iv>Cheers,</div><div>Serkan</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, May 30, 2019 at 11:46 AM Alexander=
 Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">al=
ex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">This is really an aut=
otools question, not a yocto question. Specifically, what happens at this p=
oint?<div><i>| checking python module: soundcloud... no</i><br></div><div><=
i><br></i></div><div>Quite likely, the autotools script runs native python =
and asks it to import soundcloud, which fails. You need a different approac=
h, maybe checking for the module file in the target sysroot.</div><div><br>=
</div><div>Also, do not use python 2.7. All upstream support for it ends in=
 6 months.</div><div><br></div><div>Alex</div></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 30 May 2019 at =
04:37, Serkan T=C3=BCrker &lt;<a href=3D"mailto:serkan.tuerker@gmail.com" t=
arget=3D"_blank">serkan.tuerker@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br><=
/div><div>I am trying to write a bitbake file for a project. The project us=
es autotools for configuring the project before building it.</div><div>Whil=
e configuring it, it searches for several python modules, where some of the=
m are custom modules I wrote the bitbake recipe for.</div><div>Even though =
the python module builds and installs correctly to the sysroot directory, i=
t is not found in the configure step.</div><div><br></div><div>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><a href=3D"http://pyth=
on-soundcloud_0.5.0.bb" target=3D"_blank">python-soundcloud_0.5.0.bb</a></d=
iv><div><i>----------------------------------------------------------------=
-------------------------------------------------------</i></div><div><i>LI=
CENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=
=3D31fa3a9dc818e0087893d63583d2d21a&quot;<br><br>SRC_URI[md5sum] =3D &quot;=
40c1d32afd019ed11ec1fbee3e84e31f&quot;<br>SRC_URI[sha256sum] =3D &quot;aad2=
003592cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653d5&quot;<br><br>D=
EPENDS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;<br><br>PYPI_PACKAGE =3D &=
quot;soundcloud&quot;</i></div><div><i><br>inherit setuptools pypi<br><br>R=
DEPENDS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;</i></div><div>----------=
---------------------------------------------------------------------------=
----------------------------------<br></div><div><div><br></div><div><b>pyt=
hon-soundcloud is succesfully installed to &quot;BUILD/sysroots/raspberrypi=
3/usr/lib/python2.7/site-packages/soundcloud&quot;</b></div><div><br></div>=
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><div>=
<a href=3D"http://tizonia.bb" target=3D"_blank">tizonia.bb</a></div><div>--=
---------------------------------------------------------------------------=
------------------------------------------</div></div><div><i>SUMMARY =3D &=
quot;Tizonia Library&quot;<br>DESCRIPTION =3D &quot;Tizonia&quot;<br>LICENS=
E =3D &quot;LGPL-3.0&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING.LES=
SER;md5=3De6a600fd5e1d9cbde2d983680233ad02&quot;<br><br>SRC_URI =3D &quot;g=
it://<a href=3D"http://github.com/tizonia/tizonia-openmax-il.git;protocol=
=3Dhttps" target=3D"_blank">github.com/tizonia/tizonia-openmax-il.git;proto=
col=3Dhttps</a>&quot;<br>SRCREV =3D &quot;9004bc40b89eeafb04b28fbb2b772e47d=
d62fdc9&quot;<br><br>S =3D &quot;${WORKDIR}/git&quot;<br><br>DEPENDS =3D &q=
uot;mediainfo log4c python-pip python-soundcloud&quot;</i></div><div><i><br=
>inherit autotools ccache pkgconfig pythonnative<br><br>RDEPENDS_${PN} =3D =
&quot;libstdc++ mediainfo log4c python-soundcloud&quot;<br><br>EXTRA_OECONF=
 +=3D &quot;-C&quot;</i><br></div><div>------------------------------------=
---------------------------------------------------------------------------=
--------<br></div><div><br></div><div><b>The error message I get from bitba=
ke:</b></div><div><i><br></i></div><div><i>| checking for python2.7... (cac=
hed) /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/bin/py=
thon-native/python<br>| checking for a version of Python &gt;=3D &#39;2.1.0=
&#39;... yes<br>| checking for a version of Python &gt;=3D &#39;2.7&#39;...=
 yes<br>| checking for the distutils Python package... yes<br>| checking fo=
r Python include path... -I/home/developer/build-webos-ose/BUILD/sysroots/r=
aspberrypi3/usr/include/python2.7<br>| checking for Python library path... =
-L/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib -lpyt=
hon2.7<br>| checking for Python site-packages path... /home/developer/build=
-webos-ose/BUILD/sysroots/x86_64-linux/usr/lib/python2.7/site-packages<br>|=
 checking python extra libraries... -lpthread -ldl =C2=A0-lpthread -lutil -=
lm<br>| checking python extra linking flags... -Xlinker -export-dynamic<br>=
| checking consistency of all components of python development environment.=
.. yes<br>| checking python module: soundcloud... no<br>| configure: error:=
 failed to find required module soundcloud</i><br></div><div><br></div><div=
>Does somebody know what I am doing wrong? I cannot figure it out, any help=
 is appreciated!</div><div><br></div><div>Cheers,</div><div>Serkan=C2=A0</d=
iv></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000005a3647058a20b52c--
