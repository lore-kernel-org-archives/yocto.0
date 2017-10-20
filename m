Return-Path: <umamahesh.y@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 510AAE00D46; Thu, 19 Oct 2017 19:17:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.8.186.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from GWS08.hcl.com (gws08.hcl.com [192.8.186.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 870A9E00D41
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 19:17:33 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.43,404,1503340200"; d="scan'208,217";a="77188918"
Received: from unknown (HELO CHN-CORP-HT01.CORP.HCL.IN) ([10.249.2.33])
	by GWS08.hcl.com with ESMTP/TLS/AES128-SHA; 20 Oct 2017 07:47:25 +0530
Received: from CHN-CORP-EDGE1.CORP.HCL.COM (10.249.1.159) by
	CHN-CORP-HT01.CORP.HCL.IN (10.249.2.33) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Fri, 20 Oct 2017 07:47:24 +0530
Received: from APC01-SG2-obe.outbound.protection.outlook.com (65.55.88.247) by
	transportedge.hcl.com (10.249.1.159) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Fri, 20 Oct 2017 07:46:22 +0530
Received: from PS1PR04MB1001.apcprd04.prod.outlook.com (10.165.36.157) by
	PS1PR04MB1004.apcprd04.prod.outlook.com (10.165.37.12) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 20 Oct 2017 02:17:21 +0000
Received: from PS1PR04MB1001.apcprd04.prod.outlook.com
	([fe80::d535:2497:5e3d:5a67]) by
	PS1PR04MB1001.apcprd04.prod.outlook.com
	([fe80::d535:2497:5e3d:5a67%14]) with mapi id 15.20.0077.022;
	Fri, 20 Oct 2017 02:17:21 +0000
From: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Lib /modules not listed
Thread-Index: AQHTSKTQ4/fG80FiSEm2qpw5SizzgqLrVkOAgACrkBo=
Date: Fri, 20 Oct 2017 02:17:21 +0000
Message-ID: <PS1PR04MB1001C2E9CD03C2057FDB1345E6430@PS1PR04MB1001.apcprd04.prod.outlook.com>
References: <HK2PR04MB0995ED6B87A86B870E56094CE6420@HK2PR04MB0995.apcprd04.prod.outlook.com>,
	<CAMKF1srpHbFOM2_56WcRCHzb2nAi6Lvw4RtYZtW2c-vk9n_cig@mail.gmail.com>
In-Reply-To: <CAMKF1srpHbFOM2_56WcRCHzb2nAi6Lvw4RtYZtW2c-vk9n_cig@mail.gmail.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=umamahesh.y@hcl.com; 
x-originating-ip: [13.90.30.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; PS1PR04MB1004;
	6:zq8yBVdQ/iCgop13jGICib07/bptVcxuPP88RlzmyJ2/EfHNL/mCOBxloITDljIA5syNI+0GYM5CaJzSiu8qMMNVkPAhnJpmyPoN6WfS0gcNbZxPo/yqW62UxawU+r0kNz+19DlJTIGqxrkCAVjlQFqtjkzVVK+QOrk9/g1JFrKIxC147NtET8gc+R6gitCJZ4wfQIV3W2femEL7sV1n5yQT/+9gACxssAaF7NGyTlkzZb9kUPUF7XchRBNKUa4FJfyzum7ampaZqera2sy2463yB4xvAupgOIXjH3v3FwzMnG7lz+9xbrZAgZSxtt2LOmRY9NeCKiQC9jSwvX5qrQ==;
	5:d8coAVAnG0DRdUUpGWJJi5XmKx+Ro9qOICa6mXdhiqBnaezuzWhWU9V2qyrNUkgjDH/Jk7m47jyvrjOW9PmZf8tHPiVriVYGcZQWEa4dIcLeFSYGEBFFx2Ua9XVroSqfwI1cfEpCiqguscCIrYEEsA==;
	24:M4DIyZbT9c46BRPjfmVlkPJPgt/BTPUZeMe2XGWzsxaoYuWbmV5eB+LlqTETeBKJJLPgZoaIOAbGxbW9SbHDo6lXFeUOS3ChxHLMK3lZJTc=;
	7:WnrcYm0s43TVOwLy7OGw1pzHEzNEGNYJMQXpEF3o864PoR0AkcJBJnV03pu75NoHBadotzXyKo0Fe36SadEFeT80meKjrWcDcK7gQweDDLkJPlve9Qs9cWXp0bw5vJcLmaiDHsu0qtJKKQNYJJBmcreg9jriIka+OboqSNvDuUUN1fRKoI4DmftLO7Xk1wEaMFVJbTHLWZ2lhNPYmn/Si8aYARQR0nGXlOSSIN/r4cY=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 88bfd873-5fa0-4498-4194-08d51760b239
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627075)(201703031133081)(201702281549075)(2017052603199);
	SRVR:PS1PR04MB1004; 
x-ms-traffictypediagnostic: PS1PR04MB1004:
x-exchange-antispam-report-test: UriScan:(158342451672863)(3501301888747);
x-microsoft-antispam-prvs: <PS1PR04MB1004337B4BAACB9708169351E6430@PS1PR04MB1004.apcprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(3002001)(93006095)(93001095)(3231020)(6041248)(20161123562025)(20161123555025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123560025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:PS1PR04MB1004; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:PS1PR04MB1004; 
x-forefront-prvs: 0466CA5A45
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(346002)(199003)(24454002)(189002)(38564003)(81156014)(6436002)(5250100002)(189998001)(6246003)(7696004)(101416001)(5890100001)(6916009)(55016002)(5660300001)(54896002)(3660700001)(99286003)(6306002)(66066001)(9686003)(229853002)(97736004)(2950100002)(8676002)(39060400002)(25786009)(86362001)(236005)(33656002)(2900100001)(6506006)(3280700002)(74316002)(68736007)(2906002)(53546010)(106356001)(7736002)(102836003)(14454004)(81166006)(4326008)(8936002)(54356999)(105586002)(478600001)(966005)(606006)(3846002)(76176999)(53936002)(6116002)(316002)(50986999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:PS1PR04MB1004;
	H:PS1PR04MB1001.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:3; LANG:en; 
received-spf: None (protection.outlook.com: hcl.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2017 02:17:21.2657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR04MB1004
X-OriginatorOrg: HCL.COM
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Lib /modules not listed
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
X-List-Received-Date: Fri, 20 Oct 2017 02:17:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PS1PR04MB1001C2E9CD03C2057FDB1345E6430PS1PR04MB1001apcp_"

--_000_PS1PR04MB1001C2E9CD03C2057FDB1345E6430PS1PR04MB1001apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I already tried adding it local.conf, didn't work.

Thanks
UmaMahesh

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Thursday, October 19, 2017 9:33:17 PM
To: Umamahesh Yelchuruvenkata
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Lib /modules not listed

On Wed, Oct 18, 2017 at 11:38 PM, Umamahesh Yelchuruvenkata
<umamahesh.y@hcl.com> wrote:
> Hi
> At the target lib/modules is not listing and lsmod is not tainted.
> Any suggestions.

Add kerne-modules to your image may be via IMAGE_INSTALL

>
> Thanks
> UmaMahesh
>
>
>
> ::DISCLAIMER::
> -------------------------------------------------------------------------=
---------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and
> intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as
> information could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any liabilit=
y
> on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of th=
e
> author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction,
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior writt=
en
> consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error plea=
se
> delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for viruse=
s
> and other defects.
>
> -------------------------------------------------------------------------=
---------------------------------------------------------------------------
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--_000_PS1PR04MB1001C2E9CD03C2057FDB1345E6430PS1PR04MB1001apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
Hi, <br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
I already tried adding it local.conf, didn't work. <br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
Thanks<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black; background-color:white">
UmaMahesh </div>
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Sent:</b> Thursday, October 19, 2017 9:33:17 PM<br>
<b>To:</b> Umamahesh Yelchuruvenkata<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Lib /modules not listed</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Wed, Oct 18, 2017 at 11:38 PM, Umamahesh Yelchu=
ruvenkata<br>
&lt;umamahesh.y@hcl.com&gt; wrote:<br>
&gt; Hi<br>
&gt; At the target lib/modules is not listing and lsmod is not tainted.<br>
&gt; Any suggestions.<br>
<br>
Add kerne-modules to your image may be via IMAGE_INSTALL<br>
<br>
&gt;<br>
&gt; Thanks<br>
&gt; UmaMahesh<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ::DISCLAIMER::<br>
&gt; ----------------------------------------------------------------------=
---------------------------------------------------------------------------=
---<br>
&gt;<br>
&gt; The contents of this e-mail and any attachment(s) are confidential and=
<br>
&gt; intended for the named recipient(s) only.<br>
&gt; E-mail transmission is not guaranteed to be secure or error-free as<br=
>
&gt; information could be intercepted, corrupted,<br>
&gt; lost, destroyed, arrive late or incomplete, or may contain viruses in<=
br>
&gt; transmission. The e mail and its contents<br>
&gt; (with or without referred errors) shall therefore not attach any liabi=
lity<br>
&gt; on the originator or HCL or its affiliates.<br>
&gt; Views or opinions, if any, presented in this email are solely those of=
 the<br>
&gt; author and may not necessarily reflect the<br>
&gt; views or opinions of HCL or its affiliates. Any form of reproduction,<=
br>
&gt; dissemination, copying, disclosure, modification,<br>
&gt; distribution and / or publication of this message without the prior wr=
itten<br>
&gt; consent of authorized representative of<br>
&gt; HCL is strictly prohibited. If you have received this email in error p=
lease<br>
&gt; delete it and notify the sender immediately.<br>
&gt; Before opening any email and/or attachments, please check them for vir=
uses<br>
&gt; and other defects.<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
---------------------------------------------------------------------------=
---<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div>
</span></font>
</body>
</html>

--_000_PS1PR04MB1001C2E9CD03C2057FDB1345E6430PS1PR04MB1001apcp_--
