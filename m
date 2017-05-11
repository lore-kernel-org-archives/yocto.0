Return-Path: <Richard.Schmitt@commscope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 570A0E0095F; Thu, 11 May 2017 08:55:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.33.82 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 8274 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 May 2017 08:55:40 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0082.outbound.protection.outlook.com [104.47.33.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3B45E007EE
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 08:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=commscope.onmicrosoft.com; s=selector1-commscope-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=l4geL7nVtgMnLvCuWbkgg48YcpLO3mNGF0MDjSLDl84=;
	b=LX2UlnMQ+PgdxIpbRAZrlaaCmGQkdZxgctQj+cb594RowANJidHQQUgadfykEY2vqngRjoyTWOHxpM5tr6uvw8uh24WYQ1Y8NMMq6/YU3cXdvyxkp8F3qIKswGhNLs0BjCwbqZXqoUmukxg1jORKHxrHLUlvCmcWC4VSUG8UvNc=
Received: from CY4PR06MB2616.namprd06.prod.outlook.com (10.173.39.22) by
	CY4PR06MB2614.namprd06.prod.outlook.com (10.173.39.20) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1084.16; Thu, 11 May 2017 13:22:45 +0000
Received: from CY4PR06MB2616.namprd06.prod.outlook.com ([10.173.39.22]) by
	CY4PR06MB2616.namprd06.prod.outlook.com ([10.173.39.22]) with mapi id
	15.01.1084.020; Thu, 11 May 2017 13:22:45 +0000
From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [sstate question] How does SSTATE_CACHE work when shared?
Thread-Index: AdLKV9qvja9MqRVVTwyxIyLtikCmwg==
Date: Thu, 11 May 2017 13:22:45 +0000
Message-ID: <CY4PR06MB26169AEB73B583DD03D6FF25E6ED0@CY4PR06MB2616.namprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=commscope.com;
x-originating-ip: [131.239.32.100]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY4PR06MB2614;
	7:Ng+ATJURbJ7KU/T2Z2zsWU/5Ui02I88ND5Na6NOqwpHwWn4uMgHXkALq6UixD2ZEHq0iPp4XDw0NNU0B23DBEcmafM3R3IT/XNtEgnzHgXmLQKMRGV9Rn7ctVzVQee7V+YSe9b3+sPHLtbOCWfgwR/z3ZM4wqUBfMYkRP50QMHQ9nsZOwveb85Os+nM7WDMEZjYBHiJN6Vetz9BGhEkL/E0zr3A3XKpgI+RbdlcK9Weh1vyyqdJF7a61f+wCCCTFb2sLQEMrc2rlVGzSLycy2uZGXzB1LiKQCT1FBgqJH0oTNTCgJpnwiCYJZ4Ec7TUBbcHkakkh6CGf2PiyrLnNbw==
x-ms-office365-filtering-correlation-id: 7cf15415-123f-4bad-8b59-08d49870cfba
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);
	SRVR:CY4PR06MB2614; 
x-microsoft-antispam-prvs: <CY4PR06MB2614CE5DC26EBAB673A66F3DE6ED0@CY4PR06MB2614.namprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(6041248)(20161123560025)(20161123558100)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123562025)(6072148);
	SRVR:CY4PR06MB2614; BCL:0; PCL:0; RULEID:; SRVR:CY4PR06MB2614; 
x-forefront-prvs: 0304E36CA3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39850400002)(39410400002)(39400400002)(39840400002)(39450400003)(25786009)(8936002)(2900100001)(55016002)(53936002)(6916009)(99286003)(8676002)(1730700003)(81166006)(5630700001)(7696004)(72206003)(6306002)(54896002)(5660300001)(3280700002)(7736002)(74316002)(2906002)(3660700001)(66066001)(122556002)(189998001)(86362001)(33656002)(38730400002)(54356999)(50986999)(478600001)(2501003)(110136004)(2351001)(6436002)(6506006)(9686003)(5640700003)(77096006)(102836003)(6116002)(790700001)(3846002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR06MB2614;
	H:CY4PR06MB2616.namprd06.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: commscope.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2017 13:22:45.2118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31472f81-8fe4-49ec-8bc3-fa1c295640d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR06MB2614
Subject: [sstate question] How does SSTATE_CACHE work when shared?
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
X-List-Received-Date: Thu, 11 May 2017 15:55:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR06MB26169AEB73B583DD03D6FF25E6ED0CY4PR06MB2616namp_"

--_000_CY4PR06MB26169AEB73B583DD03D6FF25E6ED0CY4PR06MB2616namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The writeup in section 4.3.3 of the Yocto reference manual is quite good bu=
t I'm still left with a question that I'm hoping someone can shed some ligh=
t into.

We have the SSTATE_CACHE set up as a shared directory on a build machine.  =
This means that multiple developers with their own workspaces will all shar=
e the same SSTATE_CACHE.  What is not clear is how, or whether the build ar=
tifacts are actually shared between developers.

An example of our problem.  We are using a Xilinx BSP.  There is a recipe, =
device-tree-generation, that will deploy dtb files to the DEPLOY_IMAGE_DIR.=
  We are running into a case where other developers builds will fail when t=
hey run a task (in u-boot-xlnx) which depends on the dtb file being availab=
le in DEPLOY_IMAGE_DIR.  My assumption is that the shared state cache indic=
ated that the dtb file did not need to be rebuilt because none of the depen=
dencies changed, hence its signature had not changed.  But, it doesn't actu=
ally exist in the users workspace (tmp/deploy/images).

Do I understand this correctly?  Is there some step or configuration that I=
'm missing?  What is supposed to happen?  Is some magic supposed to copy a =
previous version of the dtb to the local deploy directory?  Is there someth=
ing that was supposed invalidate the cache for the local user?  We can work=
 around this by forcing the developer to execute a cleansstate on device-tr=
ee-generation but what is going wrong.

Thanks,
Rich

--_000_CY4PR06MB26169AEB73B583DD03D6FF25E6ED0CY4PR06MB2616namp_
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
<p class=3D"MsoNormal">The writeup in section 4.3.3 of the Yocto reference =
manual is quite good but I&#8217;m still left with a question that I&#8217;=
m hoping someone can shed some light into.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have the SSTATE_CACHE set up as a shared director=
y on a build machine.&nbsp; This means that multiple developers with their =
own workspaces will all share the same SSTATE_CACHE.&nbsp; What is not clea=
r is how, or whether the build artifacts are
 actually shared between developers.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">An example of our problem.&nbsp; We are using a Xili=
nx BSP.&nbsp; There is a recipe, device-tree-generation, that will deploy d=
tb files to the DEPLOY_IMAGE_DIR.&nbsp; We are running into a case where ot=
her developers builds will fail when they run a task
 (in u-boot-xlnx) which depends on the dtb file being available in DEPLOY_I=
MAGE_DIR.&nbsp; My assumption is that the shared state cache indicated that=
 the dtb file did not need to be rebuilt because none of the dependencies c=
hanged, hence its signature had not changed.&nbsp;
 But, it doesn&#8217;t actually exist in the users workspace (tmp/deploy/im=
ages).&nbsp;&nbsp; <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do I understand this correctly?&nbsp; Is there some =
step or configuration that I&#8217;m missing?&nbsp; What is supposed to hap=
pen?&nbsp; Is some magic supposed to copy a previous version of the dtb to =
the local deploy directory?&nbsp; Is there something that was
 supposed invalidate the cache for the local user?&nbsp; We can work around=
 this by forcing the developer to execute a cleansstate on device-tree-gene=
ration but what is going wrong.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Rich<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY4PR06MB26169AEB73B583DD03D6FF25E6ED0CY4PR06MB2616namp_--
