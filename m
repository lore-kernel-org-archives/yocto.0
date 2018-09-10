Return-Path: <Adham.Elsafty@ideainmotion.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 936F9E00B3E; Tue, 11 Sep 2018 00:15:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.1.128 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 68325 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Sep 2018 00:15:57 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0128.outbound.protection.outlook.com [104.47.1.128])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BDD5E00B23
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 00:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ideainmotion.onmicrosoft.com; s=selector1-ideainmotion-org;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KRiSr7y23qUvvvJKy9Vz+6QBaroFuCrJzhUZp8tPyBc=;
	b=kFzU5kGp7nUp4G9WcMYpdn4bkuGsg+jiUY8uYqmxFIkZKd1lWrw8jNX7mSbmlOqClIEl+wn40iAb8fGrhpd1z0j2qn0K3uieVQXBSyWHC7DDcbgQonoWw8Zpl2wDBAOmcLY6ug43rddur+LDT6VijBQ+Q4QZv6NFwMHBMgsPDDw=
Received: from AM6PR03MB4374.eurprd03.prod.outlook.com (20.177.33.76) by
	AM6PR03MB4070.eurprd03.prod.outlook.com (20.177.38.142) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.15; Mon, 10 Sep 2018 09:43:29 +0000
Received: from AM6PR03MB4374.eurprd03.prod.outlook.com
	([fe80::94eb:214f:7f1b:7595]) by
	AM6PR03MB4374.eurprd03.prod.outlook.com
	([fe80::94eb:214f:7f1b:7595%3]) with mapi id 15.20.1122.019;
	Mon, 10 Sep 2018 09:43:29 +0000
From: Adham ElSafty <Adham.Elsafty@ideainmotion.org>
To: "Yocto Mailing List (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Thread-Topic: I can't seem to include tc in my image
Thread-Index: AdRI6kVgIEQBcgORQdGHgi4y3GQIgQ==
Date: Mon, 10 Sep 2018 09:43:29 +0000
Message-ID: <AM6PR03MB43745DD71168DBF5624BB83B81050@AM6PR03MB4374.eurprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Adham.Elsafty@ideainmotion.org; 
x-originating-ip: [41.33.200.177]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM6PR03MB4070;
	6:z9T39BW7JdJmARTXgTJ54et3ui1KenhC8t7AhANlV86zHUKJh/7klcOaAZC3keqfZIADaCAnQ7OjKhuk4dMlfMdhYpO/x4KAdXgGdfIg0jvOmDS3BBNs9bCVrZ0itoYuz6XDHmR8fmaA10PGc8mrTw6ppqiIQkZxXyOCjwIORbH8rRYS+fHtQFkLUzQa4KluqQAo6F1yD7yqYuxEeZD4dgK7gOMSclrJqBqMyCYxkXN4bc7nkfOyWJD76nlk4yMYulNaspNhz1f3f4KzHMGrSUXcAAEII8RvkZpaxgqlXvGNWbmsGy1/xFivb8QtJ/rJfl+K9wPI8lkO/cE5CfwiiIj8eR2/XNHr5DZGVnMlfRIqyjP1/Egrr2U8G1ucLiB5UQdBvQVf7lT0qtsGJQZjHMpmYp6JluiMJkVjbuuccWlFrwov6DvWiEebk77GT2hGH/vG3vCoQj+ohBhMyWBBHw==;
	5:B6AAOh19WhVZ/CvabhwHSGF73lVt87/1M0slypskKKCzKji8wRg+Xcz/2txsHxfEipqF7Sg2YsNcr7QYsloovBOgD9jhs23xbxW0HCRRFT2tqkfIXFNJajSs+aSL0RQGY/j42ydXZVlFBrMYs34hN9qwLET2sHOobSugpNCoIfQ=;
	7:WLCYWgCj9GKv5G/Je0QkknDMzORhcpJpI5LH3knlocvszeCVOj9Vp4cP5nW+jWce88He346TfyEpDjQu2NFCAOwCPZyTBrIs2qI2v4Ckd4Hknc2dKTer1K7F0dkPkt6SuiQW6dflH4H5eCSwd0P1RubZNQA9rzokzA0Z7W8qRRG9dFHBpgzxvmR+JPfKUt04x7JRdFK8tvm2HqHzyCxn1WpBR6ExPwGRdMAp3BdziARIU1JalRB0Y8ydwFC6wBrf
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 17dc22f7-f1a0-4acd-3e59-08d61701dd88
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR03MB4070; 
x-ms-traffictypediagnostic: AM6PR03MB4070:
x-microsoft-antispam-prvs: <AM6PR03MB40700BEF93DB5A39389E978081050@AM6PR03MB4070.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(3231311)(1211086)(944501410)(52105095)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(20161123564045)(20161123558120)(201708071742011)(7699050);
	SRVR:AM6PR03MB4070; BCL:0; PCL:0; RULEID:; SRVR:AM6PR03MB4070; 
x-forefront-prvs: 07915F544A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(366004)(39830400003)(376002)(346002)(396003)(199004)(189003)(256004)(486006)(478600001)(6436002)(53936002)(9686003)(5250100002)(6306002)(54896002)(2900100001)(55016002)(99286004)(72206003)(86362001)(74316002)(7736002)(790700001)(3846002)(62860400002)(476003)(6116002)(8936002)(14454004)(25786009)(102836004)(105586002)(66066001)(33656002)(97736004)(2906002)(6916009)(106356001)(316002)(8676002)(6506007)(186003)(81166006)(26005)(5660300001)(81156014)(68736007)(10916006)(7696005)(3486003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR03MB4070;
	H:AM6PR03MB4374.eurprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ideainmotion.org does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: ULnMhkWn/J0NG/9CJ6ycMpiOIWeX6r4eiLumq2OIKCqNGna06OIWtFJMwiiWGaqaXg5O5Zx8wkPGPSdcp8+OaqWfUBKHD+ElFxcaL66f3nCNmr0/pygd3IYb6cGsKvz6c8CZ/xdQ19XWL/8kl8XWcg64klZTYWwNJ3F8IxhnLjvRCG90Ln3ptyFf4c2O9R9Wjdxye7h1M+CP0ZwLh7lh7wf9K3kSyvj8NWtnSvjK8pdG6Qtsjz8gn1VG3FsL9rZ6q5064WUIQrxK9waCOh2/aUK4ShwfZivfZVT8AB5zbIqSLybCLFeuhb7+NwrEOJdIz82Hte/x7Tlu3dLr6YG3tmYTAH0TzdIgCmn7sdK3N0Q=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ideainmotion.org
X-MS-Exchange-CrossTenant-Network-Message-Id: 17dc22f7-f1a0-4acd-3e59-08d61701dd88
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2018 09:43:29.7822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3431901b-ee91-4346-9020-2d642ffbbd68
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR03MB4070
Subject: I can't seem to include tc in my image
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
X-List-Received-Date: Tue, 11 Sep 2018 07:15:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM6PR03MB43745DD71168DBF5624BB83B81050AM6PR03MB4374eurp_"

--_000_AM6PR03MB43745DD71168DBF5624BB83B81050AM6PR03MB4374eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am trying to use traffic control in my yocto image and I want to use tc. =
I included the iproute2 package in my image and used the IMAGE_INSTALL_APPE=
ND =3D " iproute2" in the local.conf file.
When I run the core-image-minimal I can't seem to find any of the iproute c=
ommands installed though.
Am I doing anything wrong or is anything missing?

Best Regards,
Adham ElSafty
R&D Embedded Software Engineer
Idea In Motion


--_000_AM6PR03MB43745DD71168DBF5624BB83B81050AM6PR03MB4374eurp_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I am trying to use traffic control in my yocto image=
 and I want to use tc. I included the iproute2 package in my image and used=
 the IMAGE_INSTALL_APPEND =3D &#8220; iproute2&#8221; in the local.conf fil=
e.<o:p></o:p></p>
<p class=3D"MsoNormal">When I run the core-image-minimal I can&#8217;t seem=
 to find any of the iproute commands installed though.
<o:p></o:p></p>
<p class=3D"MsoNormal">Am I doing anything wrong or is anything missing?<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Adham ElSafty<o:p></o:p></p>
<p class=3D"MsoNormal">R&amp;D Embedded Software Engineer<o:p></o:p></p>
<p class=3D"MsoNormal">Idea In Motion<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM6PR03MB43745DD71168DBF5624BB83B81050AM6PR03MB4374eurp_--
