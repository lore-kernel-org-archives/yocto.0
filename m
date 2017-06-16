Return-Path: <lm.chew@free2move.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23174E00B58; Thu, 15 Jun 2017 20:58:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.1.61 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 48236 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Jun 2017 20:58:41 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0061.outbound.protection.outlook.com [104.47.1.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 509F1E00A5C
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 20:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=free2moveholding.onmicrosoft.com; s=selector1-free2move-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/GmnLQVIKMP/o1k1KLQz9McSc4nfsuesVz5INZQHxoQ=;
	b=j4Tb/LlV+WGZeHG17Z5BURvorr8Begduu0DWMetpsKPgrxGQTBF44bgrCB12VOO6cjtwx07PeRyqXmlxAtDh+SJze6ix8VTrgQRCw2gXpLc++DZJwFyDG8kgmp4Tc/ufgHeyEDTDIeWjBxXCefIN5jBiEUt8H0eIeUwxbWCrzDc=
Received: from AM4PR0101MB1603.eurprd01.prod.exchangelabs.com (10.166.128.145)
	by AM4PR0101MB1604.eurprd01.prod.exchangelabs.com (10.166.128.146)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1157.12;
	Fri, 16 Jun 2017 03:43:57 +0000
Received: from AM4PR0101MB1603.eurprd01.prod.exchangelabs.com
	([fe80::9888:754f:8fb6:cacf]) by
	AM4PR0101MB1603.eurprd01.prod.exchangelabs.com
	([fe80::9888:754f:8fb6:cacf%15]) with mapi id 15.01.1157.022;
	Fri, 16 Jun 2017 03:43:57 +0000
From: Lm Chew <lm.chew@free2move.se>
To: Andre McCurdy <armccurdy@gmail.com>, Jussi Kukkonen
	<jussi.kukkonen@intel.com>
Thread-Topic: [yocto] Failed to build gdb
Thread-Index: AQHS5ad6OzQBoNl9E0egwpiWdjBn7KImCIkAgAArqQCAAKXPPQ==
Date: Fri, 16 Jun 2017 03:43:57 +0000
Message-ID: <AM4PR0101MB160342A82DCAF7490001DAC5C3C10@AM4PR0101MB1603.eurprd01.prod.exchangelabs.com>
References: <HE1PR0101MB16096D927B28B01A891DDBABC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
	<CAHiDW_F33q1aas_g+NgdqyHdphx=n4ACkvYCSf5t+bE-QOFOMA@mail.gmail.com>,
	<CAJ86T=WDF4YquMNjCKrAi+QXguVT=3kxdg-BpU5ZtdFbGG18NQ@mail.gmail.com>
In-Reply-To: <CAJ86T=WDF4YquMNjCKrAi+QXguVT=3kxdg-BpU5ZtdFbGG18NQ@mail.gmail.com>
Accept-Language: en-MY, en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=free2move.se; 
x-originating-ip: [2a01:111:e400:7a2e:cafe::9e]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM4PR0101MB1604;
	7:BgD4Q8cg/gMoghxcKH0QRxRkPsUhdaDRwIWh0tN1A7NoF6yvGc2YGI0rcoihEuHpBh6+MPaa9jHjVLIDOzCeNFrNBd0OhUn2BY+S6zC2pIXZsnlt9RkfGYcBIKQJR6IDKkQMPtuD1h34z+y1XvIjKnnep3JoqIkMnpq3ZzlZ9vI3r0eaD69iqE9BZ5jucIG2RC4LtZuRwuR9o/VM+asNXlDdRqNuij6HvPq2HRvaiVq5fEc2TNAPh/igwFPGBG5XnmTbJeh8+31Ut0iqVOhoJvktU1ZpMPGQA0XFRqGQzZYXS5+T1LiuGhF2G20Eqmn0Bol6TCGaeYrHlGNQQGue0Q==
x-ms-traffictypediagnostic: AM4PR0101MB1604:
x-ms-office365-filtering-correlation-id: a8462e39-5454-4128-b9fc-08d4b469eb30
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201702281549075);
	SRVR:AM4PR0101MB1604; 
x-microsoft-antispam-prvs: <AM4PR0101MB1604DD299F118566FC12D1F6C3C10@AM4PR0101MB1604.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(158342451672863)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(100000703101)(100105400095)(93006095)(93001095)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(2016111802025)(20161123560025)(20161123555025)(20161123562025)(20161123564025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:AM4PR0101MB1604; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:AM4PR0101MB1604; 
x-forefront-prvs: 0340850FCD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39450400003)(39830400002)(39410400002)(39400400002)(377454003)(24454002)(478600001)(966005)(7696004)(53546009)(2950100002)(106356001)(25786009)(6306002)(236005)(54356999)(9686003)(6436002)(55016002)(53936002)(6506006)(606005)(39060400002)(229853002)(3280700002)(99286003)(76176999)(50986999)(54896002)(86362001)(3660700001)(7736002)(74482002)(38730400002)(33656002)(189998001)(2906002)(7906003)(4326008)(2900100001)(6246003)(5250100002)(14454004)(81166006)(6116002)(102836003)(74316002)(5660300001)(8676002)(8936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0101MB1604;
	H:AM4PR0101MB1603.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: free2move.se
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2017 03:43:57.5706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8e7c9a07-0b12-4786-9e6b-9e1f7e817f55
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0101MB1604
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to build gdb
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
X-List-Received-Date: Fri, 16 Jun 2017 03:58:46 -0000
Content-Language: en-MY
Content-Type: multipart/alternative;
	boundary="_000_AM4PR0101MB160342A82DCAF7490001DAC5C3C10AM4PR0101MB1603_"

--_000_AM4PR0101MB160342A82DCAF7490001DAC5C3C10AM4PR0101MB1603_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, this way works too.

/Chew

________________________________
From: Andre McCurdy <armccurdy@gmail.com>
Sent: Friday, 16 June, 2017 1:49:36 AM
To: Jussi Kukkonen
Cc: Lm Chew; yocto@yoctoproject.org
Subject: Re: [yocto] Failed to build gdb

On Thu, Jun 15, 2017 at 8:13 AM, Jussi Kukkonen
<jussi.kukkonen@intel.com> wrote:
> On 15 June 2017 at 10:19, Lm Chew <lm.chew@free2move.se> wrote:
>>
>> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefine=
d
>> reference to `_rl_completion_prefix_display_length'
>>
>> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefine=
d
>> reference to `rl_sort_completion_matches'
>> | collect2: error: ld returned 1 exit status
>
> Making an educated guess here: Because of the INCOMPATIBLE_LICENSE settin=
g
> you end up with an ancient version of readline that doesn't actually prov=
ide
> the API that gdb needs. You may have to allow GPLv3+ for readline as well=
.

Or use gdb's bundled version of readline, which avoids needing to
whitelist additional packages. Try adding this to local.conf:

  PACKAGECONFIG_remove_pn-gdb =3D "readline"

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--_000_AM4PR0101MB160342A82DCAF7490001DAC5C3C10AM4PR0101MB1603_
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
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Thanks, this way works too.</p>
<p>/Chew</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Andre McCurdy &lt;a=
rmccurdy@gmail.com&gt;<br>
<b>Sent:</b> Friday, 16 June, 2017 1:49:36 AM<br>
<b>To:</b> Jussi Kukkonen<br>
<b>Cc:</b> Lm Chew; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Failed to build gdb</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Thu, Jun 15, 2017 at 8:13 AM, Jussi Kukkonen<br=
>
&lt;jussi.kukkonen@intel.com&gt; wrote:<br>
&gt; On 15 June 2017 at 10:19, Lm Chew &lt;lm.chew@free2move.se&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: un=
defined<br>
&gt;&gt; reference to `_rl_completion_prefix_display_length'<br>
&gt;&gt;<br>
&gt;&gt; | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: un=
defined<br>
&gt;&gt; reference to `rl_sort_completion_matches'<br>
&gt;&gt; | collect2: error: ld returned 1 exit status<br>
&gt;<br>
&gt; Making an educated guess here: Because of the INCOMPATIBLE_LICENSE set=
ting<br>
&gt; you end up with an ancient version of readline that doesn't actually p=
rovide<br>
&gt; the API that gdb needs. You may have to allow GPLv3&#43; for readline =
as well.<br>
<br>
Or use gdb's bundled version of readline, which avoids needing to<br>
whitelist additional packages. Try adding this to local.conf:<br>
<br>
&nbsp; PACKAGECONFIG_remove_pn-gdb =3D &quot;readline&quot;<br>
<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div>
</span></font>
</body>
</html>

--_000_AM4PR0101MB160342A82DCAF7490001DAC5C3C10AM4PR0101MB1603_--
