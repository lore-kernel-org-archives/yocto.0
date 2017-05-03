Return-Path: <aravindhlalgss@embedur.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F07CDE00ACE; Tue,  2 May 2017 23:51:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.55 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3648 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 May 2017 23:51:02 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0055.outbound.protection.outlook.com [104.47.38.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83B15E00AA2
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 23:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=embedur.onmicrosoft.com; s=selector1-embedur-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=AcoEKCoV7fF+8nmgKPY6kFsZyrpWoGttalQN6xJcP7s=;
	b=JQBMeP7hGTCAA3thFiBszU6+QyQI4vcq4yHpmoW8bhN2hWlWXwpuCIRHrIlK8VTjUEop/WJC71992HFlVOx62nXBE17y9ZDRwQPKKVag8pE+6dUjbpi4mZ7hlkSPwCOgvfigxIiuHACeo//pEUeMnB/Jj10dG85mt3aMhRM9w5M=
Received: from BLUPR15MB0500.namprd15.prod.outlook.com (10.163.214.30) by
	BLUPR15MB0500.namprd15.prod.outlook.com (10.163.214.30) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1061.12; Wed, 3 May 2017 05:16:17 +0000
Received: from BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) by
	BLUPR15MB0500.namprd15.prod.outlook.com ([10.163.214.30]) with mapi id
	15.01.1061.021; Wed, 3 May 2017 05:16:16 +0000
From: Aravindhlal G.S.S <aravindhlalgss@embedur.com>
To: Aravindhlal G.S.S <aravindhlalgss@embedur.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Recipe changes to pull/fetch the source code from local instead
	of a remote server.
Thread-Index: AdK+nZeqRgzitEp4Q3KhNXx8GvSpAwFLrpxw
Date: Wed, 3 May 2017 05:16:16 +0000
Message-ID: <BLUPR15MB05005784FB3B95086523368AD0160@BLUPR15MB0500.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: embedur.com; dkim=none (message not signed)
	header.d=none; embedur.com;
	dmarc=none action=none header.from=embedur.com; 
x-originating-ip: [202.71.146.8]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BLUPR15MB0500;
	7:R4u+jfRAMKD/3YEwmj7aus0odpvCWRqWW19ICcFTWukxOhjjmAXk9MsfX0MLsNi6mgpaTjW7X8EhDgT7C0Sg3Tql4yIHGQ/H5fYwICdg2Iv+vA+dFZQCDSDQ0Zav/+7hrzXw1N4jgHzEsOkvbun2nQQnQ5n52JfFXPggCpSHF7rKj6ToeERMJu455Y10DpJLeDKR8hEM87c1r8I+PfNfdP4hEBU7KI5pG3E7HX6dxm1Hd2py2RASIySVoxshCfmAROMS6X/7kxKgUT/50sU22Gdan4ekGa5s4Npt8zgMd+AqHRNcIpsDeUxGU0nnKrIpnmeCsUTc2HxOZfLAWiPc5A==
x-forefront-antispam-report: SFV:SKI; SCL:-1SFV:NSPM;
	SFS:(10009020)(6009001)(39410400002)(39840400002)(39450400003)(39400400002)(57704003)(53936002)(3660700001)(6306002)(9686003)(86362001)(6246003)(3280700002)(55016002)(229853002)(54896002)(790700001)(3846002)(38730400002)(6506006)(33656002)(53546009)(8676002)(77096006)(102836003)(6116002)(7696004)(25786009)(2501003)(6436002)(99286003)(18717965001)(5660300001)(2900100001)(74316002)(66066001)(122556002)(7736002)(8936002)(189998001)(478600001)(54356999)(81166006)(50986999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR15MB0500;
	H:BLUPR15MB0500.namprd15.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-ms-office365-filtering-correlation-id: bd6aa304-f50f-46d1-c097-08d491e38697
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075);
	SRVR:BLUPR15MB0500; 
x-microsoft-antispam-prvs: <BLUPR15MB050035A13D008ED81C0F13FDD0160@BLUPR15MB0500.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(6041248)(20161123560025)(20161123558100)(20161123555025)(2016111802025)(20161123562025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(6043046);
	SRVR:BLUPR15MB0500; BCL:0; PCL:0; RULEID:; SRVR:BLUPR15MB0500; 
x-forefront-prvs: 029651C7A1
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: embedur.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2017 05:16:16.6684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3e7c9d67-afab-4694-94e1-af28129ed65f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR15MB0500
Subject: Re: Recipe changes to pull/fetch the source code from local instead of a remote server.
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
X-List-Received-Date: Wed, 03 May 2017 06:51:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR15MB05005784FB3B95086523368AD0160BLUPR15MB0500namp_"

--_000_BLUPR15MB05005784FB3B95086523368AD0160BLUPR15MB0500namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

[Gentle reminder]

Can someone help me here, please ?

Thanks
-Aravindh

From: Aravindhlal G.S.S
Sent: 26 April 2017 20:29
To: yocto@yoctoproject.org
Subject: Recipe changes to pull/fetch the source code from local instead of=
 a remote server.

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


--_000_BLUPR15MB05005784FB3B95086523368AD0160BLUPR15MB0500namp_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[Gentle reminder]<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Can someone help me he=
re, please ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-Aravindh<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D"><o:p>&nbsp;</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> Aravindhlal G.S.S
<br>
<b>Sent:</b> 26 April 2017 20:29<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Recipe changes to pull/fetch the source code from local ins=
tead of a remote server.<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_BLUPR15MB05005784FB3B95086523368AD0160BLUPR15MB0500namp_--
