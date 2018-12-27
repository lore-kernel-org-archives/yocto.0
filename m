Return-Path: <dburke@mountainss.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E624E00C9F; Fri, 28 Dec 2018 04:45:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.79.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 10873 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Dec 2018 04:45:26 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr790044.outbound.protection.outlook.com [40.107.79.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C180AE00BB7
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 04:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mountainsecuresystems.onmicrosoft.com; s=selector1-mountainss-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=eoI9iy0sSbN3Epf676/11+pKI5ZpePnUtDIvg1l421c=;
	b=pXZpQV0Q+5LsHmOM+mCRzCS7zTn9ct7LaBIYnQvjwmkLGsmItVfGeVu7kBngORzql7UrVk4ngCJIYJnaKIFmoMH90QCAcain35HxzUbd7Jx9CPwX37NPtSfqV/hZV/KyDW0fj8kUzjMkmsqSE2OCstfwgWC9W+HzrrllGooZJlE=
Received: from DM3PR17MB0762.namprd17.prod.outlook.com (10.166.162.10) by
	DM3PR17MB0796.namprd17.prod.outlook.com (10.166.162.20) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1471.20; Thu, 27 Dec 2018 16:09:28 +0000
Received: from DM3PR17MB0762.namprd17.prod.outlook.com
	([fe80::387d:6380:d956:f0f2]) by
	DM3PR17MB0762.namprd17.prod.outlook.com
	([fe80::387d:6380:d956:f0f2%2]) with mapi id 15.20.1471.019;
	Thu, 27 Dec 2018 16:09:28 +0000
From: "Burke, David" <dburke@mountainss.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Install Yocto Image using PXE Boot & TFTP
Thread-Index: AdSd/oX33oIChTZCR+eNepmxu4wg4g==
Date: Thu, 27 Dec 2018 16:09:28 +0000
Message-ID: <DM3PR17MB076256015EEE496454E29ECEB1B60@DM3PR17MB0762.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=dburke@mountainss.com; 
x-originating-ip: [184.88.71.104]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM3PR17MB0796;
	6:JbGMWqJlKhwTOC0W2xI4RlGJtZmiQA2W9M1WVDssaYxL5oeC3lRgt/U/EnFQdx5E6rM8eOGw75sCPrWNumkbVqOZWrzufCXGYlG7p17LvSekA2qpzCi6Xh00cjYlziDNTA1qglnqx4KXFsrA7NtKFDs4kl/bpI1bZdofPyxzmYRpDxPL/sj+Dr8NLFhbCFwylhDvX4jHWSOsX/4KyCglVc/Z4cmoJ1vxaPwEJgsXrbCt8bTEnunjohMqqbGIsyes0TwLpa+Eo/iEJPaZ8W2gSjZPDFFpD4lMJn1e/MR7O1z+Fa9PomMbz3ivg3Lq35H9ajtRNewL7Sy27P+niZCSgqidOg2JKxQbb8uQSfOIcf+A33tYu/WiZflz8vI59ZaAtroPX4Zv959dzBPMrx+9BGrnklRpQT98r5ZsDUIOv31A5Q9DAeILU0MwVTApJ1FmoqR6C7Ys7zeR/BxFmr16Fw==;
	5:D79oHX8v3b92a4g0KhRnmEbDEznXA+myTTYEauXNuOMnCw79fwtgDrQ8pzQ6jCDFfSSLtEV3H3KbRYadx81gMoKcIsZozp9I9JLD+UZP5x3Zj8i73C0/oNAOGg4joueMTINv2FjXv1MLBTYHIuX7Hsb/amYt2cCCqYw/Wyjv+Qs=;
	7:AY2kxPodrFdwBCzJD/qRhBiEl8T3B/+JlsUja2IjAyNMXaKsWRGdkgFnlFUZ1LBiYLAkCbbbHq8/vA1e29FKgCj89vG0p0hpVnNZ3PzWHEI1oeOKXwSpjnU2pMa+wk9Mq4ZABXLWWcbO/arpL1937A==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: ac98c4a2-f8c7-4f05-2885-08d66c15adad
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:DM3PR17MB0796; 
x-ms-traffictypediagnostic: DM3PR17MB0796:
x-microsoft-antispam-prvs: <DM3PR17MB079692FC773F114647ED2309B1B60@DM3PR17MB0796.namprd17.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(3230021)(908002)(999002)(5005026)(6040522)(8220047)(2401047)(8121501046)(93006095)(93001095)(10201501046)(3002001)(3231475)(944501520)(52105112)(6041310)(20161123560045)(20161123562045)(20161123564045)(20161123558120)(2016111802025)(6043046)(201708071742011)(7699051)(76991095);
	SRVR:DM3PR17MB0796; BCL:0; PCL:0; RULEID:; SRVR:DM3PR17MB0796; 
x-forefront-prvs: 0899B47777
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39830400003)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(486006)(66066001)(5660300001)(3846002)(5640700003)(6116002)(476003)(2501003)(790700001)(33656002)(55016002)(54896002)(6306002)(6436002)(14454004)(9686003)(97736004)(105586002)(53936002)(508600001)(86362001)(6916009)(2906002)(106356001)(7696005)(81166006)(81156014)(26005)(71200400001)(71190400001)(6506007)(68736007)(7736002)(102836004)(25786009)(74316002)(1730700003)(2351001)(316002)(8676002)(186003)(99286004)(256004)(8936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM3PR17MB0796;
	H:DM3PR17MB0762.namprd17.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mountainss.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6IYiW4X7BjNdnqhtmgo70STuSOH4pjpHESw07R1uSdcTR3zSqXRmr1SkCmG3vm1LxiWl2CdONGA7JyCifeYv84vWRMtEU49N298roX61yoatV8sHFVryODoTD4AoxWXOFR7ykd32tGS5pJVgqFTbQpbLuk6PycwyuR39em6kEskrjCc7W0MNAaB+ECRsBwYlK+oi86a/H71iyemYQTAi4zgVcoL/34K4uBllKg3lfdXW7rMBwpmvFn2KEAnSItRQ/4vQRTU9xT45FyuiLD2KCR6rcOsaeVmb9W8MS88jmUtK92VQ0WkUL56ldRArYgQm
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: mountainss.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac98c4a2-f8c7-4f05-2885-08d66c15adad
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2018 16:09:28.2642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: daa06c07-9a83-4d89-8cdb-7aff15c73b31
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR17MB0796
Subject: Install Yocto Image using PXE Boot & TFTP
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
X-List-Received-Date: Fri, 28 Dec 2018 12:45:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM3PR17MB076256015EEE496454E29ECEB1B60DM3PR17MB0762namp_"

--_000_DM3PR17MB076256015EEE496454E29ECEB1B60DM3PR17MB0762namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm trying to figure out how to install a Yocto image over Ethernet using P=
XE boot, TFTP, etc.  I should emphasize that the PXE Server needs to be run=
 on a Windows machine.  I know there are several PXE server's available for=
 Windows like TFTPD64, Tiny PXE Server and Serva.  I'm somewhat familiar wi=
th the high-level process of using PXE to boot and then TFTP to then downlo=
ad files to the client.  The thing I am having the most difficulty with rig=
ht now is determining what files I need on my Windows machine (and where do=
 I get them), besides the PXE/TFTP Server, to be able to accomplish this ta=
sk.  The other thing I'm not sure about is how I am supposed to setup the P=
XE/TFTP server from the standpoint of the "boot file" option for DHCP and w=
hether or not I am supposed to be using / setting the PXE Options like opti=
on 66, 67, etc.  Clarification on those items would be appreciated also.
I should also emphasize that I am very new not only to Yocto but also Linux=
.  Any help that can be provided here would be greatly appreciated.
Additional information that may be helpful to someone wanting to respond to=
 this post is as follows:

  *   Client Hardware:  Kontron SBC model COMe-MAL10 (x64)
  *   BIOS: UEFI (I don't think there's a legacy option)
  *   Using Yocto Project Version 2.2.3
  *   Using Tiny PXE Server Version 1.0.0.21.  Not apposed to using TFTPD64=
 or other.



--_000_DM3PR17MB076256015EEE496454E29ECEB1B60DM3PR17MB0762namp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:106%;
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParag=
raphCxSpFirst
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListPar=
agraphCxSpMiddle
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagra=
phCxSpLast
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.5in;
	mso-add-space:auto;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:529073810;
	mso-list-type:hybrid;
	mso-list-template-ids:2021523588 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I&#8217;m trying to figure out how to install a Yoct=
o image over Ethernet using PXE boot, TFTP, etc.&nbsp; I should emphasize t=
hat the PXE Server needs to be run on a Windows machine.&nbsp; I know there=
 are several PXE server&#8217;s available for Windows like
 TFTPD64, Tiny PXE Server and Serva.&nbsp; I&#8217;m somewhat familiar with=
 the high-level process of using PXE to boot and then TFTP to then download=
 files to the client.&nbsp; The thing I am having the most difficulty with =
right now is determining what files I need on my
 Windows machine (and where do I get them), besides the PXE/TFTP Server, to=
 be able to accomplish this task.&nbsp; The other thing I&#8217;m not sure =
about is how I am supposed to setup the PXE/TFTP server from the standpoint=
 of the &#8220;boot file&#8221; option for DHCP and whether
 or not I am supposed to be using / setting the PXE Options like option 66,=
 67, etc.&nbsp; Clarification on those items would be appreciated also.<o:p=
></o:p></p>
<p class=3D"MsoNormal">I should also emphasize that I am very new not only =
to Yocto but also Linux.&nbsp; Any help that can be provided here would be =
greatly appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal">Additional information that may be helpful to someon=
e wanting to respond to this post is as follows:<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraphCxSpFirst" style=3D"margin-left:0in;mso-add-sp=
ace:auto;mso-list:l0 level1 lfo1">
Client Hardware:&nbsp; Kontron SBC model COMe-MAL10 (x64)<o:p></o:p></li><l=
i class=3D"MsoListParagraphCxSpMiddle" style=3D"margin-left:0in;mso-add-spa=
ce:auto;mso-list:l0 level1 lfo1">
BIOS: UEFI (I don&#8217;t think there&#8217;s a legacy option)<o:p></o:p></=
li><li class=3D"MsoListParagraphCxSpMiddle" style=3D"margin-left:0in;mso-ad=
d-space:auto;mso-list:l0 level1 lfo1">
Using Yocto Project Version 2.2.3<o:p></o:p></li><li class=3D"MsoListParagr=
aphCxSpLast" style=3D"margin-left:0in;mso-add-space:auto;mso-list:l0 level1=
 lfo1">
Using Tiny PXE Server Version 1.0.0.21.&nbsp; Not apposed to using TFTPD64 =
or other.<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM3PR17MB076256015EEE496454E29ECEB1B60DM3PR17MB0762namp_--
