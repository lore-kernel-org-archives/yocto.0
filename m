Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CAC1E008DC; Mon, 20 Jul 2015 08:50:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.249 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm27-vm5.bullet.mail.ne1.yahoo.com
	(nm27-vm5.bullet.mail.ne1.yahoo.com [98.138.91.249])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1A8BE008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 08:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437407446; bh=o97LjEnc+uodtm4ewY0+AKYyF1o6XFPulughYXZQ33Q=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=DLsnYAvSe4VzT6XvgROSI/XabAbZ1r81snWeG1Vmvcns2vTv9vpvrczMZrUpRzu/yNaorD5lqx+UZp7RbhIr2xkm5hSTn8vm5BhaJrFZ/FCNdjDGNb3gnTG4gZRJgZJv8VZSS12P3UfqxmaKXZ1uaN6tGu8fDGgavc4wBjf6syMrrzDqqSqzcoE+lb50G9QTX4CDUWZGIZNtNv7G+5aKdC9q0wmbimyBqbOaoGn4e/dVfK7fMW0DO83Xzb6UoOugMBz5scNaTodOeOC5CkWFLztY5wSrSqb2NRoTHRKyLPxa0MgChx/NmScz0GJLPu3yA6VeZfzFc5u+pvbHdo3Jfg==
Received: from [98.138.226.179] by nm27.bullet.mail.ne1.yahoo.com with NNFMP;
	20 Jul 2015 15:50:46 -0000
Received: from [98.138.89.161] by tm14.bullet.mail.ne1.yahoo.com with NNFMP;
	20 Jul 2015 15:50:46 -0000
Received: from [127.0.0.1] by omp1017.mail.ne1.yahoo.com with NNFMP;
	20 Jul 2015 15:50:46 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 39575.12525.bm@omp1017.mail.ne1.yahoo.com
X-YMail-OSG: pMXANagVM1mqnVJ.tZfRGSNW3sf.NFm0PjtAyl5FKk6065TF_oUmj8g6Si3GuVo
	92LByICjY1GoNa8hxPvPQ.CHd3JkbvhF5OXwnN8VAguTTDCJBmHL27yU.MHwvX0j7jB9e0r9Wulp
	phlLgvRACXPIGBl9901.zvKP9Czo38jcAh2A.rpcQwCPrwxk7XNbdbCcFvWFlitB8rQAfidllE7M
	HzlzFPrZzI.bw0UAyOOdrugU02qOSWx59HXEW6U0AzdASaiKvuJ0wD0jdXskjukKqbAXKLvDa0qz
	U6XQFIFd565hHy7_Dqx8yyAdyGF0ZjtfA1Q2s0tbgKsK.U7XntxaB2YFErKjT5HqXwHxB6LEKXsW
	mQ8mc2.Esw1dr24sthi9rtgyj5jwGkWFjy3gQ7SCv0S5M2nGgTBG7wO79gaCiejzGqy8wkqSGndX
	TaLXoV7k1WJ83jRwUIV6.2PRwxHwDtrsBdU.eL1ynqFUZEX3Up2imLWZQhIJcJVJg_4.mgaQSvk.
	_.SOqEmwi1GAvIYEepTOAZ_RAlgNNJ9U-
Received: by 98.138.105.208; Mon, 20 Jul 2015 15:50:45 +0000 
Date: Mon, 20 Jul 2015 15:50:41 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1483998023.951321.1437407441203.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: RaspberryPi 2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Jul 2015 15:50:51 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_951320_899815232.1437407441200"

------=_Part_951320_899815232.1437407441200
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,Gary Thomas recommended installing apt-get install libsdl1.2. which =
helped withThe libsdl-native error.=C2=A0=C2=A0 Is MACHINE ??=3D "raspberry=
pi2" a valid machine.bitbake rpi-basic-image
ERROR:=C2=A0 OE-core's config sanity checker detected a potential misconfig=
uration.
=C2=A0=C2=A0=C2=A0 Either fix the cause of this error or at your own risk d=
isable the checker (see sanity.conf).
=C2=A0=C2=A0=C2=A0 Following is the list of potential problems / advisories=
:

=C2=A0=C2=A0=C2=A0 Please set a valid MACHINE in your local.conf or environ=
ment


Summary: There was 1 ERROR message shown, returning a non-zero exit code.=
=C2=A0As always any and all help is appreciated.Thanks
Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_951320_899815232.1437407441200
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1437407008300_2359"><span>Hi all,</sp=
an></div><div><span>Gary Thomas recommended installing apt-get install libs=
dl1.2. which helped with</span></div><div id=3D"yui_3_16_0_1_1437407008300_=
2452"><span id=3D"yui_3_16_0_1_1437407008300_2451">The libsdl-native error.=
&nbsp;&nbsp; Is MACHINE ??=3D "raspberrypi2" a valid machine.</span></div><=
div dir=3D"ltr" id=3D"yui_3_16_0_1_1437407008300_2440"><span>bitbake rpi-ba=
sic-image<br class=3D"">ERROR:&nbsp; OE-core's config sanity checker detect=
ed a potential misconfiguration.<br class=3D"">&nbsp;&nbsp;&nbsp; Either fi=
x the cause of this error or at your own risk disable the checker (see sani=
ty.conf).<br class=3D"">&nbsp;&nbsp;&nbsp; Following is the list of potenti=
al problems / advisories:<br class=3D""><br class=3D"">&nbsp;&nbsp;&nbsp; P=
lease set a valid MACHINE in your local.conf or environment<br class=3D""><=
br class=3D""><br class=3D"">Summary: There was 1 ERROR message shown, retu=
rning a non-zero exit code.</span></div><div id=3D"yui_3_16_0_1_14374070083=
00_2482"><div>&nbsp;As always any and all help is appreciated.</div><div>Th=
anks</div><div><br></div></div><div><div>Edward Vidal Jr.<br>e-mail develon=
e@sbcglobal.net<br>915-595-1613</div></div></div></body></html>

------=_Part_951320_899815232.1437407441200--
