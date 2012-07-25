Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3671E00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 01:36:14 -0700 (PDT)
Received: by lboj14 with SMTP id j14so496662lbo.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 01:36:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=Mge5XIZ57dcuw5IYENLkw/dH8yNHEF890SJIbvBAs6A=;
	b=pS5nEKnlBeHmAHN4X6f5YUQ5P3KZVGDXy5f5VG4XR0EMYzUGSR3Sl7k2Sa9j0rXXjH
	YrRxfRRXpiEfpz9NMALqn/QzGeDG+UFAAD9ahsPRtFc9rHsYtKw/wIE/TJ5xkeZ+qCDj
	I3nZn15xxLW5UBTh/qPf3fQbvCo6U11Rn9dFCjmQFOl/eEieQyEfScdfRIN3wKE3/4mV
	90Sq1rQUZns2Ffpsw1DqjSyIIF5zVEWR72imCW3xGkq3tjDW/bwyIvB/IPaRK/c1KeqM
	SYExo1FI79zhUEYdDI5IdzFRFuzmPYP1Xc9vloqVD/wNFHvLdWtuF+tvlVO+2FUawrCa
	kgng==
Received: by 10.152.110.70 with SMTP id hy6mr15300055lab.44.1343205373584;
	Wed, 25 Jul 2012 01:36:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 25 Jul 2012 01:35:53 -0700 (PDT)
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 25 Jul 2012 10:35:53 +0200
Message-ID: <CANsUPaOukMiAGQSZPJQ6ZrpZX4=or2DCesr8bC6hEmQyiZobYA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmrrf4OHiDJzyyf72uh1d9EqVdjdiW3aqdlsYCUdB530HRRA59PleubjOfRE+nAhbKdWGzb
Subject: Yocto and Google Protocol Buffers
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Jul 2012 08:36:15 -0000
Content-Type: multipart/alternative; boundary=bcaec54ee7b82726a704c5a35fa5

--bcaec54ee7b82726a704c5a35fa5
Content-Type: text/plain; charset=ISO-8859-1

Hi,

does anyone have configured a recipe for make Google Protocol
Buffers working?
This is my recipe:

*SUMMARY = "Protocol Buffers - Google's data interchange format"*
*DESCRIPTION = "Protocol Buffers are a way of encoding structured data in
an efficient yet extensible format"*
*SECTION = "libs"*
*
*
*LICENSE = "LGPLv2.1"*
*#LIC_FILES_CHKSUM =
"file://../protobuf-2.4.1/COPYING.txt;md5=af6809583bfde9a31595a58bb4a24514"*
*LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/LGPL-2.1;md5=1a6d268fd218675ffea8be556788b780"
*
*
*
*PR = "r0"*
*
*
*SRC_URI = "http://protobuf.googlecode.com/files/protobuf-2.4.1.tar.gz"*
*
*
*SRC_URI[md5sum] = "dc84e9912ea768baa1976cb7bbcea7b5"*
*SRC_URI[sha256sum] =
"eac6969b617f397247e805267da2b0db3ff9e5a9163b123503a192fbb5776567"*
*
*
*inherit autotools*
*
*
*do_configure() {*
* ./configure --host=arm*
*}*
*
*
bin/bash:
/home/gfoiani/yocto/fsl-community-bsp/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/protobuf-2.4.1-r0/protobuf-2.4.1/src/protoc:
cannot execute binary file
make[2]: *** [unittest_proto_middleman] Error 126

I also tried with *-with-protoc=protoc *option in configure command but
without success..
Does anyone can help me to write a correct recipe for Protobuf library (and
also for protobuf-c)?

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)

--bcaec54ee7b82726a704c5a35fa5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>does anyone have configured a recipe for make Google=
 Protocol Buffers=A0working?</div><div>This is my recipe:</div><div><br></d=
iv><div><div><i>SUMMARY =3D &quot;Protocol Buffers - Google&#39;s data inte=
rchange format&quot;</i></div>

<div><i>DESCRIPTION =3D &quot;Protocol Buffers are a way of encoding struct=
ured data in an efficient yet extensible format&quot;</i></div><div><i>SECT=
ION =3D &quot;libs&quot;</i></div><div><i><br></i></div><div><i>LICENSE =3D=
 &quot;LGPLv2.1&quot;</i></div>

<div><i>#LIC_FILES_CHKSUM =3D &quot;file://../protobuf-2.4.1/COPYING.txt;md=
5=3Daf6809583bfde9a31595a58bb4a24514&quot;</i></div><div><i>LIC_FILES_CHKSU=
M =3D &quot;file://${COMMON_LICENSE_DIR}/LGPL-2.1;md5=3D1a6d268fd218675ffea=
8be556788b780&quot;</i></div>

<div><i><br></i></div><div><i>PR =3D &quot;r0&quot;</i></div><div><i><br></=
i></div><div><i>SRC_URI =3D &quot;<a href=3D"http://protobuf.googlecode.com=
/files/protobuf-2.4.1.tar.gz">http://protobuf.googlecode.com/files/protobuf=
-2.4.1.tar.gz</a>&quot;</i></div>

<div><i><br></i></div><div><i>SRC_URI[md5sum] =3D &quot;dc84e9912ea768baa19=
76cb7bbcea7b5&quot;</i></div><div><i>SRC_URI[sha256sum] =3D &quot;eac6969b6=
17f397247e805267da2b0db3ff9e5a9163b123503a192fbb5776567&quot;</i></div><div=
>

<i><br></i></div><div><i>inherit autotools</i></div><div><i><br></i></div><=
div><i>do_configure() {</i></div><div><i><span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">	</span>./configure --host=3Darm</i></div><div><i>}<=
/i></div>

</div><div><i><br></i></div><div>bin/bash: /home/gfoiani/yocto/fsl-communit=
y-bsp/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/protobuf-2.4.1-r0/p=
rotobuf-2.4.1/src/protoc: cannot execute binary file</div><div>make[2]: ***=
 [unittest_proto_middleman] Error 126</div>

<div><br></div><div>I also tried with=A0<i>-with-protoc=3Dprotoc </i>option=
 in configure command but without success..</div><div>Does anyone can help =
me to write a correct recipe for Protobuf library (and also for protobuf-c)=
?</div>

<div><br></div><div>Thanks</div><div><br></div><div>Giovanni</div><div>--</=
div><div><div><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-s=
erif"><span style=3D"border-collapse:collapse"><br></span></font></div><div=
>

Cell:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>m=
ail:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_=
blank">giovanni.foiani@unife.it</a></div><div><span style=3D"font-family:ar=
ial,helvetica,sans-serif;font-size:13px;line-height:13px">CenTec - Corso Gu=
ercino, 47 - 44042 Cento (FE)</span></div>

<br>
</div>

--bcaec54ee7b82726a704c5a35fa5--
