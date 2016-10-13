Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46FF3E00E44; Thu, 13 Oct 2016 06:19:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.158 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BAY004-OMC3S20.hotmail.com (bay004-omc3s20.hotmail.com
	[65.54.190.158])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4820E00DC2
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 06:19:47 -0700 (PDT)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com ([65.54.190.187])
	by BAY004-OMC3S20.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 13 Oct 2016 06:19:46 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=/H+1/vCTJfrgNGgEvSBe8s2VKPYislpgPtCfONh4pFc=;
	b=GfJEM2dq7SFj9DGBe8QDVN3iphybFPSoKtLd6ZP59jWThfqAKvUyn0vcFCaFXu2suMQ3cQllKivB+QjbCruiENBCYlfj87MKhaCKJUVuBz0/lXBAhScbu1+BrS6JVHKZoiusdFrEs8HQX/RRhwMEW+/c1ZuuqdFWZFYKoPm2YyNqINLBG1IePw19FKOTTZAXe+vZnAQ5C6Oy/oz+XjwBs/ammC2nXGTye7VhbqBzmeYzUp3urkNlpitFKeFToT+dlICVZB14PL9+Edxrre5DCRkKuOVKfVfpy81ADFQEDJDKjfIQaSGtAwjkbOpbWE7+1nVxnjrvGNpHgGthdoRj0g==
Received: from AM5EUR02FT008.eop-EUR02.prod.protection.outlook.com
	(10.152.8.60) by AM5EUR02HT160.eop-EUR02.prod.protection.outlook.com
	(10.152.9.118) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Thu, 13 Oct 2016 13:19:44 +0000
Received: from DB5PR01MB1880.eurprd01.prod.exchangelabs.com (10.152.8.51) by
	AM5EUR02FT008.mail.protection.outlook.com (10.152.8.69) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Thu, 13 Oct 2016 13:19:44 +0000
Received: from DB5PR01MB1880.eurprd01.prod.exchangelabs.com ([10.166.169.16])
	by DB5PR01MB1880.eurprd01.prod.exchangelabs.com ([10.166.169.16])
	with mapi id 15.01.0649.027; Thu, 13 Oct 2016 13:19:44 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] Merging a custom SDK with meta-toolchain-qt5
Thread-Index: AQHSJVKgDBxsH0fjXkekAW3nRh5aoA==
Date: Thu, 13 Oct 2016 13:19:44 +0000
Message-ID: <DB5PR01MB1880B08919DB76D97AE4438F92DC0@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [exoYzBKO+Np8ahqD3AIPlbsT6RtQ3vzb]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR02HT160;
	6:p674xRBHo9DBP21v52GoRu9W6YBOAaYIJAPei1IT8ZiEHuTDEnUR4w0r1hd1XWnSrcQJrPtfBEzx6Inf+G32FwwuErx9R5JP4/TqREx5P0H1zaGRp81If6HhYL/XsQoZQ1wvNwj3QM0j0WpqjCf2BDLPc1ZZp/bzn+ey0U5IDO1ySbl2tR0o3pOTMxP00bjL3jAj6OB+BpNLCQSl8M4nZtI1zvv+xZCFfeEWFRUu4yU5SF3bYSVnC0yWe0+3fxDsJIx7XEjpAypB0DISF29Nrjew0OqJoAVz+XdBIrVK60Q=;
	5:8p1ceGs9PmYioNs7BDwV6IPoASz5I9XqnNdVfie5fSNy3xFGzCitMPBd01xtEH058c2Lnm6IWUfUt9wwewWFw7/HwpstoLUj3eWem8qeiPDUP8b4jMkPtJdKjJJCG7f9PDxNjtpsNSOTKyMw5arlRw==;
	24:1zHAAMm3FyXODEL/5qKGwMDfVQhPCnQCqgmQqC9IOurb6Wsve1gPvwXYXFJIw+XyGbdL8pPidR333HMNS4wGjyWF7Cc+WMde4mRhWCfDs8w=;
	7:uBz0nOf38MDhm4aBZVMfphGc4TypUv7jpWRLmk7RmUP9/OC0OZNsW9wFmX1FSUowgZj+F0iIJ21K7rHOF9FxXeVsNOKlt1aS0PXF+UXxnQl9M8yJSy78rQVY3Zo8YTdSl+WkTwzeo0zxs6i/N6w+i37vP8HmKRws6P8DDB0T7WbjebEfOy28yEavtPwlqMK/V20R4SjpYonoLzoZQnCvgcMPGTD8FjP1Os7hAwVzp2aWrJD1jilxHO0sEOguz1jHXF63BYDP+UBg5zyN74Axnr5OHALsggfdWq6EuuaWnOiea8JIShe70A3YDb8v+7kmejIeL+StbbxMsyRxV1A6kA==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR02HT160;
	H:DB5PR01MB1880.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: cfc4d94e-58cf-42ef-985c-08d3f36b98e6
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:AM5EUR02HT160;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AM5EUR02HT160; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR02HT160; 
x-forefront-prvs: 0094E3478A
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2016 13:19:44.0910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT160
X-OriginalArrivalTime: 13 Oct 2016 13:19:47.0075 (UTC)
	FILETIME=[782B4D30:01D22554]
Subject: Merging a custom SDK with meta-toolchain-qt5
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
X-List-Received-Date: Thu, 13 Oct 2016 13:19:50 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DB5PR01MB1880B08919DB76D97AE4438F92DC0DB5PR01MB1880eurp_"

--_000_DB5PR01MB1880B08919DB76D97AE4438F92DC0DB5PR01MB1880eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

hi all,


I have built an image based on Toradex Colibri-T20 board.

It's based on X11 with support of gtk3+.

Works fine.


To get our programs working on it, I have generated the dedicated SDK with =
bitbake populate_sdk with extra features in SDKIMAGE_FEATURES


Then I have added a custom image to support Qt5 framework.

I have generated the meta-toolchain-qt5.

But in the SDK, I could not found the features addeded for my previus SDK (=
header and lib file of gtk3+ etc.)


Is there a way to customize the meta-toolchain-qt5 so that it installs the =
features declared in the SDKIMAGE_FEATURES above ?


Cheers,


Kariom

--_000_DB5PR01MB1880B08919DB76D97AE4438F92DC0DB5PR01MB1880eurp_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>hi all,</p>
<p><br>
</p>
<p>I have built an image based on Toradex Colibri-T20 board.</p>
<p>It's based on X11 with support of gtk3&#43;.</p>
<p>Works fine.</p>
<p><br>
</p>
<p>To get our programs working on it, I have generated the dedicated SDK wi=
th bitbake populate_sdk with extra features in&nbsp;<span><b>SDKIMAGE_FEATU=
RES</b></span></p>
<p><br>
</p>
<p>Then I have added a custom image to support Qt5 framework.</p>
<p>I have generated the meta-toolchain-qt5.</p>
<p>But in the SDK, I could not found the features addeded for my previus SD=
K (header and lib file of gtk3&#43; etc.)</p>
<p><br>
</p>
<p>Is there a way to customize the meta-toolchain-qt5 so that it installs t=
he features declared in the SDKIMAGE_FEATURES above ?</p>
<p><br>
</p>
<p>Cheers,</p>
<p><br>
</p>
<p>Kariom</p>
</div>
</body>
</html>

--_000_DB5PR01MB1880B08919DB76D97AE4438F92DC0DB5PR01MB1880eurp_--
