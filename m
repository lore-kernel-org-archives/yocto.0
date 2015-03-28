Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B15FE00922; Fri, 27 Mar 2015 17:10:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5AFE00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 17:10:13 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-10.us.mimecast.lan; Fri, 27 Mar 2015 20:10:11 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Fri, 27 Mar 2015 17:10:10 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 27 Mar 2015 17:10:09 -0700
Thread-Topic: Please help me understand these packages
Thread-Index: AdBo642cAM/S8wqGS46RpFgw608MCw==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDC9879D9@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: p9qc5ZhkRMGT02rVSUTuxw-1
Subject: Please help me understand these packages
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
X-List-Received-Date: Sat, 28 Mar 2015 00:10:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4B07ADD556F70043925DA2E9C5D4346D2FDC9879D9MSXBEBVT12pla_"

--_000_4B07ADD556F70043925DA2E9C5D4346D2FDC9879D9MSXBEBVT12pla_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I've run into this a couple times now and I still don't get it so please he=
lp me understand.

I'm trying to understand how to include just the ir-keytable package of the=
 v4l-utils_1.6.2.bb recipe.

At first I was getting a lot of "Nothing PROVIDES" or "Nothing RPROVIDES" e=
rror messages when I tried to add it to a package group or as a dependency =
of another recipe.
However, after I added it directly to IMAGE_INSTALL in my image recipe it m=
ostly seems to be working, no matter where I put it, even after I've remove=
d it from IMAGE_INSTALL in my image recipe. This leads me to believe that m=
aybe I had some sort of database caching problem going on, since I had just=
 back ported the recipe into my branch.

Where it still fails is from the command line:  "bitbake ir-keytable" I don=
't understand why this fails?

I've had similar problems with the sub-packages of the boost recipe, I can =
add it boost-program-options to a packagegroup or as a RDEPENDENCY but I ca=
n't build it from the command-line.

On the other hand I can build net-snmp-server from the command line, which =
is a sub-package of net-snmp recipe (interestingly there is no net-snmp pac=
kage)

I looked at the recipes and they don't seem all that different as far as ho=
w the packages are declared.

I'm really confused here can anyone enlighten me.

Thanks,
Matt S.




--_000_4B07ADD556F70043925DA2E9C5D4346D2FDC9879D9MSXBEBVT12pla_
Content-Type: text/html; charset=WINDOWS-1252
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
<font face=3D"Calibri, sans-serif" size=3D"2">
<div>I&#8217;ve run into this a couple times now and I still don&#8217;t ge=
t it so please help me understand. </div>
<div>&nbsp;</div>
<div>I&#8217;m trying to understand how to include just the ir-keytable pac=
kage of the v4l-utils_1.6.2.bb recipe. </div>
<div>&nbsp;</div>
<div>At first I was getting a lot of &#8220;Nothing PROVIDES&#8221; or &#82=
20;Nothing RPROVIDES&#8221; error messages when I tried to add it to a pack=
age group or as a dependency of another recipe. </div>
<div>However, after I added it directly to IMAGE_INSTALL in my image recipe=
 it mostly seems to be working, no matter where I put it, even after I&#821=
7;ve removed it from IMAGE_INSTALL in my image recipe. This leads me to bel=
ieve that maybe I had some sort of database
caching problem going on, since I had just back ported the recipe into my b=
ranch. </div>
<div>&nbsp;</div>
<div>Where it still fails is from the command line:&nbsp; &#8220;bitbake ir=
-keytable&#8221; I don&#8217;t understand why this fails? </div>
<div>&nbsp;</div>
<div>I&#8217;ve had similar problems with the sub-packages of the boost rec=
ipe, I can add it boost-program-options to a packagegroup or as a RDEPENDEN=
CY but I can&#8217;t build it from the command-line. </div>
<div>&nbsp;</div>
<div>On the other hand I can build net-snmp-server from the command line, w=
hich is a sub-package of net-snmp recipe (interestingly there is no net-snm=
p package)</div>
<div>&nbsp;</div>
<div>I looked at the recipes and they don&#8217;t seem all that different a=
s far as how the packages are declared. </div>
<div>&nbsp;</div>
<div>I&#8217;m really confused here can anyone enlighten me. </div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Matt S. </div>
<div>&nbsp;</div>
</font>
</body>
</html>



--_000_4B07ADD556F70043925DA2E9C5D4346D2FDC9879D9MSXBEBVT12pla_--
