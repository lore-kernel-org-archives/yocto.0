Return-Path: <aravindhlalgss@embedur.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43CB4E00961; Wed, 26 Apr 2017 11:30:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, RCVD_IN_SBL_CSS,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 3.3 RCVD_IN_SBL_CSS RBL: Received via a relay in Spamhaus
	SBL-CSS *      [171.49.188.62 listed in zen.spamhaus.org]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.41.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 12713 seconds by postgrey-1.32 at yocto-www;
	Wed, 26 Apr 2017 11:30:53 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0083.outbound.protection.outlook.com [104.47.41.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E84BDE00812
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 11:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=embedur.onmicrosoft.com; s=selector1-embedur-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=IKBm09yhYd6QUAM6N7AImN2z5PDUfiYkD3y3nHP8XEc=;
	b=nlq3Mz4KnZj4XP3mgTSsprbXf0tqfedhGbSQSR6DGinBn7j4TJ3tECDS+utMyeFvdnVXCP0f9LJwT8vCcm8Jj88nOA/dZZDIupnklH95mi81+cVNiijMmm3xZrLOKAlREMlTaQLB6ou2kRToFjCnKpGu/VPQEOZcij6bb4DxdW8=
Received: from BLUPR15MB0500.namprd15.prod.outlook.com (10.163.214.30) by
	BLUPR15MB0498.namprd15.prod.outlook.com (10.163.214.28) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.13; Wed, 26 Apr 2017 14:58:58 +0000
Received: from BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) by
	BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) with mapi id
	15.01.1047.019; Wed, 26 Apr 2017 14:58:58 +0000
From: Aravindhlal G.S.S <aravindhlalgss@embedur.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Recipe changes to pull/fetch the source code from local instead
	of a remote server.
Thread-Index: AdK+nZeqRgzitEp4Q3KhNXx8GvSpAw==
Date: Wed, 26 Apr 2017 14:58:58 +0000
Message-ID: <BLUPR15MB050096D2E6998495D4578FDBD0110@BLUPR15MB0500.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=embedur.com;
x-originating-ip: [171.49.188.62]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BLUPR15MB0498;
	7:ZPYiJFSRbY4BmefyC7tVen5PuaoevIiG0RFv/+1MN2l4cZdCF2rsPunQokPL6DicbwPa8KIrh5XgosP3EHvIYk+vbIJwxeaYYuiUCQ0wxlXE0+g1YnVYtKP7MyvzIQh1xMSa3gYeD4Ty6XDIyzmWXmyrGZq0hu7FlX/3QhDWr8pY+yFC8Ypwi6JlgLjVBFHeW4CVM0WfcXhb3qURVFvJzkUMTujkWyXmpIgBmYsNdt4MOCHYpPPnXjv5NYj4SXP9Wp1CiI2U3bdyWKj1nRYBy6ew+9hy+wgKx+tZvrxYARMfKnRozSdWJLbPAbzRArQEBUchudTT+i0TSZiTOThACg==
x-ms-office365-filtering-correlation-id: 07deeab0-b0e9-4394-1d53-08d48cb4c464
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075);
	SRVR:BLUPR15MB0498; 
x-microsoft-antispam-prvs: <BLUPR15MB049809A2AC15C145CAD7865ED0110@BLUPR15MB0498.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(6041248)(201703131423075)(201702281528075)(201703061421075)(2016111802025)(20161123564025)(20161123560025)(20161123555025)(20161123562025)(6043046)(6072148);
	SRVR:BLUPR15MB0498; BCL:0; PCL:0; RULEID:; SRVR:BLUPR15MB0498; 
x-forefront-prvs: 0289B6431E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39410400002)(39400400002)(39830400002)(39450400003)(57704003)(38730400002)(53936002)(110136004)(9326002)(54896002)(9686003)(8936002)(99286003)(6306002)(5640700003)(6116002)(86362001)(74316002)(2906002)(1730700003)(2351001)(3846002)(18717965001)(6506006)(81166006)(189998001)(102836003)(55016002)(77096006)(7696004)(6436002)(6916009)(3280700002)(66066001)(790700001)(8676002)(3660700001)(2900100001)(2501003)(33656002)(25786009)(5630700001)(7736002)(122556002)(54356999)(5660300001)(50986999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR15MB0498;
	H:BLUPR15MB0500.namprd15.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: embedur.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2017 14:58:58.0217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3e7c9d67-afab-4694-94e1-af28129ed65f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR15MB0498
Subject: Recipe changes to pull/fetch the source code from local instead of a remote server.
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
X-List-Received-Date: Wed, 26 Apr 2017 18:30:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR15MB050096D2E6998495D4578FDBD0110BLUPR15MB0500namp_"

--_000_BLUPR15MB050096D2E6998495D4578FDBD0110BLUPR15MB0500namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Experts,

I am trying to make changes in the bitbake files(recipes) to pull/fetch the=
 source code from the local instead of the remote server. The SRC_URI point=
s to the local workspace, however I see that while building the source code=
 is pulled from a remote repository.

Do I need to make any specific changes in the recipes or any conf files und=
er build directory (auto.conf) ? Could you please let me your pointers/sugg=
estions ?

Appreciate your help.

Thanks
-Aravindh


--_000_BLUPR15MB050096D2E6998495D4578FDBD0110BLUPR15MB0500namp_
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
<p class=3D"MsoNormal">Hi Experts,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to make changes in the bitbake files(rec=
ipes) to pull/fetch the source code from the local instead of the remote se=
rver. The SRC_URI points to the local workspace, however I see that while b=
uilding the source code is pulled
 from a remote repository. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do I need to make any specific changes in the recipe=
s or any conf files under build directory (auto.conf) ? Could you please le=
t me your pointers/suggestions ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Appreciate your help.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">-Aravindh<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BLUPR15MB050096D2E6998495D4578FDBD0110BLUPR15MB0500namp_--
