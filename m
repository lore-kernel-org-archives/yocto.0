Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27735E00E8F; Sun, 11 Sep 2016 20:31:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.78 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0078.outbound.protection.outlook.com [104.47.34.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8EB8E00E3D
	for <yocto@yoctoproject.org>; Sun, 11 Sep 2016 20:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=SWmoMZHJgWDVDFGr0MYw9uH/aajXeAQD6/ZmVQPhqOg=;
	b=AlRYAxgoyXWx3xZIZtTIHUl8xL9s6osWnHjfuwBozqSFm2DeCfZ2bEkuPvpQLHBDAovwm38++yKZl1E2TH2JjDnPPGLQVeboAc2+XekUEdxAP2uyzhp72Pg0PD2U+jb/LrZpmlwlWexEryYcoLpapSTZdYCI8SqVwFBD6LSP95s=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.619.10; Mon, 12 Sep 2016 03:31:08 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0619.010; Mon, 12 Sep 2016 03:31:08 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ac_cv_sizeof_long size definition by SDK
Thread-Index: AQHSCo3tMep/f59FTUGurMdvGu1AV6BxPMMAgAP5hHs=
Date: Mon, 12 Sep 2016 03:31:08 +0000
Message-ID: <CY1PR0101MB159483A6B9D1F2F7FD5C87A2D7FF0@CY1PR0101MB1594.prod.exchangelabs.com>
References: <BLUPR0101MB1586CBD9B1FAC1B7B8AB6EA7D7FA0@BLUPR0101MB1586.prod.exchangelabs.com>,
	<d589eaca-a2be-23d2-7533-d99b8e9e0a49@windriver.com>
In-Reply-To: <d589eaca-a2be-23d2-7533-d99b8e9e0a49@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: windriver.com; dkim=none (message not signed)
	header.d=none;windriver.com; dmarc=none action=none
	header.from=uievolution.com;
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 2fe95033-ce98-4f69-906c-08d3dabd3c61
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1594;
	6:0TUeJM/3liHk6IYeHa6OPnRvsa/35nn3H9f9XJ/mi/o2kbRSCBHcWMVHC7kcGNLXSDhyjOENIUroQOJvfQoBRyTWeeuMOUPO0aW+KPe0vuuG17XvQ8HRPNYUgzGl6ZSQIaI7pLuDgjfEtEzGzmwWoquSIEUYBxxODmGeyLg4wWYWTMrpvcVtVyf7Zom6NrBmZlOr56TOy3YNyamaWr2+cRT2IHVwDox0uNlJvVW1VJthCJC4A+wdXHRV/2h37ACjgl3GXg1bBvaU/n04eIon8GciPGyY7tw1c5QSeOXsHuY=;
	5:sT6t7G6Cugmuw0GEttAGYbtoBDU750vpIUYaxJPf9mqr53C/Ea1Z0p2OoVvWENXyRXCZ3ORagonl/9N5lfUhqSsxYZkTRWRoGhzNW1eVbiwpg5oVS9QjB8/0n/Ar6MafXvOxJNgzER89NEPDpJAO3Q==;
	24:S1kLUlQm8Mo43x3e/V35k8F8j7F0f9qC2+tzehuYxJcWue2T3phzbxVbgAMz5LjBog4FgcFzIuZtPFkAjES5GtKqSOIEp3xDCxKEE1+nRSU=;
	7:ccXcm+Vu28GjvxWf8LwN6sUXTu5b6TxNqNJ++61b4vaRstaefpzMhVNO62EQ9plFuyr6lWCMxA1JA5jBIiGIzlnrz5R8T9waycCC79cyd1ZX9Dvp/ATUxmD51/MwdpaZtMFF4z6UX+L9+NaNdPL2G3f1SR3x+7QpR9XWcVoqNDZUclHti0gXxOEEG38mdOhQXHVv+psj5+6zprSBzcqGIpK1oLGCNq8/SVxMXhMD2Sew9kDOhsA227ZOlMIOOSTc
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1594;
x-microsoft-antispam-prvs: <CY1PR0101MB159496E138982384125A571CD7FF0@CY1PR0101MB1594.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:CY1PR0101MB1594; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1594; 
x-forefront-prvs: 006339698F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(24454002)(377454003)(19625215002)(5001770100001)(2900100001)(5002640100001)(2501003)(106116001)(19580405001)(10400500002)(4001520100001)(66066001)(50986999)(19580395003)(54356999)(76176999)(107886002)(92566002)(81166006)(2950100001)(7906003)(5660300001)(33656002)(586003)(87386001)(15975445007)(74316002)(8676002)(3280700002)(87936001)(122556002)(77096005)(3846002)(11100500001)(9686002)(19617315012)(3660700001)(7846002)(6116002)(102836003)(86362001)(2906002)(3900700001)(189998001)(8936002)(7696004)(19627405001)(16236675004)(7736002)(5001760100003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1594;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2016 03:31:08.1618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1594
Subject: Re: ac_cv_sizeof_long size definition by SDK
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
X-List-Received-Date: Mon, 12 Sep 2016 03:31:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB159483A6B9D1F2F7FD5C87A2D7FF0CY1PR0101MB1594_"

--_000_CY1PR0101MB159483A6B9D1F2F7FD5C87A2D7FF0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.

I further gathered info and filed bellow.

(This is the first time I file a case against yoctoproject bugzilla, so ple=
ase point me if anything is not in convention.)


https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10255

________________________________
From: Mark Hatle <mark.hatle@windriver.com>
Sent: Friday, September 9, 2016 11:46 PM
To: Takashi Matsuzawa; yocto@yoctoproject.org
Subject: Re: [yocto] ac_cv_sizeof_long size definition by SDK

On 9/9/16 6:33 AM, Takashi Matsuzawa wrote:
> Hello, Yocto.
>
>
> I am now puzzled by this variable ste in $CONFIG_SITE setup file in
> Yocto-generated SDK.
>
>
> I generated x86_64 host, arm (32bit) target SDK.
>
> And if I invoke $CC (arm-poky-linux-gnueabi-gcc), using this SDK, sizeof =
(long)
> is 4 (long =3D int)
>
>
> However, if I look into $CONFIG_SITE's definition of ac_cv_sizeof_long, i=
t is
> defined as '8'.
>
> I feel this is strange since if this cached configure data is for the tar=
get
> (and cross-compiling), this value should be 4, to match the above
> (arm-poky-linux-gnueabi-gcc) result.
>
> (I think this part of the cache is being copied from poky/meta/site/x86_6=
4-linux, )

There should be multiple caches.  There may be one for the host (nativesdk)=
 and
one for each target (arm 32-bit).

Once you load the environment file for the arm system, the CONFIG_SITE sett=
ing
should point to the proper settings for the environment file you have loade=
d.

In a Power (32-bit) SDK I had laying around:

sourcing "environment-setup-powerpc-linux"

results in:

CONFIG_SITE=3D.../sdk/site-config-powerpc-linux

if I look at that file:

ac_cv_sizeof_long=3D${ac_cv_sizeof_long=3D4}

which is the correct value.


If this is NOT what you are seeing in your generated SDKs, and you are load=
ing
the proper environment file, please file a defect with the Yocto Project
version, your configuration information and a way to reproduce the problem.

--Mark

>
> This is causing break if I build autotool based program using the SDK.
>
>
> Am I doing mis-use of SDK here?
>
>
>
>
>


--_000_CY1PR0101MB159483A6B9D1F2F7FD5C87A2D7FF0CY1PR0101MB1594_
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
<p><span style=3D"font-size: 12pt;">I further gathered info and filed bello=
w.</span><br>
</p>
<p>(This is the first time I file a case against yoctoproject bugzilla, so =
please point me if anything is not in convention.)</p>
<p><br>
</p>
<p><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10255" cl=
ass=3D"OWAAutoLink" id=3D"LPlnk45060">https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D10255</a></p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Mark Hatle &lt;mark=
.hatle@windriver.com&gt;<br>
<b>Sent:</b> Friday, September 9, 2016 11:46 PM<br>
<b>To:</b> Takashi Matsuzawa; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] ac_cv_sizeof_long size definition by SDK</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On 9/9/16 6:33 AM, Takashi Matsuzawa wrote:<br>
&gt; Hello, Yocto.<br>
&gt; <br>
&gt; <br>
&gt; I am now puzzled by this variable ste in $CONFIG_SITE setup file in<br=
>
&gt; Yocto-generated SDK. <br>
&gt; <br>
&gt; <br>
&gt; I generated x86_64 host, arm (32bit) target SDK.<br>
&gt; <br>
&gt; And if I invoke $CC (arm-poky-linux-gnueabi-gcc), using this SDK, size=
of (long)<br>
&gt; is 4 (long =3D int)<br>
&gt; <br>
&gt; <br>
&gt; However, if I look into $CONFIG_SITE's definition of ac_cv_sizeof_long=
, it is<br>
&gt; defined as '8'.<br>
&gt; <br>
&gt; I feel this is strange since if this cached configure data is for the =
target<br>
&gt; (and cross-compiling), this value should be 4, to match the above<br>
&gt; (arm-poky-linux-gnueabi-gcc) result.<br>
&gt; <br>
&gt; (I think this part of the cache is being copied from poky/meta/site/x8=
6_64-linux, )<br>
<br>
There should be multiple caches.&nbsp; There may be one for the host (nativ=
esdk) and<br>
one for each target (arm 32-bit).<br>
<br>
Once you load the environment file for the arm system, the CONFIG_SITE sett=
ing<br>
should point to the proper settings for the environment file you have loade=
d.<br>
<br>
In a Power (32-bit) SDK I had laying around:<br>
<br>
sourcing &quot;environment-setup-powerpc-linux&quot;<br>
<br>
results in:<br>
<br>
CONFIG_SITE=3D.../sdk/site-config-powerpc-linux<br>
<br>
if I look at that file:<br>
<br>
ac_cv_sizeof_long=3D${ac_cv_sizeof_long=3D4}<br>
<br>
which is the correct value.<br>
<br>
<br>
If this is NOT what you are seeing in your generated SDKs, and you are load=
ing<br>
the proper environment file, please file a defect with the Yocto Project<br=
>
version, your configuration information and a way to reproduce the problem.=
<br>
<br>
--Mark<br>
<br>
&gt; <br>
&gt; This is causing break if I build autotool based program using the SDK.=
<br>
&gt; <br>
&gt; <br>
&gt; Am I doing mis-use of SDK here?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_CY1PR0101MB159483A6B9D1F2F7FD5C87A2D7FF0CY1PR0101MB1594_--
