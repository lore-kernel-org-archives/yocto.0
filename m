Return-Path: <laurent.joli@kapelse.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6A70E009DC; Fri, 23 Mar 2018 09:52:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [176.120.128.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from stripper.pharmagest.com (stripper.pharmagest.com
	[176.120.128.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09E8AE007E1
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 09:52:33 -0700 (PDT)
Received: from 127.0.0.1 (localhost [127.0.0.1])
	by stripper.pharmagest.com (Postfix) with ESMTP id E18356B2423
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 17:52:32 +0100 (CET)
X-MIB-FROM: laurent.joli@kapelse.com
X-MIBTO: BKix6Fn39KkNW6xZDl6cUwBEMlwkHw1v0T/KRO0nYQo=
Received: from localhost ([127.0.0.1])
	by stripper.pharmagest.com (MIBD SMTP Server 4.0.0000) with SMTP ID 87
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 17:52:31 +0100 (CET)
Received: from vm-shunter2-prd.sim.pharmagest.com
	(vm-shunter2-prd.sim.pharmagest.com [172.19.32.62])
	by stripper.pharmagest.com (Postfix) with ESMTP id 5E9576B2427
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 17:52:31 +0100 (CET)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com
	(vm-zimbranemta1-prd.sim.pharmagest.com [172.19.32.35])
	by vm-shunter2-prd.sim.pharmagest.com (courriel) with ESMTP id
	C3F758025AC2
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 17:52:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	51470827D5
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 17:52:31 +0100 (CET)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com ([127.0.0.1])
	by localhost (vm-zimbranemta1-prd.sim.pharmagest.com [127.0.0.1])
	(amavisd-new, port 10032)
	with ESMTP id 9Qs7TrY9f_NZ for <yocto@yoctoproject.org>;
	Fri, 23 Mar 2018 17:52:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	C192482833
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 17:52:30 +0100 (CET)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com ([127.0.0.1])
	by localhost (vm-zimbranemta1-prd.sim.pharmagest.com [127.0.0.1])
	(amavisd-new, port 10026)
	with ESMTP id KkT-v3RAGecj for <yocto@yoctoproject.org>;
	Fri, 23 Mar 2018 17:52:30 +0100 (CET)
Received: from vm-zimbranestore2-prd.sim.pharmagest.com (unknown
	[172.19.32.41])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	A9D23827D5
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 17:52:30 +0100 (CET)
Date: Fri, 23 Mar 2018 17:52:30 +0100 (CET)
From: Laurent JOLI <laurent.joli@kapelse.com>
To: yocto <yocto@yoctoproject.org>
Message-ID: <1629644408.9901392.1521823950642.JavaMail.zimbra@kapelse.com>
In-Reply-To: <1931396871.9886250.1521812366094.JavaMail.zimbra@kapelse.com>
References: <mailman.7.1521745201.12814.yocto@yoctoproject.org>
	<1931396871.9886250.1521812366094.JavaMail.zimbra@kapelse.com>
MIME-Version: 1.0
X-Mailer: Zimbra 8.7.1_GA_1670 (ZimbraWebClient - FF59 (Linux)/8.7.1_GA_1670)
Thread-Topic: Add lib to meta-qt5
Thread-Index: er7iejBdaQjPl+57FjNd46qK7FgLG4JHZI3z
Subject: Re: Add lib to meta-qt5
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
X-List-Received-Date: Fri, 23 Mar 2018 16:52:35 -0000
Content-Type: multipart/alternative; 
	boundary="=_38568f90-9fdb-4d39-8158-3e103c752099"

--=_38568f90-9fdb-4d39-8158-3e103c752099
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

J'ai copier la lib libQt5Declarative dans le SDK=20

/opt/SDK_5.5.1/sysroots/core2-32-oe-linux/usr/lib/=20

J'ai sourc=C3=A9 mon shel puis relanc=C3=A9 qtcreator mais j'ai toujours la=
 m=C3=AAme erreur :=20



Project ERROR: Unknown module(s) in QT: declarative=20




De: "Laurent JOLI" <laurent.joli@kapelse.com>=20
=C3=80: "yocto" <yocto@yoctoproject.org>=20
Envoy=C3=A9: Vendredi 23 Mars 2018 14:39:26=20
Objet: Add lib to meta-qt5=20

Hello,=20

I'm working with an old version of YOCTO, jethro 2.0.=20
And I want to produce an SDK of QT5, version 5.5.1.=20

So, I add the layer meta-qt5 on YOCTO for build the following recipe :=20

https://github.com/meta-qt5/meta-qt5/tree/jethro=20

meta-toolchain-qt5=20

My question is :=20

How to add an lib ( libqt5declarative.so.5.5.1 for example ) on SDK of QT5 =
?=20

thanks by advance.=20


--=_38568f90-9fdb-4d39-8158-3e103c752099
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: Arial, Helvetica, sans-serif; font-s=
ize: 10pt; color: #000000"><style type=3D"text/css" scoped=3D"">
p, li { white-space: pre-wrap; }
</style><div>J'ai copier la lib&nbsp; libQt5Declarative dans le SDK <br></d=
iv><div><br data-mce-bogus=3D"1"></div><div>&nbsp;/opt/SDK_5.5.1/sysroots/c=
ore2-32-oe-linux/usr/lib/<br data-mce-bogus=3D"1"></div><div><br data-mce-b=
ogus=3D"1"></div><div>J'ai sourc=C3=A9 mon shel puis relanc=C3=A9 qtcreator=
 mais j'ai toujours la m=C3=AAme erreur :<br data-mce-bogus=3D"1"></div><di=
v><br data-mce-bogus=3D"1"></div><div><p style=3D" margin-top:0px; margin-b=
ottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-inde=
nt:0px;" data-mce-style=3D"-qt-block-indent: 0; text-indent: 0px; margin: 0=
px;"><!--StartFragment-->Project ERROR: Unknown module(s) in QT: declarativ=
e<!--EndFragment--></p><p style=3D" margin-top:0px; margin-bottom:0px; marg=
in-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;" data-m=
ce-style=3D"-qt-block-indent: 0; text-indent: 0px; margin: 0px;"><br data-m=
ce-bogus=3D"1"></p></div><div><br></div><hr id=3D"zwchr" data-marker=3D"__D=
IVIDER__"><div data-marker=3D"__HEADERS__"><b>De: </b>"Laurent JOLI" &lt;la=
urent.joli@kapelse.com&gt;<br><b>=C3=80: </b>"yocto" &lt;yocto@yoctoproject=
.org&gt;<br><b>Envoy=C3=A9: </b>Vendredi 23 Mars 2018 14:39:26<br><b>Objet:=
 </b>Add lib to meta-qt5<br></div><div><br></div><div data-marker=3D"__QUOT=
ED_TEXT__"><div style=3D"font-family: Arial, Helvetica, sans-serif; font-si=
ze: 10pt; color: #000000"><div>Hello,<br></div><br><div>I'm working with an=
 old version of YOCTO, jethro 2.0.<br></div><div>And I want to produce an S=
DK of QT5, version 5.5.1.<br></div><br><div>So, I add the layer meta-qt5 on=
 YOCTO for build the following recipe :<br></div><br><div>https://github.co=
m/meta-qt5/meta-qt5/tree/jethro<br></div><br><div>meta-toolchain-qt5<br></d=
iv><br><div>My question is :</div><br><div> How to add an lib ( libqt5decla=
rative.so.5.5.1 for example ) on SDK of QT5 ?<br></div><br><div>thanks by a=
dvance.</div></div><br></div></div></body></html>

--=_38568f90-9fdb-4d39-8158-3e103c752099--
