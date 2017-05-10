Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C10E2E00B51; Wed, 10 May 2017 11:44:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.70.93 listed in list.dnswl.org]
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
X-Greylist: delayed 996 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 May 2017 11:44:48 PDT
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092070093.outbound.protection.outlook.com [40.92.70.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4A7EE0083D
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 11:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=3dnGkvN93GO2n19zCb95KrjHTWQ1NP9pZIF0sp2NBe4=;
	b=fJpsQQ2K1IxIyl/xiSufbNkvNtYJRQyXPtI/cNvbh0RLi5wNjB6xoMTnnEYsv1ZR6gkpzouVlDEr5SN25TEQPkzMSLcd1RA8Mx7sT97glGflKxWeEmiFZy5Db3At3tw/otVuqOh/wgKeiNVkCqAqENHAY2eIvE+B1t2/F+1RMM1u51wpSgX1/H04WtfZ8tnKefUcB6EPUofcEH2Yec5uDIQg3yD/7yulYN8tgL5kDd2OcQlT81qCSACsmyYWw7bQqkR8uArI44VBGGVVFhGhwR6M7ReUcsh5E7HLwk7kjF1QsfeZ16CmkkFJw6ZuovPjBlSpPwx+Ah3LHJN/NrhROA==
Received: from DB5EUR03FT025.eop-EUR03.prod.protection.outlook.com
	(10.152.20.56) by DB5EUR03HT071.eop-EUR03.prod.protection.outlook.com
	(10.152.21.168) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1047.9;
	Wed, 10 May 2017 11:05:28 +0000
Received: from MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM (10.152.20.56) by
	DB5EUR03FT025.mail.protection.outlook.com (10.152.20.104) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.9 via Frontend Transport; Wed, 10 May 2017 11:05:27 +0000
Received: from MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM ([10.166.219.139]) by
	MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM ([10.166.219.139]) with mapi id
	15.01.1075.020; Wed, 10 May 2017 11:05:28 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, Jussi Kukkonen
	<jussi.kukkonen@intel.com>
Thread-Topic: [yocto] Pre-compiling Python Byte Code
Thread-Index: AQHSxD1sMQbfP5daTUec5qNCJ/J3E6Hlf5WAgAfxqL4=
Date: Wed, 10 May 2017 11:05:28 +0000
Message-ID: <MM1P123MB13058E2173BDA6237D4CE488DAEC0@MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM>
References: <LO1P123MB1412B63A58F68E849F150760DA160@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>,
	<CAJTo0Lb5Y-Tt=g_7CFJ_dydxYBH3Oe7VGP88YhEAdq9syfhdDQ@mail.gmail.com>
In-Reply-To: <CAJTo0Lb5Y-Tt=g_7CFJ_dydxYBH3Oe7VGP88YhEAdq9syfhdDQ@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:3CB6E81EAB7883E0639D3995C3E3621153D7E7BD2F53D348259FFC2F22DF2F04;
	UpperCasedChecksum:621617A7380560F33BE08FB98B7CA345909D180CACF645A3AFAF24E3B7D3295D;
	SizeAsReceived:8379; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [cUDsGnPlxi/RdBgWnIVHjj+kFjEVbPpT]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5EUR03HT071;
	5:/Fd4mnQh2RKB4Hm8Lw+bMUuYJPnhhUU+puk/6ol8Fb3UXALE1VXDWTA0c7lJYLk297gLx0sObDWg2Uu8jemUUN9UC4UD7cIvUZPzFt+u6r1+j+rmTQ6af0//HLHr2cPGnKTga4mM0D8ea/VNazog3g==;
	24:JdyKMBNWQAHS+NdauRaAP3PoFA5SqEIWIIlsyEVHjhjU+w/LGCAXYB+ICjJX/Q488ESZJ/uYBwo6WEUtOwFf5j28R+d3Mk25TkSTaOREZbg=;
	7:cuEY6GlZ8eowcpbsA+elMA+MQtT7PU3wEqaul/Eu22wyhDv9RzRkioxbWx3vPlGIG3GxVhz/8ou14fFfCO/7cJ4B8hhChTXM0/rXsw6IKHGqvbphMOLYLPaiAXIzcR9QWP0+2VDwPlLROrEHg+ew0dnwf0aOTODCisVbQNlmx+SvZhrxQI6bbIuTFzza0PtmasD2IAq+mPVbyyyt6Og2jidFE8MfXJomAaoam9WD/bvk7vG6M8XQTfm1GlZbu01b9M3v+9MwTJQh6+sQS2P5W/OXJtlqrldKq//8oNv5KWbIHkiNx+dg/7denmleTkdc;
	23:M1nh9/WSBnSqDV6VRIH13G6zTvmc9wf22wbgEvffJvAosyeeSYiXXmqOE9ltx0ENOVoTxN+CYQrwm1Ak7oQ9QYJyvHsw4QrzCoBmbszy6By2cOb4hTcp6JIsL+Vl5xDOuor07QUrzwnhAdBYNk7wig==
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:DB5EUR03HT071;
	H:MM1P123MB1305.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: b2563a0d-54ce-4358-b5ab-08d49794776b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1601125374)(1603101448)(1701031045);
	SRVR:DB5EUR03HT071; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:DB5EUR03HT071; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR03HT071; 
x-forefront-prvs: 03030B9493
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2017 11:05:28.0183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT071
X-OriginatorOrg: hotmail.com
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Pre-compiling Python Byte Code
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
X-List-Received-Date: Wed, 10 May 2017 18:44:51 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_MM1P123MB13058E2173BDA6237D4CE488DAEC0MM1P123MB1305GBRP_"

--_000_MM1P123MB13058E2173BDA6237D4CE488DAEC0MM1P123MB1305GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Ross and Jussi,


python3native works in the short term and in the longer term I will look in=
to distutils/setuptools.

Cheers,
Chris

________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: 05 May 2017 10:43
To: Chris Trobridge
Cc: Yocto List
Subject: Re: [yocto] Pre-compiling Python Byte Code


On 3 May 2017 at 19:50, Chris Trobridge <christrobridge@hotmail.com<mailto:=
christrobridge@hotmail.com>> wrote:

The following works, as it uses the native python3 compiled by bitbake but =
it feels a little contrived.  Is there a better way of specifying the nativ=
e python3 interpreter, or a better way of getting my python byte code compi=
led prior to generating the packages?

If you inherit python3native then "python3" will be the native python3.

Ross

--_000_MM1P123MB13058E2173BDA6237D4CE488DAEC0MM1P123MB1305GBRP_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Arial, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr"=
>
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Arial, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=
=3D"ltr">
<p>Thanks Ross and Jussi,</p>
<p><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, Emoji=
Font, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;">python3native works in the short term and in the longer
 term I will look into&nbsp;<span style=3D"color: rgb(33, 33, 33); font-fam=
ily: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma=
, Arial, sans-serif, serif, EmojiFont; font-size: 15px;">distutils/setuptoo=
ls.</span></span><br>
</p>
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Arial, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=
=3D"ltr">
<br>
</div>
Cheers,</div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Arial, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=
=3D"ltr">
Chris<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> 05 May 2017 10:43<br>
<b>To:</b> Chris Trobridge<br>
<b>Cc:</b> Yocto List<br>
<b>Subject:</b> Re: [yocto] Pre-compiling Python Byte Code</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 3 May 2017 at 19:50, Chris Trobridge <span di=
r=3D"ltr">
&lt;<a href=3D"mailto:christrobridge@hotmail.com" target=3D"_blank">christr=
obridge@hotmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<p>The following works, as it uses the native&nbsp;python3 compiled by bitb=
ake but it feels a little contrived.&nbsp; Is there a better way of specify=
ing the native python3 interpreter, or a better way of getting my python by=
te code compiled prior to generating the packages?</p>
<p></p>
</blockquote>
</div>
If you inherit python3native then &quot;python3&quot; will be the native py=
thon3.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MM1P123MB13058E2173BDA6237D4CE488DAEC0MM1P123MB1305GBRP_--
