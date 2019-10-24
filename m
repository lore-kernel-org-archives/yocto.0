Return-Path: <keith.derrick@lge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 677DAE00DAA; Wed, 23 Oct 2019 18:54:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI,SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [156.147.23.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
X-Greylist: delayed 1801 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Oct 2019 18:54:40 PDT
Received: from lgeamrelo11.lge.com (lgeamrelo12.lge.com [156.147.23.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C63D2E00D33
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 18:54:40 -0700 (PDT)
Received: from unknown (HELO lgemrelse7q.lge.com) (156.147.1.151)
	by 156.147.23.52 with ESMTP; 24 Oct 2019 10:24:37 +0900
X-Original-SENDERIP: 156.147.1.151
X-Original-MAILFROM: keith.derrick@lge.com
Received: from unknown (HELO LGSVL-EXC02.lgsvl.net) (10.195.253.63)
	by 156.147.1.151 with ESMTP; 24 Oct 2019 10:24:36 +0900
X-Original-SENDERIP: 10.195.253.63
X-Original-MAILFROM: keith.derrick@lge.com
Received: from LGSVL-EXC01.lgsvl.net (10.195.253.62) by LGSVL-EXC02.lgsvl.net
	(10.195.253.63) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Wed, 23 Oct 2019 18:24:36 -0700
Received: from LGSVL-EXC01.lgsvl.net ([10.195.253.62]) by
	LGSVL-EXC01.lgsvl.net ([10.195.253.62]) with mapi id 15.00.1044.021;
	Wed, 23 Oct 2019 18:24:35 -0700
From: keith.derrick <keith.derrick@lge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: CONF_VERSION and LCONF_VERSION details
Thread-Index: AQHVigck4o0Kltfxs0GttHgdEstFMQ==
Date: Thu, 24 Oct 2019 01:24:35 +0000
Message-ID: <1571880275303.25876@lge.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.195.247.37]
MIME-Version: 1.0
Subject: CONF_VERSION and LCONF_VERSION details
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
X-List-Received-Date: Thu, 24 Oct 2019 01:54:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative; boundary="_000_157188027530325876lgecom_"

--_000_157188027530325876lgecom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Could someone explain how these work and what the permissible values are? T=
he documentation is sadly lacking in details beyond that they are increment=
ed when a file changes incompatibly.


Specifically, what counts as "incompatible"? The contents of the file (i.e.=
 the templates have been updated so the generated file in build/conf needs =
to be replaced), or the format of the files? Also, is TEMPLATECONF consider=
ed at all?


In my case, we have our own templates and thus set TEMPLATECONF before sour=
cing oe-init-build-env. But running bitbake seems to compare the LCONF_VERS=
ION from build/conf (for example) against the template in poky/meta-poky/co=
nf rather than the ones in our layer. Is this because we still have DISTRO =
set to "poky" or will it always do that?


I had updated our templates, bumped the version numbers, and then ran oe-in=
it-build-env (actually our own wrapper) in the expectation that it would up=
dated the files under build/conf from the updated templates. Instead it did=
 nothing, and I got errors when I ran bitbake and it found the values diffe=
red,


Is it that the values must always match those in meta-poky, even if you hav=
e your own distro (i.e. DISTRO set to something else)? Should TEMPLATECONF =
be set in our custom local.conf.sample?


Thanks

Keith Derrick


--_000_157188027530325876lgecom_
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
<p>Could someone explain how these work and what the permissible values are=
? The documentation is sadly lacking in details beyond that they are increm=
ented when a file changes incompatibly.<br>
</p>
<p><br>
</p>
<p>Specifically, what counts as &quot;incompatible&quot;? The contents of t=
he file (i.e. the templates have been updated so the generated file in buil=
d/conf needs to be replaced), or the format of the files? Also, is TEMPLATE=
CONF&nbsp;considered at all?<br>
</p>
<p><br>
</p>
<p>In my case, we have our own templates and thus set TEMPLATECONF&nbsp;bef=
ore sourcing oe-init-build-env. But running bitbake seems to compare the LC=
ONF_VERSION from build/conf&nbsp;(for example) against the template in poky=
/meta-poky/conf rather than the ones in our
 layer. Is this because we still have DISTRO set to &quot;poky&quot; or wil=
l it always do that?<br>
</p>
<p><br>
</p>
<p>I had updated our templates, bumped the version numbers, and then ran oe=
-init-build-env (actually our own wrapper) in the expectation that it would=
 updated the files under build/conf from the updated templates. Instead it =
did nothing, and I got errors when
 I ran bitbake and it found the values differed,<br>
</p>
<p><br>
</p>
<p>Is it that the values must always match those in meta-poky, even if you =
have your own distro (i.e. DISTRO set to something else)? Should TEMPLATECO=
NF be set in our custom&nbsp;local.conf.sample?&nbsp;<br>
</p>
<p><br>
</p>
<p>Thanks<br>
</p>
<p>Keith Derrick<br>
</p>
<p><br>
</p>
</body>
</html>

--_000_157188027530325876lgecom_--
