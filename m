Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E1D6E00AA7; Thu, 15 Mar 2018 13:38:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 134E9E0084A
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 13:38:25 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx4.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Thu, 15 Mar 2018 20:38:23 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 15 Mar 2018 13:38:21 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 15 Mar 2018 13:38:21 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to get mysqy/mariadb to start on powerup.
Thread-Index: AQHTvJmRjybrgAvccUyN6MZA1cayVw==
Date: Thu, 15 Mar 2018 20:38:21 +0000
Message-ID: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1521146302-298555-18314-1783-1
X-BESS-VER: 2018.2-r1803082101
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.191094
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: How to get mysqy/mariadb to start on powerup.
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
X-List-Received-Date: Thu, 15 Mar 2018 20:38:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_454710ed7f6d42279136acc70c35cf74sakurauscom_"

--_000_454710ed7f6d42279136acc70c35cf74sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm building an RPi3 system that is going to use mysql/mariadb. I've got ev=
erything installed, but mysqld is not starting. install_db.service does run=
 on startup, but the mysqld.service file never gets triggered.


Is there something that I'm missing to get it to run? I've search online, b=
ut can't find anything that pertains to yocto.


Regards,

Greg Wilson-Lindberg

--_000_454710ed7f6d42279136acc70c35cf74sakurauscom_
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
<p>I'm building an RPi3 system that is going to use mysql/mariadb. I've got=
 everything installed, but mysqld is not starting. install_db.service does =
run on startup, but the mysqld.service file never gets triggered.</p>
<p><br>
</p>
<p>Is there something that I'm missing to get it to run? I've search online=
, but can't find anything that pertains to yocto.</p>
<p><br>
</p>
<p>Regards,</p>
<p>Greg Wilson-Lindberg</p>
</div>
</body>
</html>

--_000_454710ed7f6d42279136acc70c35cf74sakurauscom_--
