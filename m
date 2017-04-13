Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B85BE00995; Thu, 13 Apr 2017 00:08:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0051.outbound.protection.outlook.com [104.47.36.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AD26E00985
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 00:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=n7e5Mt2rbgT7K/V7o6dYCuM1+JndXPltxYZWSPc7d2U=;
	b=lPQ2AX4Vh9fg6Mmwc4Ix4HAcdi+zsbEPFgCzZsg5YDsKlecwLtY7gr59ynqk2se4AV5GHvye7bXoPThsm8n9Y1D6ZV2eKI5NZ9X6h+RrHW4TtyeHWg5L9YlPGWeLRyN6gL4kHpXE2N1o/3+HWLOvEdc5o61k2rb5f0rWSNzooDw=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2956.prod.exchangelabs.com (10.174.182.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.17; Thu, 13 Apr 2017 05:35:53 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.1019.025; Thu, 13 Apr 2017 05:35:53 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] 'and' combination for OVERRIDES values?
Thread-Index: AQHSs+sly3FCFoQBfkewnZpXpPIajqHCxEGAgAADFYk=
Date: Thu, 13 Apr 2017 05:35:53 +0000
Message-ID: <DM5PR0101MB29536B3C4B1F55AD1F0F0255B6020@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB29539EA7DC26F0544F7CE4BEB6020@DM5PR0101MB2953.prod.exchangelabs.com>,
	<2063715.rglnOqm99s@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2063715.rglnOqm99s@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [118.238.252.194]
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2956;
	7:ucy8BUATDD7PsJIXgGVY5SD0tJwuvvfVYprGW4Kei4rj0simd9zNBx1HJ+cwGGDKLTYqdWWCxYdZys81JfUGnlD4PvuEINDJoAqgxSR7js5OfjW5HeGENSPWl5gKLb1+4dDQLvWvGF/cfQjEou8iYqhhez5CACGlgZ3C6p9i2t5327y/PmzwASzbQcNUasptdlCEXq2kvUJ3YF6cgoTrO/j9eHCSxeNoasAH7i+rlMr4MQcRKobGOHcVBeuMh3MwNPUMKc5opLVRLvq5vKcEUTKhtXHnyHolF9yfacmAzJKHHKlJpqhp8W/Oojop+TdMxsTYnTWR5Xg8xYc1G4chbg==
x-ms-office365-filtering-correlation-id: 05ecafe8-57fb-4e13-56c2-08d4822ef3a5
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DM5PR0101MB2956; 
x-microsoft-antispam-prvs: <DM5PR0101MB2956DF75AAA23F5C89A539B0B6020@DM5PR0101MB2956.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(6041248)(20161123555025)(20161123562025)(20161123564025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(6072148);
	SRVR:DM5PR0101MB2956; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2956; 
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39410400002)(39400400002)(39830400002)(39450400003)(24454002)(377454003)(229853002)(3280700002)(66066001)(54356999)(9686003)(53936002)(54896002)(33656002)(6436002)(2906002)(7736002)(53546009)(122556002)(74316002)(189998001)(76176999)(50986999)(25786009)(5660300001)(55016002)(99286003)(6506006)(8936002)(6116002)(102836003)(19627405001)(3846002)(110136004)(2900100001)(38730400002)(86362001)(6606003)(7696004)(81166006)(3660700001)(8676002)(77096006)(6916009)(2950100002)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2956;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2017 05:35:53.1066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2956
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 'and' combination for OVERRIDES values?
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
X-List-Received-Date: Thu, 13 Apr 2017 07:08:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB29536B3C4B1F55AD1F0F0255B6020DM5PR0101MB2953_"

--_000_DM5PR0101MB29536B3C4B1F55AD1F0F0255B6020DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.


>AAA_xxx_yyy =3D "true"

Thank you, I will try.  I could not figure out but I feel it should work.

________________________________
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Sent: Thursday, April 13, 2017 2:23 PM
To: Takashi Matsuzawa
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] 'and' combination for OVERRIDES values?

On Thursday, 13 April 2017 12:16:08 PM NZST Takashi Matsuzawa wrote:
> I just wonder if there is convenient way of defining somthing in recipes
> based on combination of two OVERRIDES variables. Say, I have two variable=
s
> xxx and yyy.
>
> AAA =3D "false"
> AAA_xxx =3D "true"
> AAA_yyy =3D "true"
>
> But what if I want to set AAA to be "true" only when xxx and yyy are in
> OVERRIDES? (And also for 'or' condition.)

This should work for "and":

AAA_xxx_yyy =3D "true"

(There was a time many releases ago where this didn't, but it should work i=
n
any release in the last few years).

For "or" you already have the answer above, basically do it with the same
value for both overrides:

AAA =3D "false"
AAA_xxx =3D "true"
AAA_yyy =3D "true"

> The similar situation for do_install_append(), etc.
>
> do_install_append_xxx() {
> }
>
> do_install_append_yyy() {
> }

Same thing - for and:

do_install_append_xxx_yyy() {
}

for or:

do_install_append_xxx() {
}

do_install_append_yyy() {
}

Note, we're appending here rather than setting as above, but otherwise sett=
ing
a function is pretty much the same in terms of operations as a variable - t=
he
syntax is slightly different and immediate operations (such as +=3D) aren't
allowed, but the same rules apply for overrides and deferred operations suc=
h
as _append.

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

--_000_DM5PR0101MB29536B3C4B1F55AD1F0F0255B6020DM5PR0101MB2953_
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
<p>Hello.</p>
<p><br>
</p>
<p>&gt;<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, E=
mojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols; font-size: 13.3333px;">AAA_xxx_yyy =3D &quot;true&quot;</span></p>
<div><br>
</div>
Thank you, I will try. &nbsp;I could not figure out but I feel it should wo=
rk.<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Paul Eggleton &lt;p=
aul.eggleton@linux.intel.com&gt;<br>
<b>Sent:</b> Thursday, April 13, 2017 2:23 PM<br>
<b>To:</b> Takashi Matsuzawa<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] 'and' combination for OVERRIDES values?</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Thursday, 13 April 2017 12:16:08 PM NZST Takash=
i Matsuzawa wrote:<br>
&gt; I just wonder if there is convenient way of defining somthing in recip=
es<br>
&gt; based on combination of two OVERRIDES variables. Say, I have two varia=
bles<br>
&gt; xxx and yyy.<br>
&gt; <br>
&gt; AAA =3D &quot;false&quot;<br>
&gt; AAA_xxx =3D &quot;true&quot;<br>
&gt; AAA_yyy =3D &quot;true&quot;<br>
&gt; <br>
&gt; But what if I want to set AAA to be &quot;true&quot; only when xxx and=
 yyy are in<br>
&gt; OVERRIDES? (And also for 'or' condition.)<br>
<br>
This should work for &quot;and&quot;:<br>
<br>
AAA_xxx_yyy =3D &quot;true&quot;<br>
<br>
(There was a time many releases ago where this didn't, but it should work i=
n <br>
any release in the last few years).<br>
<br>
For &quot;or&quot; you already have the answer above, basically do it with =
the same <br>
value for both overrides:<br>
<br>
AAA =3D &quot;false&quot;<br>
AAA_xxx =3D &quot;true&quot;<br>
AAA_yyy =3D &quot;true&quot;<br>
&nbsp;<br>
&gt; The similar situation for do_install_append(), etc.<br>
&gt; <br>
&gt; do_install_append_xxx() {<br>
&gt; }<br>
&gt; <br>
&gt; do_install_append_yyy() {<br>
&gt; }<br>
<br>
Same thing - for and:<br>
<br>
do_install_append_xxx_yyy() {<br>
}<br>
<br>
for or:<br>
<br>
do_install_append_xxx() {<br>
}<br>
&nbsp;<br>
do_install_append_yyy() {<br>
}<br>
<br>
Note, we're appending here rather than setting as above, but otherwise sett=
ing <br>
a function is pretty much the same in terms of operations as a variable - t=
he <br>
syntax is slightly different and immediate operations (such as &#43;=3D) ar=
en't <br>
allowed, but the same rules apply for overrides and deferred operations suc=
h <br>
as _append.<br>
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

--_000_DM5PR0101MB29536B3C4B1F55AD1F0F0255B6020DM5PR0101MB2953_--
