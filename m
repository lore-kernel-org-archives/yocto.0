Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7941E00BAA; Thu, 30 May 2019 12:21:30 -0700 (PDT)
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
	*      [209.85.167.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 721DCE00951
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 12:21:27 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id i4so5469926oih.4
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 12:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=NElbHGr358gw8UZv63yvQCR+BS15tDxMvODg1jHVm/M=;
	b=ZtmciEoVN7cnxecxVqihPKQX54by3ReTfbGwsWIpyRDGl8YRz9/HTfpr+UZkoLUrBD
	AlFEx7Jn+OHv0nbhku6KQrJt9W9yNFPMUO7l9CBJrqCAvcGxDbzZjr6LvdBUah5PpSbP
	ZoxuPezuKK6V+sdNr6ct8gyljnzh/3IHylYn8yutvVR0GwcOqkVZajXTkZ6CWS5327nv
	cn2yZYCUi2cEDKNY1F+MjMdsk6cxtcLBwDgyIvPDZK/VgONzzaGqDJueIYnWNv3aBwVo
	rwECj9NjSq98fOdl6NvYhcaQ7BtGjPgAMYoliBjKJXlz7lRWTD7XicapnNBL8iVix2DP
	OFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=NElbHGr358gw8UZv63yvQCR+BS15tDxMvODg1jHVm/M=;
	b=Wj241lerDSdvnzbpdv0I0Z/3Pr5ad4m5O/ylnDK0VEGBhvTnLEFIIy+KB5NCMDrtMN
	zJA73VpzBzSBAZghdZNr6OMm94olHEWGiTEUzb5bQiehMwiJeryOe54bUAr5iSdxXtp7
	6IlNV9npyh3QZEf8+3Be49fKfPJccd/phnREBYLdxIXl7e5V0v1l8EpRwY8DW+YyuSys
	X9kbg9NwkrM7MfabFM7nSRbht8e5IbkC3EwMNrj8h/Mp3E3sp/UJEqpbK22fQJzaVvEv
	+kMZLhoDaTPCT4QFjOpJfqIrkRG9c/nQTbQQBeCxFBaIVmvtfVtLYNLA+sdmCxK0fCVt
	8r+g==
X-Gm-Message-State: APjAAAVORDp7f+8XuOzmh6fOhlDr4sI4Re28pofjTPX5unbjPHstxDK4
	DnA3uLOLqVfFuB6q9/9RkLS5NPhiX1doH1qS6wc=
X-Google-Smtp-Source: APXvYqwMmVGtZmi4tkm6QwDyjPhakS9QL4DaeRAvK6RcGzq25jqF/wobxjvLnMKc7V0M1i4vEP9bonqVon01DA6dZqA=
X-Received: by 2002:aca:50d3:: with SMTP id e202mr3659112oib.88.1559244086749; 
	Thu, 30 May 2019 12:21:26 -0700 (PDT)
MIME-Version: 1.0
References: <CALEwogiTw_xO+T4-vopZGQ+6MZOC+qCdTfug4wAWLJN-saa81Q@mail.gmail.com>
	<CANNYZj8D8RjHcJV4bLsVQDEPkSdhiYU7vyWWZUAP+J-ZpNwN+g@mail.gmail.com>
	<CALEwogg926iAfj+nyYJPJd92f3ByBi0+0uS8Uvof4DeB5Kpniw@mail.gmail.com>
In-Reply-To: <CALEwogg926iAfj+nyYJPJd92f3ByBi0+0uS8Uvof4DeB5Kpniw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 30 May 2019 21:21:15 +0200
Message-ID: <CANNYZj-Gf3Va9JXPvKpPc0=A013F-4dR=qG0YyE8VU3jnyObOw@mail.gmail.com>
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
X-List-Received-Date: Thu, 30 May 2019 19:21:30 -0000
Content-Type: multipart/alternative; boundary="000000000000e8ae21058a1fcd98"

--000000000000e8ae21058a1fcd98
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I guess you could start by looking at configure.ac in the failing
component's source code and specifically which m4 macro it is using to find
the python module, then look at the definition of that macro and what it
does. Sadly, this kind of thing - working your way through large,
unfamiliar code base to debug a build failure - is typical when working
with Yocto, and is pretty much a required skill.

Alex

On Thu, 30 May 2019 at 21:08, Serkan T=C3=BCrker <serkan.tuerker@gmail.com>
wrote:

> Hi Alexander,
>
> thank you for the quick reply. Doing the ./configure part on the host
> machine for host (basically, compiling tizonia on Ubuntu) works fine, the=
re
> it can find the soundcloud module. I just don't understand where autotool=
s
> (during bitbake) is looking for the soundcloud module and what I have to =
do
> to make it work.
>
> Cheers,
> Serkan
>
> On Thu, May 30, 2019 at 11:46 AM Alexander Kanavin <alex.kanavin@gmail.co=
m>
> wrote:
>
>> This is really an autotools question, not a yocto question. Specifically=
,
>> what happens at this point?
>> *| checking python module: soundcloud... no*
>>
>> Quite likely, the autotools script runs native python and asks it to
>> import soundcloud, which fails. You need a different approach, maybe
>> checking for the module file in the target sysroot.
>>
>> Also, do not use python 2.7. All upstream support for it ends in 6 month=
s.
>>
>> Alex
>>
>> On Thu, 30 May 2019 at 04:37, Serkan T=C3=BCrker <serkan.tuerker@gmail.c=
om>
>> wrote:
>>
>>> Hi all,
>>>
>>> I am trying to write a bitbake file for a project. The project uses
>>> autotools for configuring the project before building it.
>>> While configuring it, it searches for several python modules, where som=
e
>>> of them are custom modules I wrote the bitbake recipe for.
>>> Even though the python module builds and installs correctly to the
>>> sysroot directory, it is not found in the configure step.
>>>
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> python-soundcloud_0.5.0.bb
>>>
>>> *----------------------------------------------------------------------=
-------------------------------------------------*
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *LICENSE =3D "MIT"LIC_FILES_CHKSUM =3D
>>> "file://LICENSE;md5=3D31fa3a9dc818e0087893d63583d2d21a"SRC_URI[md5sum] =
=3D
>>> "40c1d32afd019ed11ec1fbee3e84e31f"SRC_URI[sha256sum] =3D
>>> "aad2003592cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653d5"DEPEN=
DS_${PN}
>>> =3D "${PYTHON_PN}-modules"PYPI_PACKAGE =3D "soundcloud"*
>>>
>>>
>>>
>>> *inherit setuptools pypiRDEPENDS_${PN} =3D "${PYTHON_PN}-modules"*
>>>
>>> -----------------------------------------------------------------------=
------------------------------------------------
>>>
>>> *python-soundcloud is succesfully installed to
>>> "BUILD/sysroots/raspberrypi3/usr/lib/python2.7/site-packages/soundcloud=
"*
>>>
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>> tizonia.bb
>>>
>>> -----------------------------------------------------------------------=
------------------------------------------------
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *SUMMARY =3D "Tizonia Library"DESCRIPTION =3D "Tizonia"LICENSE =3D
>>> "LGPL-3.0"LIC_FILES_CHKSUM =3D
>>> "file://COPYING.LESSER;md5=3De6a600fd5e1d9cbde2d983680233ad02"SRC_URI =
=3D
>>> "git://github.com/tizonia/tizonia-openmax-il.git;protocol=3Dhttps
>>> <http://github.com/tizonia/tizonia-openmax-il.git;protocol=3Dhttps>"SRC=
REV =3D
>>> "9004bc40b89eeafb04b28fbb2b772e47dd62fdc9"S =3D "${WORKDIR}/git"DEPENDS=
 =3D
>>> "mediainfo log4c python-pip python-soundcloud"*
>>>
>>>
>>>
>>>
>>>
>>> *inherit autotools ccache pkgconfig pythonnativeRDEPENDS_${PN} =3D
>>> "libstdc++ mediainfo log4c python-soundcloud"EXTRA_OECONF +=3D "-C"*
>>>
>>> -----------------------------------------------------------------------=
------------------------------------------------
>>>
>>> *The error message I get from bitbake:*
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *| checking for python2.7... (cached)
>>> /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/bin/pyt=
hon-native/python|
>>> checking for a version of Python >=3D '2.1.0'... yes| checking for a ve=
rsion
>>> of Python >=3D '2.7'... yes| checking for the distutils Python package.=
..
>>> yes| checking for Python include path...
>>> -I/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/inclu=
de/python2.7|
>>> checking for Python library path...
>>> -L/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib
>>> -lpython2.7| checking for Python site-packages path...
>>> /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/lib/pyt=
hon2.7/site-packages|
>>> checking python extra libraries... -lpthread -ldl  -lpthread -lutil -lm=
|
>>> checking python extra linking flags... -Xlinker -export-dynamic| checki=
ng
>>> consistency of all components of python development environment... yes|
>>> checking python module: soundcloud... no| configure: error: failed to f=
ind
>>> required module soundcloud*
>>>
>>> Does somebody know what I am doing wrong? I cannot figure it out, any
>>> help is appreciated!
>>>
>>> Cheers,
>>> Serkan
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>

--000000000000e8ae21058a1fcd98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I guess you could start by looking at <a href=3D"http://co=
nfigure.ac">configure.ac</a> in the failing component&#39;s source code and=
 specifically which m4 macro it is using to find the python module, then lo=
ok at the definition of that macro and what it does. Sadly, this kind of th=
ing - working your way through large, unfamiliar code base to debug a build=
 failure - is typical when working with Yocto, and is pretty much a require=
d skill.<div><br></div><div>Alex</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 30 May 2019 at 21:08, Serkan =
T=C3=BCrker &lt;<a href=3D"mailto:serkan.tuerker@gmail.com">serkan.tuerker@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Al=
exander,<div><br></div><div>thank you for the quick reply. Doing the ./conf=
igure part on the host machine for host (basically, compiling tizonia on Ub=
untu) works fine, there it can find the soundcloud module. I just don&#39;t=
 understand where autotools (during bitbake) is looking for the soundcloud =
module and what I have to do to make it work.</div><div><br></div><div>Chee=
rs,</div><div>Serkan</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, May 30, 2019 at 11:46 AM Alexander Kanavi=
n &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kana=
vin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:soli=
d;border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v dir=3D"ltr">This is really an autotools question, not a yocto question. S=
pecifically, what happens at this point?<div><i>| checking python module: s=
oundcloud... no</i><br></div><div><i><br></i></div><div>Quite likely, the a=
utotools script runs native python and asks it to import soundcloud, which =
fails. You need a different approach, maybe checking for the module file in=
 the target sysroot.</div><div><br></div><div>Also, do not use python 2.7. =
All upstream support for it ends in 6 months.</div><div><br></div><div>Alex=
</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, 30 May 2019 at 04:37, Serkan T=C3=BCrker &lt;<a href=3D=
"mailto:serkan.tuerker@gmail.com" target=3D"_blank">serkan.tuerker@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-lef=
t-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br=
></div><div>I am trying to write a bitbake file for a project. The project =
uses autotools for configuring the project before building it.</div><div>Wh=
ile configuring it, it searches for several python modules, where some of t=
hem are custom modules I wrote the bitbake recipe for.</div><div>Even thoug=
h the python module builds and installs correctly to the sysroot directory,=
 it is not found in the configure step.</div><div><br></div><div>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><a href=3D"http://p=
ython-soundcloud_0.5.0.bb" target=3D"_blank">python-soundcloud_0.5.0.bb</a>=
</div><div><i>-------------------------------------------------------------=
----------------------------------------------------------</i></div><div><i=
>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;m=
d5=3D31fa3a9dc818e0087893d63583d2d21a&quot;<br><br>SRC_URI[md5sum] =3D &quo=
t;40c1d32afd019ed11ec1fbee3e84e31f&quot;<br>SRC_URI[sha256sum] =3D &quot;aa=
d2003592cec945f835f158f7b41ba8bf805c5738a2fcc5629668ea1df653d5&quot;<br><br=
>DEPENDS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;<br><br>PYPI_PACKAGE =3D=
 &quot;soundcloud&quot;</i></div><div><i><br>inherit setuptools pypi<br><br=
>RDEPENDS_${PN} =3D &quot;${PYTHON_PN}-modules&quot;</i></div><div>--------=
---------------------------------------------------------------------------=
------------------------------------<br></div><div><div><br></div><div><b>p=
ython-soundcloud is succesfully installed to &quot;BUILD/sysroots/raspberry=
pi3/usr/lib/python2.7/site-packages/soundcloud&quot;</b></div><div><br></di=
v><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div><d=
iv><a href=3D"http://tizonia.bb" target=3D"_blank">tizonia.bb</a></div><div=
>--------------------------------------------------------------------------=
---------------------------------------------</div></div><div><i>SUMMARY =
=3D &quot;Tizonia Library&quot;<br>DESCRIPTION =3D &quot;Tizonia&quot;<br>L=
ICENSE =3D &quot;LGPL-3.0&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYIN=
G.LESSER;md5=3De6a600fd5e1d9cbde2d983680233ad02&quot;<br><br>SRC_URI =3D &q=
uot;git://<a href=3D"http://github.com/tizonia/tizonia-openmax-il.git;proto=
col=3Dhttps" target=3D"_blank">github.com/tizonia/tizonia-openmax-il.git;pr=
otocol=3Dhttps</a>&quot;<br>SRCREV =3D &quot;9004bc40b89eeafb04b28fbb2b772e=
47dd62fdc9&quot;<br><br>S =3D &quot;${WORKDIR}/git&quot;<br><br>DEPENDS =3D=
 &quot;mediainfo log4c python-pip python-soundcloud&quot;</i></div><div><i>=
<br>inherit autotools ccache pkgconfig pythonnative<br><br>RDEPENDS_${PN} =
=3D &quot;libstdc++ mediainfo log4c python-soundcloud&quot;<br><br>EXTRA_OE=
CONF +=3D &quot;-C&quot;</i><br></div><div>--------------------------------=
---------------------------------------------------------------------------=
------------<br></div><div><br></div><div><b>The error message I get from b=
itbake:</b></div><div><i><br></i></div><div><i>| checking for python2.7... =
(cached) /home/developer/build-webos-ose/BUILD/sysroots/x86_64-linux/usr/bi=
n/python-native/python<br>| checking for a version of Python &gt;=3D &#39;2=
.1.0&#39;... yes<br>| checking for a version of Python &gt;=3D &#39;2.7&#39=
;... yes<br>| checking for the distutils Python package... yes<br>| checkin=
g for Python include path... -I/home/developer/build-webos-ose/BUILD/sysroo=
ts/raspberrypi3/usr/include/python2.7<br>| checking for Python library path=
... -L/home/developer/build-webos-ose/BUILD/sysroots/raspberrypi3/usr/lib -=
lpython2.7<br>| checking for Python site-packages path... /home/developer/b=
uild-webos-ose/BUILD/sysroots/x86_64-linux/usr/lib/python2.7/site-packages<=
br>| checking python extra libraries... -lpthread -ldl =C2=A0-lpthread -lut=
il -lm<br>| checking python extra linking flags... -Xlinker -export-dynamic=
<br>| checking consistency of all components of python development environm=
ent... yes<br>| checking python module: soundcloud... no<br>| configure: er=
ror: failed to find required module soundcloud</i><br></div><div><br></div>=
<div>Does somebody know what I am doing wrong? I cannot figure it out, any =
help is appreciated!</div><div><br></div><div>Cheers,</div><div>Serkan=C2=
=A0</div></div>
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

--000000000000e8ae21058a1fcd98--
