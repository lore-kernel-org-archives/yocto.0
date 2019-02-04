Return-Path: <Thomas.Beaman@xerox.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 065A3E00A1A; Mon,  4 Feb 2019 10:43:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [68.232.129.32 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Feb 2019 10:43:56 PST
Received: from esa10.xerox.iphmx.com (esa10.xerox.iphmx.com [68.232.129.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFECBE009EB
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 10:43:56 -0800 (PST)
Received: from mail-bn3nam01lp2053.outbound.protection.outlook.com (HELO
	NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.53])
	by ob1.xerox.iphmx.com with ESMTP/TLS/AES256-SHA256;
	04 Feb 2019 12:42:53 -0600
Received: from BL0PR11MB3524.namprd11.prod.outlook.com (20.177.206.225) by
	BL0PR11MB3220.namprd11.prod.outlook.com (10.167.233.156) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1580.16; Mon, 4 Feb 2019 18:42:52 +0000
Received: from BL0PR11MB3524.namprd11.prod.outlook.com
	([fe80::2cc5:58c9:9fcd:1703]) by
	BL0PR11MB3524.namprd11.prod.outlook.com
	([fe80::2cc5:58c9:9fcd:1703%2]) with mapi id 15.20.1580.019;
	Mon, 4 Feb 2019 18:42:52 +0000
From: "Beaman, Thomas" <Thomas.Beaman@xerox.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: sun rpc missing in thud
Thread-Index: AdS8tQy5bTm+xm/2RJCbKNG0dbQKow==
Date: Mon, 4 Feb 2019 18:42:52 +0000
Message-ID: <BL0PR11MB352483DCBFDE53F27A888120EB6D0@BL0PR11MB3524.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Beaman@xerox.com; 
x-originating-ip: [65.207.111.225]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL0PR11MB3220;
	6:JVUx2INSg2fGUh9rheI2N3z0W/SuVbuY/kSjqpfj2HvnTBZLp03ax4QejFrtA2MCocaKXCe/G2U/J8E2COe+EpaMcuCfaIr9EJBLH7JuCDHeSmtKhDVK1e+GCtiVsWYV43RbHoU1cU031/9z8eMerjCxAHBJOhHXYuJ6eO14+F14TI+hZ/tEiVvf40a2pmBOSRa1ePLUNweUbC6HaBz568xbIzIp/UDiHK17NcjURbcomSaWgI+NJ9gWKjmVnkR7ptWEhb6ksw+ggx0PyIc+O1q6f5bYCi7YXRBKWHKsc2B14TCZzDNhyCqATz1z1UB62ihX6Jizz50Xxzg3ReI/XJJvi/2kmyM/h7Zbk3/94xWYq6EzCUlTA+20sC44C80GQIY1PJMBxfdn6bUQhpEv5HjOaI4yLhnaOJCKYj4+fqOMl4vZw3lm2T0keT+XocqoBe5klBiZdwpp/MIdicYzcg==;
	5:JJf9zt3Og0MvMxBNvZn9xQn0htLh3ghbfM/dagygSR0rcEOeN3ZHmp6WxLqXXKkFNYsBrFF1IePBO6Etbi/WDJFJNcmUr16KRTbaPqUCgaKbSaAL6zE0bmCWewfGuo3wTerzv/mH1nzaL4AiSo4flOEkmOLPTYyBLj//pfmYJuyULwpnWKClSq4peU5uIkc0w79hl5Nbg6+FUo0rpO+bXg==;
	7:5eRZN0D7XI1EnEzyeZ4RMxMZVcd5XoPpXJ0aVp9X48sHBnbrUbYAYr9rZVe+KC0IAZmesVY/p5IWKgJWw8a26Ndqv/jJGg20Pdxj52XAdTX4XqfFc0/3uXCBQ/uN1YUPiz4JY+w6epPboljO08YDVg==
x-ms-office365-filtering-correlation-id: ba1151ff-f220-4dc7-b0db-08d68ad09205
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:BL0PR11MB3220; 
x-ms-traffictypediagnostic: BL0PR11MB3220:
x-microsoft-antispam-prvs: <BL0PR11MB3220ADD60050B9F367246922EB6D0@BL0PR11MB3220.namprd11.prod.outlook.com>
x-forefront-prvs: 0938781D02
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39860400002)(376002)(346002)(396003)(136003)(199004)(189003)(486006)(6916009)(54896002)(9686003)(55016002)(6306002)(25786009)(2906002)(74316002)(476003)(316002)(2501003)(478600001)(6506007)(102836004)(99286004)(7696005)(68736007)(5640700003)(33656002)(6436002)(9326002)(256004)(66066001)(8936002)(86362001)(4744005)(2351001)(71190400001)(71200400001)(81156014)(1730700003)(81166006)(105586002)(8676002)(97736004)(186003)(14454004)(26005)(72206003)(107886003)(6116002)(3846002)(53936002)(790700001)(4326008)(106356001)(7736002)(554374003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR11MB3220;
	H:BL0PR11MB3524.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bG7qDORHE8sf8GWr4KvEI3LNno2BeRqNqMQuH4rNq660CDC9oqbbZfMThoaZHphOz+GVCoq94aSByv6ENzPKi2nIJNysL3MGw6dEpIxkmGesmlOcooczTsCFH5j428x1fay3bXpvu+eyLar52f8vL43h1jwiQDqe34K91jFjepQH9kOUo/aEYxBUG4YfrK+r+naNWaE7nRfmmk0NA4M0JRxGXAk8x013CGUg1DrT75VW2B9sjEhkmjllPLTVoIr4sVjrDUbKk0H82B+cySqg9MW9KR29zcS58ZzepRirKFGwK0whmauhzfGcJ8mikfi+G9WvcfZUYKEoyf4teOPU0Lmh7ynL8bB4ISazPuRDCbZmaTGNEEkj6co1dhDd1wivZsQJ2SdppdBs+a3MW83YYTDjTbZZzUqOamo93g/8hu4=
MIME-Version: 1.0
X-OriginatorOrg: xerox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba1151ff-f220-4dc7-b0db-08d68ad09205
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2019 18:42:52.5910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c2a31bd-e798-488d-986b-90156ac8f29b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3220
Cc: "Beaman, Thomas" <Thomas.Beaman@xerox.com>
Subject: sun rpc missing in thud
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
X-List-Received-Date: Mon, 04 Feb 2019 18:43:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR11MB352483DCBFDE53F27A888120EB6D0BL0PR11MB3524namp_"

--_000_BL0PR11MB352483DCBFDE53F27A888120EB6D0BL0PR11MB3524namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am converting to thud and having trouble figuring out how to get sun rpc =
to install in my sysroot.

I can see that the sun rpc files are still in the glibc git  but I cannot f=
igure what recipe or options I need to get them included in my distro. (I s=
till have some old legacy code that needs them)


I have tried adding the following but they do not bring in the   usr/includ=
e/rpc/rpc.h files like previous releases did.


IMAGE_INSTALL_append =3D " lib32-glibc-dbg"

IMAGE_INSTALL_append =3D " rpcsvc-proto"


Any help or suggestions of what to add or modify to get these files back in

Regards,
Tom Beaman


--_000_BL0PR11MB352483DCBFDE53F27A888120EB6D0BL0PR11MB3524namp_
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
	font-size:10.0pt;
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am converting to thud and having trouble figuring =
out how to get sun rpc to install in my sysroot.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I can see that the sun rpc files are still in the gl=
ibc git&nbsp; but I cannot figure what recipe or options I need to get them=
 included in my distro. (I still have some old legacy code that needs them)=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have tried adding the following but they do not br=
ing in the&nbsp;&nbsp; usr/include/rpc/rpc.h files like previous releases d=
id.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">IMAGE_INSTALL_append =3D &quot; lib32-glibc-dbg&quot=
;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">IMAGE_INSTALL_append =3D &quot; rpcsvc-proto&quot;<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help or suggestions of what to add or modify to =
get these files back in<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Tom Beaman<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BL0PR11MB352483DCBFDE53F27A888120EB6D0BL0PR11MB3524namp_--
