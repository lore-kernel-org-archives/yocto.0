Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3B9FE009CF; Wed, 18 Apr 2018 15:07:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [64.235.154.215 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.154.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9248E005A9
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 15:07:20 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1403.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 18 Apr 2018 22:07:19 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 18 Apr 2018 15:06:07 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 18 Apr 2018 15:06:07 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to patch a file in mysql recipe
Thread-Index: AQHT12BTUzX+QhZ9Q0ymd/njdR0+vA==
Date: Wed, 18 Apr 2018 22:06:07 +0000
Message-ID: <52faadaa064043c086cefaab5a3e17cf@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1524089225-321459-21199-5470-2
X-BESS-VER: 2018.4-r1804121647
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.192138
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: How to patch a file in mysql recipe
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
X-List-Received-Date: Wed, 18 Apr 2018 22:07:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_52faadaa064043c086cefaab5a3e17cfsakurauscom_"

--_000_52faadaa064043c086cefaab5a3e17cfsakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I need to patch the my.cnf file that is part of the mysql/mariadb recipe. I=
t lives in meta-openembedded/meta-oe/recipes-support/mysql/mariadb/my.cnf w=
ith the mariadb_5.5.52.bb file one level down.

I've set up a mariadb_5.5.52.bbappend file as:

FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"

SRC_URI +=3D "file://my.cnf.patch"

# need to enable auto startup
SYSTEMD_AUTO_ENABLE_${PN}-server =3D "enable"


bitbake finds the my.cnf.patch file but reports that it can't find the my.c=
nf file to patch. I've set up patching of files that are downloaded as part=
 of a source tree, but never tried to patch a file that is part of a recipe=
, and apparently I'm missing something. Is it possible to do this, and if s=
o, can someone point out what I need to do to do it correctly?

--_000_52faadaa064043c086cefaab5a3e17cfsakurauscom_
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
<p>I need to patch the my.cnf file that is part of the mysql/mariadb recipe=
. It lives in meta-openembedded/meta-oe/recipes-support/mysql/mariadb/my.cn=
f with the mariadb_5.5.52.bb file one level down.</p>
<p>I've set up a mariadb_5.5.52.bbappend file as:</p>
<p></p>
<div style=3D"color: #000000;background-color: #ffffff; font-style: normal;=
 font-weight: normal; text-decoration: none;">
<pre>FILESEXTRAPATHS_prepend :=3D &quot;${FILE_DIRNAME}/${PN}:&quot;=0A=
=0A=
SRC_URI &#43;=3D &quot;file://my.cnf.patch&quot;=0A=
=0A=
# need to enable auto startup=0A=
SYSTEMD_AUTO_ENABLE_${PN}-server =3D &quot;enable&quot;=0A=
</pre>
</div>
bitbake finds the my.cnf.patch file but reports that it can't find the my.c=
nf file to patch. I've set up patching of files that are downloaded as part=
 of a source tree, but never tried to patch a file that is part of a recipe=
, and apparently I'm missing something.
 Is it possible to do this, and if so, can someone point out what I need to=
 do to do it correctly?
<p></p>
</div>
</body>
</html>

--_000_52faadaa064043c086cefaab5a3e17cfsakurauscom_--
