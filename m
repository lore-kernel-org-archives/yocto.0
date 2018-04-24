Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 545E9E00AE4; Tue, 24 Apr 2018 14:13:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.150.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2A45E00AD8
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 14:13:11 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx2.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Tue, 24 Apr 2018 21:13:09 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 24 Apr 2018 14:13:07 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 24 Apr 2018 14:13:07 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: permissions for /tmp set wrong
Thread-Index: AQHT2/3zyFBa5iLZkUSJoe6w4vwG7g==
Date: Tue, 24 Apr 2018 21:13:07 +0000
Message-ID: <35f000f65d524b5ea594cb33adbadbc7@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1524604388-298553-31953-33104-1
X-BESS-VER: 2018.5-r1804232011
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.192342
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: permissions for /tmp set wrong
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
X-List-Received-Date: Tue, 24 Apr 2018 21:13:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_35f000f65d524b5ea594cb33adbadbc7sakurauscom_"

--_000_35f000f65d524b5ea594cb33adbadbc7sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to setup mariadb and in the process of looking at what's happeni=
ng I see an error that it couldn't create a file in /tmp. I look at /tmp an=
d it has permissions of 01700 which seems wrong. I did some searching and I=
 found a reference to fs-perms.txt which has the permissions as 01777.


I haven't been able to find where this is changed. Can anyone tell me what =
might be changing the permissions from 01777 to 01700? Or at least where to=
 look, or what to do to get them back to 01777.


Regards,

Greg

--_000_35f000f65d524b5ea594cb33adbadbc7sakurauscom_
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
<p>I'm trying to setup mariadb and in the process of looking at what's happ=
ening I see an error that it couldn't create a file in /tmp. I look at /tmp=
 and it has permissions of 01700 which seems wrong. I did some searching an=
d I found a reference to fs-perms.txt
 which has the permissions as 01777.</p>
<p><br>
</p>
<p>I haven't been able to find where this is changed.&nbsp;Can anyone tell =
me what might be changing the permissions from 01777 to 01700? Or at least =
where to look, or what to do to get them back to 01777.</p>
<p><br>
</p>
<p>Regards,</p>
<p>Greg</p>
</div>
</body>
</html>

--_000_35f000f65d524b5ea594cb33adbadbc7sakurauscom_--
