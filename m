Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12E0CE009E7; Thu, 13 Sep 2018 07:52:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.1.42 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 163722 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Sep 2018 07:52:09 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr10042.outbound.protection.outlook.com [40.107.1.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD45CE005B1
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 07:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=G5bpjnRv1nhytYfuCe4CmG6vsC+DSdhUKepqNAjE6nA=;
	b=XvvoLR1z+QJNuVSfjziR2gxbDz0AcrXAZD+Zs+ibc7YopThNfRGzlYq6cFjYg616UMwFOhT8Ps6iFPDdKvkH4CqmpRv3mUoKZFhiHaFjMHpKdjU7WcZz5PwHk86ljA7c5/m3UeSm6tsYXA+jxlRl56FlW1tEvrLGSD1oJBEzvbA=
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB1007.eurprd01.prod.exchangelabs.com (10.161.108.139) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.16; Thu, 13 Sep 2018 14:18:56 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1122.020;
	Thu, 13 Sep 2018 14:18:56 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building, Using SDK
Thread-Index: AdRLadRy5X3gWC2YRBWzUE//nH8P7g==
Date: Thu, 13 Sep 2018 14:18:55 +0000
Message-ID: <VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR01MB1007;
	6:l5sCJZTx7eAs8bhdoA8xtoCbsdxQF8Id60tQui94EKXvQiW9/yHksOtvSI3YvpY0y1NeskObCDp1QtEVo84tKtwExpQ2aQEaBOYoYBYCdkZgsN1s/9KsuhjQ/h7Oexhl2KNoxJxdmbCvLGbrVvMOL2FwREmYRQkusIN0WAB0apQaAFuWtDrwdhSYnmyXds8k6tqItfIt6HlG7c6cN068SEvSTzs6VNc+sLMa98C6KvJgLty/QL9h+YeoWO6kejgiWR4dNFKllRrUMxQ/E3T2dU5Zj3E5dwqmaY6ubIzYh4qRDi8+v9yi6GQwa4KoUf5OuVAeGmRWxKaAu7Jl6ZE5qbdFJXW1AbwSpxPGmAKL4sXFhuRk3fMp5ieeASBlRGuOQWzU2a+M2FjklI9+43Egm9FPGtxT6KU8bgV0j8tWwUqSTkUkXMm5m1xK+Kt4FhYtANHkLOZykPFwzSktNOzdHg==;
	5:dUItIMXcjpc+cDlbO7E7c+BRI5pCy5uMSigAWsJ+3kToGlt3pI2B3ap30xsfUhTo+5lqbOrtGoq22TMPr5gvXtFZxRaCALN2qYdRY/AWGaTDheAClB//4ueLJ+a30ypiC/c26qwBmd4Ss4dRXiu0+Vba1VrWfObK8dL2JzwsDcs=;
	7:Jlux+EJzKhyIH9tokTS9AEj3MwFFCa//MmZMW+Bc+13M6bWgzEhza6r5bCPbeU0rGxre1Cd5CF5WjGxOrqVqNupLhlVHxspxHRpFY65/GFNOLsS/AEC31bm5ki3Sa4RK8ZJxBhJVuf4dK2UPLDTqDhTYlxwxU0CoMCQjFALFoxAhdHuZ2aNqs7267hmBwXoGLZOtVhOmmcPtU4fcjypHZ2WO8AQFURM8XlEqaWnA3xt37AyF/OjKvalEubi9szdx
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 7795aeb4-2f4b-45fe-b7bd-08d61983d729
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB1007; 
x-ms-traffictypediagnostic: VI1PR01MB1007:
x-microsoft-antispam-prvs: <VI1PR01MB10072A1F072C368C7B894337E01A0@VI1PR01MB1007.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(158342451672863)(103651359005742)(21748063052155);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(10201501046)(3002001)(3231311)(944501410)(52105095)(93006095)(93001095)(149027)(150027)(6041310)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(201708071742011)(7699050);
	SRVR:VI1PR01MB1007; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB1007; 
x-forefront-prvs: 07943272E1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(366004)(136003)(396003)(346002)(376002)(199004)(189003)(256004)(478600001)(54896002)(99286004)(106356001)(6306002)(55016002)(6436002)(7696005)(74316002)(5024004)(102836004)(26005)(5640700003)(9686003)(5250100002)(8676002)(14454004)(9326002)(2351001)(68736007)(7736002)(5660300001)(25786009)(6506007)(105586002)(97736004)(2501003)(6916009)(486006)(33656002)(81166006)(316002)(3846002)(790700001)(6116002)(476003)(5630700001)(2906002)(81156014)(72206003)(53936002)(66066001)(8936002)(14444005)(186003)(2900100001)(86362001)(1730700003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB1007;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: gStm8cTeoz9gMFta5busvqErnY1INWmXaJBYkDKhEyhyqdCSrlqlcmpy0Ie+Btm/7bfm9PB092BPgCNk17mt4nVqyK23iBao60lCW+muqs0hbmaAMI4gZwPdgAtNheJUFQXoMVGacL8kgXBkTKM2fypH8JdEdFhuHpYDxSCTJukzgFWH4hkfklpkel7VXPQC+DHhhr54BHTCMdTZoKe9VnONS8iUAyvSgbLp1NJJzCTam8j4uc9kk5lk7yQm0QLyt7b0liiXgqrtIcloj0Qj0fhHJsc+9MQSW6jb47GpW0RVtyJsiT0PnKPpxq5rYdgzQqXS9sM7JCLtFbx0gBjGn62zxcKd3BOofVlAUGpupq8=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7795aeb4-2f4b-45fe-b7bd-08d61983d729
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2018 14:18:55.9968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB1007
Subject: Building, Using SDK
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
X-List-Received-Date: Thu, 13 Sep 2018 14:52:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0VI1PR01MB1070eurp_"

--_000_VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0VI1PR01MB1070eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Alex Gonz=E1lez elaborates in his book Embedded Linux Development Using Yoc=
to Projets (2nd Edition)
SDK-related questions - basics, building, usage (chapter 4).

1.
Downloading then installing precompiled SDK was one of all available option=
s according to Alex.
He elaborates how to find it on server in Internet, how to select needed on=
e and install it.
I wonder how to integrate downloaded and installed precompiled SDK
to Poky release used on build system?

2.
Preparing / building SDK by oneself was further option with image target's =
'populate_sdk' Bitbake task
as the recommended way (according to Alex in chapter's certain section).
One would need only to start populate_sdk task for image which matches root=
 file system of system in development.
As soon as task completed SDK can be installed using generated script.
But how does it work for first build where rootfs was not built in the past=
.
Is in that case following procedure the proper one?
step 1: bitbake <image-name> -c populate_sdk
step 2: bitbake <image-name>

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

--_000_VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0VI1PR01MB1070eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
<p class=3D"MsoNormal"><span lang=3D"DE">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Alex Gonz=E1lez elaborates in his book Embedded Linu=
x Development Using Yocto Projets (2nd Edition)<o:p></o:p></p>
<p class=3D"MsoNormal">SDK-related questions &#8211; basics, building, usag=
e (chapter 4).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1.<o:p></o:p></p>
<p class=3D"MsoNormal">Downloading then installing precompiled SDK was one =
of all available options according to Alex.<o:p></o:p></p>
<p class=3D"MsoNormal">He elaborates how to find it on server in Internet, =
how to select needed one and install it.<o:p></o:p></p>
<p class=3D"MsoNormal">I wonder how to integrate downloaded and installed p=
recompiled SDK<o:p></o:p></p>
<p class=3D"MsoNormal">to Poky release used on build system?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">2.<o:p></o:p></p>
<p class=3D"MsoNormal">Preparing / building SDK by oneself was further opti=
on with image target&#8217;s &#8216;populate_sdk&#8217; Bitbake task<o:p></=
o:p></p>
<p class=3D"MsoNormal">as the recommended way (according to Alex in chapter=
&#8217;s certain section).<o:p></o:p></p>
<p class=3D"MsoNormal">One would need only to start populate_sdk task for i=
mage which matches root file system of system in development.<o:p></o:p></p=
>
<p class=3D"MsoNormal">As soon as task completed SDK can be installed using=
 generated script.<o:p></o:p></p>
<p class=3D"MsoNormal">But how does it work for first build where rootfs wa=
s not built in the past.<o:p></o:p></p>
<p class=3D"MsoNormal">Is in that case following procedure the proper one?<=
o:p></o:p></p>
<p class=3D"MsoNormal">step 1: bitbake &lt;image-name&gt; -c populate_sdk<o=
:p></o:p></p>
<p class=3D"MsoNormal">step 2: bitbake &lt;image-name&gt;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">krzysiek<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0VI1PR01MB1070eurp_--
