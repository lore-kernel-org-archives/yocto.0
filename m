Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6E38E009C5; Mon, 20 Jul 2015 11:26:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.90.87 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm24.bullet.mail.ne1.yahoo.com (nm24.bullet.mail.ne1.yahoo.com
	[98.138.90.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B723E008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 11:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437416813; bh=JVMDuhmSFj7QnaY5e4vsMaXERdwlEXqooT71PxCBynw=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=t+ufdGHcH6a0jZbvyzFhvXkSPpGXWJWmurbBFz4/a2Akm04la1F7P6sFOUdBPizypVZIe6t7H6eeTTj20TFIAR8a8tVdlxdPB6+M5vsIbrwexjLDJLc1P+chYfSF5mrSkV84WO0a4pxlfOl+OfC1wJPeRUrFJ+4Veejxp1dXCUlib5nVqcpOlqYn3a2Rsxh3loDv9YfUZzV6pvziY1sGLMqOLofuoMUB0LgLV4EY0mCXZ9jG529rMTZ62EOh1tQwkbCNwswJn4KH6KCRVRvO0FFyCIrp/rIOZH8EQGhKuWPg8HkonYAQGvJdx/8SIHtzqHHoO6zgm26pyJAhXvZBKg==
Received: from [98.138.101.130] by nm24.bullet.mail.ne1.yahoo.com with NNFMP;
	20 Jul 2015 18:26:53 -0000
Received: from [98.138.86.157] by tm18.bullet.mail.ne1.yahoo.com with NNFMP;
	20 Jul 2015 18:26:53 -0000
Received: from [127.0.0.1] by omp1015.mail.ne1.yahoo.com with NNFMP;
	20 Jul 2015 18:26:53 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 525515.88321.bm@omp1015.mail.ne1.yahoo.com
X-YMail-OSG: AVYLG4AVM1kMDHEsKrTBcOk009zfhULXtUob31cEcRTHr3aFRj.pWOc68beYbYW
	CoQEkIS61qzZkih5M98rWDLq_nmsxXbcQQAT4UJvYo.r9idonJQqsMoopgeOL7tBb4TJ2D5PGmWz
	wf9Alb5JDdoAlLy8LPeYkVG0L6sUWnsle3QT4SCPyeSWe7WybuMXOp.qzkHE6Ol7WDBT1S34C62.
	XVnpvffWFDaVjAiuT8bR4oLSUxJsaN04jWTG_RAhAb4gL1wCt8bOTltctuTMQjxhU.F5vo2yBf8q
	qK.9QPRiuHYmoWIPC4FLYZ0_vBnAG8Ld78KTtketSweNsBzlfgPTR_UXs0EYmlh4j4yHyGjTgUW4
	rP2t4JUaFYEqrWC9dPo4xRlKWLbYR0zj_KlS9d8pOixBL.YNyZNB1Z5nTeRCtslN28onEWcKgDl9
	3naFILBHMkIZxXc4lmH17SjxFmc1k9gV8bLyp3daTUQmuEIQnv7MxDQgreu9fnQnncxNNzdv30jP
	szmTaItD7Owhr8RgmSeHf8gX68vcC_X4-
Received: by 98.138.105.212; Mon, 20 Jul 2015 18:26:52 +0000 
Date: Mon, 20 Jul 2015 18:26:47 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <946917214.1073911.1437416807563.JavaMail.yahoo@mail.yahoo.com>
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
X-List-Received-Date: Mon, 20 Jul 2015 18:26:57 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1073910_193399689.1437416807560"

------=_Part_1073910_193399689.1437416807560
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,
I made the following changes in local.conf--- ../../local.conf.orig=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-20 07:01:42.835320506 -0600
+++ conf/local.conf=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-20 10:50:00.129187741 -=
0600
@@ -34,7 +34,10 @@
=C2=A0#MACHINE ?=3D "edgerouter"
=C2=A0#
=C2=A0# This sets the default machine to be qemux86 if no other machine is =
selected:
-MACHINE ??=3D "qemux86"
+#MACHINE ??=3D "qemux86"
+MACHINE =3D "raspberrypi2"
+MACHINE ??=3D "raspberrypi2"
+GPU_MEM =3D "16"

I did not understand the comment by Gary ThomasYes, I use it all the time.=
=C2=A0 Make the assignment immediate/firm though:
=C2=A0 MACHINE =3D "raspberrypi2"

=C2=A0=C2=A0 bitbake rpi-basic-image
ERROR:=C2=A0 OE-core's config sanity checker detected a potential misconfig=
uration.
=C2=A0=C2=A0=C2=A0 Either fix the cause of this error or at your own risk d=
isable the checker (see sanity.conf).
=C2=A0=C2=A0=C2=A0 Following is the list of potential problems / advisories=
:

=C2=A0=C2=A0=C2=A0 Please set a valid MACHINE in your local.conf or environ=
ment


Summary: There was 1 ERROR message shown, returning a non-zero exit code.
I also tried setting the MACHINE variable with the same results.Any and all=
 help is appreciated.
Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_1073910_193399689.1437416807560
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1437415632535_2769"><span>Hi all,</sp=
an></div><div><br><span></span></div><div><span>I made the following change=
s in local.conf</span></div><div id=3D"yui_3_16_0_1_1437415632535_2830" dir=
=3D"ltr"><span id=3D"yui_3_16_0_1_1437415632535_2978">--- ../../local.conf.=
orig&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2015-07-20 07:01:42.835320506 -060=
0<br class=3D"">+++ conf/local.conf&nbsp;&nbsp;&nbsp;&nbsp; 2015-07-20 10:5=
0:00.129187741 -0600<br class=3D"">@@ -34,7 +34,10 @@<br class=3D"">&nbsp;#=
MACHINE ?=3D "edgerouter"<br class=3D"">&nbsp;#<br class=3D"">&nbsp;# This =
sets the default machine to be qemux86 if no other machine is selected:<br =
class=3D"">-MACHINE ??=3D "qemux86"<br class=3D"">+#MACHINE ??=3D "qemux86"=
<br class=3D"">+MACHINE =3D "raspberrypi2"<br class=3D"">+MACHINE ??=3D "ra=
spberrypi2"<br class=3D"">+GPU_MEM =3D "16"<br class=3D""></span></div><div=
 dir=3D"ltr"><br><span></span></div><div id=3D"yui_3_16_0_1_1437415632535_2=
961" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1437415632535_2960">I did not und=
erstand the comment by Gary Thomas</span></div><div dir=3D"ltr">Yes, I use =
it all the time.&nbsp; Make the assignment immediate/firm though:<br class=
=3D"">&nbsp;  MACHINE =3D "raspberrypi2"<br><span></span></div><div dir=3D"=
ltr"><span><br></span></div><div id=3D"yui_3_16_0_1_1437415632535_2995" dir=
=3D"ltr"><span>&nbsp;</span></div><div id=3D"yui_3_16_0_1_1437415632535_280=
9">&nbsp; bitbake rpi-basic-image<br class=3D"">ERROR:&nbsp; OE-core's conf=
ig sanity checker detected a potential misconfiguration.<br class=3D"">&nbs=
p;&nbsp;&nbsp; Either fix the cause of this error or at your own risk disab=
le the checker (see sanity.conf).<br class=3D"">&nbsp;&nbsp;&nbsp; Followin=
g is the list of potential problems / advisories:<br class=3D""><br class=
=3D"">&nbsp;&nbsp;&nbsp; Please set a valid MACHINE in your local.conf or e=
nvironment<br class=3D""><br class=3D""><br class=3D"">Summary: There was 1=
 ERROR message shown, returning a non-zero exit code.<br class=3D""><div id=
=3D"yui_3_16_0_1_1437415632535_2917" dir=3D"ltr">I also tried setting the M=
ACHINE variable with the same results.</div><div dir=3D"ltr">Any and all he=
lp is appreciated.</div><div dir=3D"ltr"><br></div></div><div><div>Edward V=
idal Jr.<br>e-mail develone@sbcglobal.net<br>915-595-1613</div></div></div>=
</body></html>

------=_Part_1073910_193399689.1437416807560--
