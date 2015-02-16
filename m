Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6C6AE00769; Mon, 16 Feb 2015 09:05:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC7C6E00754
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 09:05:37 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AskFAM0i4lTGmAcV/2dsb2JhbABcgkMhIoEwwA+IGwKBFkMBAQEBAQF8hAMLAQEDEnkBCwEJFVYmAQQbGogLAadQhH+hMiCPSINOgRQFigyFLJAcjCgig26CM38BAQE
X-IronPort-AV: E=Sophos;i="5.09,588,1418101200"; d="scan'208,217";a="91560760"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	16 Feb 2015 12:05:35 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	16 Feb 2015 12:05:34 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0174.001; Mon, 16 Feb 2015 12:05:33 -0500
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Graceful continue if some recipe has error
Thread-Index: AdBKCsYf2pTmpt72RK6Iy4QiqLwCcg==
Date: Mon, 16 Feb 2015 17:05:32 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A351435@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Subject: Graceful continue if some recipe has error
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
X-List-Received-Date: Mon, 16 Feb 2015 17:05:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A351435AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A351435AZFFEXMB01globa_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

We have written recipe for our application which reads some environment var=
iables and follow a path. But if these variables are not set then recipe pa=
rsing results into error.
So I was looking if we can have some way for a graceful continuation. As we=
 want if those variables are set then it bitbake should continue with rest =
of building.
So is there way we can achieve the same.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3A351435AZFFEXMB01globa_
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
We have written recipe for our application which reads some environment var=
iables and follow a path. But if these variables are not set then recipe pa=
rsing results into error.<br>
So I was looking if we can have some way for a graceful continuation. As we=
 want if those variables are set then it bitbake should continue with rest =
of building.<br>
So is there way we can achieve the same.<br>
<br>
Thanks,<br>
Abhinav<br>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A351435AZFFEXMB01globa_--
