Return-Path: <pcjegan@gmail.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 205C7E01647
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 00:42:54 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id hz10so3565302vcb.12
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 00:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=oRMoD9g/AVJ2W8XFp6WxWbr5581MOZpK9Yt+UVXK4aU=;
	b=dw/lnXJrIT1BaBfYRLHzeCOB7hyg95i1oRaaSmRWW/yuc1/NdimF3uFJMlGa2ETsRm
	1Qbxb6uWRy9gn9kQ5ypWy/D5BBj04nyLHlIw0zO9g6+/4d6OqAVmlECBlvGe0EkOlZZq
	Ja8ALuMd5Ccfyzi0NEdXTcioxen+2gEwPJZm4aNg3ouZ/Raw3U3WNVjNdNOEhbHjJWXU
	yfEDzRi6D9F+/ehyRQ3RID67qqdat6b5PWfE1I3qs6G0FpiCe3e+Lm1VJQ6nHAZ3yRk6
	/MJYZULjmMyJy0LDsCmFqoJ2+xZtDCglVR1iSiXfunJyN6g3N2a95WGyr11oytJLN91K
	rdng==
X-Received: by 10.220.181.136 with SMTP id by8mr21457962vcb.11.1380526974071; 
	Mon, 30 Sep 2013 00:42:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.169.146 with HTTP; Mon, 30 Sep 2013 00:42:34 -0700 (PDT)
In-Reply-To: <7457be49.d1ce.1416d0d052e.Coremail.czyhit@126.com>
References: <7457be49.d1ce.1416d0d052e.Coremail.czyhit@126.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Mon, 30 Sep 2013 13:12:34 +0530
Message-ID: <CAAA4K6LWyyCAPxMKdP5GEwqELOADfCit9fvnnWxJw5f3yWODZA@mail.gmail.com>
To: =?UTF-8?B?5pu55b+X56CU?= <czyhit@126.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: xerces-c come into ERROR: Function failed: do_qa_configure
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
X-List-Received-Date: Mon, 30 Sep 2013 07:42:55 -0000
Content-Type: multipart/alternative; boundary=047d7bf0f67ae47a9a04e794fbcb

--047d7bf0f67ae47a9a04e794fbcb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

It is saying just that, there been a host contamination, which means
bitbake is referring host for some libs and headers which it should not.
It is from meta/class/insane.bbclass. You should look in log.do_configure
in tmp/work/<machine/target>/<pkgname>/<version>/temp/ for fixing this or
the config.log file located in tmp/work/armv7a-vfp-neon-poky-
linux-gnueabi/xerces-c/3.1.1-r0/xerces-c-3.1.1 as you mentioned.

Cheers,



On Mon, Sep 30, 2013 at 9:37 AM, =E6=9B=B9=E5=BF=97=E7=A0=94 <czyhit@126.co=
m> wrote:

> ERROR: This autoconf log indicates errors, it looked at host include and/=
or library paths while determining system capabilities.
> Rerun configure task after fixing this. The path was '/home/caozhiyan/fsl=
-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xer=
ces-c/3.1.1-r0/xerces-c-3.1.1'
> ERROR: Function failed: do_qa_configure
> ERROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-bsp/bu=
ild-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r0/te=
mp/log.do_configure.31478
> ERROR: Task 496 (/home/caozhiyan/fsl-community-bsp/sources/meta-fsl-hc120=
0/recipes-hc1200/xerces-c/xerces-c_3.1.1.bb, do_configure) failed with exit=
 code '1'
>
>
> I have used the followings bb, but the error still exists, how to trace a=
nd resolve the problem?
>
> Check oe-classic recipeshttp://cgit.openembedded.org/cgit.cgi/openembedde=
d/tree/recipes/xerces-c/xerces-c_3.1.1.bb
>
>
> DESCRIPTION =3D "Xerces-c is a validating xml parser written in C++"
> HOMEPAGE =3D "http://xerces.apache.org/xerces-c/"
> SECTION =3D  "libs"
> PRIORITY =3D "optional"
> LICENSE =3D "Apache-2.0"
>
> SRC_URI =3D "http://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.gz"
>
> inherit autotools pkgconfig
>
> PACKAGES =3D "libxerces-c \    libxerces-c-dbg \    libxerces-c-dev \    =
xerces-c-samples \    xerces-c-samples-dbg \"
>
> FILES_libxerces-c =3D "${libdir}/libxerces-c-3.1.so"
> FILES_libxerces-c-dbg =3D "${libdir}/.debug/"
> FILES_libxerces-c-dev =3D "${libdir}/lib*.la \    ${libdir}/lib*.a \    $=
{libdir}/libxerces-c.so \    ${libdir}/pkgconfig/xerces-c.pc \    ${include=
dir}/xercesc \"
> FILES_xerces-c-samples =3D "${bindir}/*"
> FILES_xerces-c-samples-dbg =3D "${bindir}/.debug/"
>
> SRC_URI[md5sum] =3D "6a8ec45d83c8cfb1584c5a5345cb51ae"
> SRC_URI[sha256sum] =3D "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b=
805d26d44968736"
>
> BBCLASSEXTEND +=3D "native"
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
JCP

--047d7bf0f67ae47a9a04e794fbcb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>It is saying just that, there=
 been a host contamination, which means bitbake is referring host for some =
libs and headers which it should not.=C2=A0</div><div>It is from meta/class=
/insane.bbclass. You should look in log.do_configure in tmp/work/&lt;machin=
e/target&gt;/&lt;pkgname&gt;/&lt;version&gt;/temp/ for fixing this or the c=
onfig.log file located in=C2=A0<span style=3D"font-size:14px;line-height:23=
px;white-space:pre-wrap">tmp/work/armv7a-vfp-neon-poky-</span><span style=
=3D"font-size:14px;line-height:23px;white-space:pre-wrap">linux-gnueabi/xer=
ces-c/3.1.1-</span><span style=3D"font-size:14px;line-height:23px;white-spa=
ce:pre-wrap">r0/xerces-c-3.1.1 as you mentioned.</span></div>

<div><br></div><div>Cheers,</div><h1 class=3D"" style=3D"font-size:18px;bac=
kground-color:rgb(255,255,255)"><br></h1></div><div class=3D"gmail_extra"><=
br><br><div class=3D"gmail_quote">On Mon, Sep 30, 2013 at 9:37 AM, =E6=9B=
=B9=E5=BF=97=E7=A0=94 <span dir=3D"ltr">&lt;<a href=3D"mailto:czyhit@126.co=
m" target=3D"_blank">czyhit@126.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"line-height:1.7;font-size:14px=
;font-family:arial"><pre style=3D"padding:0px;margin-top:0px;margin-bottom:=
0px">

<code><pre>ERROR: This autoconf log indicates errors, it looked at host inc=
lude and/or library paths while determining system capabilities.
Rerun configure task after fixing this. The path was &#39;/home/caozhiyan/f=
sl-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/x=
erces-c/3.1.1-r0/xerces-c-3.1.1&#39;
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-bsp/buil=
d-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r0/temp=
/log.do_configure.31478
ERROR: Task 496 (/home/caozhiyan/fsl-community-bsp/sources/meta-fsl-hc1200/=
recipes-hc1200/xerces-c/<a href=3D"http://xerces-c_3.1.1.bb" target=3D"_bla=
nk">xerces-c_3.1.1.bb</a>, do_configure) failed with exit code &#39;1&#39;<=
span style=3D"font-size:14.44444465637207px;line-height:25.55555534362793px=
">
</span></pre><div style=3D"font-size:13px;line-height:normal"><br></div><pr=
e style=3D"font-size:14.44444465637207px;line-height:25.55555534362793px">I=
 have used the followings bb, but the error still exists, how to trace and =
resolve the problem?</pre>

<pre style=3D"font-size:14.44444465637207px;line-height:25.55555534362793px=
">Check oe-classic recipes
<a href=3D"http://cgit.openembedded.org/cgit.cgi/openembedded/tree/recipes/=
xerces-c/xerces-c_3.1.1.bb" target=3D"_blank">http://cgit.openembedded.org/=
cgit.cgi/openembedded/tree/recipes/xerces-c/xerces-c_3.1.1.bb</a></pre></co=
de></pre>

<pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px;font-size:13px;l=
ine-height:normal"><code><br></code></pre><pre style=3D"padding:0px;margin-=
top:0px;margin-bottom:0px;font-size:13px;line-height:normal"><code>DESCRIPT=
ION <span>=3D</span> <span style=3D"color:rgb(255,0,0)">&quot;Xerces-c is a=
 validating xml parser written in C++&quot;</span>
HOMEPAGE <span>=3D</span> <span style=3D"color:rgb(255,0,0)">&quot;<a href=
=3D"http://xerces.apache.org/xerces-c/" target=3D"_blank">http://xerces.apa=
che.org/xerces-c/</a>&quot;</span>
SECTION <span>=3D</span>  <span style=3D"color:rgb(255,0,0)">&quot;libs&quo=
t;</span>
PRIORITY <span>=3D</span> <span style=3D"color:rgb(255,0,0)">&quot;optional=
&quot;</span>
LICENSE <span>=3D</span> <span style=3D"color:rgb(255,0,0)">&quot;Apache-2.=
0&quot;</span>

SRC_URI <span>=3D</span> <span style=3D"color:rgb(255,0,0)">&quot;<a href=
=3D"http://apache.lauf-forum.at/xerces/c/3/sources/$%7BBP%7D.tar.gz" target=
=3D"_blank">http://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.gz</a>=
&quot;</span>

inherit autotools pkgconfig

PACKAGES <span>=3D</span> <span style=3D"color:rgb(255,0,0)">&quot;libxerce=
s-c \</span>
<span style=3D"color:rgb(255,0,0)">    libxerces-c-dbg \</span>
<span style=3D"color:rgb(255,0,0)">    libxerces-c-dev \</span>
<span style=3D"color:rgb(255,0,0)">    xerces-c-samples \</span>
<span style=3D"color:rgb(255,0,0)">    xerces-c-samples-dbg \</span>
<span style=3D"color:rgb(255,0,0)">&quot;</span>

FILES_libxerces<span>-</span>c <span>=3D</span> <span style=3D"color:rgb(25=
5,0,0)">&quot;${libdir}/<a href=3D"http://libxerces-c-3.1.so" target=3D"_bl=
ank">libxerces-c-3.1.so</a>&quot;</span>
FILES_libxerces<span>-</span>c<span>-</span>dbg <span>=3D</span> <span styl=
e=3D"color:rgb(255,0,0)">&quot;${libdir}/.debug/&quot;</span>
FILES_libxerces<span>-</span>c<span>-</span>dev <span>=3D</span> <span styl=
e=3D"color:rgb(255,0,0)">&quot;${libdir}/lib*.la \</span>
<span style=3D"color:rgb(255,0,0)">    ${libdir}/lib*.a \</span>
<span style=3D"color:rgb(255,0,0)">    ${libdir}/libxerces-c.so \</span>
<span style=3D"color:rgb(255,0,0)">    ${libdir}/pkgconfig/xerces-c.pc \</s=
pan>
<span style=3D"color:rgb(255,0,0)">    ${includedir}/xercesc \</span>
<span style=3D"color:rgb(255,0,0)">&quot;</span>
FILES_xerces<span>-</span>c<span>-</span>samples <span>=3D</span> <span sty=
le=3D"color:rgb(255,0,0)">&quot;${bindir}/*&quot;</span>
FILES_xerces<span>-</span>c<span>-</span>samples<span>-</span>dbg <span>=3D=
</span> <span style=3D"color:rgb(255,0,0)">&quot;${bindir}/.debug/&quot;</s=
pan>

SRC_URI<span>[</span>md5sum<span>] =3D</span> <span style=3D"color:rgb(255,=
0,0)">&quot;6a8ec45d83c8cfb1584c5a5345cb51ae&quot;</span>
SRC_URI<span>[</span>sha256sum<span>] =3D</span> <span style=3D"color:rgb(2=
55,0,0)">&quot;a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d4496=
8736&quot;</span>

BBCLASSEXTEND <span>+=3D</span> <span style=3D"color:rgb(255,0,0)">&quot;na=
tive&quot;</span></code></pre></div><br><br><span title=3D"neteasefooter"><=
span></span></span><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--047d7bf0f67ae47a9a04e794fbcb--
