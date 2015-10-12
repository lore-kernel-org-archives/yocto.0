Return-Path: <djnass_18@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89E7FE00B1E; Mon, 12 Oct 2015 10:10:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (djnass_18[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Oct 2015 10:10:01 PDT
Received: from DUB004-OMC3S13.hotmail.com (dub004-omc3s13.hotmail.com
	[157.55.2.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A08E2E00AF6
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 10:10:01 -0700 (PDT)
Received: from DUB128-W14 ([157.55.2.9]) by DUB004-OMC3S13.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 12 Oct 2015 10:08:56 -0700
X-TMN: [GDVE7nxlpQA209JZtK2KhFIAHtjogtf6MJs2ilnXGzU=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB128-W14F5A73F31F2C4FA1E3DB798310@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 12 Oct 2015 17:08:56 +0000
Importance: Normal
In-Reply-To: <DUB128-W3890E99CA3478F4E8A991D98310@phx.gbl>
References: <DUB128-W3890E99CA3478F4E8A991D98310@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Oct 2015 17:08:56.0729 (UTC)
	FILETIME=[ADFFC090:01D10510]
Subject: FW: packages are compiled but not included in the final image
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
X-List-Received-Date: Mon, 12 Oct 2015 17:10:04 -0000
Content-Type: multipart/alternative;
	boundary="_d9522e0c-db5e-4511-86c8-f5a1d4ea3681_"

--_d9522e0c-db5e-4511-86c8-f5a1d4ea3681_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable



From: djnass_18@hotmail.com
To: yocto-bounces@yoctoproject.org
Subject: [yocto] packages are compiled but not included in the final image
Date: Mon=2C 12 Oct 2015 16:53:51 +0000

=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
Hi all=2C
I am attempting to add a few executables that are not there by default in a=
 "core-image-base" image.

so my conf/local.conf looks like

MACHINE ??=3D 'imx6qsabrelite'
#after version 1.5=2C use
#MACHINE ??=3D 'nitrogen6x'

DISTRO ?=3D 'poky'
PACKAGE_CLASSES ?=3D "package_rpm package_ipk package_deb"

#dev see http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html
EXTRA_IMAGE_FEATURES =3D " debug-tweaks "
EXTRA_IMAGE_FEATURES +=3D " package-management  "
EXTRA_IMAGE_FEATURES +=3D " ssh-server-openssh lmsensors "

USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS =3D "\
    STOPTASKS=2C${TMPDIR}=2C1G=2C100K \
    STOPTASKS=2C${DL_DIR}=2C1G=2C100K \
    STOPTASKS=2C${SSTATE_DIR}=2C1G=2C100K \
    ABORT=2C${TMPDIR}=2C100M=2C1K \
    ABORT=2C${DL_DIR}=2C100M=2C1K \
    ABORT=2C${SSTATE_DIR}=2C100M=2C1K"=20
CONF_VERSION =3D "1"

BB_NUMBER_THREADS =3D '2'
PARALLEL_MAKE =3D '-j 2'
ACCEPT_FSL_EULA =3D ""


#webserver
CORE_IMAGE_EXTRA_INSTALL +=3D " apache2 php "

CORE_IMAGE_EXTRA_INSTALL +=3D " rrdtool bc screen ntp minicom  "

The image has been created but I have the following problems.

while ntpd has been installed on the image and works fine=2C the executable=
 ntpdate is NOT there.
bash is also missing from core-image-base . is that to be expected? Should =
I add it as a CORE_IMAGE_EXTRA_INSTALL or as an EXTRA_IMAGE_FEATURE ?

=0A=
 		 	   		   		 	   		  =

--_d9522e0c-db5e-4511-86c8-f5a1d4ea3681_
Content-Type: text/html; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'><br><br><div><hr id=3D"stopSpell=
ing">From: djnass_18@hotmail.com<br>To: yocto-bounces@yoctoproject.org<br>S=
ubject: [yocto] packages are compiled but not included in the final image<b=
r>Date: Mon=2C 12 Oct 2015 16:53:51 +0000<br><br>=0A=
=0A=
=0A=
<div dir=3D"ltr">=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">Hi all=2C<br>I am attempting to add a few executables that=
 are not there by default in a "core-image-base" image.<br><br>so my conf/l=
ocal.conf looks like<br><br><blockquote><font style=3D"" face=3D"Courier Ne=
w=2Csans-serif">MACHINE ??=3D 'imx6qsabrelite'</font><font style=3D"" face=
=3D"Courier New=2Csans-serif"><br></font><font style=3D"" face=3D"Courier N=
ew=2Csans-serif">#after version 1.5=2C use</font><font style=3D"" face=3D"C=
ourier New=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2C=
sans-serif">#MACHINE ??=3D 'nitrogen6x'</font><font style=3D"" face=3D"Cour=
ier New=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2Csan=
s-serif"><br></font><font style=3D"" face=3D"Courier New=2Csans-serif">DIST=
RO ?=3D 'poky'</font><font style=3D"" face=3D"Courier New=2Csans-serif"><br=
></font><font style=3D"" face=3D"Courier New=2Csans-serif">PACKAGE_CLASSES =
?=3D "package_rpm package_ipk package_deb"</font><font style=3D"" face=3D"C=
ourier New=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2C=
sans-serif"><br></font><font style=3D"" face=3D"Courier New=2Csans-serif">#=
dev see http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html</=
font><font style=3D"" face=3D"Courier New=2Csans-serif"><br></font><font st=
yle=3D"" face=3D"Courier New=2Csans-serif">EXTRA_IMAGE_FEATURES =3D " debug=
-tweaks "</font><font style=3D"" face=3D"Courier New=2Csans-serif"><br></fo=
nt><font style=3D"" face=3D"Courier New=2Csans-serif">EXTRA_IMAGE_FEATURES =
+=3D " package-management&nbsp=3B "</font><font style=3D"" face=3D"Courier =
New=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2Csans-se=
rif">EXTRA_IMAGE_FEATURES +=3D " ssh-server-openssh </font><font style=3D""=
 face=3D"Courier New=2Csans-serif"><font style=3D"" face=3D"Courier New=2Cs=
ans-serif"><font style=3D"" face=3D"Courier New=2Csans-serif">lmsensors</fo=
nt></font> "</font><font style=3D"" face=3D"Courier New=2Csans-serif"><br><=
/font><font style=3D"" face=3D"Courier New=2Csans-serif"><br></font><font s=
tyle=3D"" face=3D"Courier New=2Csans-serif">USER_CLASSES ?=3D "buildstats i=
mage-mklibs image-prelink"</font><font style=3D"" face=3D"Courier New=2Csan=
s-serif"><br></font><font style=3D"" face=3D"Courier New=2Csans-serif">PATC=
HRESOLVE =3D "noop"</font><font style=3D"" face=3D"Courier New=2Csans-serif=
"><br></font><font style=3D"" face=3D"Courier New=2Csans-serif">BB_DISKMON_=
DIRS =3D "\</font><font style=3D"" face=3D"Courier New=2Csans-serif"><br></=
font><font style=3D"" face=3D"Courier New=2Csans-serif">&nbsp=3B&nbsp=3B&nb=
sp=3B STOPTASKS=2C${TMPDIR}=2C1G=2C100K \</font><font style=3D"" face=3D"Co=
urier New=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2Cs=
ans-serif">&nbsp=3B&nbsp=3B&nbsp=3B STOPTASKS=2C${DL_DIR}=2C1G=2C100K \</fo=
nt><font style=3D"" face=3D"Courier New=2Csans-serif"><br></font><font styl=
e=3D"" face=3D"Courier New=2Csans-serif">&nbsp=3B&nbsp=3B&nbsp=3B STOPTASKS=
=2C${SSTATE_DIR}=2C1G=2C100K \</font><font style=3D"" face=3D"Courier New=
=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2Csans-serif=
">&nbsp=3B&nbsp=3B&nbsp=3B ABORT=2C${TMPDIR}=2C100M=2C1K \</font><font styl=
e=3D"" face=3D"Courier New=2Csans-serif"><br></font><font style=3D"" face=
=3D"Courier New=2Csans-serif">&nbsp=3B&nbsp=3B&nbsp=3B ABORT=2C${DL_DIR}=2C=
100M=2C1K \</font><font style=3D"" face=3D"Courier New=2Csans-serif"><br></=
font><font style=3D"" face=3D"Courier New=2Csans-serif">&nbsp=3B&nbsp=3B&nb=
sp=3B ABORT=2C${SSTATE_DIR}=2C100M=2C1K" </font><font style=3D"" face=3D"Co=
urier New=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2Cs=
ans-serif">CONF_VERSION =3D "1"</font><font style=3D"" face=3D"Courier New=
=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2Csans-serif=
"><br></font><font style=3D"" face=3D"Courier New=2Csans-serif">BB_NUMBER_T=
HREADS =3D '2'</font><font style=3D"" face=3D"Courier New=2Csans-serif"><br=
></font><font style=3D"" face=3D"Courier New=2Csans-serif">PARALLEL_MAKE =
=3D '-j 2'</font><font style=3D"" face=3D"Courier New=2Csans-serif"><br></f=
ont><font style=3D"" face=3D"Courier New=2Csans-serif">ACCEPT_FSL_EULA =3D =
""</font><font style=3D"" face=3D"Courier New=2Csans-serif"><br></font><fon=
t style=3D"" face=3D"Courier New=2Csans-serif"><br></font><font style=3D"" =
face=3D"Courier New=2Csans-serif"><br></font><font style=3D"" face=3D"Couri=
er New=2Csans-serif">#webserver</font><font style=3D"" face=3D"Courier New=
=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2Csans-serif=
">CORE_IMAGE_EXTRA_INSTALL +=3D " apache2 php "</font><font style=3D"" face=
=3D"Courier New=2Csans-serif"><br></font><font style=3D"" face=3D"Courier N=
ew=2Csans-serif"><br></font><font style=3D"" face=3D"Courier New=2Csans-ser=
if">CORE_IMAGE_EXTRA_INSTALL +=3D " rrdtool bc screen ntp minicom&nbsp=3B</=
font><font style=3D"" face=3D"Courier New=2Csans-serif"><font style=3D"" fa=
ce=3D"Courier New=2Csans-serif"> </font>"</font><br><br></blockquote>The im=
age has been created but I have the following problems.<br><br>while ntpd h=
as been installed on the image and works fine=2C the executable ntpdate is =
NOT there.<br>bash is also missing from core-image-base . is that to be exp=
ected? Should I add it as a CORE_IMAGE_EXTRA_INSTALL or as an EXTRA_IMAGE_F=
EATURE ?<br><br></div>=0A=
 		 	   		  </div></div> 		 	   		  </div></body>
</html>=

--_d9522e0c-db5e-4511-86c8-f5a1d4ea3681_--
