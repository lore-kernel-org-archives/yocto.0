Return-Path: <andre1925@hotmail.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52EFDE00321; Sat, 28 Feb 2015 05:19:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_IMAGE_ONLY_28,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,T_REMOTE_IMAGE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andre1925[at]hotmail.fr)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.4 HTML_IMAGE_ONLY_28 BODY: HTML: images with 2400-2800 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.2.35 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Sat, 28 Feb 2015 05:19:53 PST
Received: from DUB004-OMC3S26.hotmail.com (dub004-omc3s26.hotmail.com
	[157.55.2.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEC9BE00321
	for <yocto@yoctoproject.org>; Sat, 28 Feb 2015 05:19:53 -0800 (PST)
Received: from DUB124-W9 ([157.55.2.9]) by DUB004-OMC3S26.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Sat, 28 Feb 2015 05:18:48 -0800
X-TMN: [yRFcOn3ihAXEzgizTGGLaB5L/o1Dq6Ar]
X-Originating-Email: [andre1925@hotmail.fr]
Message-ID: <DUB124-W90E48E5C79A2B861F1F99C9120@phx.gbl>
From: andre seame <andre1925@hotmail.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 28 Feb 2015 13:18:49 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 28 Feb 2015 13:18:48.0992 (UTC)
	FILETIME=[1696CA00:01D05359]
Subject: Unable to fetch the linux-yocto-3.14.24
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
X-List-Received-Date: Sat, 28 Feb 2015 13:19:56 -0000
Content-Type: multipart/alternative;
	boundary="_5d459d07-dc9b-4672-b6cb-777053090985_"

--_5d459d07-dc9b-4672-b6cb-777053090985_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

                                                                           =
                  =20
It is my first compilation of the Yocto system. Yesterday=2C I did git clon=
e http://git.yoctoproject.org/git/poky=2C according
the "http://www.yoctoproject.org/docs/1.7.1/yocto-project-qs/yocto-project-=
qs.html".=20

I try : bitbake -k core-image-sato
It seems that there is for each packages a sequence :=20
fetch (download form internet)
configure
compilation

This mechanism works for a lot of package=2C but fails for the kernel.=20

So I try another build with : bitbake -k core-image-rt=20
1: linux-yocto-3.14.24+gitAUTOINC+a227f20eff_38cd560d50-r0 do_fetch (pid 10=
032)
2: linux-yocto-rt-3.14.24+gitAUTOINC+a227f20eff_7f0712d102-r0 do_fetch (pid=
 10033)

So in all cases=2C my system seems to fail or is very very slow to downlaod=
 the sources of linux yocto (more 10 hours !).=20

Build Configuration:
BB_VERSION        =3D "1.24.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "CentOS-Linux-7.0.1406"
TARGET_SYS        =3D "i586-poky-linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.7.1"
TUNE_FEATURES     =3D "m32 i586"
TARGET_FPU        =3D ""

Have you idea ? Is the name of the package linux-yocto + git + a22  a legal=
 value ?=20
It seems that my question is reccurrent=2C but I don't see a solution.=20
Is it possible to see where my system try to donwload  the liunx yocto pack=
age ?=20

Thanks=2C=20
PHL.=20
 		 	   		  =

--_5d459d07-dc9b-4672-b6cb-777053090985_
Content-Type: text/html; charset="iso-8859-1"
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
<body class=3D'hmmessage'><div dir=3D'ltr'>                                =
    <div class=3D"rmTopSpacer rmTop">                          <div class=
=3D"rmButtons">                <span class=3D"rmPrev"><img src=3D"https://d=
ub124.mail.live.com/ol/clear.gif" class=3D"i_rm_p_d"></span><span class=3D"=
rmNext"><img src=3D"https://dub124.mail.live.com/ol/clear.gif" class=3D"i_r=
m_n"></span><span class=3D"rmFull "><img src=3D"https://dub124.mail.live.co=
m/ol/clear.gif" class=3D"i_r_fv"></span><span class=3D"rmClose "><img src=
=3D"https://dub124.mail.live.com/ol/clear.gif" class=3D"g_close"></span>   =
             </div></div><br>It is my first compilation of the Yocto system=
. Yesterday=2C I did git clone http://git.yoctoproject.org/git/poky=2C acco=
rding<br>the "http://www.yoctoproject.org/docs/1.7.1/yocto-project-qs/yocto=
-project-qs.html". <br><br>I try : bitbake -k core-image-sato<br>It seems t=
hat there is for each packages a sequence : <br>fetch (download form intern=
et)<br>configure<br>compilation<br><br>This mechanism works for a lot of pa=
ckage=2C but fails for the kernel. <br><br>So I try another build with : bi=
tbake -k core-image-rt <br>1: linux-yocto-3.14.24+gitAUTOINC+a227f20eff_38c=
d560d50-r0 do_fetch (pid 10032)<br>2: linux-yocto-rt-3.14.24+gitAUTOINC+a22=
7f20eff_7f0712d102-r0 do_fetch (pid 10033)<br><br>So in all cases=2C my sys=
tem seems to fail or is very very slow to downlaod the sources of linux yoc=
to (more 10 hours !). <br><br>Build Configuration:<br>BB_VERSION&nbsp=3B&nb=
sp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B =3D "1.24.0"<br>BUILD_SYS&nbs=
p=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B =3D "x86_64-li=
nux"<br>NATIVELSBSTRING&nbsp=3B&nbsp=3B =3D "CentOS-Linux-7.0.1406"<br>TARG=
ET_SYS&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B =3D "i586-po=
ky-linux"<br>MACHINE&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=
=3B&nbsp=3B&nbsp=3B&nbsp=3B =3D "qemux86"<br>DISTRO&nbsp=3B&nbsp=3B&nbsp=3B=
&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B =3D "poky"=
<br>DISTRO_VERSION&nbsp=3B&nbsp=3B&nbsp=3B =3D "1.7.1"<br>TUNE_FEATURES&nbs=
p=3B&nbsp=3B&nbsp=3B&nbsp=3B =3D "m32 i586"<br>TARGET_FPU&nbsp=3B&nbsp=3B&n=
bsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B =3D ""<br><br>Have you idea ? Is the=
 name of the package linux-yocto + git + a22&nbsp=3B a legal value ? <br>It=
 seems that my question is reccurrent=2C but I don't see a solution. <br>Is=
 it possible to see where my system try to donwload&nbsp=3B the liunx yocto=
 package ? <br><br>Thanks=2C <br>PHL. <br> 		 	   		  </div></body>
</html>=

--_5d459d07-dc9b-4672-b6cb-777053090985_--
