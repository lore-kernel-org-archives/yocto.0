Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F365E00A5C; Sat, 25 Mar 2017 03:08:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1093 seconds by postgrey-1.32 at yocto-www;
	Sat, 25 Mar 2017 03:08:23 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0064.outbound.protection.outlook.com [104.47.36.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12828E00874
	for <yocto@yoctoproject.org>; Sat, 25 Mar 2017 03:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=N638GhwXWeJv3OKFW9NwxTacasYr671dEdYo3LZCcbE=;
	b=cKqVeCLZX+KuSK613U9Z6CZxQAFagopmPIrlODQbHzAFgosRaWZfbDhwlCvl7gRi0jCL92IjfB3aLIVwVXiKdEisE+QsBUUNP174Cgx7LuwULYZBJuNkf0sW4vdwQZKH1max1CNCYiFcyHErxVaZogNhQdlTXFRKjfW0Plbun1g=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2956.prod.exchangelabs.com (10.174.182.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.961.17; Sat, 25 Mar 2017 09:34:18 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0961.020; Sat, 25 Mar 2017 09:34:18 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: quoted string in a recipe variable?
Thread-Index: AQHSpJdjr2UIpt+gVUe0QTXrCP0zt6GlS+K+
Date: Sat, 25 Mar 2017 09:34:18 +0000
Message-ID: <DM5PR0101MB2953C782DBCF545144DE0BF2B6310@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB2953685EA03459A962AA8A69B63E0@DM5PR0101MB2953.prod.exchangelabs.com>
In-Reply-To: <DM5PR0101MB2953685EA03459A962AA8A69B63E0@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [25.174.180.132]
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2956;
	7:s3o5bfShn0hTVdfpj2WBGmMcDWxnxD9t6ypIXmPmvBntGIy+0t/7JlrI2izN118gQc/OXjNueQ+5fBf2X0umBFWpLymoa823T8376QFSrhb/JXt/CdYRuAbkIHBHcUpyEKKq589GC7WZ+81UgU+UaHCeqAUjmSKGYO6DNgoaFFA+rc7ZFg6HkVHEE5wP+bkOEY9sts28MRR/4Hrp4XWH4sCaeMes3laRQ1W40eZt4PhRA8EJ87bcsRaNXxF+2xFQNCWWWopZnUjOENQYtMN7WEltyWrQ821U+rdzT+aMiMj6VShyeOQi+T6Ta5EWIOdVP28QUCSPKTBwgUk+7BMZ9w==
x-ms-office365-filtering-correlation-id: 15920439-ca15-4c07-6afd-08d473621c7c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(2017030254075);
	SRVR:DM5PR0101MB2956; 
x-microsoft-antispam-prvs: <DM5PR0101MB2956968AD16EB9A4B750D4FEB6310@DM5PR0101MB2956.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(20161123562025)(20161123555025)(20161123558025)(20161123560025)(20161123564025)(6072148);
	SRVR:DM5PR0101MB2956; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2956; 
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(377454003)(33656002)(55016002)(54896002)(66066001)(86362001)(102836003)(6506006)(25786009)(229853002)(1730700003)(5660300001)(53936002)(6116002)(2906002)(7696004)(54356999)(77096006)(5640700003)(9686003)(76176999)(2900100001)(8936002)(50986999)(74316002)(3660700001)(2950100002)(110136004)(2501003)(38730400002)(6246003)(8676002)(2351001)(81166006)(189998001)(3846002)(53546009)(6436002)(122556002)(7736002)(19627405001)(3280700002)(6606003)(99286003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2956;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2017 09:34:18.4054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2956
Subject: Re: quoted string in a recipe variable?
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
X-List-Received-Date: Sat, 25 Mar 2017 10:08:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB2953C782DBCF545144DE0BF2B6310DM5PR0101MB2953_"

--_000_DM5PR0101MB2953C782DBCF545144DE0BF2B6310DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am sorry please ignore below.

I should put space after -D options so that cmake won't complain.

________________________________
From: Takashi Matsuzawa
Sent: Friday, March 24, 2017 9:08 PM
To: yocto@yoctoproject.org
Subject: quoted string in a recipe variable?


Hello, Yocto.
I am a bit confused with recipe syntax for variable assignment.

I wanto embed double-quoted string within a variable.
And I tried below and looks like the whole part of the string (A to B) is s=
uccessfully assigned to EXTRA_OECMAKE variable.

EXTRA_OECMAKE =3D " \ <-- A
  "-D CMAKE_XXXX=3Dxxxx \
  ...
  ...
  -D CMAKE_YYYY=3Dyyyy" \
" <-- B

My question is, if this is a valid way of doing it?
Why bitbake parser is not confused?



--_000_DM5PR0101MB2953C782DBCF545144DE0BF2B6310DM5PR0101MB2953_
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
<p>I am sorry please ignore below.</p>
<p>I should put space after -D options so that cmake won't complain.</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Takashi Matsuzawa<br>
<b>Sent:</b> Friday, March 24, 2017 9:08 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> quoted string in a recipe variable?</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<div><span style=3D"font-size:12pt">Hello, Yocto.</span><br>
</div>
<div>I am a bit confused with recipe syntax for variable assignment.</div>
<div><br>
</div>
<div>I wanto embed double-quoted string within a variable.</div>
<div>And I tried below and looks like the whole part of the string (A to B)=
 is successfully assigned to EXTRA_OECMAKE variable.</div>
<div><br>
</div>
<div>EXTRA_OECMAKE =3D &quot; \ &lt;-- A</div>
<div>&nbsp; &quot;-D CMAKE_XXXX=3Dxxxx \</div>
<div>&nbsp; ...</div>
<div>&nbsp; ...</div>
<div>&nbsp; -D CMAKE_YYYY=3Dyyyy&quot; \</div>
<div>&quot; &lt;-- B</div>
<div><br>
</div>
<div>My question is, if this is a valid way of doing it?</div>
<div>Why bitbake parser is not confused?</div>
<div><br>
</div>
<br>
<p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM5PR0101MB2953C782DBCF545144DE0BF2B6310DM5PR0101MB2953_--
