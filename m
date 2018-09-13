Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DADAEE006AF; Thu, 13 Sep 2018 02:18:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60554 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Sep 2018 02:18:00 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0064.outbound.protection.outlook.com [104.47.2.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4411BE0053F
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=L0MnHSbd66r09eC3ox6US1gKm4vB2E4aTxsgIwRUseI=;
	b=SArtgXp+f3bn+93A42rLMPDXOE6QwLJ49AAnZzF6v7GTTRXRcALTKsMH+ynXDkpZxJbhuk2mqqFrE9yB3Q12HgEERTgdRyeNBHAyZ75V6guBOvdILEXr/V2dzjj7RFnoh91n26lX/dYDJtk8UzYpc/o1PJuHSfkGK1vrxXN1UTA=
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB0830.eurprd01.prod.exchangelabs.com (10.161.105.21) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.18; Thu, 13 Sep 2018 09:17:57 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1122.020;
	Thu, 13 Sep 2018 09:17:57 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: inheriting native.bbclass explicitly
Thread-Index: AdRLQbZvnia0h813R7Oy/Sn0LGVS8w==
Date: Thu, 13 Sep 2018 09:17:57 +0000
Message-ID: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR01MB0830;
	6:l16EkOxaT1UUdfG/EA025cTW00w9lCmqNlQvGLBD9zDUiPRHjDZ05MzkT68UHzq5S2ugzun5I/hHpEYGGQp62CwqQtA/tlaCqgZpY+vnSlEN3paXYFDWm8HMH+XX1bh5zpg17KZKmgzgnZAu1hFHRWLljiSESC8p2HojA7Y/mFJIkK7SrGu+QxTsI8TPwHolwbGY4576GNZZnlO/s0blkdk/f/C6R1IA7uKHi+Dz2o0/P6ACTNpwKQskSXCCxEY2q6czdJtOaL6fW9xG5WFktMfEvIkrq9nDy4ZUaSTVpYOXdbD5YjB5h2H/4noIuh23CZrrabX3PFM6dvqs2eKA+xLIQJJe9VOboIxbQ3AaShOYe5KFjABXvICnn+Rw0XQ/59vRf0HG5118UcE4Jw5z8jt6b4abGZ0B7QUYX65UZipZkddkb/Z8z+o/ADx722oyFbtVpoBIHKATYyX7D5CIjQ==;
	5:gieHJ+QzMPYxtSIPirJCWg/+C6aMe3PX2h1DDyXuyKVkyZfUBlbawYXnc5JlVd568s9VO0+IT0T4epLAz/WGZn068IohgSa0K8LzH1jOmnOYku18zDGQ8NmDuPwy22TnKpMr+q528qFb1l5+kwww/+Gy+II6XfFey4FN4MQv9Ow=;
	7:CvyQm08wEL6ee/H3SIDZ6DHcvHNHLvMS5UWJM9DgIN2O0jW0jcTDTPo0tGg1Zyf38hu9e0ic1GQig1MktyTqrng2BIP/EvLga3+y0JHqJNL7pT5CxYqzVCDwnaQG85OGO7fIZ9Ia1eeD6Rb6Ay1NqphTssDbdTL3u6IVYfD6wY1iWAKMTvSNrqWbrCpV8RPh3DdJkLy2+YXPziDx0SApmdHGm41TtilfsxZoDrydG5Tqpv/0QHs+0J0heVhN4/kR
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 4ef7098f-d30b-4270-026e-08d61959cb9c
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB0830; 
x-ms-traffictypediagnostic: VI1PR01MB0830:
x-microsoft-antispam-prvs: <VI1PR01MB0830DC45F34FC80B393D4632E01A0@VI1PR01MB0830.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(103651359005742)(21748063052155); 
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(10201501046)(3002001)(3231311)(944501410)(52105095)(93006095)(93001095)(149027)(150027)(6041310)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(201708071742011)(7699050);
	SRVR:VI1PR01MB0830; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB0830; 
x-forefront-prvs: 07943272E1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(39860400002)(346002)(366004)(376002)(396003)(189003)(199004)(68736007)(6436002)(476003)(486006)(66066001)(6116002)(105586002)(3846002)(790700001)(106356001)(2351001)(316002)(5630700001)(966005)(99286004)(97736004)(7696005)(6506007)(102836004)(6916009)(14454004)(5660300001)(478600001)(5250100002)(2501003)(2900100001)(3480700004)(5024004)(256004)(26005)(25786009)(33656002)(186003)(86362001)(606006)(9326002)(1730700003)(81156014)(5640700003)(74316002)(81166006)(53936002)(8676002)(14444005)(54896002)(8936002)(6306002)(7736002)(236005)(55016002)(2906002)(9686003)(72206003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB0830;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 6a2zaNIigmGLjh82dd+AQ2UOHHvfC3qUQXg7VNrVuqYPr0vNdgvUTZ/HNT4z9TTUpeZ/iCsI3e+nDHjXn+rKMV0GquSd85kDlGjB+u8affBQJKtOLMkOy9XLdt55CE+1yZIPGC1YAHonHQoZuI01GgM5gq7LmRF0gUK0Fws9BMk1M+X0FG4eikxnq4e9OhoylpXNqViCYIa1cF3DYxg2Opopd/iv7WACdYszVoLpiRpMQY6d/6xfyufaOTssU0Rit6LjH8L5tlR+Tlt8AagZ6NaXpo5FGJo0le07D96c+mAc2SjW3XycWBYWUNxB6OMyq8TJgVCtxy4ypJKUUDsCCkXAxZhqFbNhRqH7UGBOM0U=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ef7098f-d30b-4270-026e-08d61959cb9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2018 09:17:57.7192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB0830
Subject: inheriting native.bbclass explicitly
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
X-List-Received-Date: Thu, 13 Sep 2018 09:18:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0VI1PR01MB1070eurp_"

--_000_VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0VI1PR01MB1070eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

YP reference manual chapter 6.83 "native.bbclass"
https://www.yoctoproject.org/docs/2.5.1/ref-manual/ref-manual.html#ref-clas=
ses-native reads:
"*Create a myrecipe-native.bb that inherits the native class.
If you use this method, you must order the inherit statement in the recipe
after all other inherit statements so that the native class is inherited la=
st."

Is this rule's scope literally each single recipe separately
or rather the compound .bb file + set of matching .bbappends?

I am going to use that method for building autoconf-archive package
as for device built here this package is needed only on build system and in=
 no case on target system.

Regards
krzysiek
________________________________
This message and any attachments are intended solely for the addressees and=
 may contain confidential information. Any unauthorized use or disclosure, =
either whole or partial, is prohibited.
E-mails are susceptible to alteration. Our company shall not be liable for =
the message if altered, changed or falsified. If you are not the intended r=
ecipient of this message, please delete it and notify the sender.
Although all reasonable efforts have been made to keep this transmission fr=
ee from viruses, the sender will not be liable for damages caused by a tran=
smitted virus.

--_000_VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0VI1PR01MB1070eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">YP reference manual chapter 6.83 &#8220;native.bbcla=
ss&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://www.yoctoproject.org/docs/2.5.1/r=
ef-manual/ref-manual.html#ref-classes-native">https://www.yoctoproject.org/=
docs/2.5.1/ref-manual/ref-manual.html#ref-classes-native</a> reads:<o:p></o=
:p></p>
<p class=3D"MsoNormal">&#8220;&#8226;Create a myrecipe-native.bb that inher=
its the native class.<o:p></o:p></p>
<p class=3D"MsoNormal">If you use this method, you must order the inherit s=
tatement in the recipe<o:p></o:p></p>
<p class=3D"MsoNormal">after all other inherit statements so that the nativ=
e class is inherited last.&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this rule&#8217;s scope literally each single rec=
ipe separately<o:p></o:p></p>
<p class=3D"MsoNormal">or rather the compound .bb file &#43; set of matchin=
g .bbappends?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am going to use that method for building autoconf-=
archive package<o:p></o:p></p>
<p class=3D"MsoNormal">as for device built here this package is needed only=
 on build system and in no case on target system.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">krzysiek<o:p></o:p></p>
</div>
<hr>
<span lang=3D"EN-US" style=3D"font-style:italic;font-size:10.0pt;font-famil=
y:=0A=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:maroon;mso-ansi-language:EN-=
US">This message and any attachments are intended solely for the addressees=
 and may contain confidential information. Any unauthorized
 use or disclosure, either whole or partial, is prohibited.<br>
E-mails are susceptible to alteration. Our company shall not be liable for =
the message if altered, changed or falsified. If you are not the intended r=
ecipient of this message, please delete it and notify the sender.<br>
Although all reasonable efforts have been made to keep this transmission fr=
ee from viruses, the sender will not be liable for damages caused by a tran=
smitted virus.</span>
</body>
</html>

--_000_VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0VI1PR01MB1070eurp_--
