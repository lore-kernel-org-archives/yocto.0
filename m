Return-Path: <Ayman.Hassan@ideainmotion.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7B3CE00950; Thu,  6 Sep 2018 17:34:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.0.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 45351 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Sep 2018 17:34:34 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00130.outbound.protection.outlook.com [40.107.0.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22241E00939
	for <yocto@lists.yoctoproject.org>;
	Thu,  6 Sep 2018 17:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ideainmotion.onmicrosoft.com; s=selector1-ideainmotion-org;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ImPzkZnBsEHk/qA57jgDbyIuZherqRdroyTQVlLbx7c=;
	b=ZQqauSIcNl4zdv0RkCtEORnUuhHJ1T1H9EIeu1fNQ9quTsn1ehuRgXGFI8+r804RzZYOfvYShnsOZJcoRgI/ipR0auR4RMUyUMJJnNlSwwPU1zAXefYvg2LZfWynC9lwDkgP5fZwf9QD0zCGEL4REhqH8tQ00SRAXYnAdqjM4L8=
Received: from HE1PR0301MB2332.eurprd03.prod.outlook.com (10.168.123.138) by
	HE1PR0301MB2235.eurprd03.prod.outlook.com (10.168.31.146) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.15; Thu, 6 Sep 2018 11:58:42 +0000
Received: from HE1PR0301MB2332.eurprd03.prod.outlook.com
	([fe80::1128:bb05:d310:df5b]) by
	HE1PR0301MB2332.eurprd03.prod.outlook.com
	([fe80::1128:bb05:d310:df5b%11]) with mapi id 15.20.1101.019;
	Thu, 6 Sep 2018 11:58:42 +0000
From: Ayman Hassan <Ayman.Hassan@ideainmotion.org>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Thread-Topic: Using Dropbear - Core Image Sato
Thread-Index: AQHURdj0Bj9lki+880OMUrs8KDIhHw==
Date: Thu, 6 Sep 2018 11:58:42 +0000
Message-ID: <HE1PR0301MB2332FDB93B86A1BADB529411EC010@HE1PR0301MB2332.eurprd03.prod.outlook.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Ayman.Hassan@ideainmotion.org; 
x-originating-ip: [41.33.200.177]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0301MB2235;
	6:3eyYe+L9Nw07OtAYTfO5zbwa+dFPKlwdJL9Zm68D2i+RuodSpdqbqdq6ptflW5yvqhKQTnA68+SA3JtP6j8W7wCDrFKdfdc0X8IHgvOf/Q5iiiJ08P181w3aVIboei2Nu2wKI+07ThcQCAkFX25Z9ZMhStRm8Hhrc9kEW9Av+fjGTE5Y6VtJKTE1SdnhdbXqdBV6FHcdigjQaxBkvYTpkPHi3A6UfU7febdHm89MggHUUTxW/THkxVlxfB2Bl80GwAZgpRxmJTUIWhMJlEVANlOL4j5yCEJqZlr84Yhy9kLM5tL1m7Vble4XYpvgKqdNm/CuOffEzB45mfCA+logn8BjsGha3u6V624593qscIppuS6lI7DTc9cjy/YTNnalPnmyWJPizP057JCey1YG9W8dzj9xB8Ix+OsSLehFRbwTdhfA5Inuztka7fRWB81amsIYNPPpmYiKn44UgiLnNg==;
	5:QFvTw1wLTrWUWaxLNLnjFlaTt9zQqlapjwPU6lP8TIlQBti7sgaIezO7VHxq7Ro7SNx6xwVdwj4h4WvRTK6gz5vBfA9SQetXrqnbor5GTQJjRxiWtxsCftrqtTGim/MH+lP1dMFhSap1wZOk0jIU5yTXH0KRb2gWvR8peENjiR4=;
	7:GrQt88DIxQUUSuXC7wMaX6oO3lihYaiTXJYnv1wtj7KrJrNqRMTx+9HTJD/2TltVqFk4OjBOnuj/lp2Bvsr/Xm8iZfd6DoL/h8N074fEaDU6mKH/Nps8rcXkWXDTZUvv6mXGCesh+NgsLdZj0NjdC5KtdsTKCzAx3sgUqd5pORepaBvjXt4kPkcnOPSZD2H89p8U3IbXBXcbyolOZmQZjdwdrSvvWh3Xlnujm2Es/QcK09dPDNPytaBvEYDxLblL
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: bec17cf2-2c4c-4063-87de-08d613f01742
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR0301MB2235; 
x-ms-traffictypediagnostic: HE1PR0301MB2235:
x-microsoft-antispam-prvs: <HE1PR0301MB223533603FAD3CA47819AD06EC010@HE1PR0301MB2235.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(158342451672863)(21748063052155)(21532816269658);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(10201501046)(3002001)(3231311)(1211086)(944501410)(52105095)(93006095)(93001095)(149027)(150027)(6041310)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699016);
	SRVR:HE1PR0301MB2235; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0301MB2235; 
x-forefront-prvs: 0787459938
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39830400003)(376002)(346002)(396003)(366004)(136003)(189003)(199004)(45914002)(99286004)(74316002)(476003)(14454004)(6916009)(6436002)(2351001)(62860400002)(10916006)(25786009)(8676002)(5250100002)(2501003)(33656002)(81166006)(102836004)(1730700003)(81156014)(72206003)(186003)(478600001)(6506007)(8936002)(7736002)(66066001)(7696005)(9326002)(2906002)(316002)(26005)(6116002)(54896002)(6306002)(105586002)(53936002)(86362001)(3846002)(9686003)(5640700003)(256004)(106356001)(486006)(5660300001)(2900100001)(97736004)(68736007)(55016002)(454784003)(3486003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0301MB2235;
	H:HE1PR0301MB2332.eurprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ideainmotion.org does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: jf36JRUXm2TQcKCCLDXCbdAzY9N1BXqzTjzS0n/5hbEGvgLCRn+rxlD69hoIO0nzG1mAGscV2h2nfL240pT/re8TwXqAF/GNzsIhX1faEUGrBNtg9MUU+SPHzN8Kota6Zp8RbAZfEUaMN4/tTEuyhZng6BbNNqAB75Bu4YNNCJAQ4omR3FtnAGo8N2le03yiYURuaSEOle9K56GNAzS0jwlSq8T1tVFSxzxu0hzWM12CWKGm9zYnZXU7OagP87eS+obEcpmyoJ5+y8IL2jvJqrrvB1DovDYYOQv4c6HF1RcqmuASN8v4zM78GwR3iukaPOAJ8sVBhE/r9rBeqkxOTPAzfX+CCqYmqaUK1L2Smzc=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ideainmotion.org
X-MS-Exchange-CrossTenant-Network-Message-Id: bec17cf2-2c4c-4063-87de-08d613f01742
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2018 11:58:42.0847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3431901b-ee91-4346-9020-2d642ffbbd68
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0301MB2235
X-Mailman-Approved-At: Fri, 07 Sep 2018 01:37:34 -0700
Subject: Using Dropbear - Core Image Sato
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
X-List-Received-Date: Fri, 07 Sep 2018 00:34:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0301MB2332FDB93B86A1BADB529411EC010HE1PR0301MB2332_"

--_000_HE1PR0301MB2332FDB93B86A1BADB529411EC010HE1PR0301MB2332_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable



Hello,
I am part of a team based in Cairo, Egypt =96 working on a project and we=
=92re still discovering Linux Features, I am currently running  core-image-=
sato on a virtual box, and trying to connect to SSH server using Dropbear =
=96 but it=92s not working =96 I get connection refused message. I couldn=
=92t find tutorials to know how I can fix the problem.
I would really much appreciate your help.

Thank you,
Ayman ABDELHAMID


--_000_HE1PR0301MB2332FDB93B86A1BADB529411EC010HE1PR0301MB2332_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,</p>
<p class=3D"MsoNormal">I am part of a team based in Cairo, Egypt =96 workin=
g on a project and we=92re still discovering Linux Features, I am currently=
 running &nbsp;core-image-sato on a virtual box, and trying to connect to S=
SH server using Dropbear =96 but it=92s not working
 =96 I get connection refused message. I couldn=92t find tutorials to know =
how I can fix the problem.
</p>
<p class=3D"MsoNormal">I would really much appreciate your help.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,</p>
<p class=3D"MsoNormal">Ayman ABDELHAMID</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_HE1PR0301MB2332FDB93B86A1BADB529411EC010HE1PR0301MB2332_--
