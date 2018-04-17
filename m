Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11120E00A44; Tue, 17 Apr 2018 09:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [64.235.154.214 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.154.214])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00D71E00831
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 09:51:49 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1402.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Tue, 17 Apr 2018 16:51:33 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 17 Apr 2018 09:50:35 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 17 Apr 2018 09:50:35 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Connecting to mysql/mariadb
Thread-Index: AQHT1mtkYaS4zGsrpkOnYJjDqg0PAg==
Date: Tue, 17 Apr 2018 16:50:35 +0000
Message-ID: <a3c2c1bf378440259497841cd4807320@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1523983890-321458-3638-626-1
X-BESS-VER: 2018.4-r1804121647
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.192084
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: Connecting to mysql/mariadb
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
X-List-Received-Date: Tue, 17 Apr 2018 16:51:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_a3c2c1bf378440259497841cd4807320sakurauscom_"

--_000_a3c2c1bf378440259497841cd4807320sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've got a Yocto system that I'm working on that has mysql/mariadb configur=
ed but I can't connect to it with MySQL Workbench from another machine. mar=
iadb is running, the network connection is live, but when I try to connect =
using MySQL Workbench I get an immediate "connection refused" response. I'v=
e tried user root, & mysql, same response. I'm using the default configurat=
ion from Yocto, so maybe I'm missing something that I should be configuring=
.


If anybody here has any experience with this I would appreciate any enlight=
enment you can give me.


Thanks in advance,

Greg Wilson-Lindberg


--_000_a3c2c1bf378440259497841cd4807320sakurauscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I've got a Yocto system that I'm working on that has mysql/mariadb confi=
gured but I can't connect to it with MySQL Workbench from another machine. =
mariadb is running, the network connection is live, but when I try to conne=
ct using MySQL Workbench I get an
 immediate &quot;connection refused&quot; response. I've tried user root, &=
amp; mysql, same response. I'm using the default configuration from Yocto, =
so maybe I'm missing something that I should be configuring.</p>
<p><br>
</p>
<p>If anybody here has any experience with this I would appreciate any enli=
ghtenment you can give me.</p>
<p><br>
</p>
<p>Thanks in advance,</p>
<p>Greg Wilson-Lindberg</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_a3c2c1bf378440259497841cd4807320sakurauscom_--
