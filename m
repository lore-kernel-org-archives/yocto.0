Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 760ECE00BF8; Thu,  3 Sep 2015 02:46:47 -0700 (PDT)
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
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Sep 2015 02:46:43 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E17FFE00A9C
	for <yocto@yoctoproject.org>; Thu,  3 Sep 2015 02:46:43 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2AdAwBBP8ZV/xUHmMZbGQSCMSEsVG+9KgmHfQKBJjgUAQEBAQEBAX8LhCUBAQMSG14BDAkVViYBBBsaiAwBp22FC6A+DAEfkAEog1CBFAWVCwGHawWNa5EEFw+DfYF0Q4EEAQEB
X-IPAS-Result: A2AdAwBBP8ZV/xUHmMZbGQSCMSEsVG+9KgmHfQKBJjgUAQEBAQEBAX8LhCUBAQMSG14BDAkVViYBBBsaiAwBp22FC6A+DAEfkAEog1CBFAWVCwGHawWNa5EEFw+DfYF0Q4EEAQEB
X-IronPort-AV: E=Sophos;i="5.15,634,1432612800"; 
	d="scan'208,217";a="118482976"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	03 Sep 2015 05:45:36 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	03 Sep 2015 05:45:36 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0174.001; Thu, 3 Sep 2015 11:45:34 +0200
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Modify RPM package for the DB location
Thread-Index: AdDmLT/N61RUdoB9Q6yaqUkhyFPzJg==
Date: Thu, 3 Sep 2015 09:45:34 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A48C9CF@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Modify RPM package for the DB location
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
X-List-Received-Date: Thu, 03 Sep 2015 09:46:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A48C9CFAZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A48C9CFAZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am looking for a way to modify the RPM package for having a different loc=
ation for the database files from current location of /var/libs/RPMS. As we=
 are using RAMFS with limited size we want to create the database for RPM's=
 on SD card instead of current location /var/libs/RPMS.
One way of doing it to pass the alternative path as an argument to -dbpath =
option. But we need to do the same for many packages. So we want to modify =
the option to have a default option instead of passing it manually with eac=
h packages.
Any thoughts how we can achieve the same.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3A48C9CFAZFFEXMB01globa_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking for a way to modify the RPM package for=
 having a different location for the database files from current location o=
f /var/libs/RPMS. As we are using RAMFS with limited size we want to create=
 the database for RPM&#8217;s on SD card
 instead of current location /var/libs/RPMS.<o:p></o:p></p>
<p class=3D"MsoNormal">One way of doing it to pass the alternative path as =
an argument to &#8211;dbpath option. But we need to do the same for many pa=
ckages. So we want to modify the option to have a default option instead of=
 passing it manually with each packages.<o:p></o:p></p>
<p class=3D"MsoNormal">Any thoughts how we can achieve the same.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A48C9CFAZFFEXMB01globa_--
