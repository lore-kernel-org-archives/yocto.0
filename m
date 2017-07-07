Return-Path: <aravindhlalgss@embedur.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A57F5E009C2; Fri,  7 Jul 2017 05:31:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.43 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 14365 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Jul 2017 05:31:32 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0043.outbound.protection.outlook.com [104.47.41.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 441FFE00718
	for <yocto@yoctoproject.org>; Fri,  7 Jul 2017 05:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=embedur.onmicrosoft.com; s=selector1-embedur-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=sbsXFMrS1iPEw8TKeJl11Qx7q6CJ3szWopsSceo9+oc=;
	b=snLQlAj6dX8TN+d15VsAdU061gW1uxnlaP4OMK76yeEGz4Zg4Ij4FFNaIrd6lpNTYp1kZiCb1Bcr38RSjHVdVlRxPRqA02y21bD2j5ttL5jP5fPWuz7Ep7elS+hGX799m1irBH5kgSYF12vG3U12bRDG4+A95jchtGX4mYafFe8=
Received: from BLUPR15MB0500.namprd15.prod.outlook.com (10.163.214.30) by
	BLUPR15MB0499.namprd15.prod.outlook.com (10.163.214.29) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1240.13; Fri, 7 Jul 2017 06:59:32 +0000
Received: from BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) by
	BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) with mapi id
	15.01.1240.013; Fri, 7 Jul 2017 06:59:32 +0000
From: Aravindhlal G.S.S <aravindhlalgss@embedur.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Uninstall the installed files using bbappend file
Thread-Index: AdL27pTjjx3eLcL6ShyXWTa9yXGmlQ==
Date: Fri, 7 Jul 2017 06:59:32 +0000
Message-ID: <BLUPR15MB0500773E0DAC70C6A52CC5FAD0AA0@BLUPR15MB0500.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=embedur.com;
x-originating-ip: [202.71.146.8]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BLUPR15MB0499;
	7:UuaZVo5C/RQN0WdXVXnfcFG+fYSHq36htXwxaW/XBDG3wabgCGUzzbhSflyCop6scOEactfLQtaJBkNpfdRIDXpstI3ogWX7IqkYDH9/oNyDn9o4d58faiM9d6hFLk8gIsG6q51nT4CuK+du0rCwXNxVLeMtuGu+DmyP7frW1TH8aAshNxy5WuY7jLEBL94oiHsmzPztB7X1OUgkzI8SASJvcYF622el6V6UDWnMmpzPYfvxpgV9YFtzcFkGzpjVFITeliciAav6hez0JmhBUF/mFim9V7xf3++6MN6HhLi+dGt7OT9xj6+jR/69bvg2iLPM91LlGnD5RxaLrJ52a8zgOq/fSF97g9Iuu/LnLQPwNcO4IuzeiPgXUaTYtdWtvmETHc24jYwdEIKXaxqt00ycwzgZ4jXygJ1NRcOmDEXHQ8AXDxlM8LyVW3uBDataYBI3fSF6N1ynp/efkLqQf+97ybgusN61NpvTp8hXboL0UvoS2LQ2rs+dopcmnpsuFLgraOo0IzCtcu+ISf8Il2CZ3xcyizrCPTb1FDe+oSAsrN+tORXtqLXRqyVy3apxvam+9bN3t65EWRHsFVPo0cwWUtoHoI1F763KdZ7bSVUCseVs5qNgmGr5UDejS33fIcZWs5wxfaQy89hJ97pCgj3Sz3WFn7Zs+LmBuU8mX/+dJ2do8XBIoDri6P9O/KGHCf23/O4oG7XOiwQ5ftK8VWeBLogTvrD5VK+u5oPuhMJW2DoxWqlEw3tnksoTHujAc+vmj1Ua88Unoe0YK7EkoBUzjVfDO20Dsgmy5mttNuQ=
x-ms-office365-filtering-correlation-id: c8616776-fcbe-4700-45b3-08d4c505b86b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(300000503095)(300135400095)(2017052603031)(201703131423075)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:BLUPR15MB0499; 
x-ms-traffictypediagnostic: BLUPR15MB0499:
x-microsoft-antispam-prvs: <BLUPR15MB049931C48F69A57BA88E3C77D0AA0@BLUPR15MB0499.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(151999592597050)(26388249023172)(236129657087228)(48057245064654)(148574349560750)(21748063052155)(247924648384137);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(2017060910059)(93006095)(93001095)(100000703101)(100105400095)(3002001)(10201501046)(6041248)(20161123562025)(20161123560025)(20161123555025)(20161123558100)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(2016111802025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BLUPR15MB0499; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BLUPR15MB0499; 
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39830400002)(39400400002)(39410400002)(39450400003)(6506006)(9686003)(66066001)(99286003)(55016002)(54356999)(50986999)(54896002)(6306002)(25786009)(53936002)(38730400002)(189998001)(110136004)(18717965001)(2900100001)(33656002)(5640700003)(6436002)(2351001)(14454004)(3660700001)(3280700002)(478600001)(7736002)(77096006)(2906002)(86362001)(74316002)(8936002)(8676002)(1730700003)(81166006)(5660300001)(102836003)(9326002)(68736007)(790700001)(6116002)(3846002)(7696004)(5630700001)(2501003)(6916009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR15MB0499;
	H:BLUPR15MB0500.namprd15.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: embedur.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2017 06:59:32.4691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3e7c9d67-afab-4694-94e1-af28129ed65f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR15MB0499
Subject: Uninstall the installed files using bbappend file
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
X-List-Received-Date: Fri, 07 Jul 2017 12:31:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR15MB0500773E0DAC70C6A52CC5FAD0AA0BLUPR15MB0500namp_"

--_000_BLUPR15MB0500773E0DAC70C6A52CC5FAD0AA0BLUPR15MB0500namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

One of the configuration files is installed in the recipe which is present =
in the generic layer. I cannot directly remove the install in the recipe pr=
esent in generic layer as it would affect the other platforms. I would like=
 to define a new bbappend file, which should be uninstalling that particula=
r configuration file which building it for particular target.

Is it possible to do this ? If yes, could you please share how to do this ?=
 Appreciate your help !

Thanks
-Aravindh

--_000_BLUPR15MB0500773E0DAC70C6A52CC5FAD0AA0BLUPR15MB0500namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">One of the configuration files is installed in the r=
ecipe which is present in the generic layer. I cannot directly remove the i=
nstall in the recipe present in generic layer as it would affect the other =
platforms. I would like to define
 a new bbappend file, which should be uninstalling that particular configur=
ation file which building it for particular target.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to do this ? If yes, could you please=
 share how to do this ? Appreciate your help !<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">-Aravindh<o:p></o:p></p>
</div>
</body>
</html>

--_000_BLUPR15MB0500773E0DAC70C6A52CC5FAD0AA0BLUPR15MB0500namp_--
