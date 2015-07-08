Return-Path: <Franz.FLASCH@frequentis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83799E009F0; Wed,  8 Jul 2015 04:28:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [195.20.158.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Jul 2015 04:28:45 PDT
Received: from mail1.frequentis.com (mail1.frequentis.com [195.20.158.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A91FE009C8
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 04:28:44 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,431,1432591200"; d="scan'208,217";a="10909668"
Received: from vie190nt.frequentis.frq ([172.16.1.190])
	by mail1.frequentis.com with ESMTP; 08 Jul 2015 13:27:40 +0200
Received: from vie196nt.frequentis.frq ([172.16.1.196]) by
	vie190nt.frequentis.frq ([172.16.1.190]) with mapi id 14.02.0328.009;
	Wed, 8 Jul 2015 13:27:39 +0200
From: FLASCH Franz <Franz.FLASCH@frequentis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Disable global compile flags or tune settings for specific recipe
Thread-Index: AdC5cC5BE+e+OYGUTHWs4POoeka9qQ==
Date: Wed, 8 Jul 2015 11:27:38 +0000
Message-ID: <D873F586B6E4C24CB574DB3058959F8F011B5A14C3@vie196nt>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.4.23]
MIME-Version: 1.0
Subject: Disable global compile flags or tune settings for specific recipe
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
X-List-Received-Date: Wed, 08 Jul 2015 11:28:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D873F586B6E4C24CB574DB3058959F8F011B5A14C3vie196nt_"

--_000_D873F586B6E4C24CB574DB3058959F8F011B5A14C3vie196nt_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi!

I've a question regarding global compile flags in yocto:

I have an autotools project and also a working recipe for it. My problem is=
, that I also have external shared libraries which I need to link in, when =
compiling this package. However these libraries were built without addition=
al compile settings like "-mfloat-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a=
8" - so the compiled package doesn't work with these external libraries.

Is it possible to disable the global compile tune flags for one specific re=
cipe? I do not want to disable the global compiler flags just for this sing=
le package.

 I think these flags are coming from this:
TUNE_FEATURES     =3D "armv7a vfp thumb neon callconvention-hard cortexa8"

Maybe there are also more which have to be disabled, but I don't know which=
 and how.

Any suggestions are greatly appreciated.

Regards,
Franz


--_000_D873F586B6E4C24CB574DB3058959F8F011B5A14C3vie196nt_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Hi!</div>
<div>&nbsp;</div>
<div>I&#8217;ve a question regarding global compile flags in yocto: </div>
<div>&nbsp;</div>
<div>I have an autotools project and also a working recipe for it. My probl=
em is, that I also have external shared libraries which I need to link in, =
when compiling this package. However these libraries were built without add=
itional compile settings like &#8220;-mfloat-abi=3Dhard
-mfpu=3Dneon -mtune=3Dcortex-a8&#8221; - so the compiled package doesn&#821=
7;t work with these external libraries. </div>
<div>&nbsp;</div>
<div>Is it possible to disable the global compile tune flags for one specif=
ic recipe? I do not want to disable the global compiler flags just for this=
 single package.</div>
<div>&nbsp;</div>
<div> I think these flags are coming from this:</div>
<div>TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;armv7a vfp thumb neon =
callconvention-hard cortexa8&quot;</div>
<div>&nbsp;</div>
<div>Maybe there are also more which have to be disabled, but I don&#8217;t=
 know which and how.</div>
<div>&nbsp;</div>
<div>Any suggestions are greatly appreciated.</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Franz</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_D873F586B6E4C24CB574DB3058959F8F011B5A14C3vie196nt_--
