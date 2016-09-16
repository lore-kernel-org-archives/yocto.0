Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD528E00C1F; Thu, 15 Sep 2016 21:41:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.65 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5550 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Sep 2016 21:41:16 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0065.outbound.protection.outlook.com [104.47.41.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B409E00C10
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 21:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=dovIUH3tkNp3ZtqGa9H7MWITHWa+B/JBoEzKjl4KpeY=;
	b=CG8299yJNiu166o49zvfS1Mxhai99Eydt5FVaKMAezxnvPNANwzaNhvrIZvS+uLJYj0o9VAUaX6SEDyqy2Xk/0EyBfbkSjgUL02jhFeMr50dMDp0hCVN7QREGCRYZLcRE1cIA6m8D6uFaHi45qVBaQ2pJ3Ak/JjARPe6zYEjE4g=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.619.10; Fri, 16 Sep 2016 03:08:44 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0619.012; Fri, 16 Sep 2016 03:08:44 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: BBMASK does not work
Thread-Index: AQHSD8eFP1x6Px6sOkyNo58YrDHq/g==
Date: Fri, 16 Sep 2016 03:08:43 +0000
Message-ID: <CY1PR0101MB15943A023ACBF0AC7A142C3DD7F30@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 13a5bf38-7af2-4e02-a507-08d3dddec4ae
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1594;
	6:PL8OJmj2XnhTnpfWa/ZDzzYDQg9lLI1ul4d3BFT6+WaXZAM2zwXkc3n71B7XOc/dnjBuw4LKgIYkVbpC86wg6jkoD/nkYWqKX30myqgVdAM8HmYnEuDD+vg7KZzkdb+fPUQNZ6j1n6mJQESyhyhNlLErRtjApVuK8fmHfvTKhiReu5gF8LQG7OSksSr6MZ1lW2v887ZwRNjrqBsUzCMvDpFtKBsUQTfHpJI6wy9Rm4HYTErpTtaEWTpC74yzRXAGMUNgFGBy1/rVA0g0QduQf26T6WljRNQxsBVYEAt74S8=;
	5:/QnN2GrAo4jIcDWnZjGE8/bvoS1VjuzL8XLoebMbPJhpf0j5LmnPJV6A11WeARcw6yJn25LUwYPbU1sdtoXJCl6fxSAAumAr2T3H5Wd9UHIlKOWuvk9dD2HeZSW/JDycu9c1+ljGr3QdL8CHsH55mw==;
	24:cUmBD/31Q8YPaGJDTZC7Yzms38h+/WpSDJpe8vATaloNoK8Lpzb4VPXET3WqFZ1+bWFvZxlWgbDzjoz1pDbkmgRlSZcDyNxIEr/2VDUc29k=;
	7:n9VBSPk6ItHvYvkS/3CkzqpfoJckG8Hij2vgBCo35ZjVbysxEaHJhP4Kbd2Q9pLXLTl2Qxe7y9L6ZxEDp0CSPZpdy4aB7OPlZxMH1GyOEmq9Qx/h/FsFo+lh+oTrgya3gpKyAKZeDi8aXHoyFONfU4eBEr1P1No/hXWy7EW+9W1u4YeTGpj47fdGq7gWIR4ZX6QHxeU9MmeChHl4jDeSdElqhrpVNcTM1Lfj+JOth5/PoqX9BIEuwPekp2ppoYiO
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1594;
x-microsoft-antispam-prvs: <CY1PR0101MB1594B3BA5E574F309C9161ACD7F30@CY1PR0101MB1594.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:CY1PR0101MB1594; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1594; 
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(10400500002)(33656002)(74316002)(101416001)(50986999)(54356999)(19627405001)(16236675004)(106116001)(2906002)(106356001)(105586002)(66066001)(3660700001)(19625215002)(3280700002)(7696004)(68736007)(450100001)(229853001)(8936002)(9686002)(586003)(2900100001)(3846002)(102836003)(2351001)(6116002)(5640700001)(3480700004)(77096005)(5002640100001)(189998001)(97736004)(107886002)(11100500001)(92566002)(8676002)(7736002)(87936001)(81156014)(81166006)(1730700003)(122556002)(7846002)(110136003)(5660300001)(2501003)(86362001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1594;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2016 03:08:43.4833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1594
Subject: BBMASK does not work
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
X-List-Received-Date: Fri, 16 Sep 2016 04:41:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB15943A023ACBF0AC7A142C3DD7F30CY1PR0101MB1594_"

--_000_CY1PR0101MB15943A023ACBF0AC7A142C3DD7F30CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.
I am quite puzzled with this and spent a few hours today so far.
In case you have any comment or suggestion, it would be a great help.

I am trying to hide one of the xxxx.bbappend files from the tree, so that B=
B won't complain "ERROR: No recipes available for:" error.

I did add several forms of the lines for this in BBMASK variable, but someh=
ow BB seems to find it and complain "ERROR: no recipes available for:".

e.g.

Fido based build tree.
Want to hide AAAA_1.2.3.bbappend since there is no AAAA_1.2.3.bb recipe in =
my tree.

BBMASK =3D ".*/AAAA_%.bbappend"
BBMASK =3D ".*/AAAA_1.2.3.bbappend"
...

I tried BBMASK_forcevariable, and "-e" option to make sure they are set in =
BBMASK.

I further tried to set ".*" to BBMASK (so that the error message will be ch=
anged and I can see BBMASK is working), but the error message is still the =
same.  It says there is no recipes for AAAA_1.2.3.bbappend.

(But, if I manually rename AAAA_1.2.3.bbappend to, say, AAAA_1.2.3.bbappend=
x, error message is gone.)

Well, what I can do to debug and diagnose why this is happening.
I believed BBMASK worked as expected, and I think the other build tree I ha=
ve does not have this problem.

Deleting state cache does not seem to change anything..




--_000_CY1PR0101MB15943A023ACBF0AC7A142C3DD7F30CY1PR0101MB1594_
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
<p></p>
<div>Hello, Yocto.</div>
<div>I am quite puzzled with this and spent a few hours today so far.</div>
<div>In case you have any comment or suggestion, it would be a great help.<=
/div>
<div><br>
</div>
<div>I am trying to hide one of the xxxx.bbappend files from the tree, so t=
hat BB won't complain &quot;ERROR: No recipes available for:&quot; error.</=
div>
<div><br>
</div>
<div>I did add several forms of the lines for this in BBMASK variable, but =
somehow BB seems to find it and complain &quot;ERROR: no recipes available =
for:&quot;.</div>
<div><br>
</div>
<div>e.g.</div>
<div><br>
</div>
<div>Fido based build tree.</div>
<div>Want to hide AAAA_1.2.3.bbappend since there is no AAAA_1.2.3.bb recip=
e in my tree.</div>
<div><br>
</div>
<div>BBMASK =3D &quot;.*/AAAA_%.bbappend&quot;</div>
<div>BBMASK =3D &quot;.*/AAAA_1.2.3.bbappend&quot;</div>
<div>...</div>
<div><br>
</div>
<div>I tried BBMASK_forcevariable, and &quot;-e&quot; option to make sure t=
hey are set in BBMASK.</div>
<div><br>
</div>
<div>I further tried to set &quot;.*&quot; to BBMASK (so that the error mes=
sage will be changed and I can see BBMASK is working), but the error messag=
e is still the same. &nbsp;It says there is no recipes for AAAA_1.2.3.bbapp=
end.</div>
<div><br>
</div>
<div>(But, if I manually rename AAAA_1.2.3.bbappend to, say, AAAA_1.2.3.bba=
ppendx, error message is gone.)</div>
<div><br>
</div>
<div>Well, what I can do to debug and diagnose why this is happening.</div>
<div>I believed BBMASK worked as expected, and I think the other build tree=
 I have does not have this problem.</div>
<div><br>
</div>
<div>Deleting state cache does not seem to change anything..</div>
<div><br>
</div>
<br>
<p></p>
<p><br>
</p>
</div>
</body>
</html>

--_000_CY1PR0101MB15943A023ACBF0AC7A142C3DD7F30CY1PR0101MB1594_--
