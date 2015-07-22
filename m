Return-Path: <ANIL.SHETTY@lnttechservices.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 428D5E009DF; Tue, 21 Jul 2015 21:38:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Jul 2015 21:38:32 PDT
Received: from mailout1.ltindia.com (mailout1.ltindia.com [203.199.60.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBAC2E0097F
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 21:38:32 -0700 (PDT)
Received: from unknown (HELO POCITMSEXHUB02.LntUniverse.com) ([10.2.1.59])
	by mailout1.ltindia.com with ESMTP; 22 Jul 2015 10:07:17 +0530
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB02.LntUniverse.com ([::1]) with mapi id 14.03.0181.006;
	Wed, 22 Jul 2015 10:07:16 +0530
From: Anil Kumar TS <ANIL.SHETTY@LNTTECHSERVICES.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Apache Tomcat7 on Yocto 1.8
Thread-Index: AdDENzf2nFjYp1a6TxaQevPxzUHsag==
Date: Wed, 22 Jul 2015 04:37:15 +0000
Message-ID: <3BFD0DC7A2789942BE64183CD25D1340D2559F@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.1.199]
MIME-Version: 1.0
Subject: Apache Tomcat7 on Yocto 1.8
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
X-List-Received-Date: Wed, 22 Jul 2015 04:38:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3BFD0DC7A2789942BE64183CD25D1340D2559FPOCITMSEXMB03LntU_"

--_000_3BFD0DC7A2789942BE64183CD25D1340D2559FPOCITMSEXMB03LntU_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build and run Apache Tomcat 7 on Yocto 1.8. I have already a=
dded meta-java pulled from yocto project source repo and built openjdk7.
The recipes-core in meta-java contains servlet-api recipe file for tomcat 5=
.5 but not for tomcat7. I tried adding a new servlet-api recipe file. But t=
he manifest file is not being used from tomcat 6 version. And I am facing e=
rrors in do_unpackpost().
Since I am new to this could some one please point me in the right directio=
n as to how to go forward in adding tomcat 7?

Thanks and Regards,
Anil

L&T Technology Services Ltd

www.LntTechservices.com<http://www.lnttechservices.com/>

This Email may contain confidential or privileged information for the inten=
ded recipient (s). If you are not the intended recipient, please do not use=
 or disseminate the information, notify the sender and delete it from your =
system.

--_000_3BFD0DC7A2789942BE64183CD25D1340D2559FPOCITMSEXMB03LntU_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi,<br>
<br>
I am trying to build and run Apache Tomcat 7 on Yocto 1.8. I have already a=
dded meta-java pulled from yocto project source repo and built openjdk7.<br=
>
The recipes-core in meta-java contains servlet-api recipe file for tomcat 5=
.5 but not for tomcat7. I tried adding a new servlet-api recipe file. But t=
he manifest file is not being used from tomcat 6 version. And I am facing e=
rrors in do_unpackpost().<br>
Since I am new to this could some one please point me in the right directio=
n as to how to go forward in adding tomcat 7?
<br>
<br>
Thanks and Regards,<br>
Anil<br>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</body>
</html>

--_000_3BFD0DC7A2789942BE64183CD25D1340D2559FPOCITMSEXMB03LntU_--
