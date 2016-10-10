Return-Path: <stm32@hotmail.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17662E00C0E; Mon, 10 Oct 2016 15:36:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stm32[at]hotmail.co.uk)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.2.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Oct 2016 15:36:38 PDT
Received: from DUB004-OMC3S10.hotmail.com (dub004-omc3s10.hotmail.com
	[157.55.2.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C59DE00A7B
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 15:36:37 -0700 (PDT)
Received: from DUB123-W14 ([157.55.2.8]) by DUB004-OMC3S10.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 10 Oct 2016 15:35:34 -0700
X-TMN: [OJCA65WHVb5iFwVkGbL882EeNBYLlEww]
X-Originating-Email: [stm32@hotmail.co.uk]
Message-ID: <DUB123-W14EEF2F0CE6599A006C6E3F9DB0@phx.gbl>
From: Seb But <stm32@hotmail.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 10 Oct 2016 23:35:34 +0100
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 10 Oct 2016 22:35:34.0760 (UTC)
	FILETIME=[9DB2F680:01D22346]
X-Mailman-Approved-At: Fri, 14 Oct 2016 08:45:14 -0700
Subject: [meta-raspberrypi] build rpi-test-image for raspberrypi3
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
X-List-Received-Date: Mon, 10 Oct 2016 22:36:41 -0000
Content-Type: multipart/alternative;
	boundary="_e345246b-9b9d-48a0-a93f-b1e5eb83c959_"

--_e345246b-9b9d-48a0-a93f-b1e5eb83c959_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello=2C=20

I am trying to build the rpi-test-image for a raspberrypi3 using the Poky a=
nd raspberrypi master branches.

Below are the layers I include in my 'bblayers.conf':
${BSPDIR}/master/poky/meta \
${BSPDIR}/master/poky/meta-poky \
${BSPDIR}/master/poky/meta-yocto-bsp \
${BSPDIR}/master/meta-openembedded/meta-oe \
${BSPDIR}/master/meta-openembedded/meta-webserver \
${BSPDIR}/master/meta-openembedded/meta-networking \
${BSPDIR}/master/meta-openembedded/meta-multimedia \
${BSPDIR}/master/meta-openembedded/meta-python \
${BSPDIR}/master/meta-raspberrypi \

And I add the following to my 'local.conf':
MACHINE ??=3D "raspberrypi3"
LICENSE_FLAGS_WHITELIST =3D "commercial"


However=2C when I launch 'bitbake rpi-test-image'=2C I get the following er=
ror:
Parsing recipes: 100% |####################################################=
###########################################################################=
#########################| Time: 0:00:53
Parsing of 1961 .bb files complete (0 cached=2C 1961 parsed). 2647 targets=
=2C 134 skipped=2C 0 masked=2C 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'samba' (but /home/seb/workspace/Yocto/meta_sources=
/master/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb DEPE=
NDS on or otherwise requires it)
ERROR: samba was skipped: Recipe is blacklisted: BROKEN: fails to build wit=
h new binutils-2.27
NOTE: Runtime target 'omxplayer' is unbuildable=2C removing...
Missing or unbuildable dependency chain was: ['omxplayer'=2C 'samba']
NOTE: Runtime target 'packagegroup-rpi-test' is unbuildable=2C removing...
Missing or unbuildable dependency chain was: ['packagegroup-rpi-test'=2C 'o=
mxplayer'=2C 'samba']
ERROR: Required build target 'rpi-test-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['rpi-test-image'=2C 'packageg=
roup-rpi-test'=2C 'omxplayer'=2C 'samba']


Would someone know what I am missing? When I use the Jethro branches for a =
rasperrypi2=2C I have no problem.

Thanks in advance

Seb 		 	   		  =

--_e345246b-9b9d-48a0-a93f-b1e5eb83c959_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hello=2C <br><br>I am trying to =
build the rpi-test-image for a raspberrypi3 using the Poky and raspberrypi =
master branches.<br><br>Below are the layers I include in my 'bblayers.conf=
':<br>${BSPDIR}/master/poky/meta \<br>${BSPDIR}/master/poky/meta-poky \<br>=
${BSPDIR}/master/poky/meta-yocto-bsp \<br>${BSPDIR}/master/meta-openembedde=
d/meta-oe \<br>${BSPDIR}/master/meta-openembedded/meta-webserver \<br>${BSP=
DIR}/master/meta-openembedded/meta-networking \<br>${BSPDIR}/master/meta-op=
enembedded/meta-multimedia \<br>${BSPDIR}/master/meta-openembedded/meta-pyt=
hon \<br>${BSPDIR}/master/meta-raspberrypi \<br><br>And I add the following=
 to my 'local.conf':<br>MACHINE ??=3D "raspberrypi3"<br>LICENSE_FLAGS_WHITE=
LIST =3D "commercial"<br><br><br>However=2C when I launch 'bitbake rpi-test=
-image'=2C I get the following error:<br>Parsing recipes: 100% |###########=
###########################################################################=
##################################################################| Time: 0=
:00:53<br>Parsing of 1961 .bb files complete (0 cached=2C 1961 parsed). 264=
7 targets=2C 134 skipped=2C 0 masked=2C 0 errors.<br>NOTE: Resolving any mi=
ssing task queue dependencies<br>ERROR: Nothing PROVIDES 'samba' (but /home=
/seb/workspace/Yocto/meta_sources/master/meta-raspberrypi/recipes-multimedi=
a/omxplayer/omxplayer_git.bb DEPENDS on or otherwise requires it)<br>ERROR:=
 samba was skipped: Recipe is blacklisted: BROKEN: fails to build with new =
binutils-2.27<br>NOTE: Runtime target 'omxplayer' is unbuildable=2C removin=
g...<br>Missing or unbuildable dependency chain was: ['omxplayer'=2C 'samba=
']<br>NOTE: Runtime target 'packagegroup-rpi-test' is unbuildable=2C removi=
ng...<br>Missing or unbuildable dependency chain was: ['packagegroup-rpi-te=
st'=2C 'omxplayer'=2C 'samba']<br>ERROR: Required build target 'rpi-test-im=
age' has no buildable providers.<br>Missing or unbuildable dependency chain=
 was: ['rpi-test-image'=2C 'packagegroup-rpi-test'=2C 'omxplayer'=2C 'samba=
']<br><br><br>Would someone know what I am missing? When I use the Jethro b=
ranches for a rasperrypi2=2C I have no problem.<br><br>Thanks in advance<br=
><br>Seb 		 	   		  </div></body>
</html>=

--_e345246b-9b9d-48a0-a93f-b1e5eb83c959_--
