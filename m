Return-Path: <prvs=02065dce0c=sean.mckay@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AC20E00D99; Wed, 30 Oct 2019 15:00:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.147.86 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1997 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Oct 2019 15:00:33 PDT
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com
	[148.163.147.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 306CAE00D8E
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 15:00:33 -0700 (PDT)
Received: from pps.filterd (m0134420.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x9ULRFe6012836
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 21:27:16 GMT
Received: from g2t2353.austin.hpe.com (g2t2353.austin.hpe.com [15.233.44.26])
	by mx0b-002e3701.pphosted.com with ESMTP id 2vy9ymm705-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 21:27:15 +0000
Received: from G1W8106.americas.hpqcorp.net (g1w8106.austin.hp.com
	[16.193.72.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2353.austin.hpe.com (Postfix) with ESMTPS id 009B79E
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 21:26:47 +0000 (UTC)
Received: from G4W9335.americas.hpqcorp.net (16.208.33.85) by
	G1W8106.americas.hpqcorp.net (16.193.72.61) with Microsoft SMTP Server
	(TLS) id 15.0.1367.3; Wed, 30 Oct 2019 21:25:43 +0000
Received: from G2W6311.americas.hpqcorp.net (16.197.64.53) by
	G4W9335.americas.hpqcorp.net (16.208.33.85) with Microsoft SMTP Server
	(TLS) id 15.0.1367.3; Wed, 30 Oct 2019 21:25:43 +0000
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (15.241.52.12) by
	G2W6311.americas.hpqcorp.net (16.197.64.53) with Microsoft SMTP
	Server (TLS)
	id 15.0.1367.3 via Frontend Transport; Wed, 30 Oct 2019 21:25:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=dELLzqGyfIIBno4SFSkzQxT7MAnUcV7X/vGlUXH91feH5EIeWL/yzOI8W0H7ff6BrKC060kmE7DY9ajN+nyD9RX8LcQ9JBGjJJwtkD2C+kldQNl+iGTkZHc6LGKwktJ2V3gcRnkrmO9LcVLe3qqjyxsfnx9iRsdlCdpHdSuLlcpSoOmeGYtb9sEJJSpDeg417Kemn6d/QZj5745CbBNBL1oCIJ+hJBdXBetWIoNzIi1hc9KyM1HYzICffvD66qAAIyE2JM2U27azdWg+N+akTG7xMwrVsy4jpLE0zoJUE/yja0mWHnLhl+P+9QSikzoKGwDjYywe9m4CwWK1xamDsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=/nXMIJgRUhJmvypYYRICMDzUZZkM7DXolLmN7DbwMqY=;
	b=XAAhmzTzPBuGVGUfhxHXfB06Dd3JXlqU53o1RspuPUrHd1ElDN1BO/dDgFv2qhBmXycqgt17rU/gapPVZB8NjV+yuofj0MqthFGUg+8GcZQACWqRzjEjN6jv8vg/egr+m+sXxnhJItN4bQ3dpvQ741+Xjz8XAMT79p9FvrqxceFD2UZujhfSMJpKW4zcfhYLzDCShioVd5JDw3oH+fFnoOdGzlbLAf4PZQAmDPlayBGR+UraGN/fjWDNgx5ipNc+BMPbY281y1dU/dGi4nBrRi3K3uWarq/9A3+bfUGtzfc9XcNfxpmUEGLfFiR1MxipxTE3sk8vkH5fYtd353vCIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com;
	dkim=pass header.d=hpe.com; arc=none
Received: from CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM (10.169.98.21) by
	CS1PR8401MB0647.NAMPRD84.PROD.OUTLOOK.COM (10.169.15.143) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.23; Wed, 30 Oct 2019 21:25:42 +0000
Received: from CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::e96c:875c:a335:533d]) by
	CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::e96c:875c:a335:533d%10]) with mapi id 15.20.2387.027;
	Wed, 30 Oct 2019 21:25:42 +0000
From: "McKay, Sean" <sean.mckay@hpe.com>
To: "McKay, Sean" <sean.mckay@hpe.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Where is the documentation for things to fix when
	upgrading poky versions?
Thread-Index: AdWPYQqGcstHWbGyRp6na/HSYb/ayAAB1ZMg
Date: Wed, 30 Oct 2019 21:25:42 +0000
Message-ID: <CS1PR8401MB0568FDDB064A0CA3EC72AACB82600@CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM>
References: <CS1PR8401MB05684D967B297BDE3C95417D82600@CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: <CS1PR8401MB05684D967B297BDE3C95417D82600@CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.211.195.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d261be26-fc11-463c-4860-08d75d7fb803
x-ms-traffictypediagnostic: CS1PR8401MB0647:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CS1PR8401MB064720FEE45CBEF35ECDDF9882600@CS1PR8401MB0647.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(346002)(366004)(396003)(39860400002)(376002)(53754006)(199004)(189003)(2501003)(5660300002)(6506007)(53546011)(4744005)(9686003)(26005)(229853002)(102836004)(6436002)(7696005)(86362001)(478600001)(476003)(2940100002)(76176011)(11346002)(8676002)(486006)(446003)(8936002)(186003)(54896002)(55016002)(81166006)(6306002)(6246003)(81156014)(71200400001)(52536014)(14454004)(71190400001)(76116006)(66066001)(66556008)(64756008)(66476007)(66446008)(66946007)(110136005)(25786009)(74316002)(33656002)(2906002)(14444005)(316002)(99286004)(3846002)(6116002)(790700001)(7736002)(256004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB0647;
	H:CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wJv2H0ZUIVP6p7jk461ZwFPLaZrxdd5itMyZfHFjJFcne7tXcMPmPHFyGhIRem7s0Yev2Ielis4MPWEctCgOmUGm+HHgOr55t+FnUzvBiz7f8pXUpxiFl2uyf6ej6+5MNqs1tKDMDG+U2XzE3k5cGW3yAQH2Z0b8yOJ43DS97rzHd4UTTfba2AhyUZPwBjoo8bRTEqvwbA9nvF0qTGKNIM8l+8KI4bLhiHOmnUPzK1CkC/ofiKBmF5viE7p6IekLkPzh11Xio3ceLkFOaGWEPg1SSwV6cIvjON4CyoohOlatSigd9OBJUA//dOG61mIHhNBGau1X7sswEWfrmVnSMgFPYNKYvL2VdC8L3X6jWpgyYD/HdTdDhLp2pJDAXw6qWZN5ARGWSFwJYsPAO6LwOwyl3Eb1lwG4K1xsg72Bx4yOlhzmTKX86qXyFlrxYFzD
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d261be26-fc11-463c-4860-08d75d7fb803
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 21:25:42.4227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jIzFoIcqleab0u59AS4+soRyGn+Vhd4zIIqu+YfnstRlblJAdzCJ+YsPKR7yWBE0B/5EX5PD2DKK2yDywlpk6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB0647
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-30_09:2019-10-30,2019-10-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	phishscore=0 mlxlogscore=608
	bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0
	lowpriorityscore=0 spamscore=0 suspectscore=0 mlxscore=0 clxscore=1015
	impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-1908290000 definitions=main-1910300188
Subject: Re: Where is the documentation for things to fix when upgrading poky versions?
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
X-List-Received-Date: Wed, 30 Oct 2019 22:00:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CS1PR8401MB0568FDDB064A0CA3EC72AACB82600CS1PR8401MB0568_"

--_000_CS1PR8401MB0568FDDB064A0CA3EC72AACB82600CS1PR8401MB0568_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I finally found it... =A725 of the mega manual. Not sure if it's anywhere e=
lse that's easier to find but I guess I just needed to ask.

Thanks!
-Sean

From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On Be=
half Of McKay, Sean
Sent: Wednesday, October 30, 2019 1:34 PM
To: yocto@yoctoproject.org
Subject: [yocto] Where is the documentation for things to fix when upgradin=
g poky versions?

Hi all,

This is probably a super easy question, but I've been searching half the da=
y and decided it would be faster to ask for help.
I know I've seen documentation in one of the manuals that points out major =
changes in syntax or behavior that will need to be fixed when upgrading the=
 underlying version of poky, but now that I have need of it, I can't seem t=
o find it anywhere. Can anyone point me in the right direction?

Thanks!
-Sean McKay

--_000_CS1PR8401MB0568FDDB064A0CA3EC72AACB82600CS1PR8401MB0568_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal">I finally found it&#8230; =A725 of the mega manual. =
Not sure if it&#8217;s anywhere else that&#8217;s easier to find but I gues=
s I just needed to ask.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> yocto-bounces@yoctoproject.org &lt;yoct=
o-bounces@yoctoproject.org&gt;
<b>On Behalf Of </b>McKay, Sean<br>
<b>Sent:</b> Wednesday, October 30, 2019 1:34 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Where is the documentation for things to fix when u=
pgrading poky versions?<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is probably a super easy question, but I&#8217;=
ve been searching half the day and decided it would be faster to ask for he=
lp.<o:p></o:p></p>
<p class=3D"MsoNormal">I know I&#8217;ve seen documentation in one of the m=
anuals that points out major changes in syntax or behavior that will need t=
o be fixed when upgrading the underlying version of poky, but now that I ha=
ve need of it, I can&#8217;t seem to find it anywhere.
 Can anyone point me in the right direction?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean McKay<o:p></o:p></p>
</div>
</body>
</html>

--_000_CS1PR8401MB0568FDDB064A0CA3EC72AACB82600CS1PR8401MB0568_--
