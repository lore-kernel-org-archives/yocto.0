Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06F57E009BB; Thu, 14 May 2015 08:27:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.114 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm21-vm6.bullet.mail.ne1.yahoo.com
	(nm21-vm6.bullet.mail.ne1.yahoo.com [98.138.91.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 797A4E00985
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 08:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1431617244; bh=5Miwu/jYHG+WhG4TT+/uEBYod1JAyjftQJ2591fLN3k=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=DzNZXHawu/kGW1lpczgFA8cPgA5r/7ga1Bd+qjJqwXjsR3ejhvwtEj4AtT4Xe0oETywhddD+bddhkE9PFMghuHwmPlrZRftupZ/syqAa+Dbk39M66iLOhYaVTKiKVvVb/0X27Jbl+x4yqSYhWeS8O1EYrgOgLy/KXB2zfaK5wfGxyVCP+3DXs9n9BEb8m0R2gFwsH/6H4VqWB4bDxmrVX50Td0P/hzpvqCIkLbi95KDNlpFwfI76oKDIlxsgCMEEv0t2k2t+ogE5e0VzNFguORrUaPILk3f10Ng+dd/nJ+WVB3FoMEoTcLZbX531fLwc7egao58TF2Ia1tyIIgDFog==
Received: from [98.138.101.130] by nm21.bullet.mail.ne1.yahoo.com with NNFMP;
	14 May 2015 15:27:24 -0000
Received: from [98.138.89.246] by tm18.bullet.mail.ne1.yahoo.com with NNFMP;
	14 May 2015 15:27:24 -0000
Received: from [127.0.0.1] by omp1060.mail.ne1.yahoo.com with NNFMP;
	14 May 2015 15:27:24 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 49787.82940.bm@omp1060.mail.ne1.yahoo.com
X-YMail-OSG: xBbnP5IVM1l2WJbtiJAR4SL3br8o8m3DotC0YFSmKcld7.ZW30eyI_OkWvnLywy
	zdmkcfUIVrMzcB4d.XzUwITBsXhtKeuRqlACDRSOju0Tcne7aUAH5HdCo.6vFRxV9JnQ_zG_Eno5
	5.m4ro0rsY1nJIKpmU8LKDcqpN4.MKdH6liVdM2XlSIVC7e1uM0GoNrVCgH5QCgh9zaWNr_DDSwf
	EBAJHqnCqkk1f9C.aU_F_vCwnAgRoPRuIQ63tQdwZ5Sq4a4RmH3tOiOBqru1E0bN1XM1BqoJvbzL
	SnQnLuMP37XYTJA7MGn9lHNlMR9AIitx61riyzmevuruL8f0cfOqmkjsZZ2l0M.2tmk0ltdCZBYi
	SqpF58aSmGmIC9yBN_pZKuJ77c9H2J3wVwjL1QnISK.808suobeOSgLvfu1y8uAHnkONofEnnN0c
	yR2Q_t3gCTk2Kf0l6zfiUpUgusDtKNxYK9fDNH4VOfIIKtZK9kapHcr9tjUSULCdjhrk5vYszsIm
	OxEM-
Received: by 217.12.8.244; Thu, 14 May 2015 15:27:22 +0000 
Date: Thu, 14 May 2015 15:27:20 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <641241749.3202512.1431617240967.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: recipe removing (some)contents of /etc
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 May 2015 15:27:28 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3202511_334074985.1431617240965"

------=_Part_3202511_334074985.1431617240965
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello
I have the below's simple recipe(starting a script in sysV runlevel 2), but=
 when I add it to the image with=20
IMAGE_INSTALL +=3D "canlogger"in my local.conf, most of the contents of /et=
c gets removed/overwritten making the system unbootable.

Does someone sees something wrong?

#####
DESCRIPTION =3D "Start CAN services logging"
SECTION =3D "examples"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"
PR =3D "r0"

SRC_URI +=3D "file://canlogger"

INITSCRIPT_NAME =3D "canlogger"
INITSCRIPT_PARAMS =3D "start 98 2 ."

do_install() {
=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/init.d/
=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/canlogger ${D}${sysconfdir}/i=
nit.d/canlogger
}

inherit update-rc.d
#####

------=_Part_3202511_334074985.1431617240965
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div>Hello</div><div id=3D"yui_3_16_0_1_1431616839404_6858"><=
br></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1431616839404_6859">I have the=
 below's simple recipe(starting a script in sysV runlevel 2), but when I ad=
d it to the image with <br></div><div dir=3D"ltr">IMAGE_INSTALL +=3D "canlo=
gger"</div><div dir=3D"ltr">in my local.conf, most of the contents of /etc =
gets removed/overwritten making the system unbootable.<br></div><div dir=3D=
"ltr"><br></div><div id=3D"yui_3_16_0_1_1431616839404_6956" dir=3D"ltr">Doe=
s someone sees something wrong?<br></div><div id=3D"yui_3_16_0_1_1431616839=
404_6955" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1431616839404_6884"=
>#####<br></div><div id=3D"yui_3_16_0_1_1431616839404_6883" dir=3D"ltr">DES=
CRIPTION =3D "Start CAN services logging"<br style=3D"" class=3D"">SECTION =
=3D "examples"<br style=3D"" class=3D"">LICENSE =3D "MIT"<br style=3D"" cla=
ss=3D"">LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ad=
e698e0bcf8506ecda2f7b4f302"<br style=3D"" class=3D"">PR =3D "r0"<br style=
=3D"" class=3D""><br style=3D"" class=3D"">SRC_URI +=3D "file://canlogger"<=
br style=3D"" class=3D""><br style=3D"" class=3D"">INITSCRIPT_NAME =3D "can=
logger"<br style=3D"" class=3D"">INITSCRIPT_PARAMS =3D "start 98 2 ."<br st=
yle=3D"" class=3D""><br style=3D"" class=3D"">do_install() {<br style=3D"" =
class=3D"">&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfdir}/init.d/<br style=
=3D"" class=3D"">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/canlogger ${=
D}${sysconfdir}/init.d/canlogger<br style=3D"" class=3D"">}<br style=3D"" c=
lass=3D""><br style=3D"" class=3D"">inherit update-rc.d<br></div><div dir=
=3D"ltr" id=3D"yui_3_16_0_1_1431616839404_6830">#####</div><div style=3D"" =
class=3D"" id=3D"yui_3_16_0_1_1431616839404_6830"><br style=3D"" class=3D""=
></div></div></body></html>

------=_Part_3202511_334074985.1431617240965--
