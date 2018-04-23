Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5104E00948; Mon, 23 Apr 2018 16:15:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.150.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 248D3E008BF
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:15:53 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx27.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Mon, 23 Apr 2018 23:15:51 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 23 Apr 2018 16:15:47 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 23 Apr 2018 16:15:47 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: where is useradd-example.bb
Thread-Index: AQHT21iPGe6EZP8ciEe9ZUGplvd0fQ==
Date: Mon, 23 Apr 2018 23:15:47 +0000
Message-ID: <703b82f7eb8c40bdacf7903ffcd919fa@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1524525351-637137-13533-596-1
X-BESS-VER: 2018.5-r1804232011
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.192304
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: where is useradd-example.bb
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
X-List-Received-Date: Mon, 23 Apr 2018 23:15:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_703b82f7eb8c40bdacf7903ffcd919fasakurauscom_"

--_000_703b82f7eb8c40bdacf7903ffcd919fasakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to understand adding a user in a recipe and in the documentation=
 it says to consult meta-skeleton/recipes-skeleton/useradd/useradd-example.=
bb. the meta-skeleton directory doesn't exist and I can't find the file any=
where else. I've done a search on the net and I don't get any hits on the f=
ile either, lots of references in the manuals, bot not the file.


Can anyone tell me where to find it?


Regards,

Greg

--_000_703b82f7eb8c40bdacf7903ffcd919fasakurauscom_
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
<p>I'm trying to understand adding a user in a recipe and in the documentat=
ion it says to consult&nbsp;<span style=3D"color: rgb(51, 51, 51); font-fam=
ily: Calibri, Arial, Helvetica, sans-serif;">meta-skeleton/recipes-skeleton=
/useradd/</span><span><span style=3D"font-family: Calibri, Arial, Helvetica=
, sans-serif;">u</span>seradd-example.bb.
 the meta-skeleton directory doesn't exist and I can't find the file anywhe=
re else. I've done a search on the net and I don't get any hits on the file=
 either, lots of references in the manuals, bot not the file.</span></p>
<p><span><br>
</span></p>
<p><span>Can anyone tell me where to find it?</span></p>
<p><span><br>
</span></p>
<p><span>Regards,</span></p>
<p><span>Greg</span></p>
</div>
</body>
</html>

--_000_703b82f7eb8c40bdacf7903ffcd919fasakurauscom_--
