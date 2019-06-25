Return-Path: <keith.derrick@lge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10BA9E00D36; Mon, 24 Jun 2019 19:56:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [156.147.23.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1799 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Jun 2019 19:56:30 PDT
Received: from lgeamrelo11.lge.com (lgeamrelo12.lge.com [156.147.23.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 478D2E00D30
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 19:56:30 -0700 (PDT)
Received: from unknown (HELO lgemrelse7q.lge.com) (156.147.1.151)
	by 156.147.23.52 with ESMTP; 25 Jun 2019 11:26:29 +0900
X-Original-SENDERIP: 156.147.1.151
X-Original-MAILFROM: keith.derrick@lge.com
Received: from unknown (HELO LGSVL-EXC01.lgsvl.net) (10.195.253.62)
	by 156.147.1.151 with ESMTP; 25 Jun 2019 11:26:28 +0900
X-Original-SENDERIP: 10.195.253.62
X-Original-MAILFROM: keith.derrick@lge.com
Received: from LGSVL-EXC01.lgsvl.net (10.195.253.62) by LGSVL-EXC01.lgsvl.net
	(10.195.253.62) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Mon, 24 Jun 2019 19:26:27 -0700
Received: from LGSVL-EXC01.lgsvl.net ([10.195.253.62]) by
	LGSVL-EXC01.lgsvl.net ([10.195.253.62]) with mapi id 15.00.1044.021;
	Mon, 24 Jun 2019 19:26:27 -0700
From: keith.derrick <keith.derrick@lge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Dealing with line endings
Thread-Index: AQHVKv0I55jwuTmvf0+1TpLuHZmyKQ==
Date: Tue, 25 Jun 2019 02:26:27 +0000
Message-ID: <1561429587556.6733@lge.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.195.247.37]
MIME-Version: 1.0
Subject: Dealing with line endings
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
X-List-Received-Date: Tue, 25 Jun 2019 02:56:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative; boundary="_000_15614295875566733lgecom_"

--_000_15614295875566733lgecom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am using an upstream repo with a mix of line endings.


In my recipe, I'm applying a patch with normalized line endings, as our met=
a layer repo has a .gitattributes with "text=3Dauto" set.


The patch is failing due to "different line endings".


Can the git fetcher be configured to normalize line endings on unpack? I tr=
ied setting core.autocrlf in my global .gitconfig, but the fetcher/unpacker=
 seems to ignore it.


Thanks

Keith


--_000_15614295875566733lgecom_
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
<p>I am using&nbsp;an upstream repo with a mix of line endings.<br>
</p>
<p><br>
</p>
<p>In my recipe, I'm applying a patch with normalized line endings, as our =
meta layer repo has a .gitattributes with &quot;text=3Dauto&quot; set.<br>
</p>
<p><br>
</p>
<p>The patch is failing due to &quot;different line endings&quot;.<br>
</p>
<p><br>
</p>
<p>Can the git fetcher be configured to normalize line endings on unpack? I=
 tried setting core.autocrlf in my global .gitconfig, but the fetcher/unpac=
ker seems to ignore it.<br>
</p>
<p><br>
</p>
<p>Thanks<br>
</p>
<p>Keith<br>
</p>
<p><br>
</p>
</body>
</html>

--_000_15614295875566733lgecom_--
