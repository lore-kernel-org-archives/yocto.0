Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57362E00D4A; Mon, 20 May 2019 12:59:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [200.148.226.70 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp2.eldorado.org.br (smtp2.eldorado.org.br [200.148.226.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EF82E00D46
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 12:59:22 -0700 (PDT)
X-AuditID: ac10c816-391ff70000007505-e4-5ce30718746b
Received: from serv031.corp.eldorado.org.br (Unknown_Domain [192.168.4.31])
	(using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by smtp2.eldorado.org.br (ELDORADO_SMTP) with SMTP id
	83.E1.29957.81703EC5; Mon, 20 May 2019 16:59:20 -0300 (-03)
Received: from serv030.corp.eldorado.org.br (192.168.4.30) by
	serv031.corp.eldorado.org.br (192.168.4.31) with Microsoft SMTP Server
	(TLS) id 15.0.1395.4; Mon, 20 May 2019 16:59:19 -0300
Received: from serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7]) by
	serv030.corp.eldorado.org.br ([fe80::493e:4247:53f3:53b7%14]) with mapi
	id 15.00.1395.000; Mon, 20 May 2019 16:59:20 -0300
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Thread-Topic: BSP for TI's c28x
Thread-Index: AQHVD0Yj0BD08AVLl023CG1qSZAyRg==
Date: Mon, 20 May 2019 19:59:19 +0000
Message-ID: <1558382359726.94449@eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.85.130]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrDLMWRmVeSWpSXmKPExsVyYAWLvK4E++MYg6cnFC0mvVzD5sDo0X6i
	jy2AMYrLJiU1J7MstUjfLoErY+UVv4I1nBXTJu5mbWBs4+hi5OSQEDCR2NC7j7mLkYtDSGAl
	k0Tb3252CGcfo8SeyVNZIJzTjBJ9Ux4zgbSwCXhKXH/bBtTCwSEioC/xd6MZSFhYQEriyP/3
	bCC2iIC8xKPpb5ghbD2JbVNes4PYLAKqEve/zGEEsXkFDCVWHfoIFmcUkJWY+2cvmM0sIC6x
	eMtKJojrBCSW7DnPDGGLSrx8/I8VwjaQ2Lp0HwuErSDxaM8DRpBzmAXCJX58sYQYLyhxcuYT
	lgmMwrOQTJ2FUDULSRVEiZ7EjalT2CBsbYllC18zQ9i6EjP+HWJBFl/AyL6KUbQ4t6TASC81
	JyW/KDElXy+/KF0vqWgTIzBO1gicENvBeOuh1yFGAQ5GJR7eA9MexQixJpYVV+YeYpTgYFYS
	4T19CijEm5JYWZValB9fVJqTWnyIUZqDRUmc90rG3RghgfTEktTs1NSC1CKYLBMHp1QD4/xX
	1ibOMpNi3YtVv3lL+q8rNd20ZVWPkbuAw72Q8i9OvPHvtx6/dnP64vOO+rG/rELi/WclL/3v
	wvD5cUyeUvRd6Yqi83f9z7InT2xwvywekcrcutB4kcT76WemyR+8kue76c6r2akXp9zv3p5q
	I35MUGJSqNG8pyVHL/47pbp3XvNRX4HiG0osxRmJhlrMRcWJAB7ez9GPAgAA
Subject: BSP for TI's c28x
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
X-List-Received-Date: Mon, 20 May 2019 19:59:23 -0000
Content-Language: pt-BR
Content-Type: multipart/alternative;
	boundary="_000_155838235972694449eldoradoorgbr_"

--_000_155838235972694449eldoradoorgbr_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


Please, does anyone know about any BSP available for the C28x series of mic=
roprocessors from TI? I looked for it inside meta-ti but couldn't find.


Thanks in advance.


Alexandre

--_000_155838235972694449eldoradoorgbr_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!-- p { margin-top: 0px; m=
argin-bottom: 0px; }--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi,<br>
</p>
<p><br>
</p>
<p>Please, does anyone know&nbsp;about any BSP available for the C28x serie=
s of microprocessors from TI? I looked&nbsp;for it&nbsp;inside&nbsp;meta-ti=
 but couldn't find.<br>
</p>
<p><br>
</p>
<p>Thanks in advance.<br>
</p>
<p><br>
</p>
<p>Alexandre<br>
</p>
</body>
</html>

--_000_155838235972694449eldoradoorgbr_--
