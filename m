Return-Path: <alexandretm@amotus.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BCDDE02EEE; Tue, 12 Jun 2018 13:34:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.92 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 9066 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Jun 2018 13:34:53 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0092.outbound.protection.outlook.com [104.47.41.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40074E02EE4
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 13:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amotus.onmicrosoft.com; s=selector1-amotus-ca;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=+/l1W7snNs+rg3dQ+jZtid+809OCMBxxd0LRL1Y7HKM=;
	b=0807L1BAu+HofZVZcKnU2+8UEWFqy4M03LuL7FMhIHVDd9oK85GoQ/s85vGUDiNZ+wZmSUN/TbEP0175ZKdcy/Yr6XvtHTm5KmzZONBW8MqZo8pVC6ZFwFQ3N0zLb5HF6yJmEBzMMmhhchXHuj75yuKL3ojMBwhp7IAiii6an+k=
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com (10.173.203.137) by
	BN6PR1101MB2164.namprd11.prod.outlook.com (10.174.112.145) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.863.14; Tue, 12 Jun 2018 14:37:35 +0000
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::2161:de98:cc62:3e5f]) by
	BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::2161:de98:cc62:3e5f%4]) with mapi id 15.20.0841.019;
	Tue, 12 Jun 2018 14:37:35 +0000
From: =?iso-8859-1?Q?Mathieu_Alexandre-T=E9treault?= <alexandretm@amotus.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding package's license to the final image
Thread-Index: AdQCWgu5xCuZT2GtSeCM1RdKkosW4w==
Date: Tue, 12 Jun 2018 14:37:35 +0000
Message-ID: <BN6PR1101MB2356874E9E745A6EA9D8F5D4B27F0@BN6PR1101MB2356.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=alexandretm@amotus.ca; 
x-originating-ip: [24.37.194.182]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN6PR1101MB2164;
	7:kCoczW1lOmHpY+WhjTji9HL4PbgmxlLp/Xbm4a9JedMKj4W3GFqDHOH4NLwZtMI2toGywnyOKiGHVHOquiw02tplf8iSpnp/5Z+pOi5cfOU5IVgWpuaKHLrV2Wuvbw44j/9Gygr7D8SdUSWgGeBmZBujuBO9G+tOyIluYbbGxdsnh2UbPDEq9K1bO5tOr0LMoNSKak6LmigdEauEopNXGOC+FHYp2WFJVH/os4/wGI7e3DDi4eWmZtTyLC48sPfV;
	23:chN9aoX6f1/BMz+i5Gna5VTtMW4CMoyqWwWgTXNFy/kyWEUaYDEYCcvsS+0/l+kDGvr8rLhcUXK+B7FWhgH8WD3OKhASSv/6WuM5JALB5u8hKtd5qLghFxAjeRib/nAymv11AcI8CBHiSIAULOMPxQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:BN6PR1101MB2164; 
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2164:|BN6PR1101MB2164:
x-microsoft-antispam-prvs: <BN6PR1101MB2164E027DA323B45A670ABD7B27F0@BN6PR1101MB2164.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(3231254)(944501410)(52105095)(149027)(150027)(6041310)(20161123560045)(20161123564045)(20161123558120)(2016111802025)(20161123562045)(6072148)(6043046)(201708071742011)(7699016);
	SRVR:BN6PR1101MB2164; BCL:0; PCL:0; RULEID:;
	SRVR:BN6PR1101MB2164; 
x-forefront-prvs: 07013D7479
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39830400003)(376002)(396003)(39380400002)(346002)(189003)(199004)(316002)(5630700001)(86362001)(7696005)(105586002)(68736007)(106356001)(53936002)(6916009)(81156014)(55016002)(66066001)(186003)(5640700003)(5660300001)(74316002)(2351001)(81166006)(1730700003)(74482002)(25786009)(97736004)(8676002)(3660700001)(102836004)(6506007)(26005)(99286004)(7736002)(3280700002)(33656002)(6436002)(8936002)(486006)(2900100001)(6116002)(790700001)(476003)(3846002)(6306002)(2501003)(5250100002)(478600001)(54896002)(9686003)(14454004)(2906002)(21314002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1101MB2164;
	H:BN6PR1101MB2356.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amotus.ca does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 5ixQ79a+Vzjib5BTYbxhusVgRsidHKAFJeNCZ201eSmCMfgcc2rbDdoWI/OxYVIh+f3kTniMc8uV5vjgvjadm3doAApfk10BNH+mbOlL1ZPw9EjvLpyhZXsvsR1JK/nOsqTKtKhqFd+MVwhNbF4CCWv3bpxqW+xiqm4m45sKh66fIU0qLZeWM5aMqvggHT8d
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 16a1e35d-f225-40dd-3ccb-08d5d0720a0c
X-MS-Exchange-CrossTenant-Network-Message-Id: 16a1e35d-f225-40dd-3ccb-08d5d0720a0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2018 14:37:35.3844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb1fb47f-d32e-4ec7-8cf5-9c91bb29593c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2164
X-OriginatorOrg: amotus.ca
Subject: Adding package's license to the final image
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
X-List-Received-Date: Tue, 12 Jun 2018 20:34:55 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_BN6PR1101MB2356874E9E745A6EA9D8F5D4B27F0BN6PR1101MB2356_"

--_000_BN6PR1101MB2356874E9E745A6EA9D8F5D4B27F0BN6PR1101MB2356_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Howdy,

I am working on a project that requires the final image to contain a licens=
e manifest for all the packaged installed on the image.

At first I though about using the tmp/deploy/licenses/xxx/license.manifest =
but this file is deployed by the IMAGE_POSTPROCESS_COMMAND_prepend which ha=
ppens after the rootfs is done.

Would anyone have a suggestion on how to this properly without using any we=
ird hack?

Cheers,
Mathieu

--_000_BN6PR1101MB2356874E9E745A6EA9D8F5D4B27F0BN6PR1101MB2356_
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Howdy,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am working on a project that requires the final im=
age to contain a license manifest for all the packaged installed on the ima=
ge.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">At first I though about using the tmp/deploy/license=
s/xxx/license.manifest but this file is deployed by the IMAGE_POSTPROCESS_C=
OMMAND_prepend which happens after the rootfs is done.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Would anyone have a suggestion on how to this proper=
ly without using any weird hack?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers,<o:p></o:p></p>
<p class=3D"MsoNormal">Mathieu<o:p></o:p></p>
</div>
</body>
</html>

--_000_BN6PR1101MB2356874E9E745A6EA9D8F5D4B27F0BN6PR1101MB2356_--
