Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B74A6E0103E; Tue, 23 Aug 2016 21:19:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.62 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 9253 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Aug 2016 21:19:21 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0062.outbound.protection.outlook.com [104.47.34.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74489E01039
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 21:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=vFY5O0IIMEDKM3UBhEx7syJu+fMznGPFO2z9r1CIqBs=;
	b=0KqMkckR5oZdhoNlNIGHJ8Z5sC9s33MmiAMjkKO0mKasXDrk5tFMcRPEuD1L/j0C/RJUfx9d0V4AdMNKgU132p+zprObsk76eZnnIU7JylHJSjkgujORpsY6QoX75qer07Qbilh8qZ8EDxj+LIu03SzSMRDZD4u8gQ49g8PjIt4=
Received: from BLUPR0101MB1586.prod.exchangelabs.com (10.163.119.13) by
	BLUPR0101MB1587.prod.exchangelabs.com (10.163.119.139) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.587.9; Wed, 24 Aug 2016 01:45:06 +0000
Received: from BLUPR0101MB1586.prod.exchangelabs.com ([10.163.119.13]) by
	BLUPR0101MB1586.prod.exchangelabs.com ([10.163.119.13]) with mapi id
	15.01.0549.029; Wed, 24 Aug 2016 01:45:05 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, Andre McCurdy
	<armccurdy@gmail.com>
Thread-Topic: [yocto] BBMASK issue
Thread-Index: AQHR/ODLzU+cZtHRnkGcb9k9zyc8N6BWADKAgACBSACAANZqzA==
Date: Wed, 24 Aug 2016 01:45:05 +0000
Message-ID: <BLUPR0101MB15868D717222F2CEC58FDB62D7EA0@BLUPR0101MB1586.prod.exchangelabs.com>
References: <CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAJ86T=UU06z69pPN5GE6=Ua7hmzn8NvG3kBWh=gmafmLjTcRCw@mail.gmail.com>,
	<ad10b75b2a73413bac5b6b1bdf20b17f@XBOX02.axis.com>
In-Reply-To: <ad10b75b2a73413bac5b6b1bdf20b17f@XBOX02.axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: fc52c3e5-d9d6-4feb-b610-08d3cbc04601
x-microsoft-exchange-diagnostics: 1; BLUPR0101MB1587;
	6:uhUtN9G0rKgrEK5dOZipLkYdl2v6uDhlL3KTnBEKp1aLp20qxrSX8++bba1mmIa/CaUi7AUj+RDvlo58kLolkpu/cm7lXO4+1EJxzeHnXOBvy9hHuBsEwUWTd/yZsGZW/+oKC9XZm7QTi6mKCdB4P5fwsN9htj68yacemtTkYqth3388sjCoPWj1N0VD7/6cd1BZ1yo2lPmXSGYzKCM4nZ910PBU096Lx8uHDGRWqe0R3PIP7KuEy1aZRqryjS7j1EO+Y1ZU74zpjGThj+KqG4N0hMjCfUXvkd4Wk9AX7jQ=;
	5:ScalhUXILSYoSMETyxKguQhVZU7bxvDZ5wVJn5pxnQMWqaNGwP621L5HMurt80T5eFL7NGdgUdJ4ROUF7MWJMxjRCssFbHsqbTdXIQPhU1SUV71DmzJFgDvhwVKMoFwPuoBG8n+bjncvMKcTqLy8Sw==;
	24:F+4TYlFxIcqeSf4b5dCxE5yf8ByUQItHV1W96NcILVULHlRxnhUB/Wfk29FbuozDpM5Mypkag9nv1nW0ZfSh4xkJnkL6Y59jF3YTSjZfsuI=;
	7:AVIWqMeexBjHaP/Cz/hIT8h1vSN0xm5rCDFv9EGWSlG37v51FRVqd/UiB6laWbxnu3bUG7BgDRFZ/r9sm/sQtDFJJgyXN/b7IB/WJyzzGfLZABy1eFAFr96d5kG5QVCJCWgJm499chJy9DYi8dooID6zHBZpugXrNDKR5ULzllOEPVgGdRhxDtQYHasjPR+R9UgVwiHzUg0poc3Lb73acuzt5YKNiV8bFG7fC0eB33MS7vePpcyWHErK1iKkBWSX
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0101MB1587;
x-microsoft-antispam-prvs: <BLUPR0101MB1587AE2465DB338C7E475882D7EA0@BLUPR0101MB1587.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:BLUPR0101MB1587; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0101MB1587; 
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(101416001)(586003)(68736007)(102836003)(6116002)(86362001)(3846002)(106116001)(66066001)(2906002)(50986999)(76176999)(19580395003)(105586002)(87936001)(4326007)(5660300001)(54356999)(81166006)(106356001)(9686002)(81156014)(8936002)(5001770100001)(8676002)(10400500002)(97736004)(2950100001)(2900100001)(7696003)(7846002)(7736002)(33656002)(122556002)(19625215002)(16236675004)(92566002)(74316002)(189998001)(19627405001)(77096005)(3660700001)(5002640100001)(3280700002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0101MB1587;
	H:BLUPR0101MB1586.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2016 01:45:05.5946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0101MB1587
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BBMASK issue
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
X-List-Received-Date: Wed, 24 Aug 2016 04:19:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR0101MB15868D717222F2CEC58FDB62D7EA0BLUPR0101MB1586_"

--_000_BLUPR0101MB15868D717222F2CEC58FDB62D7EA0BLUPR0101MB1586_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.


>Please note that BBMASK was changed in Krogoth to allow multiple regular
>expressions (see commit a948f5252 in Poky). Basically, with Krogoth and
>later you can do:
>
>BBMASK =3D "aaa bbb ccc"
>BBMASK +=3D "ddd eee"
>BBMASK_append =3D " fff ggg"


This is good, since everyone can always do append, not overwriting someone'=
s definition.


For now (for my pre-2.1 build), I ended up to copy BSP's BBMASK definition =
to my local.conf to include everything.


--_000_BLUPR0101MB15868D717222F2CEC58FDB62D7EA0BLUPR0101MB1586_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello.</p>
<p><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 13.3333px;">&gt;Please note that BBMASK was changed in Krogoth to allow mu=
ltiple
 regular&nbsp;</span><br style=3D"font-family: Calibri, Arial, Helvetica, s=
ans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoC=
olorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSym=
bols; font-size: 13.3333px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13=
.3333px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 13.3333px;">&gt;</span>expressions
 (see commit a948f5252 in Poky). Basically, with Krogoth and&nbsp;</span><b=
r style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple =
Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe =
UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13.333=
3px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13=
.3333px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 13.3333px;">&gt;</span>later
 you can do:</span><br style=3D"font-family: Calibri, Arial, Helvetica, san=
s-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCol=
orEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbo=
ls; font-size: 13.3333px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13=
.3333px;">&gt;</span><br style=3D"font-family: Calibri, Arial, Helvetica, s=
ans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoC=
olorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSym=
bols; font-size: 13.3333px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13=
.3333px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 13.3333px;">&gt;</span>BBMASK
 =3D &quot;aaa bbb ccc&quot;&nbsp;&nbsp;</span><br style=3D"font-family: Ca=
libri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;S=
egoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;And=
roid Emoji&quot;, EmojiSymbols; font-size: 13.3333px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13=
.3333px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 13.3333px;">&gt;</span>BBMASK
 &#43;=3D &quot;ddd eee&quot;</span><br style=3D"font-family: Calibri, Aria=
l, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emo=
ji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&=
quot;, EmojiSymbols; font-size: 13.3333px;">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13=
.3333px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 13.3333px;">&gt;</span>BBMASK_append
 =3D &quot; fff ggg&quot;</span><br style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&q=
uot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot=
;, EmojiSymbols; font-size: 13.3333px;">
<br>
</p>
<p>This is good, since everyone can always do append, not overwriting someo=
ne's definition.</p>
<p><br>
</p>
<p>For now (for my pre-2.1 build), I ended up to copy BSP's BBMASK definiti=
on to my local.conf to include everything.</p>
<div style=3D"color: rgb(0, 0, 0);"><font size=3D"2"><span style=3D"font-si=
ze:10pt;">
<div class=3D"PlainText"><br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_BLUPR0101MB15868D717222F2CEC58FDB62D7EA0BLUPR0101MB1586_--
