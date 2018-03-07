Return-Path: <avishay@magosys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1C86E00E43; Wed,  7 Mar 2018 08:42:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0114.outbound.protection.outlook.com [104.47.2.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CC42E008FB
	for <yocto@yoctoproject.org>; Wed,  7 Mar 2018 08:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=magosys.onmicrosoft.com; s=selector1-magosys-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=xTXpXzZkzc8eiujmC3XB3XwNsk4Y3Y14vqaqJwwv2Yo=;
	b=Awn4MR9PAWFc+FH1R4db1FtYfFd1C0OWcQBVmNwaF9Uw7vFqVGegE19+HrHloVJE7ISxXocX37jyYe7XT/TGbvN9tf8hEO4w9IBg6beIgPCUAun3hTfVtVhz6R6JZ6hdVUUdM1JEluf10S6gR85HvAyuDFEj1baMAeU5Y5dR8g8=
Received: from AM4PR0401MB2052.eurprd04.prod.outlook.com (10.166.131.138) by
	AM4PR0401MB2020.eurprd04.prod.outlook.com (10.166.131.24) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.548.13; Wed, 7 Mar 2018 11:08:38 +0000
Received: from AM4PR0401MB2052.eurprd04.prod.outlook.com
	([fe80::8040:b34a:6de2:49f2]) by
	AM4PR0401MB2052.eurprd04.prod.outlook.com
	([fe80::8040:b34a:6de2:49f2%13]) with mapi id 15.20.0548.016;
	Wed, 7 Mar 2018 11:08:38 +0000
From: Avishay Orpaz <avishay@magosys.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] SDK without qemu
Thread-Index: AQHTtJfLOktxPrhwPkq5vA70MC8WpaPDD66AgAGQHvo=
Date: Wed, 7 Mar 2018 11:08:38 +0000
Message-ID: <AM4PR0401MB2052C795FBE4CE1BC89B5324B5D80@AM4PR0401MB2052.eurprd04.prod.outlook.com>
References: <AM4PR0401MB20524F7CABC4D3C44ECC6513B5DA0@AM4PR0401MB2052.eurprd04.prod.outlook.com>,
	<CAJTo0Lb0aZSOYVLMfdb+UAw4LO3C=T49ft6ZLayydzK_cJoaYw@mail.gmail.com>
In-Reply-To: <CAJTo0Lb0aZSOYVLMfdb+UAw4LO3C=T49ft6ZLayydzK_cJoaYw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=avishay@magosys.com; 
x-originating-ip: [94.159.139.104]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM4PR0401MB2020;
	7:7+R+gK12DGsrqhcoMkkDKrSaa47drPEUkH4pTm+1KtvyjzBtIm6e5++fTSkkIFqhun6jtrC2DlYs8mQek8SFL86msvlDYEn03j5Q6jFMBey/nNgVUCL/X+lkNdqCbvrBxZx81ziUv1VdpQlRdNVxAzztA6NexUxfzkoRzZn6fjmqofw3d1dE0+7gDoevsAkIQlRNJf8jktQNXjpg0KJtlR9LoNiW67wO6+CZA4jLZylzRdX1jyWxvQjGWf/eAtko
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 02f6c543-e4c1-4fba-83e8-08d5841bc73e
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM4PR0401MB2020; 
x-ms-traffictypediagnostic: AM4PR0401MB2020:
x-microsoft-antispam-prvs: <AM4PR0401MB20205DC7E7ED88525BCDD858B5D80@AM4PR0401MB2020.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(3231220)(944501244)(52105095)(10201501046)(93006095)(93001095)(3002001)(6041288)(20161123562045)(20161123560045)(20161123564045)(20161123558120)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:AM4PR0401MB2020; BCL:0; PCL:0; RULEID:;
	SRVR:AM4PR0401MB2020; 
x-forefront-prvs: 0604AFA86B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(366004)(39830400003)(346002)(39380400002)(396003)(199004)(189003)(53936002)(33656002)(55016002)(3660700001)(54896002)(5660300001)(6306002)(236005)(9686003)(6436002)(74316002)(7736002)(97736004)(2900100001)(966005)(6116002)(478600001)(3846002)(105586002)(3280700002)(68736007)(6606003)(14454004)(606006)(229853002)(7696005)(106356001)(6916009)(2950100002)(76176011)(2906002)(25786009)(53546011)(19627405001)(6506007)(26005)(186003)(4326008)(99286004)(8936002)(6246003)(5250100002)(81166006)(86362001)(81156014)(8676002)(102836004)(316002)(66066001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM4PR0401MB2020;
	H:AM4PR0401MB2052.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: magosys.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 2iYz/kQ+6IB7MCM+VTBwPJOJ5R29f3DhCamHhrES8A9kUHoQDPUzpKY8FNptOvuyZgn1YgWVyek7rJsQIaCy0v2x2QeNmbrp7kUr8+SY3VKI2/3rP0vJyB8A22woz3v49zP+36fLoESXdffWGSOg6K1sJXrZq3ZHOkBnwzcB8fnC9lwfm7m0lI+x78p8L5K6e4CswXt1fxCoyxwxqDBBQIUB8f9fvc9k/hKzFdWmwo1XlJh8E+hc/tVQKvvcdHcmJdwIyL0xd0mG9Lj7MEc95sp+7Kn13RMMxRLdf0Y1kYYiJMc0U2ZP4uYBAEgev0uRYtzKb20uYqQbDPYZfxbzbw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: magosys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02f6c543-e4c1-4fba-83e8-08d5841bc73e
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2018 11:08:38.2352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 30681796-2d60-4e11-a7b7-84f050998428
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0401MB2020
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK without qemu
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
X-List-Received-Date: Wed, 07 Mar 2018 16:42:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM4PR0401MB2052C795FBE4CE1BC89B5324B5D80AM4PR0401MB2052_"

--_000_AM4PR0401MB2052C795FBE4CE1BC89B5324B5D80AM4PR0401MB2052_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, that's right. I only need the sysroot and the build tools (gcc etc.). =
I'm not planning to work with my software on an emulator.

________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Tuesday, March 6, 2018 1:15:29 PM
To: Avishay Orpaz
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] SDK without qemu

Do you mean "how can I build a SDK without using qemu" or "how can I build =
a SDK that doesn't contain qemu"?

On 5 March 2018 at 15:37, Avishay Orpaz <avishay@magosys.com<mailto:avishay=
@magosys.com>> wrote:

Is there a way to build an SDK without qemu?


Avishay



--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_AM4PR0401MB2052C795FBE4CE1BC89B5324B5D80AM4PR0401MB2052_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Yes, that's right. I only need th=
e sysroot and the build tools (gcc etc.). I'm not planning to work with my =
software on an emulator.<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Tuesday, March 6, 2018 1:15:29 PM<br>
<b>To:</b> Avishay Orpaz<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] SDK without qemu</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Do you mean &quot;how can I build a SDK without using qemu=
&quot; or &quot;how can I build a SDK that doesn't contain qemu&quot;?</div=
>
<div class=3D"x_gmail_extra"><br>
<div class=3D"x_gmail_quote">On 5 March 2018 at 15:37, Avishay Orpaz <span =
dir=3D"ltr">
&lt;<a href=3D"mailto:avishay@magosys.com" target=3D"_blank">avishay@magosy=
s.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_m_-5948399257930637112divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt; color:#000000; font-family:Calibri,Helvetica,sans-serif=
">
<p style=3D"margin-top:0; margin-bottom:0">Is there a way to build an SDK w=
ithout qemu?</p>
<span class=3D"x_HOEnZb"><font color=3D"#888888">
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Avishay</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
</font></span></div>
</div>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</body>
</html>

--_000_AM4PR0401MB2052C795FBE4CE1BC89B5324B5D80AM4PR0401MB2052_--
