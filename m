Return-Path: <Thomas.Beaman@xerox.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C0B4E00D07; Fri, 11 Jan 2019 05:36:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [68.232.141.28 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Jan 2019 05:36:14 PST
Received: from esa6.xerox.iphmx.com (esa6.xerox.iphmx.com [68.232.141.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BE06E00CE8
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 05:36:14 -0800 (PST)
Received: from mail-cys01nam02lp2056.outbound.protection.outlook.com (HELO
	NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.56])
	by ob1.xerox.iphmx.com with ESMTP/TLS/AES256-SHA256;
	11 Jan 2019 07:35:11 -0600
Received: from BL0PR11MB3524.namprd11.prod.outlook.com (20.177.206.225) by
	BL0PR11MB3107.namprd11.prod.outlook.com (20.177.205.141) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1516.13; Fri, 11 Jan 2019 13:35:10 +0000
Received: from BL0PR11MB3524.namprd11.prod.outlook.com
	([fe80::163:783a:2803:5463]) by BL0PR11MB3524.namprd11.prod.outlook.com
	([fe80::163:783a:2803:5463%4]) with mapi id 15.20.1516.016;
	Fri, 11 Jan 2019 13:35:09 +0000
From: "Beaman, Thomas" <Thomas.Beaman@xerox.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: glibc_2.28 do_configure error in thud (2.6)
Thread-Index: AdSpsOucRfx063f9R+iBiBFx5mv1Pg==
Date: Fri, 11 Jan 2019 13:35:09 +0000
Message-ID: <BL0PR11MB35244A5959FBEB6CE047C110EB850@BL0PR11MB3524.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Beaman@xerox.com; 
x-originating-ip: [65.207.111.225]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL0PR11MB3107;
	6:CA3KqflsMvS9u10LRJvEv53Al+KcPirxN/3P1oYSYilvcO3TUlcBBo1t3258AB/6Gy3HooBlaASkFTA7KUFO6rM1Mac0BhtOm2XBjnsMzqyqXz2dhg9hXAAMe6PjjLIUIDNhEJ+T4DSEMXRgDAipgMGVB8IASVwMPJJr0ClVi58MZt2xtvk1qYK56qjwLIekJxdmdU1/Ry3GB3nJ0UqctEETW0R55Ub+bZMln4mH37cYUIyNL/jdcUizUdzHrYab9mdR0pqSOKQqUleni/krZ4nV8QjChHcJ9L8+Ojf17GSGLiCLzT6ul1OKPfWlZ2MgusxIzH0cxttcdJzVXOlwycx9b0u/dMwmy1GKJyaZvQ8Ks6KfLx/k8bBGpq+UIUdEYoYzC82N2CO4WJDgiLdlpE2WhUOo5u2Gm8myTIHQ+tprhOi73nj3FKKjYO6uc6GJKXomZwmnHFSrwwonowlX9A==;
	5:MMUCcao1iqslA9XWQR3O/45DKvIh5iQQ8XmFFdczdX/OG/6Tp6q1xgWxkYfudHjIeqTlYSJqihIA/REYrq7f3eXRBcAy6TITMgcsSklcQe9tTKorJEOaZybcS/za2UcJwN0owaFYPsJfhAp/C6Z5p6p5kwcRKIGj60wSXNGwYGZtaonrwkT0EKSzZnboNm4obg+q6ipq60e535sY23zGrg==;
	7:IQUO0fpyVXjFz0P1wHLWA+UXzwWLbxzJv4Bpp+uoqZ+1LvC7WpmvpDpFHOHac1WjW2/0VDoo78u8yvGUUSw/IQ9hiKG3aDawrZ8CaOJ651+DU0RMswPBLhlO07h9Qjm4i3jeDMDygof8HStWQ6fPXQ==
x-ms-exchange-antispam-srfa-diagnostics: SOS;SOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10019020)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(8676002)(486006)(476003)(25786009)(316002)(53936002)(71190400001)(99286004)(54896002)(71200400001)(9686003)(105586002)(7736002)(478600001)(186003)(72206003)(14454004)(97736004)(2351001)(2906002)(107886003)(102836004)(86362001)(7696005)(26005)(66066001)(106356001)(6306002)(256004)(4326008)(2501003)(33656002)(5640700003)(6506007)(68736007)(81166006)(6916009)(6436002)(74316002)(5660300001)(9326002)(6116002)(8936002)(55016002)(790700001)(3846002)(4744005)(81156014)(1730700003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR11MB3107;
	H:BL0PR11MB3524.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
x-ms-office365-filtering-correlation-id: 5b35e78d-f224-48c4-f8f6-08d677c99b4c
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600109)(711020)(2017052603328)(7153060)(7193020);
	SRVR:BL0PR11MB3107; 
x-ms-traffictypediagnostic: BL0PR11MB3107:
x-microsoft-antispam-prvs: <BL0PR11MB3107F7C9F2F9BE5E898A957BEB850@BL0PR11MB3107.namprd11.prod.outlook.com>
x-forefront-prvs: 09144DB0F7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wNJNgV8SbhaoXZHNVxqwn1oyFgRrMx4GqBI0tqoyBxnzcg9G0xeEx9cL5JmftMHeWiVLPFNpAiXWO8J1cZnkOEQYxhQajBmsrp0On+pE53qpFlk6kN5B1hpmq4KNsEN/h8eS4n6q7pkUHqSHJFfe8G5zjpLRTeoQsGacszw55bRd/hAWj6m9P6eSqxajl/CyyKq3f4XFnAooXGmCycMad9ZqrlWFPrIZFFT/bYIkH2z1ZxFdM4RVtXLjYvENWpmucHvaf4i9rukcrUWJVhAd8Vrt0ae1k5omQAdchzKHOCUKKsOozZz8/3krnEsFMay7fVdVS5PpNnFdCFGzKvtkDD5I7AZAwQGzc5oaFZcR104e4HzYBnSilFOcCjW7EmU4dA/rluFPULFm7Q+FjLG5yu62Fv0zQXNKVJBReEZILiA=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xerox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b35e78d-f224-48c4-f8f6-08d677c99b4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2019 13:35:09.5347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c2a31bd-e798-488d-986b-90156ac8f29b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3107
Cc: "Beaman, Thomas" <Thomas.Beaman@xerox.com>
Subject: glibc_2.28 do_configure error in thud (2.6)
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
X-List-Received-Date: Fri, 11 Jan 2019 13:36:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR11MB35244A5959FBEB6CE047C110EB850BL0PR11MB3524namp_"

--_000_BL0PR11MB35244A5959FBEB6CE047C110EB850BL0PR11MB3524namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to convert from sumo (2.5) to thud (2.6) and I am running into =
an error with glibc 2.28.
Can someone help me understand this error or how to fix or workaround it.

After running    bitbake core-image-minimal    I get the following error

ERROR: Task (/u02/yocto/poky-thud-20.0.0/meta/recipes-core/glibc/glibc_2.28=
.bb:do_configure) failed with exit code '1'

And looking into the log.do.configure I see this error

checking sysdep dirs... configure: error: The e6500 subspecies of powerpc64=
 is not supported.


Regards,
Tom Beaman

--_000_BL0PR11MB35244A5959FBEB6CE047C110EB850BL0PR11MB3524namp_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to convert from sumo (2.5) to thud (2.6)=
 and I am running into an error with glibc 2.28.<o:p></o:p></p>
<p class=3D"MsoNormal">Can someone help me understand this error or how to =
fix or workaround it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After running&nbsp;&nbsp;&nbsp; bitbake core-image-m=
inimal &nbsp;&nbsp;&nbsp;I get the following error
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/u02/yocto/poky-thud-20.0.0/meta/recipe=
s-core/glibc/glibc_2.28.bb:do_configure) failed with exit code '1'<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And looking into the log.do.configure I see this err=
or<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">checking sysdep dirs... configure: error: The e6500 =
subspecies of powerpc64 is not supported.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Tom Beaman<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
</div>
</body>
</html>

--_000_BL0PR11MB35244A5959FBEB6CE047C110EB850BL0PR11MB3524namp_--
