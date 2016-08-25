Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34665E00CD3; Wed, 24 Aug 2016 21:29:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0064.outbound.protection.outlook.com [104.47.2.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7BFDE00B9C
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 21:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=fPVTDIWINjKQ5CUo1UyHbUuwccAfG5EkapET0rQPUHU=;
	b=ReBVP86JLaMrqa0fwXg2cqKAHbB3braw2NZJk58PDW2K5uvBTTRs94x+HUcHu//ge1Ha28OPGd/0xG7CVANvFfXeBWheaS1YBftyuokZUuX//ku2MW2sn2U6Us3zLQsO6xH/Xb3N6CATo7bnNlpVQ7/GjfpZylLvOv6POuSbM7E=
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) by
	DB6PR0401MB2632.eurprd04.prod.outlook.com (10.169.225.141) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384)
	id 15.1.587.5; Thu, 25 Aug 2016 04:28:53 +0000
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) with
	mapi id 15.01.0557.027; Thu, 25 Aug 2016 04:28:53 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>, "Tanasa
	Bogdan" <bogdan.tanasa@saabgroup.com>
Thread-Topic: [yocto] profiling tools on a T4240RDB board
Thread-Index: AdH95aBvT37ImYnqT8GbyTxb88pOuAALM9uAAB1h5IA=
Date: Thu, 25 Aug 2016 04:28:53 +0000
Message-ID: <DB6PR0401MB26304AE7CC7C18A6191048BCEEED0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
References: <749b7f156f314157b4440421102957d8@corpappl846.corp.saab.se>
	<fe777f3e-f15c-e6d2-30c2-13024442e7ca@linux.intel.com>
In-Reply-To: <fe777f3e-f15c-e6d2-30c2-13024442e7ca@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [192.158.241.86]
x-ms-office365-filtering-correlation-id: 29351daa-51c1-4912-fb5d-08d3cca05267
x-microsoft-exchange-diagnostics: 1; DB6PR0401MB2632;
	6:bzC5cN2M0rkZ03jgJcW7yVExsxGE83Vvjk0cxlm2xO4SXhK+bP+F0Ek9ec9u8mLhG+TnHZc5xEKbPrJ0FcUFb+n8tmcT7t9XoPs7mcEgm1wc7nIktZyTZSfXsBTDbu00iJ1GJ83s2tESTahTSMnuDFp1L3mLXV4l2VxWndRduU1vHm0XUrEeYdcigl5vREgNfkt+8a5rM7MuR85mfMk17jsMfcFQSmmLTXbx0CXr2MEDFpSOAzANXwHtrK6Ry4mAb36pslY6jbusb2MH8sZFe9OIo+T9MQ/g/EVHrqP/rm+wKJc+UHeAmnkj02dW20BEU05skD5GzgYd6I8gLFUIAw==;
	5:5x5dxJh3nKIYP2urqD2GAPRCTzzX0FlKtBd3DRqwEC6jbT3NPsClW6NWGH+nyuUKYFyvL6PnWaN6twVN2OycMRBFDWlGhBlyawhPOFwrsVR2tEBX5x7G2iSb3q1s24xFifwPtHNWSl6FQszRp9Mbrg==;
	24:/6o+/KdTSNI8gGOzH7GsxI/43Bkbbzr2IeRx728k4A1yBStUiCSdAxRTQHVXzJOe4BgppNg3KmrYo16iGP+L0avEAaiFFH4hR87S4QLAK84=;
	7:WxzXrbjPlBhQH/iJfHkn89zqICoGMSb52/1KZgepy9YQP2CcHzRvRwQS9sqECQ6WxLuVH5IoarMpPByN6ixIhWIxGSga0mO1J8wczsN5HqMhnIdYRL6ukHjiq4TY3bmcnlJS455ta8cbQJdCSNfzXbEb+/N7EEd0OPyrrKHEa1DOiE9pSTxP/S8vqBtdDCq7Pyc9YkTz7F1G2rC6W6SBTjSCCbQ1G7kDukxs2hGH3jLVvprjZzZRsjg61rdwLIoP
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0401MB2632;
x-microsoft-antispam-prvs: <DB6PR0401MB263275B72585EDB4089B7901EEED0@DB6PR0401MB2632.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:DB6PR0401MB2632; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0401MB2632; 
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(377454003)(92566002)(19300405004)(81156014)(7696003)(11100500001)(2950100001)(8676002)(16236675004)(3280700002)(54356999)(19625215002)(122556002)(5001770100001)(7736002)(19580395003)(81166006)(33656002)(7846002)(66066001)(76176999)(106356001)(5660300001)(10400500002)(8936002)(74316002)(4326007)(586003)(87936001)(19580405001)(5002640100001)(2900100001)(6116002)(189998001)(9686002)(86362001)(3846002)(50986999)(102836003)(77096005)(3660700001)(76576001)(101416001)(97736004)(105586002)(790700001)(15975445007)(2906002)(68736007);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0401MB2632;
	H:DB6PR0401MB2630.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2016 04:28:53.7658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2632
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: profiling tools on a T4240RDB board
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
X-List-Received-Date: Thu, 25 Aug 2016 04:29:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0401MB26304AE7CC7C18A6191048BCEEED0DB6PR0401MB2630_"

--_000_DB6PR0401MB26304AE7CC7C18A6191048BCEEED0DB6PR0401MB2630_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The fsl-image-minimal rootfs doesn't include those graphic packages by defa=
ult, I think those packages are included by the dependency of new added pac=
kages.

You can run "bitbake -g fsl-image-minimal" to generate the dependence file =
and analysis how the unneeded packages are brought in.


Best Regards,

Zhenhua

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Leonardo Sandoval
Sent: Wednesday, August 24, 2016 10:19 PM
To: Tanasa Bogdan <bogdan.tanasa@saabgroup.com>; 'yocto@yoctoproject.org' <=
yocto@yoctoproject.org>
Subject: Re: [yocto] profiling tools on a T4240RDB board




El 08/24/2016 a las 04:01 AM, Tanasa Bogdan escribi=F3:
Hi,

We are using the (freescale) linux yocto 1.6 on a T4240RDB board where we w=
ant to have "tools-profile" set in our local.conf file. When building the f=
sl-image-minimal we see that there are some packages that are graphics-rela=
ted (like gtk+, pixbuf, etc..). The card does not have any graphics capabil=
ities. Why does these packets install at all? Is it possible to have the pr=
ofiling tools without any gtk dependencies? How the local.conf should look =
like?
I believe the image you are using include those graphic-related pkgs so tha=
t is why you are seeing them. You may redefine your image, at the end fsl-i=
mage-minimal is just an example that you can modify. Also you may have more=
 answers  on a FSL (NXP?) channel/mailing-list



PS: These dependencies are there even when we choose tools-sdk in order to =
have gcc in the final image.

Thanks,
Bogdan.




--_000_DB6PR0401MB26304AE7CC7C18A6191048BCEEED0DB6PR0401MB2630_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ZH=
-CN">The fsl-image-minimal rootfs doesn&#8217;t include those graphic packa=
ges by default, I think those packages are included by the dependency of ne=
w added packages.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ZH=
-CN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ZH=
-CN">You can run &#8220;bitbake -g fsl-image-minimal&#8221; to generate the=
 dependence file and analysis how the unneeded packages are brought in.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ZH=
-CN"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ZH=
-CN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ZH=
-CN">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ZH=
-CN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ZH=
-CN">Zhenhua<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;mso-fareast-language:ZH=
-CN"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext;mso-fareast-langu=
age:ZH-CN">From:</span></b><span style=3D"color:windowtext;mso-fareast-lang=
uage:ZH-CN"> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproj=
ect.org]
<b>On Behalf Of </b>Leonardo Sandoval<br>
<b>Sent:</b> Wednesday, August 24, 2016 10:19 PM<br>
<b>To:</b> Tanasa Bogdan &lt;bogdan.tanasa@saabgroup.com&gt;; 'yocto@yoctop=
roject.org' &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] profiling tools on a T4240RDB board<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">El 08/24/2016 a las 04:01 AM, Tanasa Bogdan escribi=
=F3:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">We are using the (freescale) linux yocto 1.6 on a T4=
240RDB board where we want to have &quot;tools-profile&quot; set in our loc=
al.conf file. When building the fsl-image-minimal we see that there are som=
e packages that are graphics-related (like gtk&#43;,
 pixbuf, etc..). The card does not have any graphics capabilities. Why does=
 these packets install at all? Is it possible to have the profiling tools w=
ithout any gtk dependencies? How the local.conf should look like?
<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;mso-fareast-language:ZH-CN">I believe the image y=
ou are using include those graphic-related pkgs so that is why you are seei=
ng them. You may redefine your image, at the end
 fsl-image-minimal is just an example that you can modify. Also you may hav=
e more answers&nbsp; on a FSL (NXP?) channel/mailing-list<br>
<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">PS: These dependencies are there even when we choose=
 tools-sdk in order to have gcc in the final image.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Bogdan.<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;mso-fareast-language:ZH-CN"><br>
<br>
<o:p></o:p></span></p>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;mso-fareast-language:ZH-CN"><o:p>&nbsp;</o:p></sp=
an></p>
</div>
</div>
</body>
</html>

--_000_DB6PR0401MB26304AE7CC7C18A6191048BCEEED0DB6PR0401MB2630_--
