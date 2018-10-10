Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1877FE00A9B; Wed, 10 Oct 2018 09:01:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [91.217.199.72 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 285 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Oct 2018 09:01:49 PDT
Received: from mail2.advaoptical.com (mail2.advaoptical.com [91.217.199.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86505E003D9
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 09:01:49 -0700 (PDT)
Received: from MUC-S-EX16C.advaoptical.com ([172.20.1.27])
	by muc-vs-fsmail2.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w9AFv239020276
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=FAIL); Wed, 10 Oct 2018 17:57:02 +0200
Received: from MUC-S-EX19B.advaoptical.com (172.20.1.59) by
	MUC-S-EX16C.advaoptical.com (172.20.1.27) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
	15.1.1591.10; Wed, 10 Oct 2018 17:57:02 +0200
Received: from MUC-S-EX19A.advaoptical.com (172.20.1.58) by
	MUC-S-EX19B.advaoptical.com (172.20.1.59) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.2.221.12; Wed, 10 Oct 2018 17:57:01 +0200
Received: from MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c]) by
	MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c%9]) with mapi
	id 15.02.0221.012; Wed, 10 Oct 2018 17:57:01 +0200
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Sumo distro problem with dhcp packet?
Thread-Index: AQHUYJ1Qq9fTcSqQLkmEYsToirjnHKUYoagl
Date: Wed, 10 Oct 2018 15:57:00 +0000
Message-ID: <14f3ead713e649f48582d18ddd477d3c@advaoptical.com>
References: <CAGAf8Ly_txg3AQNqOM+Rg0Oy-RdS_96y328GwXw7Qu=iDx1yfg@mail.gmail.com>
In-Reply-To: <CAGAf8Ly_txg3AQNqOM+Rg0Oy-RdS_96y328GwXw7Qu=iDx1yfg@mail.gmail.com>
Accept-Language: en-IL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.1.231]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-10_10:, , signatures=0
Subject: Re: Sumo distro problem with dhcp packet?
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
X-List-Received-Date: Wed, 10 Oct 2018 16:01:51 -0000
Content-Language: aa
Content-Type: multipart/alternative;
	boundary="_000_14f3ead713e649f48582d18ddd477d3cadvaopticalcom_"

--_000_14f3ead713e649f48582d18ddd477d3cadvaopticalcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

You need to take a look at the available dhcp packages
for dhcp recipe here:
https://git.yoctoproject.org/clean/cgit.cgi/poky/tree/meta/recipes-connecti=
vity/dhcp/dhcp.inc#n100

PACKAGES +=3D "dhcp-libs dhcp-server dhcp-server-config dhcp-client dhcp-re=
lay dhcp-omshell"

For example, you can do the below:
CORE_IMAGE_EXTRA_INSTALL_append =3D "openssh dhcp-client dhcp-server cmake.=
.. "

Thanks,
--- Kosta Z
________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Sent: Wednesday, 10 October 2018 16:29:05
To: Yocto Project
Subject: [yocto] Sumo distro problem with dhcp packet?

Hello.

I need on my test initramfs YOCTO image to add dhcp package (both dhcp serv=
er and client).

For the beginning, I traced it, where it is:
.../poky/meta/recipes-connectivity/dchp

and decided to test it adding it to ...poky/build/conf/local.conf for the s=
tarters:
CORE_IMAGE_EXTRA_INSTALL_append =3D "openssh dhcp cmake... "

But it produced the following error:
[user@fedora28-ssd conf]$ bitbake -k core-image-base

   [snap]

ERROR: Nothing RPROVIDES 'dhcp' (but /home/user/projects2/beaglebone-black/=
sumo/poky/meta/recipes-core/images/core-image-base.bb<http://core-image-bas=
e.bb> RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'dhcp' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['dhcp']
ERROR: Nothing RPROVIDES 'core-image-base'
No eligible RPROVIDERs exist for 'core-image-base'
NOTE: Runtime target 'core-image-base' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['core-image-base']

I added another package, dhcpcd, which is located in the another layer:
CORE_IMAGE_EXTRA_INSTALL_append =3D "openssh dhcpcd cmake... "

so this one worked/was integrated seamlessly.

What is the catch 22 here?

Thank you,
Zoran


--_000_14f3ead713e649f48582d18ddd477d3cadvaopticalcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
You need to take a look at the available dhcp packages
<div>for dhcp recipe here:</div>
<div><a href=3D"https://git.yoctoproject.org/clean/cgit.cgi/poky/tree/meta/=
recipes-connectivity/dhcp/dhcp.inc#n100" class=3D"OWAAutoLink" id=3D"LPlnk8=
37297" previewremoved=3D"true">https://git.yoctoproject.org/clean/cgit.cgi/=
poky/tree/meta/recipes-connectivity/dhcp/dhcp.inc#n100</a><br>
</div>
<div><br>
</div>
<div><span>PACKAGES &#43;=3D &quot;dhcp-libs dhcp-server dhcp-server-config=
 dhcp-client dhcp-relay dhcp-omshell&quot;</span><br>
</div>
<div><span><br>
</span></div>
<div><span>For example, you can do the below:</span></div>
<div><span><span>CORE_IMAGE_EXTRA_INSTALL_append =3D &quot;openssh dhcp-cli=
ent dhcp-server cmake... &quot;</span><br>
</span></div>
<div><span><span><br>
</span></span></div>
<div><span><span>Thanks,</span></span></div>
<div><span><span>--- Kosta Z</span></span></div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto-bounces@yoctopr=
oject.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Zoran Stojsav=
ljevic &lt;zoran.stojsavljevic@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, 10 October 2018 16:29:05<br>
<b>To:</b> Yocto Project<br>
<b>Subject:</b> [yocto] Sumo distro problem with dhcp packet?</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>Hello.<br>
</div>
<div><br>
</div>
<div>I need on my test initramfs YOCTO image to add dhcp package (both dhcp=
 server and client).</div>
<div><br>
</div>
<div>For the beginning, I traced it, where it is:</div>
<div>.../poky/meta/recipes-connectivity/dchp<br>
</div>
<div><br>
</div>
<div>and decided to test it adding it to ...poky/build/conf/local.conf for =
the starters:</div>
<div>CORE_IMAGE_EXTRA_INSTALL_append =3D &quot;openssh dhcp cmake... &quot;=
<br>
</div>
<div><br>
</div>
<div>But it produced the following error:</div>
<div>[user@fedora28-ssd conf]$ bitbake -k core-image-base</div>
<div><br>
</div>
<div>&nbsp;&nbsp; [snap]<br>
</div>
<div><br>
ERROR: Nothing RPROVIDES 'dhcp' (but /home/user/projects2/beaglebone-black/=
sumo/poky/meta/recipes-core/images/<a href=3D"http://core-image-base.bb">co=
re-image-base.bb</a> RDEPENDS on or otherwise requires it)<br>
NOTE: Runtime target 'dhcp' is unbuildable, removing...<br>
Missing or unbuildable dependency chain was: ['dhcp']<br>
ERROR: Nothing RPROVIDES 'core-image-base'<br>
No eligible RPROVIDERs exist for 'core-image-base'<br>
NOTE: Runtime target 'core-image-base' is unbuildable, removing...<br>
Missing or unbuildable dependency chain was: ['core-image-base']<br>
</div>
<div><br>
</div>
<div>I added another package, dhcpcd, which is located in the another layer=
:</div>
<div>CORE_IMAGE_EXTRA_INSTALL_append =3D &quot;openssh dhcpcd cmake... &quo=
t;</div>
<div><br>
</div>
<div>so this one worked/was integrated seamlessly.</div>
<div><br>
</div>
<div>What is the catch 22 here? <br>
</div>
<div><br>
</div>
<div>Thank you,</div>
<div>Zoran</div>
<div><br>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_14f3ead713e649f48582d18ddd477d3cadvaopticalcom_--
