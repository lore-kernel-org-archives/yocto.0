Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2013FE009A7; Fri, 23 Mar 2018 12:58:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F09ECE007E1
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 12:58:42 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id c1-v6so4041759itj.1
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 12:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VG/Uj6z6mH48A5RGd42MMKvj0rIVc1zUbrEer44S4/M=;
	b=tnAGj1mxXlqU0meVB+D7E6jTsIZ8t1qaXXa9Z1I0b3UKhevrmq1aUow6St+Lt9OsrA
	/IJkg0f/Gw+D/Q/HFHveOsaYAmjBk1rX4M7qrzhrI6TTxSxFR63R8r5bzwkQGPAfC3I8
	i/9fG/a+aRuAwAhNE7VG01EqEpvnoorN5+Yds3SDyfmBYnRnkQv5knkHpIsZLGOonMyt
	KzoqreBVTIQhQWwvBveyUIkJ/sGjwDiAui8wjRbfnMI2X3WbLMS0tim0xlIjp5gQdV5w
	TlUZGjVGfLQsd4OlQKBu55nGGNS4JUxOyz+q7RJHxwS4vMu1+scdSNbgAGAJcYqBWkxZ
	WzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VG/Uj6z6mH48A5RGd42MMKvj0rIVc1zUbrEer44S4/M=;
	b=RuZD/vZG2Ty4wecw+5NYEge0f5rZOs21eZZTGwefHIF0Xk3rTKotmTsMdrJKkSxXhG
	H2TGLHfrxIxOM3At8giv+e86h5pog2nXzihYZA56LFzPtVjjlruiYCltMzv1ue4MFvmm
	UGnsFFWGex2o5mGbS1d54JBgf1UXKPu9dlKyMRiHwgc6m/QtdATyhluHyXxAeADCAnvm
	IOIg/4tuYa1T4y8mM6G/JM/pkB6Y6fduG9ocgwtoNeiFV4cMzCfPppKTSePonubVRBA4
	xP85sHFz597/wl4VS5NVS+qID84a2gcrOYtSbcNRHGC9WloakmeDdj/vDao54oWkVg7S
	GbTw==
X-Gm-Message-State: AElRT7EBZ/RayPJlnlZiMpGImsFoKWgAVKR1KirMEde0Qz+hRiecR45a
	iuRpUbr6nKPQXbqFW6X/Okxn5FcpwzdzbHqqRnYtiQ==
X-Google-Smtp-Source: AG47ELsXlIwnS9GIuzMO11LPskYVXznlcswQ46/7bYZBLDbBHz9gDKuSJlgk5en+XeYv0R5NT7QNwzvv+v7V+EAX8y4=
X-Received: by 2002:a24:3d55:: with SMTP id
	n82-v6mr15693047itn.31.1521835122150; 
	Fri, 23 Mar 2018 12:58:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGk1kpvN-Ujnk8YwUKb4=jFAdv6bQqEBRLVnQ-6+4JA+gQ@mail.gmail.com>
	<CAJTo0LbF8nq5ZviSQobOushx_kGZV2FbR6zWNqpb0H2cUnaDkA@mail.gmail.com>
In-Reply-To: <CAJTo0LbF8nq5ZviSQobOushx_kGZV2FbR6zWNqpb0H2cUnaDkA@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Fri, 23 Mar 2018 19:58:30 +0000
Message-ID: <CAFzUWG=Dmii4w-c-8_QZ4DV-gDLp6N3GYuaze7x3UFQNCgsV_w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: No module named setuptools -- even with "inherit setuptools"?
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
X-List-Received-Date: Fri, 23 Mar 2018 19:58:44 -0000
Content-Type: multipart/alternative; boundary="000000000000dcd24b056819d93f"

--000000000000dcd24b056819d93f
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

I am confused, as it seems to have been running /usr/bin/python at some
point along the line... which is strange. I decided to take these two lines

DEPENDS = "python python-six"
RDEPENDS_${PN} += "python-lang python-shell python-six python-debugger"

and rewrite them into

RDEPENDS_${PN} += "python-core python-six python-debugger"

and now things work. That's the only change. I think this might be DEPENDS
vs RDEPENDS that screwed me up (and the naming of python recipes).. but I'm
not really sure.. The working recipe is below:

DESCRIPTION = "Python declarative parser for binary data"
HOMEPAGE = "http://construct.readthedocs.org/en/latest/"
SECTION = "devel/python"
LICENSE = "BSD-3-Clause"
LIC_FILES_CHKSUM = "file://LICENSE;md5=3fd0f2c25089e629957285e6bc402a20"

PYPI_PACKAGE = "construct"
inherit pypi setuptools

SRC_URI[md5sum] = "39407f91407138f687ea2ecf8d758a1f"
SRC_URI[sha256sum] =
"c23ef47fd5751d821e5c17d9b3b02d1f3c465e66b8a205b9c791c4abef747138"

RDEPENDS_${PN} += "python-core python-six python-debugger"


On Fri, Mar 23, 2018 at 2:53 PM Burton, Ross <ross.burton@intel.com> wrote:

> Should work, as the setuptools class depends on
> python-distribute-native which is provided by
> python-setuptools-native, and the class also inherits pythonnative so
> it should be running the python from the sysroot and not the host
> python.
>
> I'd verify that it's not explicitly running /usr/bin/python at some
> point, instead of the python binary in $PATH.
>
> Ross
>
> On 23 March 2018 at 18:46, Giordon Stark <kratsg@gmail.com> wrote:
> > Hi,
> >
> > I'm a bit perplexed. I don't know what I'm doing wrong here, but this is
> the
> > log data:
> >
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | Traceback (most recent call last):
> > |   File "setup.py", line 2, in <module>
> > |     from setuptools import setup
> > | ImportError: No module named setuptools
> > | ERROR: python setup.py build execution failed.
> > | WARNING:
> >
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/python-construct/2.9.39-r0/temp/run.do_compile.3286:1
> > exit 1 from 'exit 1'
> > | ERROR: Function failed: do_compile (log file is located at
> >
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/python-construct/2.9.39-r0/temp/log.do_compile.3286)
> > ERROR: Task
> > (/local/d4/gstark/meta-l1calo/recipes-python/python-construct_2.9.39.bb:
> do_compile)
> > failed with exit code '1'
> >
> > with the recipe looking like this... (below). Any ideas?
> >
> > DESCRIPTION = "Python declarative parser for binary data"
> > HOMEPAGE = "http://construct.readthedocs.org/en/latest/"
> > SECTION = "devel/python"
> > LICENSE = "BSD-3-Clause"
> > LIC_FILES_CHKSUM = "file://LICENSE;md5=3fd0f2c25089e629957285e6bc402a20"
> >
> > PYPI_PACKAGE = "construct"
> > inherit pypi setuptools
> >
> > SRC_URI[md5sum] = "39407f91407138f687ea2ecf8d758a1f"
> > SRC_URI[sha256sum] =
> > "c23ef47fd5751d821e5c17d9b3b02d1f3c465e66b8a205b9c791c4abef747138"
> >
> > DEPENDS = "python python-six"
> > RDEPENDS_${PN} += "python-lang python-shell python-six python-debugger"
> > --
> > Giordon Stark
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
-- 
Giordon Stark

--000000000000dcd24b056819d93f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,<div><br></div><div>I am confused, as it seems to =
have been running /usr/bin/python at some point along the line... which is =
strange. I decided to take these two lines<br><br></div><div><div><font fac=
e=3D"monospace">DEPENDS =3D &quot;python python-six&quot;</font></div><div>=
<font face=3D"monospace">RDEPENDS_${PN} +=3D &quot;python-lang python-shell=
 python-six python-debugger&quot;</font></div></div><div><br></div><div>and=
 rewrite them into</div><div><br></div><div><font face=3D"monospace">RDEPEN=
DS_${PN} +=3D &quot;python-core python-six python-debugger&quot;<br></font>=
</div><div><br></div><div>and now things work. That&#39;s the only change. =
I think this might be DEPENDS vs RDEPENDS that screwed me up (and the namin=
g of python recipes).. but I&#39;m not really sure.. The working recipe is =
below:</div><div><br></div><div><div><font face=3D"monospace">DESCRIPTION =
=3D &quot;Python declarative parser for binary data&quot;</font></div><div>=
<font face=3D"monospace">HOMEPAGE =3D &quot;<a href=3D"http://construct.rea=
dthedocs.org/en/latest/">http://construct.readthedocs.org/en/latest/</a>&qu=
ot;</font></div><div><font face=3D"monospace">SECTION =3D &quot;devel/pytho=
n&quot;</font></div><div><font face=3D"monospace">LICENSE =3D &quot;BSD-3-C=
lause&quot;</font></div><div><font face=3D"monospace">LIC_FILES_CHKSUM =3D =
&quot;file://LICENSE;md5=3D3fd0f2c25089e629957285e6bc402a20&quot;</font></d=
iv><div><font face=3D"monospace"><br></font></div><div><font face=3D"monosp=
ace">PYPI_PACKAGE =3D &quot;construct&quot;</font></div><div><font face=3D"=
monospace">inherit pypi setuptools</font></div><div><font face=3D"monospace=
"><br></font></div><div><font face=3D"monospace">SRC_URI[md5sum] =3D &quot;=
39407f91407138f687ea2ecf8d758a1f&quot;</font></div><div><font face=3D"monos=
pace">SRC_URI[sha256sum] =3D &quot;c23ef47fd5751d821e5c17d9b3b02d1f3c465e66=
b8a205b9c791c4abef747138&quot;</font></div><div><font face=3D"monospace"><b=
r></font></div></div><div><div><font face=3D"monospace">RDEPENDS_${PN} +=3D=
 &quot;python-core python-six python-debugger&quot;</font></div><div><br></=
div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Mar=
 23, 2018 at 2:53 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.c=
om">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">Should work, as the setuptools class depends on<br>
python-distribute-native which is provided by<br>
python-setuptools-native, and the class also inherits pythonnative so<br>
it should be running the python from the sysroot and not the host<br>
python.<br>
<br>
I&#39;d verify that it&#39;s not explicitly running /usr/bin/python at some=
<br>
point, instead of the python binary in $PATH.<br>
<br>
Ross<br>
<br>
On 23 March 2018 at 18:46, Giordon Stark &lt;<a href=3D"mailto:kratsg@gmail=
.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m a bit perplexed. I don&#39;t know what I&#39;m doing wrong her=
e, but this is the<br>
&gt; log data:<br>
&gt;<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | Traceback (most recent call last):<br>
&gt; |=C2=A0 =C2=A0File &quot;setup.py&quot;, line 2, in &lt;module&gt;<br>
&gt; |=C2=A0 =C2=A0 =C2=A0from setuptools import setup<br>
&gt; | ImportError: No module named setuptools<br>
&gt; | ERROR: python setup.py build execution failed.<br>
&gt; | WARNING:<br>
&gt; /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/python-constru=
ct/2.9.39-r0/temp/run.do_compile.3286:1<br>
&gt; exit 1 from &#39;exit 1&#39;<br>
&gt; | ERROR: Function failed: do_compile (log file is located at<br>
&gt; /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/python-constru=
ct/2.9.39-r0/temp/log.do_compile.3286)<br>
&gt; ERROR: Task<br>
&gt; (/local/d4/gstark/meta-l1calo/recipes-python/python-construct_2.9.39.b=
b:do_compile)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; with the recipe looking like this... (below). Any ideas?<br>
&gt;<br>
&gt; DESCRIPTION =3D &quot;Python declarative parser for binary data&quot;<=
br>
&gt; HOMEPAGE =3D &quot;<a href=3D"http://construct.readthedocs.org/en/late=
st/" rel=3D"noreferrer" target=3D"_blank">http://construct.readthedocs.org/=
en/latest/</a>&quot;<br>
&gt; SECTION =3D &quot;devel/python&quot;<br>
&gt; LICENSE =3D &quot;BSD-3-Clause&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D3fd0f2c25089e629957285=
e6bc402a20&quot;<br>
&gt;<br>
&gt; PYPI_PACKAGE =3D &quot;construct&quot;<br>
&gt; inherit pypi setuptools<br>
&gt;<br>
&gt; SRC_URI[md5sum] =3D &quot;39407f91407138f687ea2ecf8d758a1f&quot;<br>
&gt; SRC_URI[sha256sum] =3D<br>
&gt; &quot;c23ef47fd5751d821e5c17d9b3b02d1f3c465e66b8a205b9c791c4abef747138=
&quot;<br>
&gt;<br>
&gt; DEPENDS =3D &quot;python python-six&quot;<br>
&gt; RDEPENDS_${PN} +=3D &quot;python-lang python-shell python-six python-d=
ebugger&quot;<br>
&gt; --<br>
&gt; Giordon Stark<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--000000000000dcd24b056819d93f--
