Return-Path: <simonkbaby@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A292E00C78; Thu, 29 Aug 2019 22:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (simonkbaby[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C7A6E00B7A
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 22:20:15 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id s21so11693582ioa.1
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 22:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=pC+1DLnvbRqAHCYtPLt7R8HZpzwQI+LKN8gCA22DPv4=;
	b=J5rQYq4icgSaC5Y+KCIPTlWuTL4XviHVZiwsXEznYw5aACu/hyxSdmlh+44Co4DKwS
	Q7OgYTQb/mPOVfBmwVvsjVKfbRG1ro40t99p9bFPDucxKQs1c/Gd70dKZsBjjnD68cX+
	+djG7CQXUFteUsWIimPMyqN0QlGa+9H9yPnGZHhhvDFW0EizzleaogYTfalFRP2bgrPP
	6mBCaKSDCaLtMsT4ENoSZaGfkqZfqKLcNt9+zg6+1K269JaXgR2kwurt5qTbmo+SLkGG
	lCKZbchGaXa9J27DXmBd2MMYDhOPp/bkeRneIIqLofSmEJPFGtf8KmMetVZ7eXkBISr9
	Fozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=pC+1DLnvbRqAHCYtPLt7R8HZpzwQI+LKN8gCA22DPv4=;
	b=a59akXz43vTWK3NmagKD5alnas/gCh+R3Q+NRuzZWvxPOvozY1mkJQ/L4YyTs/ue9i
	Ddc8MF84jtGNLJImHMjhQ3k3IQpzgSxzdzxzq5PdSgOaR24DfBt44MJMKri2fsBqnEG+
	jNJedRe/7KysDAGliSXf8wfuNvijfZnANQ8J4yv0BRMswhkvbNnHtXGzaNnZXoncTiw+
	MMH/zNI/Wadwfamvl6fisU7UmA9+s++/jE7V9KWenCev74wADXl7l2rL//GMGp5PLo8/
	tFAKn35SUTpwwZYdoBVX8XXDbEijSGjHb/Y3+3OaNNNqAs8Za12DRTs/HMUnie5MBXWY
	cHFA==
X-Gm-Message-State: APjAAAXjghX2/1Q2xOMUzmjWF3M1zOReGMa0YuXcm2yMgnDSh+7ObcSH
	S0qEMoH6n+DQfxcFj2OMYJEinR1PlVzl4vBHvQ37MVO9
X-Google-Smtp-Source: APXvYqzCJM044qPxdcdciErd/2BPy2YNDG+73pf2kmqQ1ZKDZgQ3KRk3LPNjuuDTwgibj58vxEbvE6ABKaE3WQ5LJ/M=
X-Received: by 2002:a5e:de47:: with SMTP id e7mr847611ioq.127.1567142415392;
	Thu, 29 Aug 2019 22:20:15 -0700 (PDT)
MIME-Version: 1.0
From: SIMON BABY <simonkbaby@gmail.com>
Date: Thu, 29 Aug 2019 22:20:04 -0700
Message-ID: <CAEFUPH0y8_xLhwLY7ns-NSEaPdBE39kvxF2RFH-pQz0_-rQROw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: QA Issue: Files/directories were installed but not shipped
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
X-List-Received-Date: Fri, 30 Aug 2019 05:20:17 -0000
Content-Type: multipart/alternative; boundary="000000000000fb65fc05914ec6db"

--000000000000fb65fc05914ec6db
Content-Type: text/plain; charset="UTF-8"

Hello,

I am getting "ERROR:  QA Issue:  Files/directories were installed but not
shipped". Can you please help to resolve. My logs and bb files are below.


ERROR: QA Issue: zipcpp: Files/directories were installed but not
shipped in any package:
  /usr
  /usr/include
  /usr/src
  /usr/lib
  /usr/include/zipc.h
  /usr/include/logger.h
  /usr/include/fmt
  /usr/include/fmt/format.h
  /usr/include/fmt/ranges.h
  /usr/include/fmt/printf.h


*bb file:*


#
# This file is the zipcpp recipe.
#

DEPENDS = "zeromq cppzmq"
SUMMARY = "ZeroMQ based IPC C++ library"
SECTION = "base"
LICENSE = "CLOSED"

SRC_URI = "git://git@elsvsapp02/TDY/ZIPCpp.git;protocol=ssh;branch=develop"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"

LIB_ARTIFACT = "libzipcpp.so"
LIB_VERSION = "1"

do_install() {
    install -d ${D}${libdir}
    install -m 0755 ${S}/bin/${LIB_ARTIFACT}.${LIB_VERSION}
${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}
    ln -rs ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}
${D}${libdir}/${LIB_ARTIFACT}
    install -d ${D}${includedir}
    install -m 0644 ${S}/include/zipc.h ${D}${includedir}
    install -m 0644 ${S}/include/logger.h ${D}${includedir}
    install -d ${D}${includedir}/fmt
    install -m 0644 ${S}/include/fmt/* ${D}${includedir}/fmt
}

#do_install_append() {
#    rm -r ${D}/usr/share
#}

FILES_${PN} += "${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}"
FILES_${PN} += "${libdir}/${LIB_ARTIFACT}"
PACKAGES = "${PN}"


Rgds

Simon

--000000000000fb65fc05914ec6db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"white-space:pre-wrap;font-family:courier,&qu=
ot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:=
0px;color:rgb(0,0,0)">Hello,</pre><pre style=3D"white-space:pre-wrap;font-f=
amily:courier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0=
px;margin-bottom:0px;color:rgb(0,0,0)">I am getting &quot;ERROR:  QA Issue:=
  Files/directories were installed but not=20
shipped&quot;. Can you please help to resolve. My logs and bb files are bel=
ow.</pre><pre style=3D"white-space:pre-wrap;font-family:courier,&quot;couri=
er new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;colo=
r:rgb(0,0,0)"><br></pre><pre style=3D"white-space:pre-wrap;font-family:cour=
ier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-=
bottom:0px;color:rgb(0,0,0)">ERROR: QA Issue: zipcpp: Files/directories wer=
e installed but not shipped in any package:<br>=C2=A0 /usr<br>=C2=A0 /usr/i=
nclude<br>=C2=A0 /usr/src<br>=C2=A0 /usr/lib<br>=C2=A0 /usr/include/zipc.h<=
br>=C2=A0 /usr/include/logger.h<br>=C2=A0 /usr/include/fmt<br>=C2=A0 /usr/i=
nclude/fmt/format.h<br>=C2=A0 /usr/include/fmt/ranges.h<br>=C2=A0 /usr/incl=
ude/fmt/printf.h<br></pre><pre style=3D"white-space:pre-wrap;font-family:co=
urier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margi=
n-bottom:0px;color:rgb(0,0,0)"><br></pre><pre style=3D"white-space:pre-wrap=
;font-family:courier,&quot;courier new&quot;,monospace;font-size:14px;margi=
n-top:0px;margin-bottom:0px;color:rgb(0,0,0)"><b>bb file:</b></pre><pre sty=
le=3D"white-space:pre-wrap;font-family:courier,&quot;courier new&quot;,mono=
space;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)"><br=
></pre><pre style=3D"white-space:pre-wrap;font-family:courier,&quot;courier=
 new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:=
rgb(0,0,0)">#<br># This file is the zipcpp recipe.<br>#<br><br>DEPENDS =3D =
&quot;zeromq cppzmq&quot;<br>SUMMARY =3D &quot;ZeroMQ based IPC C++ library=
&quot;<br>SECTION =3D &quot;base&quot;<br>LICENSE =3D &quot;CLOSED&quot;<br=
><br>SRC_URI =3D &quot;git://git@elsvsapp02/TDY/ZIPCpp.git;protocol=3Dssh;b=
ranch=3Ddevelop&quot;<br>SRCREV =3D &quot;${AUTOREV}&quot;<br><br>S =3D &qu=
ot;${WORKDIR}/git&quot;<br><br>LIB_ARTIFACT =3D &quot;libzipcpp.so&quot;<br=
>LIB_VERSION =3D &quot;1&quot;<br><br>do_install() {<br>=C2=A0 =C2=A0 insta=
ll -d ${D}${libdir}<br>=C2=A0 =C2=A0 install -m 0755 ${S}/bin/${LIB_ARTIFAC=
T}.${LIB_VERSION} ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}<br>=C2=A0 =
=C2=A0 ln -rs ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION} ${D}${libdir}/${=
LIB_ARTIFACT}<br>=C2=A0 =C2=A0 install -d ${D}${includedir}<br>=C2=A0 =C2=
=A0 install -m 0644 ${S}/include/zipc.h ${D}${includedir}<br>=C2=A0 =C2=A0 =
install -m 0644 ${S}/include/logger.h ${D}${includedir}<br>=C2=A0 =C2=A0 in=
stall -d ${D}${includedir}/fmt<br>=C2=A0 =C2=A0 install -m 0644 ${S}/includ=
e/fmt/* ${D}${includedir}/fmt<br>}<br><br>#do_install_append() {<br># =C2=
=A0 =C2=A0rm -r ${D}/usr/share<br>#}<br><br>FILES_${PN} +=3D &quot;${libdir=
}/${LIB_ARTIFACT}.${LIB_VERSION}&quot;<br>FILES_${PN} +=3D &quot;${libdir}/=
${LIB_ARTIFACT}&quot;<br>PACKAGES =3D &quot;${PN}&quot;<br></pre><pre style=
=3D"white-space:pre-wrap;font-family:courier,&quot;courier new&quot;,monosp=
ace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)"><br><=
/pre><pre style=3D"white-space:pre-wrap;font-family:courier,&quot;courier n=
ew&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rg=
b(0,0,0)">Rgds</pre><pre style=3D"white-space:pre-wrap;font-family:courier,=
&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bott=
om:0px;color:rgb(0,0,0)">Simon</pre></div>

--000000000000fb65fc05914ec6db--
