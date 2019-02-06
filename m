Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B0AFE00C1E; Wed,  6 Feb 2019 10:39:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DC5CE00994
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 10:39:08 -0800 (PST)
X-CrossPremisesHeadersFilteredBySendConnector: msxbebvt31.planar.net
Received: from webmail.planar.com (mail.planar.com [199.244.172.52]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-101-rAja8T44OHmJJ4cK0vd2Pw-1; Wed, 06 Feb 2019 13:23:10 -0500
Received: from MSXBEBVT28.planar.net (172.16.10.28) by msxbebvt31.planar.net
	(172.16.10.31) with Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Wed, 6 Feb 2019 10:23:09 -0800
Received: from MSXBEBVT28.planar.net ([fe80::6ceb:1c1f:9e0a:3af0]) by
	MSXBEBVT28.planar.net ([fe80::6ceb:1c1f:9e0a:3af0%12]) with mapi id
	15.00.1365.000; Wed, 6 Feb 2019 10:23:09 -0800
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: CMake based recipes and defining CMAKE_BUILD_TYPE
Thread-Index: AQHUvkgDVc0bTtt08kO3Rpe7lTSuEA==
Date: Wed, 6 Feb 2019 18:23:08 +0000
Message-ID: <1549477388545.2721@planar.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.15.0.62]
MIME-Version: 1.0
X-OrganizationHeadersPreserved: msxbebvt31.planar.net
X-MC-Unique: rAja8T44OHmJJ4cK0vd2Pw-1
X-Mimecast-Spam-Score: 0
Subject: CMake based recipes and defining CMAKE_BUILD_TYPE
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
X-List-Received-Date: Wed, 06 Feb 2019 18:39:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_15494773885452721planarcom_"

--_000_15494773885452721planarcom_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I'm trying to understand why the cmake.bbclass doesn't make any attempt to =
set CMAKE_BUILD_TYPE and what the design philosophy behind that is?

On the surface I would expect that the default build type would be Release =
but I can see how that might not always be the right choice. I'm really sur=
prised that there isn't a global variable that can be set for this, am I mi=
ssing something, or is it really expected that each recipe provide it if th=
ey care?


FYI I started looking into this when I realized that NDEBUG is not set for =
many (if not all) of my CMake based recipes and thus asserts are still enab=
led in my production code. This appears to be known behavior for CMake if C=
MAKE_BUILD_TYPE is not set.


Matt S.

--_000_15494773885452721planarcom_
Content-Type: text/html; charset=WINDOWS-1252
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
<p>I'm trying to understand why the cmake.bbclass doesn't make any attempt =
to set CMAKE_BUILD_TYPE and what the design philosophy behind that is?&nbsp=
;<br>
</p>
<p>On the surface I would expect that the default build type would be Relea=
se but I can see how that might not always be the right choice. I'm really =
surprised that there isn't a global variable that can be set for this, am I=
 missing something,&nbsp;or is it really
 expected that each recipe provide it if they care?<br>
</p>
<p><br>
</p>
<p>FYI I started looking into this when I realized that NDEBUG is not set f=
or many (if not all)&nbsp;of my CMake based recipes and thus asserts are st=
ill enabled in my production code. This appears to be known behavior for CM=
ake if CMAKE_BUILD_TYPE is not set.&nbsp;<br>
</p>
<p><br>
</p>
<p>Matt S.&nbsp;<br>
</p>
</body>
</html>

--_000_15494773885452721planarcom_--
