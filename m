Return-Path: <adolfo_sm_cr@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D163E0102F; Tue,  6 Sep 2016 19:23:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adolfo_sm_cr[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.216 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Sep 2016 19:23:38 PDT
Received: from BAY004-OMC4S14.hotmail.com (bay004-omc4s14.hotmail.com
	[65.54.190.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4C6EE00E46
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 19:23:38 -0700 (PDT)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com ([65.54.190.200])
	by BAY004-OMC4S14.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 6 Sep 2016 19:22:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=22jSPQdfd9/kLu8aNfQYgguQ86qtgJf8l8aAJbloSe0=;
	b=t2ZpN9OKI4Oi/XTa0zeDQP/Yp8LMplqcmtpo9iRxsJ7txl9zj4nymWH5wIKM5go5LJJSscvOPEPXIm0Qpr/VZxLIFA6rwK5JANN+O9Z7xCyrI8A+AmzT53+UddZydaoGaDNfh5Z9TkztvsPZnsxsvCBExHN45Gu+IpChyGVQv4nvtf13GQ7hC5pw+KMiFLNFU6TdA5Dcumwt3gn3N9aUZQlBMu25oc0zeJfFTBGZdZUtB8SVFc6uf6+33T23Wx7qpbXdp1InbS1gXxBaH6O0GqkjqwM0ecNENIpIFMQ5t16vBhNkrJAq9wcAj/bEjjVssVeh1kU1cduz1ATI3h7lkw==
Received: from SN1NAM02FT018.eop-nam02.prod.protection.outlook.com
	(10.152.72.60) by SN1NAM02HT247.eop-nam02.prod.protection.outlook.com
	(10.152.73.238) with Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id 15.1.587.6;
	Wed, 7 Sep 2016 02:22:36 +0000
Received: from SN2PR10MB0094.namprd10.prod.outlook.com (10.152.72.58) by
	SN1NAM02FT018.mail.protection.outlook.com (10.152.72.122) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.587.6 via Frontend Transport; Wed, 7 Sep 2016 02:22:36 +0000
Received: from SN2PR10MB0094.namprd10.prod.outlook.com ([10.160.60.146]) by
	SN2PR10MB0094.namprd10.prod.outlook.com ([10.160.60.146]) with mapi id
	15.01.0599.016; Wed, 7 Sep 2016 02:22:35 +0000
From: Adolfo Sanchez <adolfo_sm_cr@hotmail.com>
To: xerofoify <xerofoify@gmail.com>
Thread-Topic: [yocto] Failing build following Quick Start
Thread-Index: AQHSCD+1aNYubT5qGU+TFi0wOyccI6Bsm5aAgACrFhE=
Date: Wed, 7 Sep 2016 02:22:35 +0000
Message-ID: <SN2PR10MB00940D62C2AD81857308535ACFF80@SN2PR10MB0094.namprd10.prod.outlook.com>
References: <SN2PR10MB009442733EA473DB41981EB1CFF90@SN2PR10MB0094.namprd10.prod.outlook.com>,
	<CAPDOMVhBu=nEJZM1FSfiiS=e-BfmQy8tVKPb7MajUUfQQBps1w@mail.gmail.com>
In-Reply-To: <CAPDOMVhBu=nEJZM1FSfiiS=e-BfmQy8tVKPb7MajUUfQQBps1w@mail.gmail.com>
Accept-Language: es-CR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.72.58)
	smtp.mailfrom=hotmail.com; gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com; dmarc=fail action=none header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.72.58 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [fhdeiwuaXY8wuDcHWCAc1HWJ+MgBDoAY]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; SN1NAM02HT247;
	6:FI5eoY6CvUNbYgQSoIxttCME70E1/AfPC3kLilTyv5urlgmU5u4HCzl47bx7GjyRshn9o5XOCkPjdT2n7IVnhZcqz7ty9WGONRQYQBOeI9hQfQtB3eCCSrItzebKfq5m8oaaKS4ZsYhmsPRruwMKx1Q70i6cfqeCh/PfFBCadP5xRJtpSjtZh/1SRVacci2ZiAi1JhLEImADCFJOEyRBezMtRELgA/UqBDlvaFeeT7gmCUEQgq9iLwrP8In5u/pl9TNTVRPSVj+egeAyjpuGGnPFfzimDZrrPwGfiO0nc23GX3bibS0s/+e3FrJyDSeZ;
	5:aBu4hKyJWBrQBUdjvivt8KFcmIR7VBvXtyGqp2vU6Kmx9IBN1qlHHKXvJXJNvIAcXG8zVkm+2HqX/veknqVDgJfketl8ePGoseGyAoE7w/kzU+9Pq+ilPKLxUzO/uN+n0SbImJBdyOAE8+m3028BDg==;
	24:dBbZs/09R5ImiQVMV0tltDOq8MdmqZlP2eCUiebV7qL4QF/8Q0TU/BrEhq96LFCgbf2cvnjyrHcCmUXEBlazJHnzb+2ze13keiYiKsPzO/o=;
	7:RBuaI99kmu07Zb437zShvgqMjyf8SXs0wt8ur3VUII966/mqUYhwr/BgMC2AcvU0ytmmYLbnpqwISGx9oXFsjwW9U5fKzrtkDLuHB8Db7STmqyb4OmjZByQArRpxkwK8b80bx2i3gTGH88Tn7YOI8J5/MU728cg//rzz3pPCG3CllCzNQBB5/9T228geL5CEbo1qIXfm7gOAwDgpMBtxi52f3+bArVnBHeqfKu7JlzW5rfwt5VuaLpOMtkUt+l1d
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN1NAM02HT247;
	H:SN2PR10MB0094.namprd10.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 1a95a619-5592-45c4-5c6a-08d3d6c5d500
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(1601124038)(1601125047);
	SRVR:SN1NAM02HT247; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:SN1NAM02HT247; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM02HT247; 
x-forefront-prvs: 0058ABBBC7
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2016 02:22:35.8683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT247
X-OriginalArrivalTime: 07 Sep 2016 02:22:38.0441 (UTC)
	FILETIME=[B4003590:01D208AE]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing build following Quick Start
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
X-List-Received-Date: Wed, 07 Sep 2016 02:23:41 -0000
Content-Language: es-CR
Content-Type: multipart/alternative;
	boundary="_000_SN2PR10MB00940D62C2AD81857308535ACFF80SN2PR10MB0094namp_"

--_000_SN2PR10MB00940D62C2AD81857308535ACFF80SN2PR10MB0094namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Nick


Thanks for your feedback.

I tried installing the libtool as you suggested, also performed and apt-get=
 upgrade just in case

I am still getting the same error


Best Regards,

Adolfo

________________________________
De: xerofoify <xerofoify@gmail.com>
Enviado: martes 6 de septiembre de 2016 09:47:59 a.m.
Para: Adolfo Sanchez
Cc: yocto@yoctoproject.org
Asunto: Re: [yocto] Failing build following Quick Start

On Tue, Sep 6, 2016 at 9:13 AM, Adolfo Sanchez <adolfo_sm_cr@hotmail.com> w=
rote:
> Hello
>
>
>
> I am new to Yocto and trying to learn the basics of the system
>
>
> I am following the Yocto Quick Start guide:
>
> http://www.yoctoproject.org/docs/2.1/yocto-project-qs/yocto-project-qs.ht=
ml
>
>
> Details:
>
> 1) I am using Lubuntu 16.04 64bits on a Oracle VirtualBox VM, over a
> Windows10 host.
>
> 2) I downloaded the poky from the Yocto page instead of download it via g=
it
>
> 3) I am tryting to build the basic core-image-sato for qemu
>
> 4) I am getting  the following error:
>
> ERROR: Task 1921
> (virtual:native:/home/adolfo/Yocto-testin/poky-krogoth-15.0.1/meta/recipe=
s-support/gmp/gmp_6.1.0.bb,
> do_compile) failed with exit code '1'
> 5) I test  the ${WORKDIR}/temp/run.do_compile I get the following error:
> x86_64-linux-libtool:   error: 'abs.lo' is not a valid libtool object
> Makefile:421: recipe for target 'libmpq.la' failed
> make[2]: *** [libmpq.la] Error 1
>
>
> Any help would be appreciated.
>
> Best regards,
>
> Adolfo Sanchez
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
Do you actually have libtool installed and the latest version for
Lubuntu 16.04, if not try installing it using apt-get.
See if that helps fix the issue if not report back with the error
messages you are getting after installing libtool.
Cheers,
Nick

--_000_SN2PR10MB00940D62C2AD81857308535ACFF80SN2PR10MB0094namp_
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
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; =
background-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hello Nick</p>
<p><br>
</p>
<p>Thanks for your feedback.</p>
<p>I tried installing the libtool as you suggested, also performed and apt-=
get upgrade just in case</p>
<p>I am still getting the same error</p>
<p><br>
</p>
<p>Best Regards,</p>
<p>Adolfo</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De:</b> xerofoify &lt;xerofoi=
fy@gmail.com&gt;<br>
<b>Enviado:</b> martes 6 de septiembre de 2016 09:47:59 a.m.<br>
<b>Para:</b> Adolfo Sanchez<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Asunto:</b> Re: [yocto] Failing build following Quick Start</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Tue, Sep 6, 2016 at 9:13 AM, Adolfo Sanchez &lt=
;adolfo_sm_cr@hotmail.com&gt; wrote:<br>
&gt; Hello<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I am new to Yocto and trying to learn the basics of the system<br>
&gt;<br>
&gt;<br>
&gt; I am following the Yocto Quick Start guide:<br>
&gt;<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/2.1/yocto-project-qs/yocto=
-project-qs.html">
http://www.yoctoproject.org/docs/2.1/yocto-project-qs/yocto-project-qs.html=
</a><br>
&gt;<br>
&gt;<br>
&gt; Details:<br>
&gt;<br>
&gt; 1) I am using Lubuntu 16.04 64bits on a Oracle VirtualBox VM, over a<b=
r>
&gt; Windows10 host.<br>
&gt;<br>
&gt; 2) I downloaded the poky from the Yocto page instead of download it vi=
a git<br>
&gt;<br>
&gt; 3) I am tryting to build the basic core-image-sato for qemu<br>
&gt;<br>
&gt; 4) I am getting&nbsp; the following error:<br>
&gt;<br>
&gt; ERROR: Task 1921<br>
&gt; (virtual:native:/home/adolfo/Yocto-testin/poky-krogoth-15.0.1/meta/rec=
ipes-support/gmp/gmp_6.1.0.bb,<br>
&gt; do_compile) failed with exit code '1'<br>
&gt; 5) I test&nbsp; the ${WORKDIR}/temp/run.do_compile I get the following=
 error:<br>
&gt; x86_64-linux-libtool:&nbsp;&nbsp; error: 'abs.lo' is not a valid libto=
ol object<br>
&gt; Makefile:421: recipe for target 'libmpq.la' failed<br>
&gt; make[2]: *** [libmpq.la] Error 1<br>
&gt;<br>
&gt;<br>
&gt; Any help would be appreciated.<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Adolfo Sanchez<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
Do you actually have libtool installed and the latest version for<br>
Lubuntu 16.04, if not try installing it using apt-get.<br>
See if that helps fix the issue if not report back with the error<br>
messages you are getting after installing libtool.<br>
Cheers,<br>
Nick<br>
</div>
</span></font>
</body>
</html>

--_000_SN2PR10MB00940D62C2AD81857308535ACFF80SN2PR10MB0094namp_--
