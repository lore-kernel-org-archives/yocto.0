Return-Path: <Thomas.Beaman@xerox.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F88FE00CB0; Wed,  2 Jan 2019 10:05:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [68.232.143.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Jan 2019 10:05:10 PST
Received: from esa16.xerox.iphmx.com (esa16.xerox.iphmx.com [68.232.143.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 816FFE00BE8
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2019 10:05:10 -0800 (PST)
Received: from mail-sn1nam04lp2056.outbound.protection.outlook.com (HELO
	NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.56])
	by ob1.xerox.iphmx.com with ESMTP/TLS/AES256-SHA256;
	02 Jan 2019 12:04:07 -0600
Received: from BL0PR11MB3524.namprd11.prod.outlook.com (20.177.206.225) by
	BL0PR11MB2882.namprd11.prod.outlook.com (20.177.146.151) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1495.6; Wed, 2 Jan 2019 18:04:06 +0000
Received: from BL0PR11MB3524.namprd11.prod.outlook.com
	([fe80::163:783a:2803:5463]) by BL0PR11MB3524.namprd11.prod.outlook.com
	([fe80::163:783a:2803:5463%4]) with mapi id 15.20.1495.005;
	Wed, 2 Jan 2019 18:04:05 +0000
From: "Beaman, Thomas" <Thomas.Beaman@xerox.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: thud powerpc glibc_2.28 configure fails 
Thread-Index: AdSiubrRmjXrB5hCTFajA6PUIx9qCw==
Date: Wed, 2 Jan 2019 18:04:05 +0000
Message-ID: <BL0PR11MB3524B4ECFCBB3B032DB5EF57EB8C0@BL0PR11MB3524.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Beaman@xerox.com; 
x-originating-ip: [65.207.111.225]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL0PR11MB2882;
	6:ZvLLB1OnD3Z7i4rw8rgSRmT0NYpNBmgsLDaTjJ3/cdDB0Wm6SHPKk03w2TxJUlEuDiAASpFfjaugs+it2XJSfXDIOCc0bv52ouLD8wWDjpgN8JU7GrZDB/rDJpTzbvIhs1DCipnR05t0T3m8d44KEoJnCZzJzexZIbY2tISgWvphnKF7W/X6Em2CzIKh9LtiNVwmrm9TUVsKGluZgWyvrI7BzThAj6htnQLpym95dQu9CI5wXFhgznEOobjMrLrDVY7/dAeGuyVHpAttoagmeE4z9w+mWbgGLWOYA6VaPx3rjvMGA1Woi93jCBue5EVfQS+1F71T5Rx76aoTIcYZka5VoFw4mF+Q3vLiWlcbOUQwlAdZy61MWfqZ86njiDfcpp9KbBTN2Geu4RIxoz7JA03PNkKWdNXQfvVng2p2Ze/oqQykYIip64kTRvlJQk3fpgGAzcZ35H6lyUS5qg1sNg==;
	5:rRy0vbmTE7IRqBD8Jy8GEclEBh5FQYwpEIlYxTGWDBdOYl74sgtNtkdNOFIoJQuT+1XTCleqNnIGGc+SPrVD9L4KPUzBB0JZXjKA11pPkev6K7QM4I/YRNkjPURVlek6WgLmZ+f35HhxojgDDPdAzvoS//8NGbwxM5zMrgcjVx19MRFC7/Zr+gyJ5bMqAMqtJ+uwQ+S9zZuvlnDOG2Apng==;
	7:V05irpyuroanXcFntlMrvMybkxLXwjQYkfbyS9WZ1Xkun0tSfk4xVXX+5N9C7yANJd+EM5yGHfZ3P3ojAFauiRLsdV6UJqYKE7DgXghMepk6qMTruPFgc9EA2bNMmG1aLQxhdkCMvsxIpoJmBNNtEA==
x-ms-exchange-antispam-srfa-diagnostics: SOS;SOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10019020)(136003)(396003)(39860400002)(366004)(376002)(346002)(199004)(189003)(55016002)(86362001)(102836004)(7696005)(316002)(6116002)(790700001)(68736007)(6506007)(7736002)(3846002)(71190400001)(8676002)(5640700003)(99286004)(53936002)(2501003)(71200400001)(186003)(2906002)(107886003)(476003)(8936002)(66066001)(54896002)(6306002)(81156014)(9686003)(81166006)(1730700003)(26005)(105586002)(5660300001)(25786009)(106356001)(4743002)(72206003)(97736004)(33656002)(74316002)(4326008)(2351001)(14444005)(256004)(486006)(6436002)(14454004)(478600001)(6916009);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR11MB2882;
	H:BL0PR11MB3524.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-office365-filtering-correlation-id: 516728f8-063c-42ec-2779-08d670dcaf4e
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600109)(711020)(2017052603328)(7153060)(7193020);
	SRVR:BL0PR11MB2882; 
x-ms-traffictypediagnostic: BL0PR11MB2882:
x-microsoft-antispam-prvs: <BL0PR11MB2882D87617A3105F0C876357EB8C0@BL0PR11MB2882.namprd11.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(3230021)(908002)(999002)(5005026)(6040522)(8220060)(2401047)(8121501046)(10201501046)(3231475)(944501520)(52105112)(93006095)(93001095)(3002001)(6041310)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(201708071742011)(7699051)(76991095);
	SRVR:BL0PR11MB2882; BCL:0; PCL:0; RULEID:; SRVR:BL0PR11MB2882; 
x-forefront-prvs: 0905A6B2C7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 70MVaMAQ2ONyQ8R4+RuxmVmSQZhw31fbomrLpJYfc6FoQhTHi5icXm75irq9G9EsM+StdXWlEKRCB8SVhA+QkMB5MhyYhsVy/RQQMvXE1lR/J5qVuRiL9UT9sYdO88fGd41qV9P9T13D7IHAKDj91yNYu2dIQCuqLujTDDuZsOEiAZf/bv2CnddslVoMvFMSHxpMFEilh6I/F0nGST5mzOnKxJRfvZeJhlGlC8Gv6OhymfO5NPCZMSbUeVWJQUfRn7jiiEu3Sa24lyyuRyWv/Y1PiPgtsHkfjlC+dl+pCLtEMDtxV24XcHt5GFkV/0u/
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xerox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 516728f8-063c-42ec-2779-08d670dcaf4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2019 18:04:05.4043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c2a31bd-e798-488d-986b-90156ac8f29b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2882
Cc: "Beaman, Thomas" <Thomas.Beaman@xerox.com>
Subject: thud powerpc glibc_2.28 configure fails
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
X-List-Received-Date: Wed, 02 Jan 2019 18:05:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR11MB3524B4ECFCBB3B032DB5EF57EB8C0BL0PR11MB3524namp_"

--_000_BL0PR11MB3524B4ECFCBB3B032DB5EF57EB8C0BL0PR11MB3524namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am updating from 2.5 to 2.6 and getting a glibc_2.28 configure failure, i=
s this a thud issue or something with the meta-freescale layer ?

The machine I am building for is from the meta-freescale layer  (powerpc 64=
bit e6500 core)
MACHINE =3D "t2080rdb-64b"

The error message I get is:
ERROR:  Task (/u02/yocto/poky-thud-20.0.0/meta/recipes-core/glibc/glibc_2.2=
8.bb:do_configure) failed with exit code '1'

checking sysdep dirs... configure: error: The e6500 subspecies of powerpc64=
 is not supported.





--_000_BL0PR11MB3524B4ECFCBB3B032DB5EF57EB8C0BL0PR11MB3524namp_
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
<p class=3D"MsoNormal">I am updating from 2.5 to 2.6 and getting a glibc_2.=
28 configure failure, is this a thud issue or something with the meta-frees=
cale layer ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The machine I am building for is from the meta-frees=
cale layer&nbsp; (powerpc 64bit e6500 core)<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE =3D &#8220;t2080rdb-64b&#8221;<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The error message I get is:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: &nbsp;Task (/u02/yocto/poky-thud-20.0.0/meta/=
recipes-core/glibc/glibc_2.28.bb:do_configure) failed with exit code &#8216=
;1&#8217;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">checking sysdep dirs... configure: error: The e6500 =
subspecies of powerpc64 is not supported.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BL0PR11MB3524B4ECFCBB3B032DB5EF57EB8C0BL0PR11MB3524namp_--
