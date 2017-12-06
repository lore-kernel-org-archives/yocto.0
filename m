Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96560E00D00; Tue,  5 Dec 2017 18:15:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB4E5E00BEA
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 18:15:39 -0800 (PST)
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id D2F5761A34
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 02:15:38 +0000 (UTC)
Received: from G2W6309.americas.hpqcorp.net (g2w6309.austin.hp.com
	[16.197.64.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2352.austin.hpe.com (Postfix) with ESMTPS id A2F9962
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 02:15:37 +0000 (UTC)
Received: from G4W9121.americas.hpqcorp.net (2002:10d2:1510::10d2:1510) by
	G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Wed, 6 Dec 2017 02:15:37 +0000
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (15.241.52.11) by
	G4W9121.americas.hpqcorp.net (16.210.21.16) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Wed, 6 Dec 2017 02:15:37 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	CS1PR8401MB0838.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.18) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.282.5; Wed, 6 Dec 2017 02:15:35 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0282.012;
	Wed, 6 Dec 2017 02:15:35 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: externalsrc + sstate why is not compatible?
Thread-Index: AQHTbjedWgwnr0N2hk+XqKAyNmw3Bw==
Date: Wed, 6 Dec 2017 02:15:35 +0000
Message-ID: <CS1PR8401MB0840E46EE333163758C5D9B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [96.22.174.101]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CS1PR8401MB0838;
	6:fbxY8ijbb0Yq5iOLfM7AVpUZ79t9xrFtMedgMESTEHA6yHW3Ja1Y53+wwqKSYa19v3NUkpGEif3x+cRZCYgSSWSbTlXxX+HLPLxSGe54Bd5CgEjS3f63X3g4ngJ+3ioAG8BvmlQHtM45xsLsKUiBOyEfB+vwVOmsGsv22cM7uhYJzOtdFPDkueEsh6U+IH59Wv9pUVTUvM0A14S/nlwu3vnGm2AgfWLYYjihIobVSw9veaJ5P5ciZGPzxQG4PHffMFC8BQQ463Ot/OgcLFLArqvUCxkH04+ir5JhUuRag8J481UYDwY8Tun3Q826xqHmGwWr6OFhKDn6hoH1ftKE4oBuGt0563D26lLLRjQ3MZE=;
	5:fA7aF66pN4THxPfDDSHq+TxLhxykpP2uEB1nfhlCridFUKg7VHVY6plKyieVPl1o5qJy69rUdO5vRb6M+uG3uMcsSd2eFBYDnMeph+lvanMqSiTqVutIG+1JTKZulULQBzZI0ymZY0kbZbeDmZgkg2tJHgdsl09l5Ok6/olFU3U=;
	24:wmWfcJb7HGYptwR8xSScm+j7Ah+zmyeRJkOGvmi3JLlIN4MRlJ/ydcNbXhaJktN55+PHyrtTsYkMeVjVxGe9zF4B8su3hBYVzyMHNvG8PnM=;
	7:X8X7Slej46PWkqFBXoFAXEr7PSKjU2UQSLERsAri803hFx/t7DVp1Do2yzhn865oFTwVtn7Krj5QSUPEgpsc9QjOQD/rUAtN0BBRykeiYyaxvrdWS14XKGIdT0wXmcD3cRfiutyRIQ3LjHIRtkyFbJzjSjTtbEFs5wrO3bo8DiORznB2/yMi2Q1H6tllWcgxhZ228h8k45VtDujlWYidsiuTxfqcp9hZ3xhVAeeFKKBfyUDt/a6paJNCbt/8uBdq
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a9f4f8ca-b58e-4faa-a8f3-08d53c4f3c9b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(48565401081)(5600026)(4604075)(2017052603286);
	SRVR:CS1PR8401MB0838; 
x-ms-traffictypediagnostic: CS1PR8401MB0838:
x-microsoft-antispam-prvs: <CS1PR8401MB08386713F185521CABD2A1AEED320@CS1PR8401MB0838.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3231022)(3002001)(6055026)(6041248)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123564025)(20161123555025)(20161123560025)(6072148)(201708071742011);
	SRVR:CS1PR8401MB0838; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CS1PR8401MB0838; 
x-forefront-prvs: 05134F8B4F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39860400002)(346002)(376002)(199004)(189003)(54094003)(5250100002)(2900100001)(8936002)(5640700003)(6436002)(6506006)(25786009)(99286004)(2501003)(105586002)(2351001)(19627405001)(101416001)(14454004)(3660700001)(106356001)(66066001)(55016002)(33656002)(3280700002)(5660300001)(478600001)(97736004)(53936002)(68736007)(6116002)(102836003)(7736002)(8676002)(1730700003)(81156014)(81166006)(2906002)(7696005)(86362001)(54896002)(3846002)(6916009)(74316002)(9686003)(6606003)(316002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB0838;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a9f4f8ca-b58e-4faa-a8f3-08d53c4f3c9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2017 02:15:35.8460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB0838
X-OriginatorOrg: hpe.com
Subject: externalsrc + sstate why is not compatible?
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
X-List-Received-Date: Wed, 06 Dec 2017 02:15:40 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_CS1PR8401MB0840E46EE333163758C5D9B3ED320CS1PR8401MB0840_"

--_000_CS1PR8401MB0840E46EE333163758C5D9B3ED320CS1PR8401MB0840_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

In our situation, we have many packages that are in-house, as such we use a=
 local folder for the several in-house modules.  To do so, we need to use e=
xternalsrc to point to the local code so that the git repo contains both th=
e code + recipe, instead of 20 repos (1 per packages) and 1 more for yocto =
recipe which complicates things when you want to submit a change.


Yet, the externalsrc disable the setscene tasks and set the BB_DONTCACHE va=
riable.  I altered the script to remove those but then a change to the exte=
rnalsrc folder is not detected. I wonder if it is because the S variable is=
 set past the sstate algorithm and is then unable to consider the externals=
rc folder as the real source location.  Any expert on this matter that can =
guide me to either make sstate works for external src or teach me how to ha=
ve code + recipe in a single git repo.  I am certainly not the only case us=
ing such a pattern.


--

Yannick Koehler

--_000_CS1PR8401MB0840E46EE333163758C5D9B3ED320CS1PR8401MB0840_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">In our situation, we have many pa=
ckages that are in-house, as such we use a local folder for the several in-=
house modules.&nbsp; To do so, we need to use externalsrc to point to the l=
ocal code so that the git repo contains
 both the code &#43; recipe, instead of 20 repos (1 per packages) and 1 mor=
e for yocto recipe which complicates things when you want to submit a chang=
e.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Yet, the externalsrc disable the =
setscene tasks and set the BB_DONTCACHE variable.&nbsp; I altered the scrip=
t to remove those but then a change to the externalsrc folder is not detect=
ed. I wonder if it is because the S variable
 is set past the sstate algorithm and is then unable to consider the extern=
alsrc folder as the real&nbsp;source location.&nbsp; Any expert on this mat=
ter that can guide me to either make sstate works for external src or teach=
 me how to have code &#43; recipe in a single
 git repo.&nbsp; I am certainly not the only case using such a pattern.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">--</p>
<p style=3D"margin-top:0;margin-bottom:0">Yannick Koehler</p>
</div>
</body>
</html>

--_000_CS1PR8401MB0840E46EE333163758C5D9B3ED320CS1PR8401MB0840_--
