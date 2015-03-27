Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCAF2E00924; Fri, 27 Mar 2015 13:57:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Mar 2015 13:57:34 PDT
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A7B1E0091F
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 13:57:33 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-30.us.mimecast.lan; Fri, 27 Mar 2015 16:56:28 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Fri, 27 Mar 2015 13:56:26 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 27 Mar 2015 13:56:27 -0700
Thread-Topic: Best practices for copying recipe from a newer release
Thread-Index: AdBo0H5P9Et/YApHQPuA1Z+w6xT1/Q==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDC987968@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: DiGXsXNaRa6STeT6uZ7jZQ-1
Subject: Best practices for copying recipe from a newer release
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
X-List-Received-Date: Fri, 27 Mar 2015 20:57:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4B07ADD556F70043925DA2E9C5D4346D2FDC987968MSXBEBVT12pla_"

--_000_4B07ADD556F70043925DA2E9C5D4346D2FDC987968MSXBEBVT12pla_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I find myself in the situation where my project is currently using meta-ope=
nembedded from the Dylan branch but I want to use a recipe from the current=
 master.
Is it better for me to copy the recipe into my own branch off of Dylan or t=
o copy the recipe into my own meta-layer?

What works out better later on when I want update by project to use a newer=
 release like Daisy, etc?

Thanks,
Matt S

PS. I don't think it matters much, but the recipe in question is the v4l-ut=
ils_1.6.2 recipe





--_000_4B07ADD556F70043925DA2E9C5D4346D2FDC987968MSXBEBVT12pla_
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
<div>I find myself in the situation where my project is currently using met=
a-openembedded from the Dylan branch but I want to use a recipe from the cu=
rrent master. </div>
<div>Is it better for me to copy the recipe into my own branch off of Dylan=
 or to copy the recipe into my own meta-layer? </div>
<div>&nbsp;</div>
<div>What works out better later on when I want update by project to use a =
newer release like Daisy, etc? </div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Matt S</div>
<div>&nbsp;</div>
<div>PS. I don&#8217;t think it matters much, but the recipe in question is=
 the v4l-utils_1.6.2 recipe<br>

</div>
<div>&nbsp;</div>
</font>
</body>
</html>



--_000_4B07ADD556F70043925DA2E9C5D4346D2FDC987968MSXBEBVT12pla_--
