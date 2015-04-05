Return-Path: <rickard.bremer@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 487CFE00961; Sun,  5 Apr 2015 07:44:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7DF5E002F9
	for <yocto@yoctoproject.org>; Sun,  5 Apr 2015 07:44:02 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id t35Ehuqu017637
	for <yocto@yoctoproject.org>; Sun, 5 Apr 2015 16:44:01 +0200
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Sun, 5 Apr 2015 16:43:55 +0200
From: Rickard Bremer <rickard.bremer@tritech.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Parse Error
Thread-Index: AdBvrvB6a4/WcBpuTb+F0qJAnb7z4g==
Date: Sun, 5 Apr 2015 14:43:54 +0000
Message-ID: <E0AAEDF37958A64591322A370796C7897C5CE9@post>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.248.164.111]
MIME-Version: 1.0
Subject: Parse Error
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
X-List-Received-Date: Sun, 05 Apr 2015 14:44:07 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_E0AAEDF37958A64591322A370796C7897C5CE9post_"

--_000_E0AAEDF37958A64591322A370796C7897C5CE9post_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Since this morning i've been starting up a new build from scratch. I cant f=
igure out howto proceed :

$ bitbake core-image-minimal
ERROR: ParseError at /var/lib/jenkins/workspace/thesis-build-yocto/meta-ope=
nembedded/meta-oe/recipes-core/packagegroups/packagegroup-basic.bb:12: Coul=
d not inherit file classes/bluetooth.bbclass

Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Best Regards
Rickard

--_000_E0AAEDF37958A64591322A370796C7897C5CE9post_
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
10pt;">Hello,<br>
<br>
Since this morning i've been starting up a new build from scratch. I cant f=
igure out howto proceed :<br>
<br>
$ bitbake core-image-minimal<br>
ERROR: ParseError at /var/lib/jenkins/workspace/thesis-build-yocto/meta-ope=
nembedded/meta-oe/recipes-core/packagegroups/packagegroup-basic.bb:12: Coul=
d not inherit file classes/bluetooth.bbclass<br>
<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
<br>
Best Regards<br>
Rickard<br>
</div>
</body>
</html>

--_000_E0AAEDF37958A64591322A370796C7897C5CE9post_--
