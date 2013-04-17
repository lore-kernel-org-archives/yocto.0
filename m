Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B11CAE014B2
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 03:43:54 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id hr11so1184074vcb.8
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 03:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=wXd2G9nheDzuRy3nCUSEZYYzIS/SyOvI/2vauVSnPX8=;
	b=rEZlZ/A/r8jRnbyNEYbGe7djiLhQq4CElEuV7Fsiw7KV9m6j5kG5wqx/uhXGRWt6Gl
	IjDMhwoAIC8gFZ2uliLot+kZXKXRHus6GR6cn53Do/J3bLf9Oiqbdnt94g5xwCgOsJBT
	9Kep/EFDc+4iza61KhwUzFFPO3h+coaUGm9EBMIxcBJYn4vrgJ6eCAawQSVqti8iZAkY
	srJPSD72s89/YAiaPJuXBlun001ScwFRHM2btfA2n2UaLgTHVazmEuzSp6F5rqtJmMoM
	ydaUveBtCeFB+k+YMeYQF79y8gshlQtrNdqdHl++oA1nyB6qwoClNeuz2oA+U1BGGEFM
	AR3Q==
MIME-Version: 1.0
X-Received: by 10.52.103.50 with SMTP id ft18mr3670916vdb.108.1366195433570;
	Wed, 17 Apr 2013 03:43:53 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.88.177 with HTTP; Wed, 17 Apr 2013 03:43:53 -0700 (PDT)
In-Reply-To: <2569596.XjSoTCsBqP@fedora-fisso>
References: <CAFMfyzKm+N1JDJZyu-BDFwU86d824hiP3HmaQsFQxxqLo9_YvA@mail.gmail.com>
	<2569596.XjSoTCsBqP@fedora-fisso>
Date: Wed, 17 Apr 2013 12:43:53 +0200
X-Google-Sender-Auth: xc_jtxaDCYbCD4FjlvpoLSb_U4Q
Message-ID: <CAFMfyzJKyS7k4MtB-nbecWABqZvCZ7NZ1WbeougLpmjx2vbdBA@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: Davide Soldan <davide.soldan@kynetics.it>, yocto@yoctoproject.org
Subject: Re: Exporting variables and extending PATH for Embedded Java
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
X-List-Received-Date: Wed, 17 Apr 2013 10:43:54 -0000
Content-Type: multipart/alternative; boundary=047d7bacb7e48333a304da8c29e6

--047d7bacb7e48333a304da8c29e6
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thank you David.. This solved my issue ..


On Wed, Apr 17, 2013 at 11:17 AM, Davide Soldan
<davide.soldan@kynetics.it>wrote:

> **
>
> Environment variable should be defined in /etc/profile
>
> In my build that file is managed by "base-files" recipe. So I wrote a
> custom recipe "base-files_3.0.14.bbappend" with only a row
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>
> in the "files" directory I put the "profile" file with the definition of
> the environment variable.
>
> In that way you should overwrite the original /etc/profile with your
> custom file...
>
>
>
> In data mercoled=EC 17 aprile 2013 10:57:54, Satya Swaroop Damarla ha
> scritto:
>
> Hi Guys,
>
>
> I am planning to install embedded java runtime environment and it just
> needs the following steps
>
> 1. Creation of directory /usr/share/java
>
> 2. Copy the files to this directory
>
> 3. Creating a environment variable
> JAVA_HOME=3D/usr/share/java/ejre1.7.0_10/bin
>
> 4. Extending the variable PATH=3D$PATH:$JAVA_HOME
>
>
> here is my recipe... The first and second parts are done but I am not abl=
e
> to figure out the 3rd and 4th steps.. Here is my recipe
>
>
> DESCRIPTION =3D "Embedded Java from Oracle/Sun"
>
>
> LICENSE_FLAGS =3D "oracle_java"
>
> LICENSE =3D "Oracle_Binary_Code_License_Agreement"
>
> LIC_FILES_CHKSUM =3D "\
>
>
> file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/LICENSE;md5=3D98f46ab6481d=
87c4d77e0e91a6dbc15f
> \
>
>
> file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3Df5f3c0856f=
2ca27413b55b6ca50c897e
> \
>
>
> file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.tx=
t;md5=3Dc339b34e3da6673d2c5950d0f8808f8c
> \
>
>         "
>
>
> SRC_URI =3D
> "file:///home/damarla/yocto/ejre-7u10-fcs-b18-linux-arm-vfp-client_headfu=
l-28_nov_2012.gz"
>
>
> SRCREV ?=3D "${AUTOREV}"
>
>
>
> SRC_URI[md5sum] =3D "8a6f08f39f916fcdbe0d741d550741ad"
>
> SRC_URI[sha256sum] =3D
> "194a522bc27cf4746a0d8ca1e947b13832166ecd6f4f2fbaf5ce1df2a7493d43"
>
>
> inherit allarch
>
>
> do_install () {
>
>         install -d ${D}/usr/share/java/
>
>         cp -r ejre1.7.0_10 ${D}/usr/share/java
>
> }
>
>
>
> Help is deeply appreciated!
>
> Greets,
>
> Satya
>
>
>
>

--047d7bacb7e48333a304da8c29e6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you David.. This solved my issue ..</div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Apr 17, 2013 at=
 11:17 AM, Davide Soldan <span dir=3D"ltr">&lt;<a href=3D"mailto:davide.sol=
dan@kynetics.it" target=3D"_blank">davide.soldan@kynetics.it</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><u></u>
<div style=3D"font-family:&#39;Sans Serif&#39;;font-size:9pt;font-weight:40=
0;font-style:normal">
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">Environment variable should be defined in /etc/profile<=
/p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">In my build that file is managed by &quot;base-files&qu=
ot; recipe. So I wrote a custom recipe &quot;base-files_3.0.14.bbappend&quo=
t; with only a row</p>

<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&qu=
ot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">in the &quot;files&quot; directory I put the &quot;prof=
ile&quot; file with the definition of the environment variable.</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">In that way you should overwrite the original /etc/prof=
ile with your custom file...</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">=A0</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px">In data mercoled=EC 17 aprile 2013 10:57:54, Satya Swar=
oop Damarla ha scritto:<br></p><div><div class=3D"h5">
<p style=3D"margin-top:12px;margin-bottom:0px;margin-left:40px;margin-right=
:40px;text-indent:0px">Hi Guys,</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">I am planning to install embedded java runtime enviro=
nment and it just needs the following steps</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">1. Creation of directory /usr/share/java</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">2. Copy the files to this directory</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">3. Creating a environment variable JAVA_HOME=3D/usr/s=
hare/java/ejre1.7.0_10/bin</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">4. Extending the variable PATH=3D$PATH:$JAVA_HOME</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">here is my recipe... The first and second parts are d=
one but I am not able to figure out the 3rd and 4th steps.. Here is my reci=
pe</p>

<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">DESCRIPTION =3D &quot;Embedded Java from Oracle/Sun&q=
uot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">LICENSE_FLAGS =3D &quot;oracle_java&quot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">LICENSE =3D &quot;Oracle_Binary_Code_License_Agreemen=
t&quot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">LIC_FILES_CHKSUM =3D &quot;\</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">=A0 =A0 =A0 =A0 file://${WORKDIR}/${JDK_JRE}${PV}_${P=
V_UPDATE}/LICENSE;md5=3D98f46ab6481d87c4d77e0e91a6dbc15f \</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">=A0 =A0 =A0 =A0 file://${WORKDIR}/${JDK_JRE}${PV}_${P=
V_UPDATE}/COPYRIGHT;md5=3Df5f3c0856f2ca27413b55b6ca50c897e \</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">=A0 =A0 =A0 =A0 file://${WORKDIR}/${JDK_JRE}${PV}_${P=
V_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8=
c \</p>

<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">=A0 =A0 =A0 =A0 &quot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">SRC_URI =3D &quot;file:///home/damarla/yocto/ejre-7u1=
0-fcs-b18-linux-arm-vfp-client_headful-28_nov_2012.gz&quot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">SRCREV ?=3D &quot;${AUTOREV}&quot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">SRC_URI[md5sum] =3D &quot;8a6f08f39f916fcdbe0d741d550=
741ad&quot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">SRC_URI[sha256sum] =3D &quot;194a522bc27cf4746a0d8ca1=
e947b13832166ecd6f4f2fbaf5ce1df2a7493d43&quot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">inherit allarch</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">do_install () {</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">=A0 =A0 =A0 =A0 install -d ${D}/usr/share/java/</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">=A0 =A0 =A0 =A0 cp -r ejre1.7.0_10 ${D}/usr/share/jav=
a</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">}</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px"><br></p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">Help is deeply appreciated!</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">Greets,</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:40px;margin-right:=
40px;text-indent:0px">Satya</p>
<p style=3D"margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0=
px;text-indent:0px"><br><br></p></div></div></div></blockquote></div><br></=
div>

--047d7bacb7e48333a304da8c29e6--
