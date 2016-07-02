Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52647E00C52; Fri,  1 Jul 2016 19:27:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 89890 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Jul 2016 19:27:15 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0075.outbound.protection.outlook.com [104.47.33.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6D46E00C39
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 19:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=EQ/fHhw30UQG6SdopkBa4GMOBC7AgIU4rDcbjU+pyNQ=;
	b=W5ZvKAjshBzkZmhlSPRJdMLHlJQtcgWVeKX/QbaUWzsef8uOy8pRLWt2yq7yJ+bl3B4uxDQlVfsOj/GDd+EKRv6ggNUDV4fsXaqMermRWQ0zwtrV/Qp4M0YUTcs1763xs8jp9fV74nfM20q1rzu/f/k1IlE5yACrzQAv1Dn3GgI=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1595.prod.exchangelabs.com (10.163.139.139) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Sat, 2 Jul 2016 02:12:51 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0523.025; Sat, 2 Jul 2016 02:12:51 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: Daniel. <danielhilst@gmail.com>, "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Shorter build time?
Thread-Index: AQHR0zfz8t/RS5a5ckC5nKnzjXT7MaADxyWAgAAG+QCAAAMsgIAAjX4h
Date: Sat, 2 Jul 2016 02:12:51 +0000
Message-ID: <CY1PR0101MB15943BB45183B750D36E8B60D7260@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
	<CAJTo0LbhtsE_bMdiVWrVkZWkHTero5Z+TDn0iuPzGivSH8239Q@mail.gmail.com>,
	<CAF3SDA5CF1ihp3W6Lx1WpLpyiJ0v4ed14Aa1vTLWFyiHmdkZFw@mail.gmail.com>
In-Reply-To: <CAF3SDA5CF1ihp3W6Lx1WpLpyiJ0v4ed14Aa1vTLWFyiHmdkZFw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 1bb60800-2b5e-4ed9-08ba-08d3a21e5f1b
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1595;
	6:591ZzkOidzhJGJwlEHRf2G1dPl40mgf6CPgrQMxVh+2X6icfzlagIuxsywaeYhIcNmi2ymKJ1V5NDSMbSxepN2RKpNLPulOerX++Wn/RLaMCIJTOW8wswbMCu4plkmWwgB/3BcVpQsP+1OeoBpR19fcGVZ2J1Rynwun9Whnau6pstQll+hYWdmLz04ZqGsDgQJE1l1AskxKlCzPcSeThK6QglHSfkSKg4AJlVLx3nx7A4hzP2a+seHOKR/zoXp06mK7nfq5G95c0dGx7e/tjNwm5wx1o55rXmagZKIvj7cTUx+WbuDO5bb3wSXk3gM7e;
	5:fVse3aqZOfSLjfqVZPU0hcDwCqhxNgvnniuZj/g/OxRLcHWNlB4G+j8EO9zETTdNo3tQlC8aLhmeBdtfHeWCTSAzPbtMpLiLYcEOMR5aNsO7KlHyEAKK0RoEaooBwuzLaM2yZIH/+MJcukNwwle9MQ==;
	24:/VVZ5Wu7VvyfSjaVl1aDtWrajcikDuCbx0MzpAlCMeXeT7zWfaDzJ3gEhZq+vReGqwP/Im2yQpa2oUYjnREnws27yiMXKKaBmddAYL3PF8c=;
	7:mNgKkNgn+pXspNl+dBKn2Ow2qZKGhQ6KLtbq3ofjAib+uciyfcXRhee0gk3SWaHvfCo4D26jWHZWEJGJRdwjvSPlJttU2HNOyG8UMmNFzp3tJ/CkbeABlSOQ2i7riVlQJp1Cw0I5erWAJJmclvRG/fk6xTLVaVAeighkI8FZB5wLqMV7TM8bJ/QQIXknGPjqSkm2jLvv/w6LZpsQy9zccOk6e0h7bgsrtVe7yD4uNS0FfKGB+22CscSAvweumYnC8T1utDWDIdKDQ5Lcgw0blA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1595;
x-microsoft-antispam-prvs: <CY1PR0101MB1595B3F76ADC4E657947F460D7260@CY1PR0101MB1595.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:CY1PR0101MB1595; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1595; 
x-forefront-prvs: 0991CAB7B3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(377454003)(24454002)(377424004)(106116001)(106356001)(19625215002)(2906002)(105586002)(4326007)(5001770100001)(86362001)(101416001)(2950100001)(11100500001)(2900100001)(97736004)(122556002)(93886004)(102836003)(77096005)(3846002)(19627405001)(6116002)(54356999)(76176999)(10400500002)(586003)(50986999)(92566002)(87936001)(19580395003)(66066001)(19580405001)(33656002)(7846002)(8936002)(9686002)(68736007)(8676002)(5002640100001)(81156014)(81166006)(3900700001)(7736002)(3280700002)(189998001)(345774005)(5003600100003)(74316002)(3660700001)(16236675004)(7696003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1595;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2016 02:12:51.6516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1595
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Sat, 02 Jul 2016 02:27:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB15943BB45183B750D36E8B60D7260CY1PR0101MB1594_"

--_000_CY1PR0101MB15943BB45183B750D36E8B60D7260CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hmm, thank you for your comments.

So, they may be talking about single-thread nature within a python program,=
 and as for bitbake python tasks they should be working in parallel.


There seems to be PyPy, Stackless Python, etc. but I am not sure they can b=
e tried 'in-place' to see if they work faster.

________________________________
From: Daniel. <danielhilst@gmail.com>
Sent: Saturday, July 2, 2016 2:13 AM
To: Burton, Ross
Cc: Takashi Matsuzawa; yocto@yoctoproject.org
Subject: Re: [yocto] Shorter build time?

So we have full parallelism :)

2016-07-01 14:01 GMT-03:00 Burton, Ross <ross.burton@intel.com>:
>
> On 1 July 2016 at 17:37, Daniel. <danielhilst@gmail.com> wrote:
>>
>> I read that python can't execute multiple threads simultaneously, but
>> that wouldn't be a problem if each python task is executed at its own
>> interpreter instance (process). This last statement is what I don't
>> really know, some experts on Yocto's internals may clarify that, maybe
>
>
> Yes, each worker is a separate Python process.
>
> Ross



--
"Do or do not. There is no try"
  Yoda Master

--_000_CY1PR0101MB15943BB45183B750D36E8B60D7260CY1PR0101MB1594_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hmm, thank you for your comments.</p>
<p>So, they may be talking about single-thread nature within a python progr=
am, and as for bitbake python tasks they should be&nbsp;working in parallel=
.</p>
<p><br>
</p>
<p><span>There seems to be&nbsp;PyPy, Stackless Python, etc. but I am not s=
ure they can be tried 'in-place' to see if they work faster.</span><br>
</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Daniel. &lt;danielh=
ilst@gmail.com&gt;<br>
<b>Sent:</b> Saturday, July 2, 2016 2:13 AM<br>
<b>To:</b> Burton, Ross<br>
<b>Cc:</b> Takashi Matsuzawa; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Shorter build time?</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"PlainText">So we have full parallelism :)<br>
<br>
2016-07-01 14:01 GMT-03:00 Burton, Ross &lt;ross.burton@intel.com&gt;:<br>
&gt;<br>
&gt; On 1 July 2016 at 17:37, Daniel. &lt;danielhilst@gmail.com&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; I read that python can't execute multiple threads simultaneously, =
but<br>
&gt;&gt; that wouldn't be a problem if each python task is executed at its =
own<br>
&gt;&gt; interpreter instance (process). This last statement is what I don'=
t<br>
&gt;&gt; really know, some experts on Yocto's internals may clarify that, m=
aybe<br>
&gt;<br>
&gt;<br>
&gt; Yes, each worker is a separate Python process.<br>
&gt;<br>
&gt; Ross<br>
<br>
<br>
<br>
-- <br>
&quot;Do or do not. There is no try&quot;<br>
&nbsp; Yoda Master<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_CY1PR0101MB15943BB45183B750D36E8B60D7260CY1PR0101MB1594_--
