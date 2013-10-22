Return-Path: <billmartin544@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D21C4E0166B
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 11:23:34 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id x13so1462920ief.9
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 11:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zPw8uAvF+4My31IAKfniP+qZ+JtxbY1b8tHbq3zhw8c=;
	b=Xe1E4Lnt87EjGR7aAwPg281pFv5CpvjaEvj7VujKia7bM6EebAkQ1oHKTpZ8v/g/l0
	6Hy8xpWS5BaIcsKrPy+/9neIOJdD8OwNaxL309l6WSgQ6b1vPy3nphe5C4coEwYy0SwN
	/cawzTDV7I5CM3HooeAkcWKMyIaaoTCpTruhEfx4rhCtcg5bj1qmVIIvg2de2RBsTzkV
	h+AXGkSvJGWmxsrgOyuE06A12mG3/YgKrK25HzDzY5S+liLJ0afNmdoXpu69drekORMj
	/rUsYtYpcWbVJpvlHQy2qs6mLc3SqkBCnoI1CHRcUBIVhnPLl39l7vEaZ7PnEZ+zcwpd
	iKqQ==
MIME-Version: 1.0
X-Received: by 10.50.49.65 with SMTP id s1mr14430745ign.43.1382466213712; Tue,
	22 Oct 2013 11:23:33 -0700 (PDT)
Received: by 10.64.228.199 with HTTP; Tue, 22 Oct 2013 11:23:33 -0700 (PDT)
Date: Tue, 22 Oct 2013 11:23:33 -0700
Message-ID: <CAJGS5=HTuyPuqropAOjys6oiz-Adx=K9b1dci+zC0d4FPbMQ9w@mail.gmail.com>
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: how to add a new bb(xerces-c)?
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
X-List-Received-Date: Tue, 22 Oct 2013 18:23:40 -0000
Content-Type: multipart/alternative; boundary=e89a8f5038e29565d304e9587f0c

--e89a8f5038e29565d304e9587f0c
Content-Type: text/plain; charset=ISO-8859-1

I have been tasked to add xerces-c too. There is an OE recipe already for
this (you can google it).

However your recipe seems to run into the same problem that I get. The
solution is not just to look at config.log and log.do_config. They display
the symptoms. The one who responded to your post implies the fix is in the
recipe by just adding extra config flags to point to the correct libraries.

I can run ./configure outside of yocto and send in the libraries I want.
But the OEEXTRACONFS I added in my recipe had no effect on the libraries.
Note that the auto tools is forcing the enable-poison-system directories,
as it should. But the cause is further up the "food chain" so to speak.

The problem seems to be with a bug in lib tools that Hans Beckerus found.

http://www.mail-archive.com/yocto@yoctoproject.org/msg15325.html

Essentially it's to do with the with-libtool-sysroot usage in the libtool.
I have not tried Hans' solution yet but will today.  Hopefully this info is
enough to get you started so you can make your own fix and use xerces-c.

thanks

Bill




Message: 2
Date: Fri, 27 Sep 2013 13:35:55 +0800 (CST)
From: ??? <czyhit@126.com>
To: yocto@yoctoproject.org
Subject: [yocto] how to add a new bb(xerces-c)?
Message-ID: <bfe9b2.4f09.1415dea90ad.Coremail.czyhit@126.com>
Content-Type: text/plain; charset="gbk"

Hello, everyone!
I try to add a new bb(xerces-c) to my image, bb is as followings:


DESCRIPTION = "Xerces-C++ is a validating XML parser written in a portable
subset of C++."
HOMEPAGE = "http://xerces.apache.org/xerces-c/"
LICENSE = "Apache"
LIC_FILES_CHKSUM = "file://src/xercesc/dom/DOM.hpp;endline=22;md5=
9986d741cab88a8b7bc4a19d3c1b8106 \
file://src/xercesc/parsers/XercesDOMParser.hpp;endline=21;md5=
85be7b6e587aa51e4f30c262f1cd695e \
file://src/xercesc/xinclude/XIncludeDOMDocumentProcessor.hpp;endline=23;md5=
4236d3c0f2537b3df547a97d60f93dc0"


PR = "r1"


DEPENDS = "curl icu"


SRC_URI = "http://mirror.bit.edu.cn/apache//xerces/c/3/sources/xerces
-c-${PV}.tar.gz"


SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
SRC_URI[sha256sum] = "a42785f71e0b91d5fd273831c87410
ce60a73ccfdd207de1b805d26d44968736"


inherit autotools


S = "${WORKDIR}/xerces-c-${PV}/"


EXTRA_OECONF = "\
--enable-netaccessor-curl \
--enable-transcoder-icu \
--enable-msgloader-icu \
"


but when configure come into the error:
ERROR: This autoconf log indicates errors, it looked at host include and/or
library paths while determining system capabilities.
Rerun configure task after fixing this. The path was '/home/caozhiyan/fsl-
community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/
xerces-c/3.1.1-r1/xerces-c-3.1.1'
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-
bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces
-c/3.1.1-r1/temp/log.do_configure.19932
ERROR: Task 5 (/home/caozhiyan/fsl-community-bsp/sources/meta-
fsl-hc1200/recipes-hc1200/xerces-c/xerces-c_3.1.1.bb, do_configure) failed
with exit code '1'


who can show me how to port the autotools-based project? Thanks.

--e89a8f5038e29565d304e9587f0c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div style>I have been tasked to add xerces=
-c too. There is an OE recipe already for this (you can google it).</div><d=
iv style><br></div><div style>However your recipe seems to run into the sam=
e problem that I get. The solution is not just to look at config.log and lo=
g.do_config. They display the symptoms. The one who responded to your post =
implies the fix is in the recipe by just adding extra config flags to point=
 to the correct libraries.</div>
<div style><br></div><div style>I can run ./configure outside of yocto and =
send in the libraries I want. But the OEEXTRACONFS I added in my recipe had=
 no effect on the libraries. Note that the auto tools is forcing the enable=
-poison-system directories, as it should. But the cause is further up the &=
quot;food chain&quot; so to speak.</div>
<div style><br></div><div style>The problem seems to be with a bug in lib t=
ools that Hans Beckerus found.</div><div style><br></div><div style><a href=
=3D"http://www.mail-archive.com/yocto@yoctoproject.org/msg15325.html">http:=
//www.mail-archive.com/yocto@yoctoproject.org/msg15325.html</a><br>
</div><div style><br></div><div style>Essentially it&#39;s to do with the w=
ith-libtool-sysroot usage in the libtool. I have not tried Hans&#39; soluti=
on yet but will today. =A0Hopefully this info is enough to get you started =
so you can make your own fix and use xerces-c.</div>
<div style><br></div><div style>thanks</div><div style><br></div><div style=
>Bill</div><div style><br></div><div style><br></div><div style><br></div><=
div style><br></div><div><span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">Message: 2</span><br style=3D"font-family:arial,sans-serif;font-s=
ize:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">Date: Fri, 27 S=
ep 2013 13:35:55 +0800 (CST)</span><br style=3D"font-family:arial,sans-seri=
f;font-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">From: ??? &lt;</span><a href=3D"mailto:czyhit@126.com" style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">czyhit@126.com</a><span style=3D"font-=
family:arial,sans-serif;font-size:13px">&gt;</span><br style=3D"font-family=
:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">To:=A0</span><a=
 href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family:arial,sans-ser=
if;font-size:13px">yocto@yoctoproject.org</a><br style=3D"font-family:arial=
,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">Subject: [yocto=
] how to add a new bb(</span><span class=3D"" style=3D"background-color:rgb=
(255,255,204);font-family:arial,sans-serif;font-size:13px">xerces</span><sp=
an style=3D"font-family:arial,sans-serif;font-size:13px">-c)?</span><br sty=
le=3D"font-family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">Message-ID: &lt=
;</span><a href=3D"mailto:bfe9b2.4f09.1415dea90ad.Coremail.czyhit@126.com" =
style=3D"font-family:arial,sans-serif;font-size:13px">bfe9b2.4f09.1415dea90=
ad.Coremail.czyhit@126.com</a><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">&gt;</span><br style=3D"font-family:arial,sans-serif;font-si=
ze:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">Content-Type: t=
ext/plain; charset=3D&quot;gbk&quot;</span><br style=3D"font-family:arial,s=
ans-serif;font-size:13px"><br style=3D"font-family:arial,sans-serif;font-si=
ze:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">Hello, everyone=
!</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">I try to add a new bb(</=
span><span class=3D"" style=3D"background-color:rgb(255,255,204);font-famil=
y:arial,sans-serif;font-size:13px">xerces</span><span style=3D"font-family:=
arial,sans-serif;font-size:13px">-c) to my image, bb is as followings:</spa=
n><br style=3D"font-family:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">DESCRIPTION =3D &quot;</span><span class=3D"" sty=
le=3D"background-color:rgb(255,255,204);font-family:arial,sans-serif;font-s=
ize:13px">Xerces</span><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px">-C++ is a validating XML parser written in a portable subset of C++=
.&quot;</span><br style=3D"font-family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">HOMEPAGE =3D &q=
uot;</span><a href=3D"http://xerces.apache.org/xerces-c/" target=3D"_blank"=
 style=3D"font-family:arial,sans-serif;font-size:13px">http://<span class=
=3D"" style=3D"background-color:rgb(255,255,204);color:rgb(34,34,34)">xerce=
s</span>.apache.org/<span class=3D"" style=3D"background-color:rgb(255,255,=
204);color:rgb(34,34,34)">xerces</span>-c/</a><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">&quot;</span><br style=3D"font-family:arial,=
sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">LICENSE =3D &qu=
ot;Apache&quot;</span><br style=3D"font-family:arial,sans-serif;font-size:1=
3px"><span style=3D"font-family:arial,sans-serif;font-size:13px">LIC_FILES_=
CHKSUM =3D &quot;file://src/xercesc/dom/DOM.</span><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">hpp;endline=3D22;md5=3D</span><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">9986d741cab88a8b7bc4a19d=
3c1b81</span><span style=3D"font-family:arial,sans-serif;font-size:13px">06=
 \</span><br style=3D"font-family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">file://src/xerc=
esc/parsers/</span><span style=3D"font-family:arial,sans-serif;font-size:13=
px">XercesDOMParser.hpp;endline=3D</span><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">21;md5=3D</span><span style=3D"font-family:arial,=
sans-serif;font-size:13px">85be7b6e587aa51e4f30c262f1cd69</span><span style=
=3D"font-family:arial,sans-serif;font-size:13px">5e \</span><br style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">file://src/xerc=
esc/xinclude/</span><span style=3D"font-family:arial,sans-serif;font-size:1=
3px">XIncludeDOMDocumentProcessor.</span><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">hpp;endline=3D23;md5=3D</span><span style=3D"font=
-family:arial,sans-serif;font-size:13px">4236d3c0f2537b3df547a97d60f93d</sp=
an><span style=3D"font-family:arial,sans-serif;font-size:13px">c0&quot;</sp=
an><br style=3D"font-family:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">PR =3D &quot;r1&quot;</span><br style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">DEPENDS =3D &quot;curl icu&quot;</span><br style=
=3D"font-family:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">SRC_URI =3D &quot;</span><a href=3D"http://mirror=
.bit.edu.cn/apache//xerces/c/3/sources/xerces-c-${PV}.tar.gz" target=3D"_bl=
ank" style=3D"font-family:arial,sans-serif;font-size:13px">http://mirror.bi=
t.edu.cn/apache//<span class=3D"" style=3D"background-color:rgb(255,255,204=
);color:rgb(34,34,34)">xerces</span>/c/3/sources/<span class=3D"" style=3D"=
background-color:rgb(255,255,204);color:rgb(34,34,34)">xerces</span>-c-${PV=
}.tar.gz</a><span style=3D"font-family:arial,sans-serif;font-size:13px">&qu=
ot;</span><br style=3D"font-family:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">SRC_URI[md5sum] =3D &quot;</span><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">6a8ec45d83c8cfb1584c5a5345cb51<=
/span><span style=3D"font-family:arial,sans-serif;font-size:13px">ae&quot;<=
/span><br style=3D"font-family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">SRC_URI[sha256s=
um] =3D &quot;</span><span style=3D"font-family:arial,sans-serif;font-size:=
13px">a42785f71e0b91d5fd273831c87410</span><span style=3D"font-family:arial=
,sans-serif;font-size:13px">ce60a73ccfdd207de1b805d26d4496</span><span styl=
e=3D"font-family:arial,sans-serif;font-size:13px">8736&quot;</span><br styl=
e=3D"font-family:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">inherit autotools</span><br style=3D"font-family:=
arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">S =3D &quot;${WORKDIR}/</span><span class=3D"" st=
yle=3D"background-color:rgb(255,255,204);font-family:arial,sans-serif;font-=
size:13px">xerces</span><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">-c-${PV}/&quot;</span><br style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">EXTRA_OECONF =3D &quot;\</span><br style=3D"font-=
family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">--enable-netacc=
essor-curl \</span><br style=3D"font-family:arial,sans-serif;font-size:13px=
"><span style=3D"font-family:arial,sans-serif;font-size:13px">--enable-tran=
scoder-icu \</span><br style=3D"font-family:arial,sans-serif;font-size:13px=
">
<span style=3D"font-family:arial,sans-serif;font-size:13px">--enable-msgloa=
der-icu \</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><=
span style=3D"font-family:arial,sans-serif;font-size:13px">&quot;</span><br=
 style=3D"font-family:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">but when configure come into the error:</span><br=
 style=3D"font-family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">ERROR: This aut=
oconf log indicates errors, it looked at host include and/or library paths =
while determining system capabilities.</span><br style=3D"font-family:arial=
,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">Rerun configure=
 task after fixing this. The path was &#39;/home/caozhiyan/fsl-</span><span=
 style=3D"font-family:arial,sans-serif;font-size:13px">community-bsp/build-=
hc1200/</span><span style=3D"font-family:arial,sans-serif;font-size:13px">t=
mp/work/armv7a-vfp-neon-poky-</span><span style=3D"font-family:arial,sans-s=
erif;font-size:13px">linux-gnueabi/</span><span class=3D"" style=3D"backgro=
und-color:rgb(255,255,204);font-family:arial,sans-serif;font-size:13px">xer=
ces</span><span style=3D"font-family:arial,sans-serif;font-size:13px">-c/3.=
1.1-</span><span style=3D"font-family:arial,sans-serif;font-size:13px">r1/<=
/span><span class=3D"" style=3D"background-color:rgb(255,255,204);font-fami=
ly:arial,sans-serif;font-size:13px">xerces</span><span style=3D"font-family=
:arial,sans-serif;font-size:13px">-c-3.1.1&#39;</span><br style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">ERROR: Function=
 failed: do_qa_configure</span><br style=3D"font-family:arial,sans-serif;fo=
nt-size:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">E=
RROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-</span><s=
pan style=3D"font-family:arial,sans-serif;font-size:13px">bsp/build-hc1200/=
tmp/work/</span><span style=3D"font-family:arial,sans-serif;font-size:13px"=
>armv7a-vfp-neon-poky-linux-</span><span style=3D"font-family:arial,sans-se=
rif;font-size:13px">gnueabi/</span><span class=3D"" style=3D"background-col=
or:rgb(255,255,204);font-family:arial,sans-serif;font-size:13px">xerces</sp=
an><span style=3D"font-family:arial,sans-serif;font-size:13px">-c/3.1.1-r1/=
</span><span style=3D"font-family:arial,sans-serif;font-size:13px">temp/log=
.do_configure.19932</span><br style=3D"font-family:arial,sans-serif;font-si=
ze:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">ERROR: Task 5 (=
/home/caozhiyan/fsl-</span><span style=3D"font-family:arial,sans-serif;font=
-size:13px">community-bsp/sources/meta-</span><span style=3D"font-family:ar=
ial,sans-serif;font-size:13px">fsl-hc1200/recipes-hc1200/</span><span class=
=3D"" style=3D"background-color:rgb(255,255,204);font-family:arial,sans-ser=
if;font-size:13px">xerces</span><span style=3D"font-family:arial,sans-serif=
;font-size:13px">-c/</span><a href=3D"http://xerces-c_3.1.1.bb/" target=3D"=
_blank" style=3D"font-family:arial,sans-serif;font-size:13px"><span class=
=3D"" style=3D"background-color:rgb(255,255,204);color:rgb(34,34,34)">xerce=
s</span>-c_3.1.1.bb</a><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px">, do_configure) failed with exit code &#39;1&#39;</span><br style=
=3D"font-family:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><br style=3D"font=
-family:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,s=
ans-serif;font-size:13px">who can show me how to port the autotools-based p=
roject? Thanks.</span><br>
</div></div>

--e89a8f5038e29565d304e9587f0c--
