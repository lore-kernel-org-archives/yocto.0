Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 460E4E00F0E; Mon, 11 Jul 2016 22:42:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0087.outbound.protection.outlook.com [104.47.33.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F201BE00F0E
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 22:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=OQY0CcSUttb6UC5uIAG6w/25Rx9BFx++rPDFiJYzKsM=;
	b=njjhaXYCjtTAs+x/Rq5fMlI6fTsvSvUfFZLnpOV8+mmzukgZ1+Lbn0th5mVv5GINRKbE56JDxz2W1OVN1qrgDeeJyKllQ0NnwFHkNIN5zD9T4WBWqPP+JEtZyhQVx5uTKk8CK/yfj5SQdIzWRnQkEAsaHe6Ip20/Y7sZxkILcUo=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1596.prod.exchangelabs.com (10.163.139.14) with Microsoft
	SMTP Server (TLS) id 15.1.539.14; Tue, 12 Jul 2016 05:42:09 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0534.022; Tue, 12 Jul 2016 05:42:09 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: Clemens Lang <Clemens.Lang@bmw-carit.de>
Thread-Topic: [yocto] linux/limits.h: No such file or directory
Thread-Index: AQHR1/QQSjIO26PZcUmqZTdCozHTy6AMdbcAgAfZCC0=
Date: Tue, 12 Jul 2016 05:42:09 +0000
Message-ID: <CY1PR0101MB159434803789B80D34BE5E66D7300@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB15942895A402A660E25E1963D73B0@CY1PR0101MB1594.prod.exchangelabs.com>,
	<A67957CD-65BD-43D0-ABA6-7F14D62D82EC@bmw-carit.de>
In-Reply-To: <A67957CD-65BD-43D0-ABA6-7F14D62D82EC@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 78c3adfc-f1b5-4d69-4d9b-08d3aa17445b
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1596;
	6:yQg37L3fF73WZ8oE8fXrpMAy15N/vq2JeNb93AD42W4ArId1wx7lgYP5srvOTLcvP5fHTRdzspltN4crWrplXX6FSTVQyzw6nq9dHCdxugWgcBCUstR3XLZAoBhOYL0WxfeIOZB039XCCbBGe1li4ZCn1qEwthaWkMyj81LgDRYT46S2pwGghFcw4ndXH3wrs77tKe2tu1POOg/Gx/RsGNxQwFlSbuaQODWb+WouJMVvwmNvDlbAXdEwkcwibc6RUzIyk90G54tU+e3n1AF1sf3bSV6Kc/Lp2M2oAB/mYno=;
	5:IAcRGBpaS1vvUiwoRmcQko09NCZRb9eFIKd6SbnFC8IW3X58e4Py97jo9ASwHOveUrN5VAf+aJHxMpJOjmh/oZDYBonqH85kmDWgB/0mWvCe5Jnk5HMSkqohNJC8cK/Vd4YqSZSw8wb22xDu+T24YQ==;
	24:QGx15Qwfs+Sl62BuskSpEB5Ec6iHwF3t+Bj2utgFhKqw8x+hp3Sy1U1Nz1xTuIIF0CAtgJgGJDb5Z1kv2onuQ33c4Dc7Sd/grn/wO4EU86U=;
	7:apNvvycd3eBzwnbRAZw577FQsJG7pGPpWkwnXme3FkRCIF1jxHOdHS8IfpBMF7LdCVI1c88wvkZnsNEZooWSTNGGix3d5Lvbufg0pnQKwB0HUKThERP5ht84K9yL+YB9flXrOUPqF7u5UqsFXmr56lgyWs4jSDbEHjd2wRNCgwmoPKDLmAPTPFFinaxkVkJhw19ShhaR7LkpVvoChG4jWH0XnLHyiyPXaXdBdhci1VFmtOb1ytEWS10QJIAefZYo
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1596;
x-microsoft-antispam-prvs: <CY1PR0101MB159624CAAFD470A68193DE3FD7300@CY1PR0101MB1596.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:CY1PR0101MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1596; 
x-forefront-prvs: 0001227049
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(24454002)(199003)(189002)(377454003)(2906002)(105586002)(50986999)(54356999)(15975445007)(76176999)(86362001)(81156014)(586003)(7846002)(106116001)(106356001)(4326007)(68736007)(3280700002)(8676002)(101416001)(19580405001)(3660700001)(81166006)(3900700001)(19625215002)(8936002)(16601075003)(9686002)(77096005)(19580395003)(16236675004)(11100500001)(122556002)(6116002)(5002640100001)(10400500002)(87936001)(92566002)(19617315012)(189998001)(7736002)(5003600100003)(7696003)(97736004)(33656002)(110136002)(7906003)(19627405001)(102836003)(2900100001)(2950100001)(66066001)(74316002)(345774005)(3846002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1596;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2016 05:42:09.5794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1596
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux/limits.h: No such file or directory
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
X-List-Received-Date: Tue, 12 Jul 2016 05:42:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB159434803789B80D34BE5E66D7300CY1PR0101MB1594_"

--_000_CY1PR0101MB159434803789B80D34BE5E66D7300CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, thank you for your suggestion.

Yes, I was aware of the post, but I was not sure if you came up with a work=
around..


In fact, my problem was gone once I physically (not by -c cleansstate, clea=
nall, etc.) removed SSTATE_CACHE directory.

(I think bitbake fails in unclear errors if previous build attempts failed =
or interrupted and leaving files in irregular states.)


Building everything from scratch was a pain (more than 1 day for my build m=
achines), so if I see the same issue next time, I will try your workaround.


________________________________
From: Clemens Lang <Clemens.Lang@bmw-carit.de>
Sent: Thursday, July 7, 2016 4:45 PM
To: Takashi Matsuzawa
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] linux/limits.h: No such file or directory

Hi,

Takashi Matsuzawa <tmatsuzawa@uievolution.com> wrote:

> >configure: error: C preprocessor "x86_64-pokysdk-linux-gcc -E
> --sysroot=3D/mnt/ssd2/>yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-po=
kysdk-linux
> " fails sanity check
> >| See `config.log' for more details.
>
> If I look into config.log
> (gcc-4.9.2/build.x86_64-pokysdk-linux.x86_64-pokysdk-linux/libgcc/config.=
log)
> as suggested, I can see the following.
> It says linux/limits.h is not found.
>
> (in config.log)
> >usr/include/bits/local_lim.h:38:26: fatal error: linux/limits.h: No such
> file or directory

This looks a lot like a problem we've seen a while ago. See
   https://lists.yoctoproject.org/pipermail/yocto/2015-July/025856.html
which is the mailing list post a colleague sent to the list back then.

Looking at our git history, the workaround we did back then was add a
dependency from gcc-crosssdk-initial to nativesdk-linux-libc-headers if
$TARGET_OS starts with "linux".


HTH,
Clemens
--
BMW Car IT GmbH
Clemens Lang
Spezialist Entwicklung
Lise-Meitner-Stra=DFe 14
89081 Ulm

Tel: +49-731-37804182
Mail: clemens.lang@bmw-carit.de
Web: http://www.bmw-carit.de
--------------------------------------------------------------------
BMW Car IT GmbH
Gesch=E4ftsf=FChrer: Michael W=FCrtenberger und Alexis Trolin
Sitz und Registergericht: M=FCnchen HRB 134810
--------------------------------------------------------------------

--_000_CY1PR0101MB159434803789B80D34BE5E66D7300CY1PR0101MB1594_
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
<p>Hello, thank you for your suggestion.</p>
<p>Yes, I was aware of the post, but I was not sure if you came up with a w=
orkaround..</p>
<p><br>
</p>
<p>In fact, my problem was gone once I physically (not by -c cleansstate, c=
leanall, etc.) removed SSTATE_CACHE directory.</p>
<p>(I think bitbake fails in unclear errors if previous build attempts&nbsp=
;failed or interrupted and leaving files in irregular states.)</p>
<p><br>
</p>
<p>Building everything from scratch was a pain (more than 1 day for my buil=
d machines), so if I see the same issue next time, I will try your workarou=
nd.</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Clemens Lang &lt;Cl=
emens.Lang@bmw-carit.de&gt;<br>
<b>Sent:</b> Thursday, July 7, 2016 4:45 PM<br>
<b>To:</b> Takashi Matsuzawa<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] linux/limits.h: No such file or directory</font=
>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi,<br>
<br>
Takashi Matsuzawa &lt;tmatsuzawa@uievolution.com&gt; wrote:<br>
<br>
&gt; &gt;configure: error: C preprocessor &quot;x86_64-pokysdk-linux-gcc -E=
&nbsp; <br>
&gt; --sysroot=3D/mnt/ssd2/&gt;yocto/dev/tmp/x86-wk3/sysroots/x86_64-native=
sdk-pokysdk-linux&nbsp;
<br>
&gt; &quot; fails sanity check<br>
&gt; &gt;| See `config.log' for more details.<br>
&gt;<br>
&gt; If I look into config.log&nbsp; <br>
&gt; (gcc-4.9.2/build.x86_64-pokysdk-linux.x86_64-pokysdk-linux/libgcc/conf=
ig.log)&nbsp; <br>
&gt; as suggested, I can see the following.<br>
&gt; It says linux/limits.h is not found.<br>
&gt;<br>
&gt; (in config.log)<br>
&gt; &gt;usr/include/bits/local_lim.h:38:26: fatal error: linux/limits.h: N=
o such&nbsp; <br>
&gt; file or directory<br>
<br>
This looks a lot like a problem we&#8217;ve seen a while ago. See<br>
&nbsp;&nbsp; <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2015=
-July/025856.html" id=3D"LPlnk746859">
https://lists.yoctoproject.org/pipermail/yocto/2015-July/025856.html</a><br=
>
which is the mailing list post a colleague sent to the list back then.<br>
<br>
Looking at our git history, the workaround we did back then was add a&nbsp;=
 <br>
dependency from gcc-crosssdk-initial to nativesdk-linux-libc-headers if&nbs=
p; <br>
$TARGET_OS starts with &#8220;linux&#8221;.<br>
<br>
<br>
HTH,<br>
Clemens<br>
-- <br>
BMW Car IT GmbH<br>
Clemens Lang<br>
Spezialist Entwicklung<br>
Lise-Meitner-Stra=DFe 14<br>
89081 Ulm<br>
<br>
Tel: &#43;49-731-37804182<br>
Mail: clemens.lang@bmw-carit.de<br>
Web: <a href=3D"http://www.bmw-carit.de">http://www.bmw-carit.de</a><br>
--------------------------------------------------------------------<br>
BMW Car IT GmbH<br>
Gesch=E4ftsf=FChrer: Michael W=FCrtenberger und Alexis Trolin<br>
Sitz und Registergericht: M=FCnchen HRB 134810<br>
--------------------------------------------------------------------<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_CY1PR0101MB159434803789B80D34BE5E66D7300CY1PR0101MB1594_--
