Return-Path: <RGC@hms.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16541E00C88; Thu,  8 Dec 2016 23:24:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0087.outbound.protection.outlook.com [104.47.2.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 561D2E00C5B
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 23:24:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=hms365.onmicrosoft.com; s=selector1-hms-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=hs6t9mcALA7UEn1HaZG22ExAsX1Dk/B+AX0gUNtNWkk=;
	b=6GFae3J5wSrm37FzQl6AOnxlqR++OXOa4r3ms72NupnV/NZPzowrElFuy4lp0QMiQUUeoRNElXa0eTCmgZ2Ok8xWHc8xONd95+DH+dDVjY+JwDrEIzZl1BC4uSt4kbbmAppuOQkvR3PNzLyZXygKc6MuJGnBnsCNuZ4NS94rzug=
Received: from DB5PR0601MB1992.eurprd06.prod.outlook.com (10.166.12.135) by
	DB5PR0601MB1989.eurprd06.prod.outlook.com (10.166.12.26) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.9; Fri, 9 Dec 2016 07:09:02 +0000
Received: from DB5PR0601MB1992.eurprd06.prod.outlook.com ([10.166.12.135]) by
	DB5PR0601MB1992.eurprd06.prod.outlook.com ([10.166.12.135]) with
	mapi id 15.01.0761.018; Fri, 9 Dec 2016 07:09:02 +0000
From: Rafael Gago Castano <RGC@hms.se>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] libssp_nonshared.a not present in native SDK.
Thread-Index: AQHSUGL4NIxqRMiI1EOprFRfBZV2SKD+ONDWgABSUYCAAKjqqA==
Date: Fri, 9 Dec 2016 07:09:01 +0000
Message-ID: <DB5PR0601MB1992734AEC739F080CCEC06FC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
References: <DB5PR0601MB199276F3BD562C88737B1A73C2850@DB5PR0601MB1992.eurprd06.prod.outlook.com>
	<DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840@DB5PR0601MB1992.eurprd06.prod.outlook.com>,
	<4750708.C3i3MIxDut@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <4750708.C3i3MIxDut@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=RGC@hms.se; 
x-originating-ip: [25.165.200.132]
x-ms-office365-filtering-correlation-id: 4dfea38c-74ca-4b11-412b-08d420024149
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DB5PR0601MB1989; 
x-microsoft-exchange-diagnostics: 1; DB5PR0601MB1989;
	7:TiDS+PA0cPknEjjFsFeeYKsEKaHUzGiRDRUq6KFZULO5+mhPOivADsnhm1Sw0kM2rgy7NhyxshcsfvigUOolF6z6nPppp2lOdRs9upbOE/0Bif+hvcgxMBjmf0qRWf+lEOxS5L5kjzubPse9LqNpUrwd1yGYaCRyxqgKlCm449dTz1qrn97zqXfd26yTnHdf+1An6BuINcpcq6bVlcnDoMKF6ABcmj322/HAn1DtwhJv2cYW/8eiInc9KKzpqjnoSMwwfoBBh3Fi/mj4SKVK5bMu4a15ajkBqEy8U1uomUIeX8HV7fTjD0gHQ7ZnU93wGXAXWTdI7O0VEtlufjGooVG+HSmYHN9PZblOctwiajHf3svCU0fnjcaUv2flP0aCwdxiVVr00JrUuHwKf636SUgoqW/HAyoRlhq0QxUXZdHqVnXo55xXshSKr/UCQ7kG712JkBf8h2O30ydPi8cHjw==
x-microsoft-antispam-prvs: <DB5PR0601MB1989D1601DB6E3F587BA30A8C2870@DB5PR0601MB1989.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(5213294742642)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(6072148);
	SRVR:DB5PR0601MB1989; BCL:0; PCL:0; RULEID:;
	SRVR:DB5PR0601MB1989; 
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(979002)(7916002)(39450400003)(24454002)(189002)(377454003)(199003)(68736007)(19627405001)(81166006)(7906003)(6606003)(92566002)(74482002)(3280700002)(86362001)(77096006)(33656002)(575784001)(6916009)(110136003)(8936002)(97736004)(7736002)(8676002)(81156014)(76576001)(3900700001)(3660700001)(122556002)(7696004)(2950100002)(2900100001)(2906002)(106116001)(4326007)(106356001)(9686002)(76176999)(6116002)(3846002)(105586002)(66066001)(5660300001)(101416001)(38730400001)(229853002)(54356999)(102836003)(189998001)(50986999)(16297215004)(74316002)(6506006)(606004)(6436002)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR0601MB1989;
	H:DB5PR0601MB1992.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hms.se does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hms.se
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2016 07:09:01.9832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c7c1590-4488-4e42-bc9c-15218f8ac994
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR0601MB1989
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libssp_nonshared.a not present in native SDK.
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
X-List-Received-Date: Fri, 09 Dec 2016 07:24:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR0601MB1992734AEC739F080CCEC06FC2870DB5PR0601MB1992_"

--_000_DB5PR0601MB1992734AEC739F080CCEC06FC2870DB5PR0601MB1992_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for your answer. I'll keep things as they are then.


________________________________
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Sent: Thursday, December 8, 2016 9:59 PM
To: Rafael Gago Castano
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] libssp_nonshared.a not present in native SDK.

Hi Rafael,

On Thu, 08 Dec 2016 16:05:04 Rafael Gago Castano wrote:
> Yesterday, when cross-compiling with the SDK (relocatable/non-extensible)=
, I
> noticed that CMake projects weren't generated because the compiler featur=
e
> detection was failing. CMake enables fstack-protector for each of its
> platform tests and hance requires "libssp_nonshared.a" for linking. A qui=
ck
> search revealed that "libssp_nonshared.a" is actually missing from the SD=
K.
>
> I found that "libssp_nonshared.a" comes from "gcc-utils.inc". So adding..=
.
>
> IMAGE_INSTALL_append +=3D "libssp"
>
> ...fixes (or workarounds) the issue and allows CMake projects to
> cross-compile fine.
>
> What I see is that I can't manually add all the libraries present in
> "gcc-utils.inc" as "IMAGE_INSTALL_append"s. Some of them (e.g libquadmath=
)
> fail with the error:
>
> "Couldn't find anything to satisfy 'libquadmath'"
>
> So I added those that doesn't cause errors by trial and error. This looks
> wrong.

AIUI libquadmath is only for Fortran so unless you're enabling and using th=
at,
you don't need it, and it wouldn't be present. However if you are enabling
Fortran, there was a recent patch to correctly enable libquadmath here:

 http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D1013385b2f04b914538=
c0699a636074496911788

> All the statics in "gcc-utils.inc" look to me like they should be on the =
SDK
> by default, as they are gcc/libc related and in this case (libssp)
> essential to use some of the compiler features, so I'm wondering:
>
> If this is a bug in krogoth?
> If it isn't a bug, what is the right way to add all these gcc-runtime lib=
s?

So, yes and no. I looked earlier at adding a packagegroup for bringing all =
of
these in together, but the more I looked at it the more I came to realise t=
hat
in most circumstances you don't actually want all of these libraries - they
should come in individually with the pieces that they're intended to be use=
d
with. Hence I added an RRECOMMENDS as it seemed appropriate:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D1c0fc7fcf7772=
ef8774f623126050972f526fe83

In particular libssp is now RRECOMMENDED by gcc for the target. This patch
came in in the morty release so you wouldn't currently see this in krogoth
though. Having said that your workaround shouldn't be too awkward in the me=
an
time.

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

--_000_DB5PR0601MB1992734AEC739F080CCEC06FC2870DB5PR0601MB1992_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Thanks for your answer. I'll keep things as they are then.</p>
<p><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Paul Eggleton &lt;p=
aul.eggleton@linux.intel.com&gt;<br>
<b>Sent:</b> Thursday, December 8, 2016 9:59 PM<br>
<b>To:</b> Rafael Gago Castano<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] libssp_nonshared.a not present in native SDK.</=
font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Rafael,<br>
<br>
On Thu, 08 Dec 2016 16:05:04 Rafael Gago Castano wrote:<br>
&gt; Yesterday, when cross-compiling with the SDK (relocatable/non-extensib=
le), I<br>
&gt; noticed that CMake projects weren't generated because the compiler fea=
ture<br>
&gt; detection was failing. CMake enables fstack-protector for each of its<=
br>
&gt; platform tests and hance requires &quot;libssp_nonshared.a&quot; for l=
inking. A quick<br>
&gt; search revealed that &quot;libssp_nonshared.a&quot; is actually missin=
g from the SDK.<br>
&gt; <br>
&gt; I found that &quot;libssp_nonshared.a&quot; comes from &quot;gcc-utils=
.inc&quot;. So adding...<br>
&gt; <br>
&gt; IMAGE_INSTALL_append &#43;=3D &quot;libssp&quot;<br>
&gt; <br>
&gt; ...fixes (or workarounds) the issue and allows CMake projects to<br>
&gt; cross-compile fine.<br>
&gt; <br>
&gt; What I see is that I can't manually add all the libraries present in<b=
r>
&gt; &quot;gcc-utils.inc&quot; as &quot;IMAGE_INSTALL_append&quot;s. Some o=
f them (e.g libquadmath)<br>
&gt; fail with the error:<br>
&gt; <br>
&gt; &quot;Couldn't find anything to satisfy 'libquadmath'&quot;<br>
&gt; <br>
&gt; So I added those that doesn't cause errors by trial and error. This lo=
oks<br>
&gt; wrong.<br>
<br>
AIUI libquadmath is only for Fortran so unless you're enabling and using th=
at, <br>
you don't need it, and it wouldn't be present. However if you are enabling =
<br>
Fortran, there was a recent patch to correctly enable libquadmath here:<br>
<br>
&nbsp;<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D101=
3385b2f04b914538c0699a636074496911788" id=3D"LPlnk852573" previewremoved=3D=
"true">http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D1013385b2f04b=
914538c0699a636074496911788</a><br>
&nbsp;<br>
&gt; All the statics in &quot;gcc-utils.inc&quot; look to me like they shou=
ld be on the SDK<br>
&gt; by default, as they are gcc/libc related and in this case (libssp)<br>
&gt; essential to use some of the compiler features, so I'm wondering:<br>
&gt; <br>
&gt; If this is a bug in krogoth?<br>
&gt; If it isn't a bug, what is the right way to add all these gcc-runtime =
libs?<br>
<br>
So, yes and no. I looked earlier at adding a packagegroup for bringing all =
of <br>
these in together, but the more I looked at it the more I came to realise t=
hat <br>
in most circumstances you don't actually want all of these libraries - they=
 <br>
should come in individually with the pieces that they're intended to be use=
d <br>
with. Hence I added an RRECOMMENDS as it seemed appropriate:<br>
<br>
&nbsp; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=
=3D1c0fc7fcf7772ef8774f623126050972f526fe83" id=3D"LPlnk190645" previewremo=
ved=3D"true">
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D1c0fc7fcf7772ef=
8774f623126050972f526fe83</a><br>
<br>
In particular libssp is now RRECOMMENDED by gcc for the target. This patch =
<br>
came in in the morty release so you wouldn't currently see this in krogoth =
<br>
though. Having said that your workaround shouldn't be too awkward in the me=
an <br>
time.<br>
<br>
Cheers,<br>
Paul<br>
<br>
-- <br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DB5PR0601MB1992734AEC739F080CCEC06FC2870DB5PR0601MB1992_--
