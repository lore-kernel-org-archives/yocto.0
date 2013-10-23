Return-Path: <billmartin544@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B09CDE0167D
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 13:44:34 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id ar20so2368205iec.0
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 13:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VJINOgmZF9uILSk0ocLzssG4kM7A0EqlfA+lZQCrFMY=;
	b=zQ5B4Mz587rUw2v9dU4nnpwlGXW/yGRNtwtsaDhXE5bDSOcByGinXTCiypKO49JvYT
	WGK37BMkC2rwY5eW/1YkJ0gMaB/Lk/yjSTJjvvcD50Byn3unnQ27BuG4kzdZLwE0J/1o
	nIKNMdOsSdjHuX5Aokt70He8jp0XLvwAqPGYaG3kJYShBysoV8sjq7atHMaX6E9LHBG1
	U5vGDFryKrG8asahHhG9SlwzD+IMI9wI7LAJMuIkA27a+tTOdBxlqZdngN8oHFo2yyqk
	VRphkk5BKPNwcXJddqPUOQySy3aA1PLdjR2PCsTZ2iC+SLnou4L2I/UMMn0IjYR9Nm2C
	WqQQ==
MIME-Version: 1.0
X-Received: by 10.50.61.35 with SMTP id m3mr1882246igr.56.1382561073103; Wed,
	23 Oct 2013 13:44:33 -0700 (PDT)
Received: by 10.64.228.199 with HTTP; Wed, 23 Oct 2013 13:44:33 -0700 (PDT)
Date: Wed, 23 Oct 2013 13:44:33 -0700
Message-ID: <CAJGS5=GVa1XOhvchcSjnhDM3eR-yKmxyDr8F3xf9yuRcqRBspw@mail.gmail.com>
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: how to add a new bb(xerces-c)
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
X-List-Received-Date: Wed, 23 Oct 2013 20:44:34 -0000
Content-Type: multipart/alternative; boundary=001a1134b62ca488b604e96e9514

--001a1134b62ca488b604e96e9514
Content-Type: text/plain; charset=ISO-8859-1

Okay I dug further and got much further to pass do_install

I noticed in my Yocto 9.0.2 Dylan release I have an ICU package. Just in
case, I added the extra installs of icu and xerces-c to my local.conf

then in your xerces-c bitbake recipe you need to add
--with-icu=${STAGING_DIR_HOST} to your EXTRA_OECONF

My EXTRA_OECONF is

EXTRA_OECONF= "--with-icu=${STAGING_DIR_HOST} ICU_FLAGS=-I${STAGING_INCDIR}
LDFLAGS=-L${STAGING_BASELIBDIR} --build=x86_64-linux --host=i586-poky-linux"

To be safe I also added ICU_FLAGS=${STAGING_DIR_HOST} but I probably do not
need it. In fact that's what I tried first and it had no effect. grepping
through my config.log I traced to where ICU_FLAGS kept being set stubbornly
to -I/usr/include. I will clean this up and get rid of my LDFLAGS which I
don't need. Also the ICU_FLAGS.

The problem (and Hans Beckerus pointed out to me) was the poisonous header
files from the build machine in /usr/include. Note that icu is staged - you
can find its libraries in the usr/lib subfolder in your host staging
directory. All the pieces to the puzzle are there.

Thanks

Bill


Original post was

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

--001a1134b62ca488b604e96e9514
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Okay I dug further and got much further to pass do_install=
<div><br></div><div>I noticed in my Yocto 9.0.2 Dylan release I have an ICU=
 package. Just in case, I added the extra installs of icu and xerces-c to m=
y local.conf</div>
<div><br></div><div>then in your xerces-c bitbake recipe you need to add --=
with-icu=3D${STAGING_DIR_HOST} to your EXTRA_OECONF</div><div><br></div><di=
v style>My EXTRA_OECONF is=A0</div><div style><br></div><div style>EXTRA_OE=
CONF=3D &quot;--with-icu=3D${STAGING_DIR_HOST} ICU_FLAGS=3D-I${STAGING_INCD=
IR} LDFLAGS=3D-L${STAGING_BASELIBDIR} --build=3Dx86_64-linux --host=3Di586-=
poky-linux&quot;<br>
</div><div><br></div><div>To be safe I also added ICU_FLAGS=3D${STAGING_DIR=
_HOST} but I probably do not need it. In fact that&#39;s what I tried first=
 and it had no effect. grepping through my config.log I traced to where ICU=
_FLAGS kept being set stubbornly to -I/usr/include. I will clean this up an=
d get rid of my LDFLAGS which I don&#39;t need. Also the ICU_FLAGS.</div>
<div><br></div><div>The problem (and Hans Beckerus pointed out to me) was t=
he poisonous header files from the build machine in /usr/include. Note that=
 icu is staged - you can find its libraries in the usr/lib subfolder in you=
r host staging directory. All the pieces to the puzzle are there.=A0</div>
<div><br></div><div style>Thanks</div><div style><br></div><div style>Bill<=
/div><div><br><div><br></div><div style>Original post was</div><div style><=
br></div><div style><span style=3D"font-family:arial,sans-serif;font-size:1=
3px">Date: Fri, 27 Sep 2013 13:35:55 +0800 (CST)</span><br style=3D"font-fa=
mily:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">From: ??? &lt;<=
/span><a href=3D"mailto:czyhit@126.com" style=3D"font-family:arial,sans-ser=
if;font-size:13px">czyhit@126.com</a><span style=3D"font-family:arial,sans-=
serif;font-size:13px">&gt;</span><br style=3D"font-family:arial,sans-serif;=
font-size:13px">
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
</div></div></div>

--001a1134b62ca488b604e96e9514--
