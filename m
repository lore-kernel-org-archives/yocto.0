Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60273E00924; Tue,  7 Feb 2017 05:02:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.51.80 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Feb 2017 05:02:14 PST
Received: from SNT004-OMC3S43.hotmail.com (snt004-omc3s43.hotmail.com
	[65.54.51.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 931A8E00839
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 05:02:14 -0800 (PST)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com ([65.55.90.135])
	by SNT004-OMC3S43.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 7 Feb 2017 05:01:13 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=xeojWKwJKVVED1jdeKD9dgwp0Bt7rwLlBDh9RGWh0IU=;
	b=bc0IxkLwlWNF+t49sYU4g7+hY3MNP6C4fWs9r0+g5XCNqD6ZkYk7pjhjNTmc0MWnkw5uO1Cj1xHNXSB+u8tH7aPFJUMJ8vNrFSAQ+JqApDO5uI38OxfN4IWR/O7SqU6+WWxn4oOap7JYbMavCk2vxDhrxJ5nCgl+O3DmuerN6bZJKs/+hSD52JT6oqMbAhGBGdEY807nx8x6wYkD0dvkouoD+MaV7UrGaUOIorXF+BZosWKFPABNlV2X807caq7GGGV8wdtWjQKAsnXk2ZzNVtt6oDvD5wSg5ZJTNzlIGUzDntVRqKVlpfJbRnUY+LwYUVVPyF3AnehAnioT+JmARw==
Received: from VE1EUR02FT035.eop-EUR02.prod.protection.outlook.com
	(10.152.12.51) by VE1EUR02HT197.eop-EUR02.prod.protection.outlook.com
	(10.152.13.94) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.888.7;
	Tue, 7 Feb 2017 13:01:06 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com (10.152.12.57) by
	VE1EUR02FT035.mail.protection.outlook.com (10.152.12.86) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.888.7 via Frontend Transport; Tue, 7 Feb 2017 13:01:06 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.241])
	by AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.241])
	with mapi id 15.01.0888.025; Tue, 7 Feb 2017 13:01:05 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [dora] Compiling Qt 5.7 without meta-qt5
Thread-Index: AQHSgTef/mkt/UrNlUiFfhwlQMX1SKFdgb3X
Date: Tue, 7 Feb 2017 13:01:05 +0000
Message-ID: <AMSPR01MB1842B74A698BF6EC3378AEF92430@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
References: <AMSPR01MB184F3B10715A0857C3D716992430@AMSPR01MB184.eurprd01.prod.exchangelabs.com>,
	<CAJTo0LYqfUFrXy_O8WaBuNn43=dDoPMV=mf_c=wOAU6=gxEKfw@mail.gmail.com>
In-Reply-To: <CAJTo0LYqfUFrXy_O8WaBuNn43=dDoPMV=mf_c=wOAU6=gxEKfw@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:797792AD0805829ED079A0E3ADF4EA73841C70EB106E1C0F768532B3C6666ECB;
	UpperCasedChecksum:CBFC7611AF32A19517FFE11B479D535A6DAD256E38D1FD447A877CCF48B016FD;
	SizeAsReceived:7943; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [7AtEwCA8i968Oum8F2xrVl/8KmXReBOp]
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT197;
	5:9YiqcSya5YgyVe3lTTgCnTLuugcpme/938aG4D3N7sWjQXHodxQuEEJmNwvPHWJOS3r5PdCIReIDXlE7+gzVjlQbUpHXq8zEAs2Vdw4MhmcLYnZZH6fzypW43Cu39LteqFl0pkJ10ngTktvHA5voog==;
	24:SAAsgicHgxGQ9zsHfhd1Src/FLNZVE8CUnbefEg2oEp/rBrz3DZ+LbdQDWXpXTY+g6qQTzTPNzUnGkct6bmUENr4n0E8Lsn/qw6W40mtqg4=;
	7:O6AMBqXos5oPRPFWTLzkPrbUqzSO1X4TvU/5tzuvtZfvifGlyp4Qd586JSHXVP1yXHK8C6MDicq4ejuspNdIAsSGR0eALGbhFvvdVrCldM28YW4wrOXISGV73MZkSSYFOAcQfwmAsCIOk7Jn0QEElRFKnIo8YYdLvByxDNeQUam8xljB4rk8HCOaWNlx4DJN3Pknxmr0SXvtpZrBNYolD3Lr984K++oW7uVRHVsuT2HgRuE6BQ9n09GS7b/pZxVZYdZnAyklr0iv7kbnJW9nE/GRNQwNKe25vYl4G0CQfa1UDqanBeBsqUHzE860VesQeCOwqkS0rJSRDLjB2B+yOt7DE2Cc6xPtu6lt1NevbalUqTxmH58bK0aS0Zn2eS+UFWYg2MxsCUEj9xf55APKImJybmd2Aanzyus/+nVyUEVJNqc4X7v1w4UB9+jlW6fqv8WVheRl1xRiYyRL3PQXg4U+HjcmvaDNVhMmvDMvIluOOpORdR20Q2VOuqsRtluj6CODZQUQEPh2obQw98RV7g==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR02HT197;
	H:AMSPR01MB184.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 3d7b2f4e-c076-49c1-0547-08d44f5960a9
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(5061506426)(5061507331)(1603103135)(1601125107)(1701031045);
	SRVR:VE1EUR02HT197; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(432015086)(82015046); SRVR:VE1EUR02HT197;
	BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT197; 
x-forefront-prvs: 0211965D06
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2017 13:01:05.4045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT197
X-OriginalArrivalTime: 07 Feb 2017 13:01:14.0137 (UTC)
	FILETIME=[43233090:01D28142]
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [dora] Compiling Qt 5.7 without meta-qt5
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
X-List-Received-Date: Tue, 07 Feb 2017 13:02:16 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMSPR01MB1842B74A698BF6EC3378AEF92430AMSPR01MB184eurprd_"

--_000_AMSPR01MB1842B74A698BF6EC3378AEF92430AMSPR01MB184eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Burt,


I tried.

But many errors raise that impact the "meta-hachiko" layer which is not com=
patible at all with versions > Dora.




________________________________
De : Burton, Ross <ross.burton@intel.com>
Envoy=E9 : mardi 7 f=E9vrier 2017 12:44
=C0 : Karim ATIKI
Cc : yocto
Objet : Re: [yocto] [dora] Compiling Qt 5.7 without meta-qt5


On 7 February 2017 at 11:05, Karim ATIKI <karim_atiki@hotmail.com<mailto:ka=
rim_atiki@hotmail.com>> wrote:

Using meta-qt5 is excluded.

But why not port meta-qt5 to dora?

Ross

--_000_AMSPR01MB1842B74A698BF6EC3378AEF92430AMSPR01MB184eurprd_
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
<p>Hi Burt,</p>
<p><br>
</p>
<p>I tried.</p>
<p>But many errors raise that impact the &quot;meta-hachiko&quot; layer whi=
ch is not compatible at all with versions &gt; Dora.</p>
<p><br>
</p>
<p><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Burton, Ross &lt;ross.=
burton@intel.com&gt;<br>
<b>Envoy=E9 :</b> mardi 7 f=E9vrier 2017 12:44<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [dora] Compiling Qt 5.7 without meta-qt5</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 7 February 2017 at 11:05, Karim ATIKI <span d=
ir=3D"ltr">
&lt;<a href=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atik=
i@hotmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<p>Using meta-qt5 is excluded.</p>
<p></p>
</blockquote>
</div>
But why not port meta-qt5 to dora?</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_AMSPR01MB1842B74A698BF6EC3378AEF92430AMSPR01MB184eurprd_--
