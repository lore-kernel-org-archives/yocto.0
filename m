Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FE4CE014E2
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 01:57:55 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id gf12so1135539vcb.18
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 01:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=zVapb2fWl69PkDT5ADjOlyQwi+STjiwmb+RZ3Mpb0Wc=;
	b=t1x+ApjnML5UTX3NzctdbMNaWabYyfwwp3OuVo9QVECYuuKlxCApz2axOEbdL+QNgs
	ebLEYVNcZr/O40Li7JabvcJsqV5UKJDBBWyh3hiI0F5AVEgL6b5WpSKZWmMLkTSt3rA9
	YN5pLwvyPjBQGDJuKUvhywEhbWCJ8tqNbQ8CZzd692+YTATmbg/SQX3rKSLHaKQ2kAfY
	T8LTqW0+OV/2nw0N1mR0rBi6zP8dMnNlsCl8SlPw6isLR0HnnBG3JHDvo8LTCZCF8q4P
	/MXWZG0EOKi+hdZ1n0qV2TWXorG0xnjjhpSHoeftiWBWLYdJEXVA19I6k3K9FbBiZp0C
	dVvg==
MIME-Version: 1.0
X-Received: by 10.58.198.79 with SMTP id ja15mr4225180vec.15.1366189074563;
	Wed, 17 Apr 2013 01:57:54 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.88.177 with HTTP; Wed, 17 Apr 2013 01:57:54 -0700 (PDT)
Date: Wed, 17 Apr 2013 10:57:54 +0200
X-Google-Sender-Auth: 7GgsjD1KoWCyJGEZGX3v5lSrRss
Message-ID: <CAFMfyzKm+N1JDJZyu-BDFwU86d824hiP3HmaQsFQxxqLo9_YvA@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: yocto@yoctoproject.org
Subject: Exporting variables and extending PATH for Embedded Java
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
X-List-Received-Date: Wed, 17 Apr 2013 08:57:55 -0000
Content-Type: multipart/alternative; boundary=047d7b6d7dfe7c4cf004da8aae3e

--047d7b6d7dfe7c4cf004da8aae3e
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

I am planning to install embedded java runtime environment and it just
needs the following steps
1. Creation of directory /usr/share/java
2. Copy the files to this directory
3. Creating a environment variable
JAVA_HOME=/usr/share/java/ejre1.7.0_10/bin
4. Extending the variable PATH=$PATH:$JAVA_HOME

here is my recipe... The first and second parts are done but I am not able
to figure out the 3rd and 4th steps.. Here is my recipe

DESCRIPTION = "Embedded Java from Oracle/Sun"

LICENSE_FLAGS = "oracle_java"
LICENSE = "Oracle_Binary_Code_License_Agreement"
LIC_FILES_CHKSUM = "\

file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=98f46ab6481d87c4d77e0e91a6dbc15f
\

file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=f5f3c0856f2ca27413b55b6ca50c897e
\

file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=c339b34e3da6673d2c5950d0f8808f8c
\
        "

SRC_URI =
"file:///home/damarla/yocto/ejre-7u10-fcs-b18-linux-arm-vfp-client_headful-28_nov_2012.gz"

SRCREV ?= "${AUTOREV}"


SRC_URI[md5sum] = "8a6f08f39f916fcdbe0d741d550741ad"
SRC_URI[sha256sum] =
"194a522bc27cf4746a0d8ca1e947b13832166ecd6f4f2fbaf5ce1df2a7493d43"

inherit allarch

do_install () {
        install -d ${D}/usr/share/java/
        cp -r ejre1.7.0_10 ${D}/usr/share/java
}


Help is deeply appreciated!
Greets,
Satya

--047d7b6d7dfe7c4cf004da8aae3e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div style>I am planning to install=
 embedded java runtime environment and it just needs the following steps</d=
iv><div style>1. Creation of directory /usr/share/java</div><div style>2. C=
opy the files to this directory</div>
<div style>3. Creating a environment variable JAVA_HOME=3D/usr/share/java/e=
jre1.7.0_10/bin</div><div style>4. Extending the variable PATH=3D$PATH:$JAV=
A_HOME</div><div style><br></div><div style>here is my recipe... The first =
and second parts are done but I am not able to figure out the 3rd and 4th s=
teps.. Here is my recipe</div>
<div style><br></div><div style><div>DESCRIPTION =3D &quot;Embedded Java fr=
om Oracle/Sun&quot;</div><div><br></div><div>LICENSE_FLAGS =3D &quot;oracle=
_java&quot;</div><div>LICENSE =3D &quot;Oracle_Binary_Code_License_Agreemen=
t&quot;</div>
<div>LIC_FILES_CHKSUM =3D &quot;\</div><div>=A0 =A0 =A0 =A0 file://${WORKDI=
R}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=3D98f46ab6481d87c4d77e0e91a6dbc=
15f \</div><div>=A0 =A0 =A0 =A0 file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDA=
TE}/COPYRIGHT;md5=3Df5f3c0856f2ca27413b55b6ca50c897e \</div>
<div>=A0 =A0 =A0 =A0 file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPA=
RTYLICENSEREADME.txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \</div><div>=A0=
 =A0 =A0 =A0 &quot;</div><div><br></div><div>SRC_URI =3D &quot;file:///home=
/damarla/yocto/ejre-7u10-fcs-b18-linux-arm-vfp-client_headful-28_nov_2012.g=
z&quot;</div>
<div><br></div><div>SRCREV ?=3D &quot;${AUTOREV}&quot;</div><div><br></div>=
<div><br></div><div>SRC_URI[md5sum] =3D &quot;8a6f08f39f916fcdbe0d741d55074=
1ad&quot;</div><div>SRC_URI[sha256sum] =3D &quot;194a522bc27cf4746a0d8ca1e9=
47b13832166ecd6f4f2fbaf5ce1df2a7493d43&quot;</div>
<div><br></div><div>inherit allarch</div><div><br></div><div>do_install () =
{</div><div>=A0 =A0 =A0 =A0 install -d ${D}/usr/share/java/</div><div>=A0 =
=A0 =A0 =A0 cp -r ejre1.7.0_10 ${D}/usr/share/java</div><div>}</div><div><b=
r></div><div>
<br></div><div style>Help is deeply appreciated!</div><div style>Greets,</d=
iv><div style>Satya</div></div></div>

--047d7b6d7dfe7c4cf004da8aae3e--
