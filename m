Return-Path: <bsoren@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46B56E00B54; Sat, 21 May 2016 16:53:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bsoren[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0003]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Sat, 21 May 2016 16:53:46 PDT
Received: from BLU004-OMC3S9.hotmail.com (blu004-omc3s9.hotmail.com
	[65.55.116.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4BA0E009C3
	for <yocto@yoctoproject.org>; Sat, 21 May 2016 16:53:46 -0700 (PDT)
Received: from BLU171-W108 ([65.55.116.74]) by BLU004-OMC3S9.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Sat, 21 May 2016 16:52:45 -0700
X-TMN: [EjxwSyNzb2+wIQmS1+oOGi6VV7GYRgf8]
X-Originating-Email: [bsoren@hotmail.com]
Message-ID: <BLU171-W1085648A84ED37DD927FDC3C84C0@phx.gbl>
From: Bjorn Sorensen <bsoren@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sun, 22 May 2016 01:52:44 +0200
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 21 May 2016 23:52:45.0229 (UTC)
	FILETIME=[DF03F5D0:01D1B3BB]
Subject: populate_sysroot error, need SSTATE_DUPWHITELIST variable. How?
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
X-List-Received-Date: Sat, 21 May 2016 23:53:50 -0000
Content-Type: multipart/alternative;
	boundary="_92c73068-e567-45b1-88c2-cef0e4a0a0f0_"

--_92c73068-e567-45b1-88c2-cef0e4a0a0f0_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2CI need to have two separate recipes for "libftdi" and "ftdi-eeprom" in=
 my meta layer=2C which both of them are build dependencies for one package=
. The issue is that the said packages are actually in one tarball and when =
I build "libftdi" it builds both of them. So then when the "ftdi-eeprom" re=
cipe gets called and tries to install its files=2C I get a "populate_sysroo=
t" error.
I read the error and looks like that I need to set a SSTATE_DUPWHITELIST to=
 allow the files to be written over the others (since they are basically th=
e same files just from two recipes).=20
I dont know how & where to configure this variable. Also could not find any=
 documentation about SSTATE_DUPWHITELIST either. I would highly appreciate =
if somebody could help me with that or give me instructions.
Error:ERROR: The recipe ftdi-eeprom is trying to install files into a share=
d area when those files already exist. Those files and their manifest locat=
ion are:=0A=
   /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftd=
i1.a=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdip=
p1.so.2.3.0=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdi1=
.so.2.3.0=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdip=
p1.so=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdi1=
.so=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdip=
p1.a=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdip=
p1.so.2=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdi1=
.so.2=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/cmake/li=
bftdi1/UseLibFTDI1.cmake=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/cmake/li=
bftdi1/LibFTDI1Config.cmake=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/cmake/li=
bftdi1/LibFTDI1ConfigVersion.cmake=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/pkgconfi=
g/libftdi1.pc=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/pkgconfi=
g/libftdipp1.pc=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/include/libf=
tdi1/ftdi.h=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/include/libf=
tdi1/ftdi.hpp=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/bin/crossscr=
ipts/libftdi1-config=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
Please verify which recipe should provide the above files.=0A=
The build has stopped as continuing in this scenario WILL break things=2C i=
f not now=2C possibly in the future (we've seen builds fail several months =
later).... output deleted.Thanks a lot! 		 	   		  =

--_92c73068-e567-45b1-88c2-cef0e4a0a0f0_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><p style=3D"margin-bottom: 1em=
=3B border: 0px=3B clear: both=3B color: rgb(36=2C 39=2C 41)=3B line-height=
: 19.5px=3B background-color: rgb(255=2C 255=2C 255)=3B"><font face=3D"Aria=
l=2C sans-serif" size=3D"3">Hi=2C</font></p><p style=3D"margin-bottom: 1em=
=3B border: 0px=3B clear: both=3B color: rgb(36=2C 39=2C 41)=3B line-height=
: 19.5px=3B background-color: rgb(255=2C 255=2C 255)=3B"><font face=3D"Aria=
l=2C sans-serif" size=3D"3">I need to have two separate recipes for "libftd=
i" and "ftdi-eeprom" in my meta layer=2C which both of them are build depen=
dencies for one package. The issue is that the said packages are actually i=
n one tarball and when I build "libftdi" it builds both of them. So then wh=
en the "ftdi-eeprom" recipe gets called and tries to install its files=2C I=
 get a "<span style=3D"white-space: pre-wrap=3B">populate_sysroot" error.</=
span></font></p><p style=3D"margin-bottom: 1em=3B border: 0px=3B clear: bot=
h=3B color: rgb(36=2C 39=2C 41)=3B line-height: 19.5px=3B background-color:=
 rgb(255=2C 255=2C 255)=3B"><font face=3D"Arial=2C sans-serif" size=3D"3"><=
span style=3D"white-space: pre-wrap=3B"><br></span></font></p><p style=3D"m=
argin-bottom: 1em=3B border: 0px=3B clear: both=3B color: rgb(36=2C 39=2C 4=
1)=3B line-height: 19.5px=3B background-color: rgb(255=2C 255=2C 255)=3B"><=
font face=3D"Arial=2C sans-serif" size=3D"3"><span style=3D"white-space: pr=
e-wrap=3B">I read the error and looks like that I need to set a SSTATE_DUPW=
HITELIST to allow the files to be written over the others (since they are b=
asically the same files just from two recipes).&nbsp=3B</span></font></p><p=
 style=3D"margin-bottom: 1em=3B border: 0px=3B clear: both=3B color: rgb(36=
=2C 39=2C 41)=3B line-height: 19.5px=3B background-color: rgb(255=2C 255=2C=
 255)=3B"><font face=3D"Arial=2C sans-serif" size=3D"3"><span style=3D"whit=
e-space: pre-wrap=3B"><br></span></font></p><p style=3D"margin-bottom: 1em=
=3B border: 0px=3B clear: both=3B color: rgb(36=2C 39=2C 41)=3B line-height=
: 19.5px=3B background-color: rgb(255=2C 255=2C 255)=3B"><font face=3D"Aria=
l=2C sans-serif" size=3D"3"><span style=3D"white-space: pre-wrap=3B">I dont=
 know how &amp=3B where to configure this variable. Also could not find any=
 documentation about SSTATE_DUPWHITELIST either. I would highly appreciate =
if somebody could help me with that or give me instructions.</span></font><=
/p><p style=3D"margin-bottom: 1em=3B border: 0px=3B clear: both=3B color: r=
gb(36=2C 39=2C 41)=3B line-height: 19.5px=3B background-color: rgb(255=2C 2=
55=2C 255)=3B"><font face=3D"Arial=2C sans-serif" size=3D"3"><span style=3D=
"white-space: pre-wrap=3B"><br></span></font></p><p style=3D"margin-bottom:=
 1em=3B border: 0px=3B clear: both=3B color: rgb(36=2C 39=2C 41)=3B line-he=
ight: 19.5px=3B background-color: rgb(255=2C 255=2C 255)=3B"><font face=3D"=
Arial=2C sans-serif" size=3D"3"><span style=3D"white-space: pre-wrap=3B"><u=
>Error:</u></span></font></p><pre id=3D"code" class=3D"brush: text=3B plain=
-text" style=3D"margin-top: 0px=3B margin-bottom: 0px=3B padding: 10px=3B w=
hite-space: pre-wrap=3B word-wrap: break-word=3B font-size: 12px=3B">ERROR:=
 The recipe ftdi-eeprom is trying to install files into a shared area when =
those files already exist. Those files and their manifest location are:=0A=
   /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftd=
i1.a=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdip=
p1.so.2.3.0=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdi1=
.so.2.3.0=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdip=
p1.so=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdi1=
.so=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdip=
p1.a=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdip=
p1.so.2=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/libftdi1=
.so.2=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/cmake/li=
bftdi1/UseLibFTDI1.cmake=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/cmake/li=
bftdi1/LibFTDI1Config.cmake=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/cmake/li=
bftdi1/LibFTDI1ConfigVersion.cmake=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/pkgconfi=
g/libftdi1.pc=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/lib/pkgconfi=
g/libftdipp1.pc=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/include/libf=
tdi1/ftdi.h=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/include/libf=
tdi1/ftdi.hpp=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
 /home/soroush/yocto/ros-bbb/build/tmp/sysroots/beaglebone/usr/bin/crossscr=
ipts/libftdi1-config=0A=
 Matched in manifest-beaglebone-libftdi.populate_sysroot=0A=
Please verify which recipe should provide the above files.=0A=
The build has stopped as continuing in this scenario WILL break things=2C i=
f not now=2C possibly in the future (we've seen builds fail several months =
later).... output deleted.</pre><pre id=3D"code" class=3D"brush: text=3B pl=
ain-text" style=3D"margin-top: 0px=3B margin-bottom: 0px=3B padding: 10px=
=3B white-space: pre-wrap=3B word-wrap: break-word=3B font-size: 12px=3B">T=
hanks a lot!</pre> 		 	   		  </div></body>
</html>=

--_92c73068-e567-45b1-88c2-cef0e4a0a0f0_--
