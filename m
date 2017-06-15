Return-Path: <lm.chew@free2move.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E76ABE00B9F; Thu, 15 Jun 2017 11:26:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ED83E00B9D
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 11:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=free2moveholding.onmicrosoft.com; s=selector1-free2move-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=NHwzkozFvAvjMjF/keum0cXva6wKo1DZlOqsBO7gUDI=;
	b=jA9xg8ZvebT7t7XgCbqErbm7At5xL5enbTH7zH1YFYxvMyrlf4vEs42OFDdpYScPf253JFjOiDf9PXIbCnwUseGYcDn2X8oYLrpTHjvcko5qxor47sZSOKfbnYiEFPJGw4dykfPIMtH6llW+6lGI3tYhOYZlv5A1OvhCftku2yg=
Received: from HE1PR0101MB1609.eurprd01.prod.exchangelabs.com (10.166.118.143)
	by HE1PR0101MB1609.eurprd01.prod.exchangelabs.com (10.166.118.143)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1157.12;
	Thu, 15 Jun 2017 15:53:39 +0000
Received: from HE1PR0101MB1609.eurprd01.prod.exchangelabs.com
	([fe80::c518:b688:cc35:d08b]) by
	HE1PR0101MB1609.eurprd01.prod.exchangelabs.com
	([fe80::c518:b688:cc35:d08b%14]) with mapi id 15.01.1157.021;
	Thu, 15 Jun 2017 15:53:39 +0000
From: Lm Chew <lm.chew@free2move.se>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Thread-Topic: [yocto] Failed to build gdb
Thread-Index: AQHS5ad6OzQBoNl9E0egwpiWdjBn7KImCIkAgAAFdUM=
Date: Thu, 15 Jun 2017 15:53:39 +0000
Message-ID: <HE1PR0101MB1609980352E7D121081E3339C3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
References: <HE1PR0101MB16096D927B28B01A891DDBABC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>,
	<CAHiDW_F33q1aas_g+NgdqyHdphx=n4ACkvYCSf5t+bE-QOFOMA@mail.gmail.com>
In-Reply-To: <CAHiDW_F33q1aas_g+NgdqyHdphx=n4ACkvYCSf5t+bE-QOFOMA@mail.gmail.com>
Accept-Language: en-MY, en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
	header.d=none; intel.com;
	dmarc=none action=none header.from=free2move.se; 
x-originating-ip: [2a01:111:e400:7a2e:cafe::ab]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0101MB1609;
	7:QE7v7VJjUL0MQCvfmkG+QVsuCx+Qx5f+c740tm1pQk4GYnubWAaitdClYEUA13OQrNgWXDCjO521xoUgcFRUy/LFI1kt6tmNX9BDRW/17r8jRTuVI+y2B7B2v/dvFw1VSFy0QwhSbZ6d5Po4PLR5JTOCdYyCm0WDU5/vka+E9xKO5u59+8wNoWi5rE22M4KIaY5+cKco/P3CM65sIU2T4uqhAsfloW4APKK6FgdLsNt2dlbFcugsWb9058KsflWHMM23SEsnh95s2tFCGIUcdftWzGxi8EbR8myj5YmWBKmMCd1kpC6U3EMBggeZ9I5pn7PRBi3oSTC8xUNa0g87Sw==
x-ms-traffictypediagnostic: HE1PR0101MB1609:
x-ms-office365-filtering-correlation-id: 08cd8bf8-7ee4-446a-27b5-08d4b406b0e0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201702281549075);
	SRVR:HE1PR0101MB1609; 
x-microsoft-antispam-prvs: <HE1PR0101MB1609D92703078E0EC76E7A24C3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(100000703101)(100105400095)(3002001)(10201501046)(6041248)(20161123564025)(2016111802025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123560025)(20161123562025)(20161123555025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HE1PR0101MB1609; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1PR0101MB1609; 
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39830400002)(39400400002)(39450400003)(39410400002)(24454002)(377454003)(54896002)(6246003)(38730400002)(110136004)(6506006)(9686003)(8936002)(25786009)(8676002)(33656002)(54356999)(76176999)(3660700001)(14454004)(53936002)(4326008)(50986999)(99286003)(236005)(3280700002)(81166006)(74482002)(6436002)(6916009)(53546009)(55016002)(189998001)(2950100002)(2906002)(74316002)(478600001)(5660300001)(2900100001)(6116002)(229853002)(102836003)(19627405001)(7736002)(86362001)(5250100002)(7696004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0101MB1609;
	H:HE1PR0101MB1609.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: free2move.se
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2017 15:53:39.5075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8e7c9a07-0b12-4786-9e6b-9e1f7e817f55
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0101MB1609
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
X-List-Received-Date: Thu, 15 Jun 2017 18:26:30 -0000
Content-Language: en-MY
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0101MB1609980352E7D121081E3339C3C00HE1PR0101MB1609_"

--_000_HE1PR0101MB1609980352E7D121081E3339C3C00HE1PR0101MB1609_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jussi,


Thanks! That does the trick.


Best Regards,

Chew

________________________________
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Sent: Thursday, 15 June, 2017 11:13:20 PM
To: Lm Chew
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Failed to build gdb

On 15 June 2017 at 10:19, Lm Chew <lm.chew@free2move.se<mailto:lm.chew@free=
2move.se>> wrote:

| /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined r=
eference to `_rl_completion_prefix_display_length'

| /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined r=
eference to `rl_sort_completion_matches'
| collect2: error: ld returned 1 exit status

Making an educated guess here: Because of the INCOMPATIBLE_LICENSE setting =
you end up with an ancient version of readline that doesn't actually provid=
e the API that gdb needs. You may have to allow GPLv3+ for readline as well=
.

Jussi


--_000_HE1PR0101MB1609980352E7D121081E3339C3C00HE1PR0101MB1609_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi Jussi,</p>
<p><br>
</p>
<p>Thanks! That does the trick.</p>
<p><br>
</p>
<p>Best Regards,</p>
<p>Chew</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jussi Kukkonen &lt;ju=
ssi.kukkonen@intel.com&gt;<br>
<b>Sent:</b> Thursday, 15 June, 2017 11:13:20 PM<br>
<b>To:</b> Lm Chew<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Failed to build gdb</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra">
<div class=3D"gmail_quote">On 15 June 2017 at 10:19, Lm Chew <span dir=3D"l=
tr">&lt;<a href=3D"mailto:lm.chew@free2move.se" target=3D"_blank">lm.chew@f=
ree2move.se</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_2896006003598721310divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr=
">
<p><span style=3D"font-size:12pt">| /usr/src/debug/gdb/7.12.1-r0/</span><wb=
r style=3D"font-size:12pt"><span style=3D"font-size:12pt">gdb-7.12.1/gdb/co=
mpleter.c:</span><wbr style=3D"font-size:12pt"><span style=3D"font-size:12p=
t">1862: undefined reference to `_rl_completion_prefix_</span><wbr style=3D=
"font-size:12pt"><span style=3D"font-size:12pt">display_length'</span><br>
</p>
<div>| /usr/src/debug/gdb/7.12.1-r0/<wbr>gdb-7.12.1/gdb/completer.c:<wbr>18=
62: undefined reference to `rl_sort_completion_matches'</div>
<div>| collect2: error: ld returned 1 exit status</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Making an educated guess here: Because of the INCOMPATIBLE_LICENSE set=
ting you end up with an ancient version of readline that doesn't actually p=
rovide the API that gdb needs. You may have to allow GPLv3&#43; for readlin=
e as well.</div>
<div><br>
</div>
<div>Jussi</div>
<div><br>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR0101MB1609980352E7D121081E3339C3C00HE1PR0101MB1609_--
