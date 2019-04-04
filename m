Return-Path: <johann.obermayr@sigmatek.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13C04E00D15; Thu,  4 Apr 2019 22:14:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.0.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 107341 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Apr 2019 22:13:58 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00107.outbound.protection.outlook.com [40.107.0.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC643E006D8;
	Thu,  4 Apr 2019 22:13:58 -0700 (PDT)
Received: from VI1PR08MB3037.eurprd08.prod.outlook.com (52.133.14.142) by
	AM6PR08MB3032.eurprd08.prod.outlook.com (52.135.163.141) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1771.16; Fri, 5 Apr 2019 04:41:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigmatek.at;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=aIlUFCNzsJpg/hm3jCJWygiv6BGVsQ/H9za288n8JIk=;
	b=UeqCvvsufcU4izX0LUTCpQkMuWLzEd5cB8d79qHbF8wPGsnaBQdX2yxYouvfo294831cz/goeRVbNZgfBDoYtay/hPZI251+ZAHqjkuJkBXxWShvcS31HmzqhdaLfE28xOOanXrWadDXyASZsH9WjbWa/dz45WHffJVGu9RD0YA=
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com (20.177.58.217) by
	VI1PR08MB3037.eurprd08.prod.outlook.com (52.133.14.142) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1750.16; Thu, 4 Apr 2019 11:33:42 +0000
Received: from VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::1daa:be95:adf8:e530]) by
	VI1PR08MB3375.eurprd08.prod.outlook.com
	([fe80::1daa:be95:adf8:e530%3]) with mapi id 15.20.1771.014;
	Thu, 4 Apr 2019 11:33:42 +0000
From: Johann Obermayr <johann.obermayr@sigmatek.at>
To: "yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: create a own fs file
Thread-Index: AdTq2T1PI0GorsrrRSWjJVa+UONTyA==
Date: Thu, 4 Apr 2019 11:33:42 +0000
Message-ID: <VI1PR08MB3375A7F33565B9023C044242F5500@VI1PR08MB3375.eurprd08.prod.outlook.com>
Accept-Language: de-AT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=johann.obermayr@sigmatek.at; 
x-originating-ip: [83.215.235.253]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2c40fbe-1dcf-4978-46d2-08d6b8f16442
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600139)(711020)(4605104)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:VI1PR08MB3037; 
X-MS-TrafficTypeDiagnostic: VI1PR08MB3037:|VI1PR08MB3037:|AM6PR08MB3032:
x-microsoft-antispam-prvs: <VI1PR08MB30372DEB712A51F16C2860D4F5500@VI1PR08MB3037.eurprd08.prod.outlook.com>
x-forefront-prvs: 0997523C40
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39840400004)(396003)(376002)(136003)(346002)(189003)(199004)(14454004)(790700001)(7736002)(106356001)(52536014)(74316002)(71200400001)(33656002)(55016002)(8676002)(186003)(25786009)(53936002)(6436002)(3846002)(97736004)(478600001)(486006)(6116002)(450100002)(2906002)(66066001)(74482002)(26005)(99286004)(6506007)(102836004)(7696005)(44832011)(110136005)(71190400001)(8936002)(105586002)(316002)(6306002)(476003)(54896002)(19627235002)(9686003)(81156014)(2501003)(81166006)(86362001)(4744005)(68736007)(256004)(5660300002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR08MB3037;
	H:VI1PR08MB3375.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sigmatek.at does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: c52gvR38W/tD4vcqNvusG0VqIwftigaUYcsORiyJA1mU37qJa2C1SKxzqy+IMgoTnk113kAijjrIBzAS0ZkS9n5vwvSjVdt6h9DpRuPim+cKChUW0LeqUw5sIqSy+l2MaHSnxJaeiyuwAhH/ZK8Z+BDtvSG5AXDSZboUddvDdxOXx510exG97yluOztTrWuLhWy+xwuMzP9wJxrhxlwqOp6uw+pNYeUQZdasyH0xagNYtqjt4HnNG6ZdPl906jtHvLOHztaKlxKXlS63OiHcH4x19+5Hc7MXmnwgm7Cl3QaTCiqwizFCmspiX24kQEcKNz6tDK6nj5iL9SePs+5aXRbtZHHHEwxAZp3Yz8hQyhqWRBjxwWoXxuQs/+Hb7lotR/VyLK7GtgHcS+CBAZqeG7KQ4nTBqd3uKX9oUIME9iU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e2c40fbe-1dcf-4978-46d2-08d6b8f16442
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2019 11:33:42.6837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcb1d87a-d2bc-486e-a62b-9ac9c746bc1b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3037
X-OriginatorOrg: sigmatek.at
Subject: create a own fs file
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
X-List-Received-Date: Fri, 05 Apr 2019 05:14:01 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_VI1PR08MB3375A7F33565B9023C044242F5500VI1PR08MB3375eurp_"

--_000_VI1PR08MB3375A7F33565B9023C044242F5500VI1PR08MB3375eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

with wks we create a own image.
This image can use boot.img, rootfs.tar.., ...

Is there a way to create a own datafs.tar.gz file
And put this file to /tmp/deploy/images/<machine>/

datafs.bb
'#add file to datafs
 DATAFS_add_file =3D "file:myconf.cfg"
DATAFS_add_file +=3D "file:/path/other.cfg"


my.wsk
part /data     --source datafs      --ondisk sda --label C       --align 10=
24 --fstype=3Dext4


Thanks
  Regards
    Johann


--_000_VI1PR08MB3375A7F33565B9023C044242F5500VI1PR08MB3375eurp_
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">with wks we create a own image.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This image can use boot.img, ro=
otfs.tar.., &#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there a way to create a own =
datafs.tar.gz file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And put this file to /tmp/deplo=
y/images/&lt;machine&gt;/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">datafs.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8216;#add file to datafs <o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;DATAFS_add_file =3D &#822=
0;file:myconf.cfg&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DATAFS_add_file &#43;=3D &#8220=
;file:/path/other.cfg&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">my.wsk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">part /data&nbsp;&nbsp;&nbsp;&nb=
sp; --source datafs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --ondisk sda --label C&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --align 1024 --fstype=3Dext4<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Regards<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; Johann</span=
><span lang=3D"EN-US" style=3D"mso-fareast-language:DE"><o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_VI1PR08MB3375A7F33565B9023C044242F5500VI1PR08MB3375eurp_--
