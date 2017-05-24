Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A320E00B28; Wed, 24 May 2017 07:03:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.88 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3644 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 May 2017 07:02:58 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0088.outbound.protection.outlook.com
	[104.47.37.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFD41E00AE4
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=iLvvmQ0zxUFlvVUeA6lnTqG5wn9WTOM2MvKHE7IPlkY=;
	b=0BxIod231V/Bh1N29Mkq9naZijlWI5segvBwcJ3NrapGeYYA05DRkkAGK/+ns+KEwTZrH2rxb6p9wEqp9C9tAUiNm5+VzEDZ8mYk4xkyy6D2UdYJQ1KiqWiqjsx4qTy18s1FByCAYttBKLBXQAIg9b9qTRHRdYfDZ6uUau+4RF8=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2956.prod.exchangelabs.com (10.174.182.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1124.9; Wed, 24 May 2017 10:30:03 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.1124.009; Wed, 24 May 2017 10:30:03 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: dynamic-layers?
Thread-Index: AQHS1Hi0bJGDBENMY0277BkegQdKAg==
Date: Wed, 24 May 2017 10:30:03 +0000
Message-ID: <DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2956;
	7:EihKMyAFoygrGarKK7rpDCnIy4v66Uhee6DxhyPgmnum2hVQp86CwXF9qY1pJzNHvdXxnuFL1jEYPEummCpd6I7jZmaVWF9QsoJFmLSLl1KmHQUgMhnHYpvUCGNASHZDY548D6HEvRS5806AqCs1lMFtbtli1QTnI6svKANGO5jDcEufHc+x7T6TK7B/+ssmipwxa76Z5RkHkOF/NDZryTiBrlKFdXfw7NaEGaDdE1vCcukRwtuhsa0amUGrokb+aqR5Jd7pry1qCqXGVRT1HL0h5ZJFtY4JsHWbQxwXjELJpcI6e3FYRWIXoFirUv06BqbR0sJcCl/QUxJbWB248A==
x-ms-traffictypediagnostic: DM5PR0101MB2956:
x-ms-office365-filtering-correlation-id: dd1a3483-35bd-4873-0044-08d4a28fd6db
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);
	SRVR:DM5PR0101MB2956; 
x-microsoft-antispam-prvs: <DM5PR0101MB2956060BB29032C5269FC7E8B6FE0@DM5PR0101MB2956.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(6041248)(20161123562025)(20161123558100)(20161123560025)(20161123564025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148);
	SRVR:DM5PR0101MB2956; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2956; 
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39400400002)(39830400002)(39450400003)(39410400002)(3846002)(19627405001)(6116002)(50986999)(102836003)(3660700001)(966005)(33656002)(6506006)(53936002)(2906002)(110136004)(8936002)(1730700003)(38730400002)(25786009)(54356999)(2351001)(81166006)(2900100001)(8676002)(3280700002)(2501003)(6606003)(6436002)(5660300001)(122556002)(54896002)(99286003)(77096006)(55016002)(6306002)(9686003)(478600001)(7736002)(7696004)(74316002)(5640700003)(86362001)(6916009)(189998001)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2956;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2017 10:30:03.3821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2956
Subject: dynamic-layers?
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
X-List-Received-Date: Wed, 24 May 2017 14:03:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0DM5PR0101MB2953_"

--_000_DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.
I am a bit confused with dynamic-layers included in some of the recent laye=
rs in various BSPs.

e.g.

https://github.com/Freescale/meta-freescale/blob/master/conf/layer.conf

># The .bbappend and .bb files are included if the respective layer
># collection is available.
>BBFILES +=3D "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbap=
pend' % layer \
>               for layer in BBFILE_COLLECTIONS.split())}"
>BBFILES +=3D "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb' =
% layer \
>               for layer in BBFILE_COLLECTIONS.split())}"

In meta-freescale/dynamic-layers, there are browser-layer, efi-layer, etc. =
for conditional inclusion.
And I think they are included only their names (browser-layer, etc.) are BB=
FILE_COLLECIONS.

Question here is, who will be adding 'browser-layer' to BBFILE_COLLECTIONS =
when I want to include browser-layer in my build.

Is it something to be done in my local.conf or customized distro conf file?


--_000_DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0DM5PR0101MB2953_
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
<p></p>
<div><span style=3D"font-size: 12pt;">Hello, Yocto.</span><br>
</div>
<div>I am a bit confused with dynamic-layers included in some of the recent=
 layers in various BSPs.</div>
<div><br>
</div>
<div>e.g.</div>
<div><br>
</div>
<div>https://github.com/Freescale/meta-freescale/blob/master/conf/layer.con=
f</div>
<div><br>
</div>
<div>&gt;# The .bbappend and .bb files are included if the respective layer=
</div>
<div>&gt;# collection is available.</div>
<div>&gt;BBFILES &#43;=3D &quot;${@' '.join('${LAYERDIR}/dynamic-layers/%s/=
recipes*/*/*.bbappend' % layer \</div>
<div>&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for layer in BBF=
ILE_COLLECTIONS.split())}&quot;</div>
<div>&gt;BBFILES &#43;=3D &quot;${@' '.join('${LAYERDIR}/dynamic-layers/%s/=
recipes*/*/*.bb' % layer \</div>
<div>&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for layer in BBF=
ILE_COLLECTIONS.split())}&quot;</div>
<div><br>
</div>
<div>In meta-freescale/dynamic-layers, there are browser-layer, efi-layer, =
etc. for conditional inclusion.</div>
<div>And I think they are included only their names (browser-layer, etc.) a=
re BBFILE_COLLECIONS.</div>
<div><br>
</div>
<div>Question here is, who will be adding 'browser-layer' to BBFILE_COLLECT=
IONS when I want to include browser-layer in my build.</div>
<div><br>
</div>
<div>Is it something to be done in my local.conf or customized distro conf =
file?</div>
<div><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0DM5PR0101MB2953_--
