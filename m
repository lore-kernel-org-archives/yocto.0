Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A91C9E00CC9; Sat,  7 Jul 2018 15:37:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.8.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7221 seconds by postgrey-1.32 at yocto-www;
	Sat, 07 Jul 2018 15:37:40 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-oln040092008073.outbound.protection.outlook.com [40.92.8.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 840F3E006F1
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 15:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=qkYfgMD7LcocP6zYLYs8TuZNoqozKR46MmjHT/bI3ds=;
	b=Dxe/BMXU7lnvdstJ4ovDtGsnjj/A6WLeUJ9GBKHfXAMe7kKGl+h//YR1wz0ZsijFbG3KUtEAYGxsjep3XwI2bnypxRJPldN99a+I+lm/+YT/AohzEDBfELY3w/n062WETPZg1oL6ofIgSZ8Na80mdmLTXrFtUQDzXfnrdegFUdII0hEFCR31kH4qeYUrsczTkdL3WBZtGczpMoZMYnjnrSGfpUt2rAn016QtjL7iZ3RT+StQ+Z9UX7yRd5E6ulHowttDLXXqH7QillR51zO/zr60ydydLIV3TZ3gkjZ8t7CUULROrmdD8CQzvskglk0iJ4zJhxPs3YiGdXUcb9vKLw==
Received: from DM3NAM03FT060.eop-NAM03.prod.protection.outlook.com
	(10.152.82.55) by DM3NAM03HT154.eop-NAM03.prod.protection.outlook.com
	(10.152.83.26) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.906.15;
	Fri, 6 Jul 2018 22:06:35 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.82.52) by
	DM3NAM03FT060.mail.protection.outlook.com (10.152.83.86) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.906.15 via Frontend Transport; Fri, 6 Jul 2018 22:06:35 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd%4]) with mapi id 15.20.0930.016;
	Fri, 6 Jul 2018 22:06:35 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to remove openssl from sysroots
Thread-Index: AQHUFXWajXIcjzfwuUSyRHt2ANT94Q==
Date: Fri, 6 Jul 2018 22:06:35 +0000
Message-ID: <MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>,
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:D7010C3CDA4209BBC82304B0879DD002619EFE81797AA0C963AC18A1C65AF204;
	UpperCasedChecksum:F96B85A2B58FD0D5400EA78793B0AAF4782627793C58401D30595F75D4B74993;
	SizeAsReceived:7102; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [jkBvQvIVWySASkaEnyrPQn/PA+Z0tfll]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM3NAM03HT154;
	7:7Btts0B89P/eGnN8s0x4F4W5PuP5T1NfRezsdrDE/URGL9pfdwvKNAywmE8iPInYxVheFSLcJogkqE8Xc0FsuesTozDw/IuaJjpBn7CINxq8Nr6fGNSTbsnW3fgjeVLDKvEwPumtXM7VqkhCceXO6Je1t2bEah+kDT9NTkbmR6btm/Dx2iCmwmqdsPsc5qMrd4xTx4Ky4S/QJLVWOrfaeVPD4BbMZU95gFXdTc8YOm6THokcmgFG9n7E85ERFVvK
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101448)(1701031045);
	SRVR:DM3NAM03HT154; 
x-ms-traffictypediagnostic: DM3NAM03HT154:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:DM3NAM03HT154; BCL:0; PCL:0; RULEID:; SRVR:DM3NAM03HT154; 
x-forefront-prvs: 0725D9E8D0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(189003)(199004)(486006)(74316002)(2501003)(106356001)(97736004)(6606003)(6916009)(105586002)(104016004)(1730700003)(8676002)(5660300001)(68736007)(19627405001)(81156014)(87572001)(33656002)(73972006)(476003)(54896002)(6346003)(446003)(55016002)(7696005)(26005)(86362001)(2351001)(45080400002)(9686003)(8936002)(76176011)(102836004)(6506007)(53546011)(6436002)(20460500001)(25786009)(2900100001)(5250100002)(83332001)(82202002)(14444005)(11346002)(14454004)(256004)(99286004)(5640700003)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:DM3NAM03HT154;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rksyeung@hotmail.com; 
x-microsoft-antispam-message-info: W7KVpgtDE92aT9oHOWbVMZposgaP/fP86foA0xYeU05f+7DDnq2waWhRvzRGs0w2nglKKL1sbmM3lTHyFp/bR3mDR3E0/X2Nfr3Idrjt7iZHbIu1UfT14bJunEyQycBs9eUOdrp4u3UIB6wJ3PTwtEEPS/6PYUlTgTPvLrMHFOAeN2bzwXngrfGuwNOIJFuaKELirfceUNzPWHJotSJdJxl3zoG0H0aeDE9Y6X978Ik=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: e87008af-81c8-4e78-2930-08d5e38cbd68
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2018 22:06:35.4729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3NAM03HT154
Subject: How to remove openssl from sysroots
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
X-List-Received-Date: Sat, 07 Jul 2018 22:37:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11832EE45DE3D590BC782414C5470MWHPR19MB1183namp_"

--_000_MWHPR19MB11832EE45DE3D590BC782414C5470MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've changed the subject heading to make it more specific to our problem.  =
Hopefully this generates some responses.


It has been blocking us for close to one week now.  We want to use our 3rd =
party vendor openssl, not the one that comes with the source.  Apparently, =
even with "minimal" instead of "base" or "sato" cannot exclude it.


Any idea [e.g. how do we systematically find out how it's included now, and=
 possibly what other packages/recipes we may also need to remove due to dep=
endency]?


Thanks,

Raymond


________________________________
From: Raymond Yeung <rksyeung@hotmail.com>
Sent: Monday, July 2, 2018 11:05 PM
To: yocto@yoctoproject.org
Subject: How to remove a package from a build


We've our own non-yocto openssl that we want to use.  At the moment, we're =
using "sato" image, rather than "minimal" and includes its openssl that is =
out-of-date.  What is the best way to exclude it from our image (and from s=
ysroots)?


We have thought about two ideas -


  1.  Use smaller image like core-image-base, or core-image-full-cmdline (b=
ut not -minimal that may remove too much functionality).
  2.  Use INSTALL_IMAGE_remove +=3D " openssl"


Would either one work?  Also, how do I follow the .bb files etc (e.g. start=
ing from the one for sato) to trace down which sub-package includes openssl=
?


Thanks,

Raymond

--_000_MWHPR19MB11832EE45DE3D590BC782414C5470MWHPR19MB1183namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I've changed the subject heading =
to make it more specific to our problem. &nbsp;Hopefully this generates som=
e responses.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">It has been blocking us for close=
 to one week now. &nbsp;We want to use our 3rd party vendor openssl, not th=
e one that comes with the source. &nbsp;Apparently, even with &quot;minimal=
&quot; instead of &quot;base&quot; or &quot;sato&quot; cannot exclude it.</=
p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Any idea [e.g. how do we systemat=
ically find out how it's included now, and possibly what other packages/rec=
ipes we may also need to remove due to dependency]?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Raymond Yeung &lt;rks=
yeung@hotmail.com&gt;<br>
<b>Sent:</b> Monday, July 2, 2018 11:05 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> How to remove a package from a build</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Diso-8859-1">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">We've our own non-yocto&nbsp;ope=
nssl that we want to use. &nbsp;At the moment, we're using &quot;sato&quot;=
 image, rather than &quot;minimal&quot; and includes its openssl that is ou=
t-of-date. &nbsp;What is the best way to exclude it&nbsp;from our image (an=
d
 from sysroots)?</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">We have thought about two ideas =
-</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"></p>
<ol style=3D"margin-bottom:0px; margin-top:0px">
<li><span style=3D"font-size:12pt"></span><span style=3D"font-size:12pt"></=
span>Use smaller image like core-image-base, or core-image-full-cmdline (bu=
t not -minimal that may remove too much functionality).</li><li>Use INSTALL=
_IMAGE_remove &#43;=3D &quot;&nbsp;openssl&quot;</li></ol>
<br>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0">Would either one work? &nbsp;Als=
o, how do I follow the .bb files etc (e.g. starting from the one for sato) =
to trace down which sub-package includes openssl?</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0; margin-bottom:0">Raymond</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB11832EE45DE3D590BC782414C5470MWHPR19MB1183namp_--
