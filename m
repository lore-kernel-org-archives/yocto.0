Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2176.1578609977506897448
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 14:46:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intusurgops.onmicrosoft.com header.s=selector2-intusurgops-onmicrosoft-com header.b=KBvmLCd3;
 spf=permerror, err=parse error for token &{10 18 spf-001e7101.pphosted.com}: limit exceeded (domain: intusurg.com, ip: 140.211.169.56, mailfrom: daniel.wang@intusurg.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F33BE013AF; Thu,  9 Jan 2020 14:46:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,HTML_MESSAGE,HTTPS_HTTP_MISMATCH,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.244.94 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.1 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2094.outbound.protection.outlook.com [40.107.244.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BFE6E00BB3
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 14:46:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXDahwSI/5HKXM4iCC7v/xTxvWeQyBb8VjFzTgSH2VYR8YqenOpva6YPUNZWrNYrXwvW7e2fwICqpL/b/cioJx/XFgjN6a0ojW6SuvZ5wNLk5XVIgfcWwNq7T+vmIc+arfOGEpCnv62y4qiFzm4UeP14L/oosnIBdrGlTwfHJBlZ+bxccfsqQUISg240pXweSN9IvJzihPQTBeZsnQkpfGU2bUSr544uG80+1v/01GHPLctK0Nu0gNTToxG5aMRSNjIuURrXeb8qpham4xePo86gSG9QxBcQiaXlKs/evTL3IOoaBsabuTBWLKRFhN/wsfbIvgq6Pe4/yNsgMRIDHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JYVbnE61gC4oK4QliirDg0BPOeV4IUCmrn4TUKVDaCM=;
 b=Rkq2Q5i48FJuxodm2bOBoXYibykJCYpfkxSuWGvBa4hKwrUBMGYX0hi4yc9Ykq7+KS5h5oUgeZxcG/RDpT3EQrjGkQXP8alnw9aa62BQvua8/RmLv5vXXCOdcJktpjTUeZ3qZowZPUrX5ewOmTLLbvt4c1gEaRFA1gbTLlnKHmkxd1KNkgO8M5s9YQsHDEMLrciedYWzhg5oyA+QnckdjUGB0QXmk5VD13tkltdVDC6NaBwzGZ6NSvAYzbWwKJHBAD54q0J7Sd9ebKPSZC56Dy6N9WyEikROpKFyRIoZJFxnXJAKnX6zH539nuw94yqvTh2Fl/5bg1B0AePZxSo55w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intusurg.com; dmarc=pass action=none header.from=intusurg.com;
 dkim=pass header.d=intusurg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IntusurgOps.onmicrosoft.com; s=selector2-IntusurgOps-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JYVbnE61gC4oK4QliirDg0BPOeV4IUCmrn4TUKVDaCM=;
 b=KBvmLCd3M/nIry0P1fmv0IFCGQNQWRm8eAgXFjN8fg+O2zf7MjzxHL7l9j9fO6MLQMaxO8pXrHcmnvY1jPMo8QSCBQkWJBZ0NMiPvBzBLzz3F+3Ilk/b4M2DnnDeOavcOBgWfkcKStQnj8P4xDXkTUBbo4WijW0WPNPcxUyL8nw=
Received: from CY4PR01MB2328.prod.exchangelabs.com (10.169.252.16) by
 CY4PR01MB2472.prod.exchangelabs.com (10.173.38.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Thu, 9 Jan 2020 22:46:13 +0000
Received: from CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b]) by CY4PR01MB2328.prod.exchangelabs.com
 ([fe80::e08e:9a14:332e:580b%8]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 22:46:13 +0000
From: "Daniel" <daniel.wang@intusurg.com>
To: akuster808 <akuster808@gmail.com>, Yocto Project Discussion
	<yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: [yocto] Recall: [meta-security][PATCH 1/3] Updates tpm2-abrmd.default and fix indentation in tpm2-abrmd-init.sh
Thread-Topic: [EXTERNAL] Re: [yocto] Recall: [meta-security][PATCH 1/3]
 Updates tpm2-abrmd.default and fix indentation in tpm2-abrmd-init.sh
Thread-Index: AQHVxz5a30kmKsc4GEGp0Wb+vVy+o6fi7l/x
Date: Thu, 9 Jan 2020 22:46:12 +0000
Message-ID: 
 <CY4PR01MB2328BF64C77561FEDE7F1D1A9A390@CY4PR01MB2328.prod.exchangelabs.com>
References: 
 <CY4PR01MB23285D287043F2C030A26F4C9A390@CY4PR01MB2328.prod.exchangelabs.com>,<4a362c81-c8bb-fc14-af08-d27d20274cc2@gmail.com>
In-Reply-To: <4a362c81-c8bb-fc14-af08-d27d20274cc2@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Daniel.Wang@intusurg.com; 
x-originating-ip: [8.36.116.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 430bc9d7-a89d-407e-62fc-08d79555ba85
x-ms-traffictypediagnostic: CY4PR01MB2472:
x-microsoft-antispam-prvs: 
 <CY4PR01MB2472C8AFF00E18B1DA0402BF9A390@CY4PR01MB2472.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(376002)(136003)(39860400002)(346002)(366004)(396003)(189003)(199004)(110136005)(76116006)(66476007)(66616009)(966005)(66446008)(478600001)(64756008)(91956017)(66946007)(71200400001)(316002)(86362001)(66556008)(186003)(52536014)(55016002)(81166006)(81156014)(9686003)(5660300002)(26005)(2906002)(8676002)(6506007)(8936002)(33656002)(15650500001)(53546011)(7696005);DIR:OUT;SFP:1102;SCL:1;SRVR:CY4PR01MB2472;H:CY4PR01MB2328.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: intusurg.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mroqpyCK9FiMFC4RhDlo7yzt7OmOoIM/9nA/nxnVynaVlIsV6P/LFlTVX0hGAcnNos34efpgJJkL4dcJ5PMkHUK3k+MdVxNOTkMROApLKgOGtxjZLJ81XUssYPhnyCKy3LR/oiqlfFNU4BX2xdz0rqtHyq6zvQ5CGyk4X56twd/hSEHwY4CgcXuovp2upTYLxfmV+rhF1M2n1Axjc1uK/1bn1H/M1Pe2UpS0Sevu5G6lQIgnq+AABkl5DM8AGDLerHNcE6m3XcoKXfZsC3+gSt0/aCCqdaO6qcaTCwCvVvxhXe7ZtriXDp7JuQsCxvySmWhZt1GSRr4giuJdE3TWybNxOXTzkh9stYC+5IbJ6e+sLZ6CuNnSTOqxNOg0hdxTgNy5WA+kGFYS4x6YlCY3NI8qg6mlshbms1V7MjTrpl+7l7QewMvLCpigzggBrfAOEyM3F9BxNF+uEK+Ct6atcmx+Zbpl80CkHph3UDN/7DIVuwYgxrJvW2Lf8sknzYkW4QqpAQvZJXnKV63Jyve8lQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: intusurg.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 430bc9d7-a89d-407e-62fc-08d79555ba85
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 22:46:12.8757
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 039caf84-d3e9-4cb9-8b4a-2c2e17a80c19
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ev+m11ZMEV9DvQ1xD3gPufVeYOutQH7rmGtBEs+ZIkKHqPDLicczIRTU+US8ckXsN56Kz8K+cectoA2MJCnEDejrZ9KW+7j2mbmA2IsvY6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2472
X-Groupsio-MsgNum: 47933
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_CY4PR01MB2328BF64C77561FEDE7F1D1A9A390CY4PR01MB2328prod_";
	type="multipart/alternative"

--_004_CY4PR01MB2328BF64C77561FEDE7F1D1A9A390CY4PR01MB2328prod_
Content-Type: multipart/alternative;
	boundary="_000_CY4PR01MB2328BF64C77561FEDE7F1D1A9A390CY4PR01MB2328prod_"

--_000_CY4PR01MB2328BF64C77561FEDE7F1D1A9A390CY4PR01MB2328prod_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thank you Armin. I submitted 3 patches. Please kindly ignore the recall mes=
sages. I=92m sorry for bugging the mailinglist It is some weird IT thingy.

Thanks
-Daniel

From: akuster808<mailto:akuster808@gmail.com>
Sent: Thursday, January 9, 2020 2:44 PM
To: Daniel Wang<mailto:Daniel.Wang@intusurg.com>; Yocto Project Discussion=
<mailto:yocto@yoctoproject.org>
Subject: [EXTERNAL] Re: [yocto] Recall: [meta-security][PATCH 1/3] Updates=
 tpm2-abrmd.default and fix indentation in tpm2-abrmd-init.sh

thank you for letting me know.

kind regards,
Armin
On 1/9/20 1:15 PM, Daniel wrote:

Daniel Wang would like to recall the message, "[meta-security][PATCH 1/3] =
Updates tpm2-abrmd.default and fix indentation in  tpm2-abrmd-init.sh".






NOTE THAT THIS EMAIL ORIGINATED FROM OUTSIDE OF INTUITIVE SURGICAL..
Be alert for fraudulent emails that spoof internal =93@intusurg.com=94 ema=
il addresses. Report these or other security threats to: ITHelpNow@intusurg=
.com.


--_000_CY4PR01MB2328BF64C77561FEDE7F1D1A9A390CY4PR01MB2328prod_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-=
1252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aria;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Thank you Armin. I submitted 3 patches. Please kind=
ly ignore the recall messages. I=92m sorry for bugging the mailinglist It i=
s some weird IT thingy.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">-Daniel<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-top:solid #E1=
E1E1 1.0pt;padding:3.0pt 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><b>From: </b><a h=
ref=3D"mailto:akuster808@gmail.com">akuster808</a><br>
<b>Sent: </b>Thursday, January 9, 2020 2:44 PM<br>
<b>To: </b><a href=3D"mailto:Daniel.Wang@intusurg.com">Daniel Wang</a>; <a=
 href=3D"mailto:yocto@yoctoproject.org">
Yocto Project Discussion</a><br>
<b>Subject: </b>[EXTERNAL] Re: [yocto] Recall: [meta-security][PATCH 1/3] =
Updates tpm2-abrmd.default and fix indentation in tpm2-abrmd-init.sh</p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">thank you for lettin=
g me know.<br>
<br>
kind regards,<br>
Armin<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 1/9/20 1:15 PM, Daniel wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<pre>Daniel Wang would like to recall the message, &quot;[meta-security][P=
ATCH 1/3] Updates tpm2-abrmd.default and fix indentation in&nbsp; tpm2-abrm=
d-init.sh&quot;.</pre>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<pre></pre>
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"566" height=3D"1" style=
=3D"width:5.9in;height:.0083in" id=3D"Horizontal_x0020_Line_x0020_1" src=
=3D"cid:image001.png@01D5C6FB.87F02190"><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;A=
ria&quot;,serif;color:red">NOTE THAT THIS EMAIL ORIGINATED FROM OUTSIDE OF =
INTUITIVE SURGICAL..<br>
Be alert for fraudulent emails that spoof internal =93@intusurg.com=94 ema=
il addresses. Report these or other security threats to: ITHelpNow@intusurg=
.com.</span>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CY4PR01MB2328BF64C77561FEDE7F1D1A9A390CY4PR01MB2328prod_--

--_004_CY4PR01MB2328BF64C77561FEDE7F1D1A9A390CY4PR01MB2328prod_
Content-Type: image/png; name="96B5E928B2EA476D8F3B99E45204086A.png"
Content-Description: 96B5E928B2EA476D8F3B99E45204086A.png
Content-Disposition: inline; filename="96B5E928B2EA476D8F3B99E45204086A.png";
	size=140; creation-date="Thu, 09 Jan 2020 22:46:12 GMT";
	modification-date="Thu, 09 Jan 2020 22:46:12 GMT"
Content-ID: <image001.png@01D5C6FB.87F02190>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAsQAAAABCAYAAADZ77itAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAhSURBVEhL7cMBDQAACAMg+5cygQkeRoMIG9WT
VVXVn7MHYi5moJeByLMAAAAASUVORK5CYII=

--_004_CY4PR01MB2328BF64C77561FEDE7F1D1A9A390CY4PR01MB2328prod_--
