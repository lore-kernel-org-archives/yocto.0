Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE499E00F59; Tue,  2 Aug 2016 04:33:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3649 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Aug 2016 04:33:17 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0109.outbound.protection.outlook.com [104.47.38.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39BB8E00F50
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 04:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=5IIU4+VHxnedZ0Pedc8vN+P+CTa0wBhmvxoQJ3B2OlM=;
	b=VCJtLWv9IYB/Qu9jconSX4OQQQLRLC6vcScEWDCb/wlncEGsoOgJNERthU1rub+b1uJCWZD6ege7zKrNS3PnXQKuIZbRxQvchf+GJ8RThj1pKk7rz9sqfZm9vMptsGyurQmS/E/OXQ44qtVu5j4pzlX//b5cQEb6Pd50iIvEeu4=
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com (10.165.76.133) by
	BN3PR1201MB0961.namprd12.prod.outlook.com (10.165.76.25) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.549.15; Tue, 2 Aug 2016 07:56:53 +0000
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) by
	BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) with
	mapi id 15.01.0549.022; Tue, 2 Aug 2016 07:56:53 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: libnetconf recipe configure error
Thread-Index: AdHskZlSGFzwX8jBQKWtVc8EURdbIg==
Date: Tue, 2 Aug 2016 07:56:53 +0000
Message-ID: <BN3PR1201MB0963E0F226A49187386F552FA5050@BN3PR1201MB0963.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: e851db2d-02f6-4d8e-dc5b-08d3baaa9178
x-microsoft-exchange-diagnostics: 1; BN3PR1201MB0961;
	6:m20CuIi3E1gPc6Watg5ZS4L9RgrxD0vFzt2vD+NuqZoFVC1PbS8ApDVLABQpplc/k9yGFmWeCitIVrDviDjuzzPDoW4uvbP8yb2QgsWjfKAE3LY3CDpJ2yOagN8GGFH7l4fDx22JmC8aFJqQVS8jevdveGx3mTRZqG6p9MI8p7PreIHfQTB5CvboAyN64rEPY4QboNusmHLglzOEYyo70hsmtE0LSktEF3JBslPg6Gfm6fsP1Y1VPweAngUs0wZuooaWBlNKrnNI+iCZ9K6WND8XH4s2ophVss29rZXBshSUdng0Gn60ME473nez8yj9;
	5:oAp7UlQeV1UyK7cPCHOXwyXFHGPZRvSMb9FlKnPAQAlJ6kiYcoC2liNTRBe/5f8CjGD5Np9JLv8rqjtA9hmF7bo/z5ylDdny3DvPnD40GiIC0fJeoTvFYuEq1bJlcNwUMWMZJlxE/wiwpRm1DzrKsQ==;
	24:2w4YUnvE2wrcb1PQL/A5129AXYxphlc7q6LCpMIc8P38htyPyK+lJesyFOhWkkZdBLAB8sJjyAxWj6xkJj4murhYkLL/d7ckn2AoG2DgRMU=;
	7:GxwbjMeDQgI+LffnxmRhW64n6F2QwB4bAS1qjlIl90vASQMCIrsthS8nh5/tTDHpMppwMHgoIjzrrSVuHE3MGoLXPKsGmNtET8icQAPcUnJwQ5ZsTbC/UIIgBXzumScthzcQ5Qoie1TmYVDX74FOw2U65+Qe17ayxO659eqIK56lzEvIV3K90wp1OJO1S33HJClksknQizq8yxRDAKRELVExmd1OizQpVBtBfjDTS5RsxvhFHr/iP5DoTKDNoIha
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR1201MB0961;
x-microsoft-antispam-prvs: <BN3PR1201MB09618AE57C2C3E7AD7EDC409A5050@BN3PR1201MB0961.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415321)(6040130)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041072)(6043046);
	SRVR:BN3PR1201MB0961; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR1201MB0961; 
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(199003)(53754006)(189002)(76576001)(3280700002)(586003)(105586002)(33656002)(50986999)(2351001)(229853001)(101416001)(122556002)(106356001)(7696003)(16236675004)(54356999)(99936001)(7846002)(99286002)(74316002)(68736007)(7736002)(9686002)(450100001)(77096005)(15975445007)(5890100001)(3846002)(3480700004)(189998001)(8936002)(86362001)(790700001)(2900100001)(66066001)(19580395003)(11100500001)(107886002)(5630700001)(6116002)(92566002)(19300405004)(19625215002)(2906002)(87936001)(97736004)(3660700001)(1730700003)(81166006)(5002640100001)(2501003)(5640700001)(110136002)(8676002)(10400500002)(81156014)(102836003)(158833001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR1201MB0961;
	H:BN3PR1201MB0963.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2016 07:56:53.0950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR1201MB0961
Subject: libnetconf recipe configure error
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
X-List-Received-Date: Tue, 02 Aug 2016 11:33:22 -0000
X-Groupsio-MsgNum: 31348
Content-Language: zh-CN
Content-Type: multipart/mixed;
	boundary="_004_BN3PR1201MB0963E0F226A49187386F552FA5050BN3PR1201MB0963_"

--_004_BN3PR1201MB0963E0F226A49187386F552FA5050BN3PR1201MB0963_
Content-Type: multipart/alternative;
	boundary="_000_BN3PR1201MB0963E0F226A49187386F552FA5050BN3PR1201MB0963_"

--_000_BN3PR1201MB0963E0F226A49187386F552FA5050BN3PR1201MB0963_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all


I write a libnetconf recipe BB file to handle this package.

Like this:

DESCRIPTION =3D "libnetconf is a NETCONF library."
HOMEPAGE =3D "https://github.com/CESNET/libnetconf"

SECTION =3D "devel"
LICENSE =3D "BSD"
LIC_FILES_CHKSUM =3D "file://${WORKDIR}/git/COPYING;md5=3D22c218798908f9521=
6326c4df42637b5"

DEPENDS +=3D "libssh libxml2 libxslt openssl "

SRC_URI =3D "git://github.com/CESNET/libnetconf.git;procotol=3Dhttps"
SRCREV=3D"d4585969d71b7d7dec181955a6753b171b4a8424"

S =3D "${WORKDIR}/git"

inherit autotools

####################END##################################

The problem is libxslt. The libnetconf depends on it. Although I have put l=
ibxslt into DEPENDS, the 'configure' of libnetconf can't finish.
I find all libxslt content was built, locate at sysroot like '/usr/lib/...'=
  and '/use/include/libxslt/...'

Is there something wrong of my BB file or libxslt NOT build correctly?

Btw. The libxml2 is very fine.


Tail of the configure log file:


checking whether to build static libraries... no
checking for ELF visibility... yes
checking for xml2-config... yes
ERROR: /usr/bin/xml2-config should not be used, use an alternative such as =
pkg-config
ERROR: /usr/bin/xml2-config should not be used, use an alternative such as =
pkg-config
checking for xmlDOMWrapReconcileNamespaces in -lxml2... no
checking for xslt-config... yes
ERROR: /usr/bin/xslt-config should not be used, use an alternative such as =
pkg-config
ERROR: /usr/bin/xslt-config should not be used, use an alternative such as =
pkg-config
checking for xsltApplyStylesheet in -lxslt... no
configure: error: Missing libxslt library
NOTE: The following config.log files may provide further information.
WARNING: exit code 1 from a shell command.
NOTE: /mnt/c1/git/poky/build-toaster-5/tmp/work/i586-poky-linux/libnetconf/=
0.10-r0/build/config.log
ERROR: configure failed
ERROR: Function failed: do_configure (log file is located at /mnt/c1/git/po=
ky/build-toaster-5/tmp/work/i586-poky-linux/libnetconf/0.10-r0/temp/log.do_=
configure.27216)


Full file is attached.



Thanks.

Richard Zhang



--_000_BN3PR1201MB0963E0F226A49187386F552FA5050BN3PR1201MB0963_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
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
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"text-justi=
fy-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I write a libnetconf recipe BB =
file to handle this package.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Like this:<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>DESCRIPTION =3D &quot;libnetconf is a NETCONF library.&quot;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>HOMEPAGE =3D &quot;https://github.com/CESNET/libnetconf&quot;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>SECTION =3D &quot;devel&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>LICENSE =3D &quot;BSD&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>LIC_FILES_CHKSUM =3D &quot;file://${WORKDIR}/git/COPYING;md5=3D22c21879890=
8f95216326c4df42637b5&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>DEPENDS &#43;=3D &quot;libssh libxml2 libxslt openssl &quot;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>SRC_URI =3D &quot;git://github.com/CESNET/libnetconf.git;procotol=3Dhttps&=
quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>SRCREV=3D&quot;d4585969d71b7d7dec181955a6753b171b4a8424&quot;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>S =3D &quot;${WORKDIR}/git&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>inherit autotools<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>####################END##################################<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The problem is libxslt. The lib=
netconf depends on it. Although I have put libxslt into DEPENDS, the &#8216=
;configure&#8217; of libnetconf can&#8217;t finish.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I find all libxslt content was =
built, locate at sysroot like &#8216;/usr/lib/&#8230;&#8217;&nbsp; and &#82=
16;/use/include/libxslt/&#8230;&#8217;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there something wrong of my =
BB file or libxslt NOT build correctly?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Btw. The libxml2 is very fine.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tail of the configure log file:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>checking whether to build static libraries... no<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>checking for ELF visibility... yes<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>checking for xml2-config... yes<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: /usr/bin/xml2-config should not be used, use an alternative such as=
 pkg-config<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: /usr/bin/xml2-config should not be used, use an alternative such as=
 pkg-config<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>checking for xmlDOMWrapReconcileNamespaces in -lxml2... no<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>checking for xslt-config... yes<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: /usr/bin/xslt-config should not be used, use an alternative such as=
 pkg-config<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: /usr/bin/xslt-config should not be used, use an alternative such as=
 pkg-config<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>checking for xsltApplyStylesheet in -lxslt... no<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>configure: error: Missing libxslt library<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>NOTE: The following config.log files may provide further information.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>WARNING: exit code 1 from a shell command.<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>NOTE: /mnt/c1/git/poky/build-toaster-5/tmp/work/i586-poky-linux/libnetconf=
/0.10-r0/build/config.log<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: configure failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: Function failed: do_configure (log file is located at /mnt/c1/git/p=
oky/build-toaster-5/tmp/work/i586-poky-linux/libnetconf/0.10-r0/temp/log.do=
_configure.27216)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Full file is attached.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Richard Zhang<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_BN3PR1201MB0963E0F226A49187386F552FA5050BN3PR1201MB0963_--

--_004_BN3PR1201MB0963E0F226A49187386F552FA5050BN3PR1201MB0963_
Content-Type: application/octet-stream; name="log.do_configure.27216"
Content-Description: log.do_configure.27216
Content-Disposition: attachment; filename="log.do_configure.27216";
	size=11079; creation-date="Tue, 02 Aug 2016 07:53:44 GMT";
	modification-date="Tue, 02 Aug 2016 07:36:16 GMT"
Content-Transfer-Encoding: base64

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gc3lzcm9vdF9jbGVhbnNzdGF0ZQpERUJV
RzogUHl0aG9uIGZ1bmN0aW9uIHN5c3Jvb3RfY2xlYW5zc3RhdGUgZmluaXNoZWQKREVCVUc6IFNJ
VEUgZmlsZXMgWydlbmRpYW4tbGl0dGxlJywgJ2JpdC0zMicsICdpeDg2LWNvbW1vbicsICdjb21t
b24tbGludXgnLCAnY29tbW9uLWdsaWJjJywgJ2k1ODYtbGludXgnLCAnY29tbW9uJ10KREVCVUc6
IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBhdXRvdG9vbHNfcHJlY29uZmlndXJlCkRFQlVHOiBT
aGVsbCBmdW5jdGlvbiBhdXRvdG9vbHNfcHJlY29uZmlndXJlIGZpbmlzaGVkCkRFQlVHOiBFeGVj
dXRpbmcgcHl0aG9uIGZ1bmN0aW9uIGF1dG90b29sc19jb3B5X2FjbG9jYWxzCkRFQlVHOiBTSVRF
IGZpbGVzIFsnZW5kaWFuLWxpdHRsZScsICdiaXQtMzInLCAnaXg4Ni1jb21tb24nLCAnY29tbW9u
LWxpbnV4JywgJ2NvbW1vbi1nbGliYycsICdpNTg2LWxpbnV4JywgJ2NvbW1vbiddCkRFQlVHOiBQ
eXRob24gZnVuY3Rpb24gYXV0b3Rvb2xzX2NvcHlfYWNsb2NhbHMgZmluaXNoZWQKREVCVUc6IEV4
ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19jb25maWd1cmUKYXV0b21ha2UgKEdOVSBhdXRvbWFr
ZSkgMS4xNQpDb3B5cmlnaHQgKEMpIDIwMTQgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLCBJbmMu
CkxpY2Vuc2UgR1BMdjIrOiBHTlUgR1BMIHZlcnNpb24gMiBvciBsYXRlciA8aHR0cDovL2dudS5v
cmcvbGljZW5zZXMvZ3BsLTIuMC5odG1sPgpUaGlzIGlzIGZyZWUgc29mdHdhcmU6IHlvdSBhcmUg
ZnJlZSB0byBjaGFuZ2UgYW5kIHJlZGlzdHJpYnV0ZSBpdC4KVGhlcmUgaXMgTk8gV0FSUkFOVFks
IHRvIHRoZSBleHRlbnQgcGVybWl0dGVkIGJ5IGxhdy4KCldyaXR0ZW4gYnkgVG9tIFRyb21leSA8
dHJvbWV5QHJlZGhhdC5jb20+CiAgICAgICBhbmQgQWxleGFuZHJlIER1cmV0LUx1dHogPGFkbEBn
bnUub3JnPi4KQVVUT1YgaXMgMQpOT1RFOiBFeGVjdXRpbmcgQUNMT0NBTD0iYWNsb2NhbCAtLXN5
c3RlbS1hY2Rpcj0vbW50L2MxL2dpdC9wb2t5L2J1aWxkLXRvYXN0ZXItNS90bXAvd29yay9pNTg2
LXBva3ktbGludXgvbGlibmV0Y29uZi8wLjEwLXIwL2J1aWxkL2FjbG9jYWwtY29weS8iIGF1dG9y
ZWNvbmYgLS12ZXJib3NlIC0taW5zdGFsbCAtLWZvcmNlIC0tZXhjbHVkZT1hdXRvcG9pbnQgLUkg
L21udC9jMS9naXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1wL3dvcmsvaTU4Ni1wb2t5LWxpbnV4
L2xpYm5ldGNvbmYvMC4xMC1yMC9naXQvbTQvCmF1dG9yZWNvbmY6IEVudGVyaW5nIGRpcmVjdG9y
eSBgLicKYXV0b3JlY29uZjogY29uZmlndXJlLmluOiBub3QgdXNpbmcgR2V0dGV4dAphdXRvcmVj
b25mOiBydW5uaW5nOiBhY2xvY2FsIC0tc3lzdGVtLWFjZGlyPS9tbnQvYzEvZ2l0L3Bva3kvYnVp
bGQtdG9hc3Rlci01L3RtcC93b3JrL2k1ODYtcG9reS1saW51eC9saWJuZXRjb25mLzAuMTAtcjAv
YnVpbGQvYWNsb2NhbC1jb3B5LyAtSSAvbW50L2MxL2dpdC9wb2t5L2J1aWxkLXRvYXN0ZXItNS90
bXAvd29yay9pNTg2LXBva3ktbGludXgvbGlibmV0Y29uZi8wLjEwLXIwL2dpdC9tNC8gLUkgL21u
dC9jMS9naXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1wL3dvcmsvaTU4Ni1wb2t5LWxpbnV4L2xp
Ym5ldGNvbmYvMC4xMC1yMC9naXQvbTQvIC0tZm9yY2UgCmFjbG9jYWw6IHdhcm5pbmc6IGF1dG9j
b25mIGlucHV0IHNob3VsZCBiZSBuYW1lZCAnY29uZmlndXJlLmFjJywgbm90ICdjb25maWd1cmUu
aW4nCmF1dG9yZWNvbmY6IGNvbmZpZ3VyZS5pbjogdHJhY2luZwphdXRvcmVjb25mOiBydW5uaW5n
OiBsaWJ0b29saXplIC0tY29weSAtLWZvcmNlCmxpYnRvb2xpemU6IHB1dHRpbmcgYXV4aWxpYXJ5
IGZpbGVzIGluICcuJy4KbGlidG9vbGl6ZTogY29weWluZyBmaWxlICcuL2x0bWFpbi5zaCcKbGli
dG9vbGl6ZTogQ29uc2lkZXIgYWRkaW5nICdBQ19DT05GSUdfTUFDUk9fRElSUyhbbTRdKScgdG8g
Y29uZmlndXJlLmluLApsaWJ0b29saXplOiBhbmQgcmVydW5uaW5nIGxpYnRvb2xpemUgYW5kIGFj
bG9jYWwuCmxpYnRvb2xpemU6IENvbnNpZGVyIGFkZGluZyAnLUkgbTQnIHRvIEFDTE9DQUxfQU1G
TEFHUyBpbiBNYWtlZmlsZS5hbS4KYWNsb2NhbDogd2FybmluZzogYXV0b2NvbmYgaW5wdXQgc2hv
dWxkIGJlIG5hbWVkICdjb25maWd1cmUuYWMnLCBub3QgJ2NvbmZpZ3VyZS5pbicKYXV0b3JlY29u
ZjogcnVubmluZzogL21udC9jMS9naXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1wL3N5c3Jvb3Rz
L3g4Nl82NC1saW51eC91c3IvYmluL2F1dG9jb25mIC0taW5jbHVkZT0vbW50L2MxL2dpdC9wb2t5
L2J1aWxkLXRvYXN0ZXItNS90bXAvd29yay9pNTg2LXBva3ktbGludXgvbGlibmV0Y29uZi8wLjEw
LXIwL2dpdC9tNC8gLS1mb3JjZQphdXRvcmVjb25mOiBjb25maWd1cmUuaW46IG5vdCB1c2luZyBB
dXRvaGVhZGVyCmF1dG9yZWNvbmY6IGNvbmZpZ3VyZS5pbjogbm90IHVzaW5nIEF1dG9tYWtlCmF1
dG9yZWNvbmY6IHJ1bm5pbmc6IGdudS1jb25maWdpemUKYXV0b3JlY29uZjogTGVhdmluZyBkaXJl
Y3RvcnkgYC4nCk5PVEU6IFJ1bm5pbmcgLi4vZ2l0L2NvbmZpZ3VyZSAgLS1idWlsZD14ODZfNjQt
bGludXggCQkgIC0taG9zdD1pNTg2LXBva3ktbGludXggCQkgIC0tdGFyZ2V0PWk1ODYtcG9reS1s
aW51eCAJCSAgLS1wcmVmaXg9L3VzciAJCSAgLS1leGVjX3ByZWZpeD0vdXNyIAkJICAtLWJpbmRp
cj0vdXNyL2JpbiAJCSAgLS1zYmluZGlyPS91c3Ivc2JpbiAJCSAgLS1saWJleGVjZGlyPS91c3Iv
bGliZXhlYyAJCSAgLS1kYXRhZGlyPS91c3Ivc2hhcmUgCQkgIC0tc3lzY29uZmRpcj0vZXRjIAkJ
ICAtLXNoYXJlZHN0YXRlZGlyPS9jb20gCQkgIC0tbG9jYWxzdGF0ZWRpcj0vdmFyIAkJICAtLWxp
YmRpcj0vdXNyL2xpYiAJCSAgLS1pbmNsdWRlZGlyPS91c3IvaW5jbHVkZSAJCSAgLS1vbGRpbmNs
dWRlZGlyPS91c3IvaW5jbHVkZSAJCSAgLS1pbmZvZGlyPS91c3Ivc2hhcmUvaW5mbyAJCSAgLS1t
YW5kaXI9L3Vzci9zaGFyZS9tYW4gCQkgIC0tZGlzYWJsZS1zaWxlbnQtcnVsZXMgCQkgIC0tZGlz
YWJsZS1kZXBlbmRlbmN5LXRyYWNraW5nIAkJICAtLXdpdGgtbGlidG9vbC1zeXNyb290PS9tbnQv
YzEvZ2l0L3Bva3kvYnVpbGQtdG9hc3Rlci01L3RtcC9zeXNyb290cy9xZW11eDg2ICAtLWRpc2Fi
bGUtc3RhdGljIApjb25maWd1cmU6IFdBUk5JTkc6IHVucmVjb2duaXplZCBvcHRpb25zOiAtLWRp
c2FibGUtc2lsZW50LXJ1bGVzLCAtLWRpc2FibGUtZGVwZW5kZW5jeS10cmFja2luZwpjb25maWd1
cmU6IGxvYWRpbmcgc2l0ZSBzY3JpcHQgL21udC9jMS9naXQvcG9reS9fdG9hc3Rlcl9jbG9uZXMv
X2dpdF9fX2dpdC55b2N0b3Byb2plY3Qub3JnX3Bva3kuZ2l0X2tyb2dvdGgvbWV0YS9zaXRlL2Vu
ZGlhbi1saXR0bGUKY29uZmlndXJlOiBsb2FkaW5nIHNpdGUgc2NyaXB0IC9tbnQvYzEvZ2l0L3Bv
a3kvX3RvYXN0ZXJfY2xvbmVzL19naXRfX19naXQueW9jdG9wcm9qZWN0Lm9yZ19wb2t5LmdpdF9r
cm9nb3RoL21ldGEvc2l0ZS9peDg2LWNvbW1vbgpjb25maWd1cmU6IGxvYWRpbmcgc2l0ZSBzY3Jp
cHQgL21udC9jMS9naXQvcG9reS9fdG9hc3Rlcl9jbG9uZXMvX2dpdF9fX2dpdC55b2N0b3Byb2pl
Y3Qub3JnX3Bva3kuZ2l0X2tyb2dvdGgvbWV0YS9zaXRlL2NvbW1vbi1saW51eApjb25maWd1cmU6
IGxvYWRpbmcgc2l0ZSBzY3JpcHQgL21udC9jMS9naXQvcG9reS9fdG9hc3Rlcl9jbG9uZXMvX2dp
dF9fX2dpdC55b2N0b3Byb2plY3Qub3JnX3Bva3kuZ2l0X2tyb2dvdGgvbWV0YS9zaXRlL2NvbW1v
bi1nbGliYwpjb25maWd1cmU6IGxvYWRpbmcgc2l0ZSBzY3JpcHQgL21udC9jMS9naXQvcG9reS9f
dG9hc3Rlcl9jbG9uZXMvX2dpdF9fX2dpdC55b2N0b3Byb2plY3Qub3JnX3Bva3kuZ2l0X2tyb2dv
dGgvbWV0YS9zaXRlL2NvbW1vbgpjb25maWd1cmU6IGxvYWRpbmcgc2l0ZSBzY3JpcHQgL21udC9j
MS9naXQvcG9reS9fdG9hc3Rlcl9jbG9uZXMvX2dpdF9fX2dpdC5vcGVuZW1iZWRkZWQub3JnX21l
dGEtb3BlbmVtYmVkZGVkX2tyb2dvdGgvbWV0YS1vZS9zaXRlL2VuZGlhbi1saXR0bGUKY29uZmln
dXJlOiBsb2FkaW5nIHNpdGUgc2NyaXB0IC9tbnQvYzEvZ2l0L3Bva3kvYnVpbGQtdG9hc3Rlci01
L3RtcC93b3JrL2k1ODYtcG9reS1saW51eC9saWJuZXRjb25mLzAuMTAtcjAvYnVpbGQvYWNsb2Nh
bC1jb3B5L2dsaWJjX2NvbmZpZwpjb25maWd1cmU6IGxvYWRpbmcgc2l0ZSBzY3JpcHQgL21udC9j
MS9naXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1wL3dvcmsvaTU4Ni1wb2t5LWxpbnV4L2xpYm5l
dGNvbmYvMC4xMC1yMC9idWlsZC9hY2xvY2FsLWNvcHkvbmN1cnNlc19jb25maWcKY2hlY2tpbmcg
YnVpbGQgc3lzdGVtIHR5cGUuLi4geDg2XzY0LXBjLWxpbnV4LWdudQpjaGVja2luZyBob3N0IHN5
c3RlbSB0eXBlLi4uIGk1ODYtcG9reS1saW51eC1nbnUKY3V0OiAuL1ZFUlNJT046IE5vIHN1Y2gg
ZmlsZSBvciBkaXJlY3RvcnkKc2VkOiAtZSBleHByZXNzaW9uICMxLCBjaGFyIDA6IG5vIHByZXZp
b3VzIHJlZ3VsYXIgZXhwcmVzc2lvbgpjaGVja2luZyBmb3IgcGtnLWNvbmZpZy4uLiAvbW50L2Mx
L2dpdC9wb2t5L2J1aWxkLXRvYXN0ZXItNS90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9i
aW4vcGtnLWNvbmZpZwpjaGVja2luZyBmb3IgcHlhbmcuLi4gbm8KY2hlY2tpbmcgZm9yIHhzbHRw
cm9jLi4uIHllcwpjaGVja2luZyBmb3IgaG9zdCBhcmNoaXRlY3R1cmUuLi4gaTU4NiBpcyBzdXBw
b3J0ZWQKY2hlY2tpbmcgZm9yIGRveHlnZW4uLi4gbm8KY2hlY2tpbmcgZm9yIHJwbWJ1aWxkLi4u
IHJwbWJ1aWxkCmNoZWNraW5nIGZvciBncmVhZGxpbmsuLi4gcmVhZGxpbmsKY29uZmlndXJlOiBX
QVJOSU5HOiBUcnkgaW5zdGFsbGluZyBncmVhZGxpbmsuCmNoZWNraW5nIGZvciBsaWJ0b29sLi4u
IHllcwpjaGVja2luZyBmb3IgaTU4Ni1wb2t5LWxpbnV4LWNsYW5nLi4uIGk1ODYtcG9reS1saW51
eC1nY2MgIC1tMzIgLW1hcmNoPWk1ODYgLS1zeXNyb290PS9tbnQvYzEvZ2l0L3Bva3kvYnVpbGQt
dG9hc3Rlci01L3RtcC9zeXNyb290cy9xZW11eDg2CmNoZWNraW5nIHdoZXRoZXIgdGhlIEMgY29t
cGlsZXIgd29ya3MuLi4geWVzCmNoZWNraW5nIGZvciBDIGNvbXBpbGVyIGRlZmF1bHQgb3V0cHV0
IGZpbGUgbmFtZS4uLiBhLm91dApjaGVja2luZyBmb3Igc3VmZml4IG9mIGV4ZWN1dGFibGVzLi4u
IApjaGVja2luZyB3aGV0aGVyIHdlIGFyZSBjcm9zcyBjb21waWxpbmcuLi4geWVzCmNoZWNraW5n
IGZvciBzdWZmaXggb2Ygb2JqZWN0IGZpbGVzLi4uIG8KY2hlY2tpbmcgd2hldGhlciB3ZSBhcmUg
dXNpbmcgdGhlIEdOVSBDIGNvbXBpbGVyLi4uIHllcwpjaGVja2luZyB3aGV0aGVyIGk1ODYtcG9r
eS1saW51eC1nY2MgIC1tMzIgLW1hcmNoPWk1ODYgLS1zeXNyb290PS9tbnQvYzEvZ2l0L3Bva3kv
YnVpbGQtdG9hc3Rlci01L3RtcC9zeXNyb290cy9xZW11eDg2IGFjY2VwdHMgLWcuLi4geWVzCmNo
ZWNraW5nIGZvciBpNTg2LXBva3ktbGludXgtZ2NjICAtbTMyIC1tYXJjaD1pNTg2IC0tc3lzcm9v
dD0vbW50L2MxL2dpdC9wb2t5L2J1aWxkLXRvYXN0ZXItNS90bXAvc3lzcm9vdHMvcWVtdXg4NiBv
cHRpb24gdG8gYWNjZXB0IElTTyBDODkuLi4gbm9uZSBuZWVkZWQKY2hlY2tpbmcgaG93IHRvIHJ1
biB0aGUgQyBwcmVwcm9jZXNzb3IuLi4gaTU4Ni1wb2t5LWxpbnV4LWdjYyAtRSAtLXN5c3Jvb3Q9
L21udC9jMS9naXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1wL3N5c3Jvb3RzL3FlbXV4ODYgIC1t
MzIgLW1hcmNoPWk1ODYKY2hlY2tpbmcgd2hldGhlciBsbiAtcyB3b3Jrcy4uLiB5ZXMKY2hlY2tp
bmcgZm9yIGEgQlNELWNvbXBhdGlibGUgaW5zdGFsbC4uLiAvdXNyL2Jpbi9pbnN0YWxsIC1jCmNo
ZWNraW5nIGhvdyB0byBwcmludCBzdHJpbmdzLi4uIHByaW50ZgpjaGVja2luZyBmb3IgYSBzZWQg
dGhhdCBkb2VzIG5vdCB0cnVuY2F0ZSBvdXRwdXQuLi4gKGNhY2hlZCkgc2VkCmNoZWNraW5nIGZv
ciBncmVwIHRoYXQgaGFuZGxlcyBsb25nIGxpbmVzIGFuZCAtZS4uLiAvYmluL2dyZXAKY2hlY2tp
bmcgZm9yIGVncmVwLi4uIC9iaW4vZ3JlcCAtRQpjaGVja2luZyBmb3IgZmdyZXAuLi4gL2Jpbi9n
cmVwIC1GCmNoZWNraW5nIGZvciBsZCB1c2VkIGJ5IGk1ODYtcG9reS1saW51eC1nY2MgIC1tMzIg
LW1hcmNoPWk1ODYgLS1zeXNyb290PS9tbnQvYzEvZ2l0L3Bva3kvYnVpbGQtdG9hc3Rlci01L3Rt
cC9zeXNyb290cy9xZW11eDg2Li4uIGk1ODYtcG9reS1saW51eC1sZCAtLXN5c3Jvb3Q9L21udC9j
MS9naXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1wL3N5c3Jvb3RzL3FlbXV4ODYgIApjaGVja2lu
ZyBpZiB0aGUgbGlua2VyIChpNTg2LXBva3ktbGludXgtbGQgLS1zeXNyb290PS9tbnQvYzEvZ2l0
L3Bva3kvYnVpbGQtdG9hc3Rlci01L3RtcC9zeXNyb290cy9xZW11eDg2ICApIGlzIEdOVSBsZC4u
LiB5ZXMKY2hlY2tpbmcgZm9yIEJTRC0gb3IgTVMtY29tcGF0aWJsZSBuYW1lIGxpc3RlciAobm0p
Li4uIGk1ODYtcG9reS1saW51eC1ubQpjaGVja2luZyB0aGUgbmFtZSBsaXN0ZXIgKGk1ODYtcG9r
eS1saW51eC1ubSkgaW50ZXJmYWNlLi4uIEJTRCBubQpjaGVja2luZyB0aGUgbWF4aW11bSBsZW5n
dGggb2YgY29tbWFuZCBsaW5lIGFyZ3VtZW50cy4uLiAxNTcyODY0CmNoZWNraW5nIGhvdyB0byBj
b252ZXJ0IHg4Nl82NC1wYy1saW51eC1nbnUgZmlsZSBuYW1lcyB0byBpNTg2LXBva3ktbGludXgt
Z251IGZvcm1hdC4uLiBmdW5jX2NvbnZlcnRfZmlsZV9ub29wCmNoZWNraW5nIGhvdyB0byBjb252
ZXJ0IHg4Nl82NC1wYy1saW51eC1nbnUgZmlsZSBuYW1lcyB0byB0b29sY2hhaW4gZm9ybWF0Li4u
IGZ1bmNfY29udmVydF9maWxlX25vb3AKY2hlY2tpbmcgZm9yIGk1ODYtcG9reS1saW51eC1sZCAt
LXN5c3Jvb3Q9L21udC9jMS9naXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1wL3N5c3Jvb3RzL3Fl
bXV4ODYgICBvcHRpb24gdG8gcmVsb2FkIG9iamVjdCBmaWxlcy4uLiAtcgpjaGVja2luZyBmb3Ig
aTU4Ni1wb2t5LWxpbnV4LW9iamR1bXAuLi4gaTU4Ni1wb2t5LWxpbnV4LW9iamR1bXAKY2hlY2tp
bmcgaG93IHRvIHJlY29nbml6ZSBkZXBlbmRlbnQgbGlicmFyaWVzLi4uIHBhc3NfYWxsCmNoZWNr
aW5nIGZvciBpNTg2LXBva3ktbGludXgtZGxsdG9vbC4uLiBubwpjaGVja2luZyBmb3IgZGxsdG9v
bC4uLiBubwpjaGVja2luZyBob3cgdG8gYXNzb2NpYXRlIHJ1bnRpbWUgYW5kIGxpbmsgbGlicmFy
aWVzLi4uIHByaW50ZiAlc1xuCmNoZWNraW5nIGZvciBpNTg2LXBva3ktbGludXgtYXIuLi4gaTU4
Ni1wb2t5LWxpbnV4LWFyCmNoZWNraW5nIGZvciBhcmNoaXZlciBARklMRSBzdXBwb3J0Li4uIEAK
Y2hlY2tpbmcgZm9yIGk1ODYtcG9reS1saW51eC1zdHJpcC4uLiBpNTg2LXBva3ktbGludXgtc3Ry
aXAKY2hlY2tpbmcgZm9yIGk1ODYtcG9reS1saW51eC1yYW5saWIuLi4gaTU4Ni1wb2t5LWxpbnV4
LXJhbmxpYgpjaGVja2luZyBmb3IgZ2F3ay4uLiBnYXdrCmNoZWNraW5nIGNvbW1hbmQgdG8gcGFy
c2UgaTU4Ni1wb2t5LWxpbnV4LW5tIG91dHB1dCBmcm9tIGk1ODYtcG9reS1saW51eC1nY2MgIC1t
MzIgLW1hcmNoPWk1ODYgLS1zeXNyb290PS9tbnQvYzEvZ2l0L3Bva3kvYnVpbGQtdG9hc3Rlci01
L3RtcC9zeXNyb290cy9xZW11eDg2IG9iamVjdC4uLiBvawpjaGVja2luZyBmb3Igc3lzcm9vdC4u
LiAvbW50L2MxL2dpdC9wb2t5L2J1aWxkLXRvYXN0ZXItNS90bXAvc3lzcm9vdHMvcWVtdXg4Ngpj
aGVja2luZyBmb3IgYSB3b3JraW5nIGRkLi4uIC9iaW4vZGQKY2hlY2tpbmcgaG93IHRvIHRydW5j
YXRlIGJpbmFyeSBwaXBlcy4uLiAvYmluL2RkIGJzPTQwOTYgY291bnQ9MQpjaGVja2luZyBmb3Ig
aTU4Ni1wb2t5LWxpbnV4LW10Li4uIG5vCmNoZWNraW5nIGZvciBtdC4uLiBtdApjb25maWd1cmU6
IFdBUk5JTkc6IHVzaW5nIGNyb3NzIHRvb2xzIG5vdCBwcmVmaXhlZCB3aXRoIGhvc3QgdHJpcGxl
dApjaGVja2luZyBpZiBtdCBpcyBhIG1hbmlmZXN0IHRvb2wuLi4gbm8KY2hlY2tpbmcgZm9yIEFO
U0kgQyBoZWFkZXIgZmlsZXMuLi4gKGNhY2hlZCkgeWVzCmNoZWNraW5nIGZvciBzeXMvdHlwZXMu
aC4uLiAoY2FjaGVkKSB5ZXMKY2hlY2tpbmcgZm9yIHN5cy9zdGF0LmguLi4gKGNhY2hlZCkgeWVz
CmNoZWNraW5nIGZvciBzdGRsaWIuaC4uLiAoY2FjaGVkKSB5ZXMKY2hlY2tpbmcgZm9yIHN0cmlu
Zy5oLi4uIChjYWNoZWQpIHllcwpjaGVja2luZyBmb3IgbWVtb3J5LmguLi4gKGNhY2hlZCkgeWVz
CmNoZWNraW5nIGZvciBzdHJpbmdzLmguLi4gKGNhY2hlZCkgeWVzCmNoZWNraW5nIGZvciBpbnR0
eXBlcy5oLi4uIChjYWNoZWQpIHllcwpjaGVja2luZyBmb3Igc3RkaW50LmguLi4gKGNhY2hlZCkg
eWVzCmNoZWNraW5nIGZvciB1bmlzdGQuaC4uLiAoY2FjaGVkKSB5ZXMKY2hlY2tpbmcgZm9yIGRs
ZmNuLmguLi4gKGNhY2hlZCkgeWVzCmNoZWNraW5nIGZvciBvYmpkaXIuLi4gLmxpYnMKY2hlY2tp
bmcgaWYgaTU4Ni1wb2t5LWxpbnV4LWdjYyAgLW0zMiAtbWFyY2g9aTU4NiAtLXN5c3Jvb3Q9L21u
dC9jMS9naXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1wL3N5c3Jvb3RzL3FlbXV4ODYgc3VwcG9y
dHMgLWZuby1ydHRpIC1mbm8tZXhjZXB0aW9ucy4uLiBubwpjaGVja2luZyBmb3IgaTU4Ni1wb2t5
LWxpbnV4LWdjYyAgLW0zMiAtbWFyY2g9aTU4NiAtLXN5c3Jvb3Q9L21udC9jMS9naXQvcG9reS9i
dWlsZC10b2FzdGVyLTUvdG1wL3N5c3Jvb3RzL3FlbXV4ODYgb3B0aW9uIHRvIHByb2R1Y2UgUElD
Li4uIC1mUElDIC1EUElDCmNoZWNraW5nIGlmIGk1ODYtcG9reS1saW51eC1nY2MgIC1tMzIgLW1h
cmNoPWk1ODYgLS1zeXNyb290PS9tbnQvYzEvZ2l0L3Bva3kvYnVpbGQtdG9hc3Rlci01L3RtcC9z
eXNyb290cy9xZW11eDg2IFBJQyBmbGFnIC1mUElDIC1EUElDIHdvcmtzLi4uIHllcwpjaGVja2lu
ZyBpZiBpNTg2LXBva3ktbGludXgtZ2NjICAtbTMyIC1tYXJjaD1pNTg2IC0tc3lzcm9vdD0vbW50
L2MxL2dpdC9wb2t5L2J1aWxkLXRvYXN0ZXItNS90bXAvc3lzcm9vdHMvcWVtdXg4NiBzdGF0aWMg
ZmxhZyAtc3RhdGljIHdvcmtzLi4uIHllcwpjaGVja2luZyBpZiBpNTg2LXBva3ktbGludXgtZ2Nj
ICAtbTMyIC1tYXJjaD1pNTg2IC0tc3lzcm9vdD0vbW50L2MxL2dpdC9wb2t5L2J1aWxkLXRvYXN0
ZXItNS90bXAvc3lzcm9vdHMvcWVtdXg4NiBzdXBwb3J0cyAtYyAtbyBmaWxlLm8uLi4geWVzCmNo
ZWNraW5nIGlmIGk1ODYtcG9reS1saW51eC1nY2MgIC1tMzIgLW1hcmNoPWk1ODYgLS1zeXNyb290
PS9tbnQvYzEvZ2l0L3Bva3kvYnVpbGQtdG9hc3Rlci01L3RtcC9zeXNyb290cy9xZW11eDg2IHN1
cHBvcnRzIC1jIC1vIGZpbGUuby4uLiAoY2FjaGVkKSB5ZXMKY2hlY2tpbmcgd2hldGhlciB0aGUg
aTU4Ni1wb2t5LWxpbnV4LWdjYyAgLW0zMiAtbWFyY2g9aTU4NiAtLXN5c3Jvb3Q9L21udC9jMS9n
aXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1wL3N5c3Jvb3RzL3FlbXV4ODYgbGlua2VyIChpNTg2
LXBva3ktbGludXgtbGQgLS1zeXNyb290PS9tbnQvYzEvZ2l0L3Bva3kvYnVpbGQtdG9hc3Rlci01
L3RtcC9zeXNyb290cy9xZW11eDg2ICApIHN1cHBvcnRzIHNoYXJlZCBsaWJyYXJpZXMuLi4geWVz
CmNoZWNraW5nIHdoZXRoZXIgLWxjIHNob3VsZCBiZSBleHBsaWNpdGx5IGxpbmtlZCBpbi4uLiBu
bwpjaGVja2luZyBkeW5hbWljIGxpbmtlciBjaGFyYWN0ZXJpc3RpY3MuLi4gR05VL0xpbnV4IGxk
LnNvCmNoZWNraW5nIGhvdyB0byBoYXJkY29kZSBsaWJyYXJ5IHBhdGhzIGludG8gcHJvZ3JhbXMu
Li4gaW1tZWRpYXRlCmNoZWNraW5nIHdoZXRoZXIgc3RyaXBwaW5nIGxpYnJhcmllcyBpcyBwb3Nz
aWJsZS4uLiB5ZXMKY2hlY2tpbmcgaWYgbGlidG9vbCBzdXBwb3J0cyBzaGFyZWQgbGlicmFyaWVz
Li4uIHllcwpjaGVja2luZyB3aGV0aGVyIHRvIGJ1aWxkIHNoYXJlZCBsaWJyYXJpZXMuLi4geWVz
CmNoZWNraW5nIHdoZXRoZXIgdG8gYnVpbGQgc3RhdGljIGxpYnJhcmllcy4uLiBubwpjaGVja2lu
ZyBmb3IgRUxGIHZpc2liaWxpdHkuLi4geWVzCmNoZWNraW5nIGZvciB4bWwyLWNvbmZpZy4uLiB5
ZXMKRVJST1I6IC91c3IvYmluL3htbDItY29uZmlnIHNob3VsZCBub3QgYmUgdXNlZCwgdXNlIGFu
IGFsdGVybmF0aXZlIHN1Y2ggYXMgcGtnLWNvbmZpZwpFUlJPUjogL3Vzci9iaW4veG1sMi1jb25m
aWcgc2hvdWxkIG5vdCBiZSB1c2VkLCB1c2UgYW4gYWx0ZXJuYXRpdmUgc3VjaCBhcyBwa2ctY29u
ZmlnCmNoZWNraW5nIGZvciB4bWxET01XcmFwUmVjb25jaWxlTmFtZXNwYWNlcyBpbiAtbHhtbDIu
Li4gbm8KY2hlY2tpbmcgZm9yIHhzbHQtY29uZmlnLi4uIHllcwpFUlJPUjogL3Vzci9iaW4veHNs
dC1jb25maWcgc2hvdWxkIG5vdCBiZSB1c2VkLCB1c2UgYW4gYWx0ZXJuYXRpdmUgc3VjaCBhcyBw
a2ctY29uZmlnCkVSUk9SOiAvdXNyL2Jpbi94c2x0LWNvbmZpZyBzaG91bGQgbm90IGJlIHVzZWQs
IHVzZSBhbiBhbHRlcm5hdGl2ZSBzdWNoIGFzIHBrZy1jb25maWcKY2hlY2tpbmcgZm9yIHhzbHRB
cHBseVN0eWxlc2hlZXQgaW4gLWx4c2x0Li4uIG5vCmNvbmZpZ3VyZTogZXJyb3I6IE1pc3Npbmcg
bGlieHNsdCBsaWJyYXJ5Ck5PVEU6IFRoZSBmb2xsb3dpbmcgY29uZmlnLmxvZyBmaWxlcyBtYXkg
cHJvdmlkZSBmdXJ0aGVyIGluZm9ybWF0aW9uLgpXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9tIGEg
c2hlbGwgY29tbWFuZC4KTk9URTogL21udC9jMS9naXQvcG9reS9idWlsZC10b2FzdGVyLTUvdG1w
L3dvcmsvaTU4Ni1wb2t5LWxpbnV4L2xpYm5ldGNvbmYvMC4xMC1yMC9idWlsZC9jb25maWcubG9n
CkVSUk9SOiBjb25maWd1cmUgZmFpbGVkCkVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX2NvbmZp
Z3VyZSAobG9nIGZpbGUgaXMgbG9jYXRlZCBhdCAvbW50L2MxL2dpdC9wb2t5L2J1aWxkLXRvYXN0
ZXItNS90bXAvd29yay9pNTg2LXBva3ktbGludXgvbGlibmV0Y29uZi8wLjEwLXIwL3RlbXAvbG9n
LmRvX2NvbmZpZ3VyZS4yNzIxNikK

--_004_BN3PR1201MB0963E0F226A49187386F552FA5050BN3PR1201MB0963_--
