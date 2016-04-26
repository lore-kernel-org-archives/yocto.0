Return-Path: <Manish.Jaggi@caviumnetworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AABD2E00CBC; Tue, 26 Apr 2016 01:53:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.76 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 964 seconds by postgrey-1.32 at yocto-www;
	Tue, 26 Apr 2016 01:53:19 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0076.outbound.protection.outlook.com [157.56.110.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A643E00C37
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 01:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-caviumnetworks-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=sMCLXJxQ7N144DmefYidMVr6J7ucu1lIX512FjWZY/E=;
	b=NzLgX2vd3i7vp8rlGLSmfjaCPsV9q36+py3C17F1JLxzsYkvxyU3FFrWTXALhJYd5GBDIDCXvXvwR6DES+PcElz9k2UGZv69aAZCyNtZhoZKNc5068r+jCUrXTtszAIDaEJ6q6H4MqkcaSAqkZL1H0gcC6m6iZA/iVN5X1wIvwM=
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) by
	BY1PR0701MB1593.namprd07.prod.outlook.com (10.162.110.147) with
	Microsoft
	SMTP Server (TLS) id 15.1.466.19; Tue, 26 Apr 2016 08:37:12 +0000
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) by
	BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) with
	mapi id 15.01.0466.025; Tue, 26 Apr 2016 08:37:12 +0000
From: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: aarch64-oe-linux/bin/ld: cannot find -lgcc . Adding native build
	support for arm64/aarch64 in oe-rootfs. 
Thread-Index: AQHRn5bTlMP1TWGpxUqB4PoRiPz5Mg==
Date: Tue, 26 Apr 2016 08:37:12 +0000
Message-ID: <BY1PR0701MB1594E5D662CBA5BFB5A38A17E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=caviumnetworks.com;
x-originating-ip: [64.2.3.194]
x-ms-office365-filtering-correlation-id: eb658944-cee0-4a22-f8bc-08d36dadf68b
x-microsoft-exchange-diagnostics: 1; BY1PR0701MB1593;
	5:6B3p4KGX/McBrRpQCYXVZPWtEm8EQGO6w+VUru3f4ycjpARGFL2sGB8ZwXHtZBRNdplliGZwTB2Buprc/9xLJtdlj69qnk0gaZvKECMAalc3Ul9r2q4UO0GF16oV6ehpHkNUN9hnliM8n5bW4Rxg736fUIBltwme9iAYP0uWD9wmU5u/msGF2jx+NdPq1jGS;
	24:WzhK8ikI42DT3exOmgZjJUH+BH3ob5zyMcAxORLNOZ5/a78O2mEcCF66gNUT3ZowKyOW6hBrDtmmZZE5yp/0dy11SjAhOWf7Xb67On+rhBE=;
	7:iwamYawi3da2/WUKrp4zTVCwYS1vOwDLfUf1KE4TWMHyDSRa/WuRPRx6PY2XCmwSY5axTjpai/cGFtkOxZLQE2UMQD3yAsp/j2Hp/41ghEeqiPr0+XABb/3M8WilpM570555A3e7jbljgcbYXSKtZbqoNoYW7DRfsOx/KTkkEyZ27JCT0o5kKrRzlUFTSfmO2b1zzFW6WxbiQOHVALvEqT8/jnmuxjSVLq+hvbi781U=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1593;
x-microsoft-antispam-prvs: <BY1PR0701MB15935E5F3D789372B91B7270E1630@BY1PR0701MB1593.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:BY1PR0701MB1593; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1593; 
x-forefront-prvs: 0924C6A0D5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(19625215002)(5008740100001)(5002640100001)(92566002)(110136002)(50986999)(74316001)(76576001)(107886002)(54356999)(5640700001)(81166005)(2501003)(106116001)(189998001)(102836003)(99286002)(2351001)(87936001)(229853001)(230783001)(3846002)(5003600100002)(2900100001)(1220700001)(1096002)(6116002)(586003)(19627405001)(5004730100002)(11100500001)(2906002)(77096005)(122556002)(10400500002)(86362001)(16236675004)(9686002)(450100001)(3660700001)(33656002)(3280700002)(19580395003)(1730700002)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0701MB1593;
	H:BY1PR0701MB1594.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2016 08:37:12.1103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1593
Subject: aarch64-oe-linux/bin/ld: cannot find -lgcc . Adding native build support for arm64/aarch64 in oe-rootfs.
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
X-List-Received-Date: Tue, 26 Apr 2016 08:53:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY1PR0701MB1594E5D662CBA5BFB5A38A17E1630BY1PR0701MB1594_"

--_000_BY1PR0701MB1594E5D662CBA5BFB5A38A17E1630BY1PR0701MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi,

I am trying to add a native compilation support to oe rootfs.

Managed to add gcc ld support but upon compilation getting missing libs err=
or.


aarch64-oe-linux-gcc x.c
x.c: In function 'main':
x.c:3:2: warning: implicit declaration of function 'printf' [-Wimplicit-fun=
ction-declaration]

/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find crt1.o: No such file or directory
/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find crti.o: No such file or directory
/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find crtbegin.o: No such file or directory
/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find -lgcc
/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find -lgcc_s
/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find -lc
/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find -lgcc
/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find -lgcc_s
/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find crtend.o: No such file or directory
/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/ld: ca=
nnot find crtn.o: No such file or directory
collect2: error: ld returned 1 exit status




What is missing from my local.conf ?

This is below I have added.

IMAGE_INSTALL_append =3D "gcc"
IMAGE_INSTALL_append +=3D " glibc"
IMAGE_INSTALL_append +=3D " libgcc"
IMAGE_INSTALL_append +=3D " binutils"
IMAGE_INSTALL_append +=3D " gccmakedep"



Regards,
Manish Jaggi

--_000_BY1PR0701MB1594E5D662CBA5BFB5A38A17E1630BY1PR0701MB1594_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:10pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Candara,Sans-Serif;">
<p><br>
</p>
<p>Hi,</p>
<p>I am trying to add a native compilation support to oe rootfs.</p>
<p>Managed to add gcc ld support but upon compilation getting missing libs =
error.</p>
<p><br>
</p>
<p></p>
<div>aarch64-oe-linux-gcc x.c</div>
<div>x.c: In function 'main':</div>
<div>x.c:3:2: warning: implicit declaration of function 'printf' [-Wimplici=
t-function-declaration]</div>
<div><br>
</div>
<div></div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find crt1.o: No such file or directory</div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find crti.o: No such file or directory</div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find crtbegin.o: No such file or directory</div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find -lgcc</div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find -lgcc_s</div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find -lc</div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find -lgcc</div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find -lgcc_s</div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find crtend.o: No such file or directory</div>
<div>/usr/lib/gcc/aarch64-oe-linux/5.3.0/../../../../aarch64-oe-linux/bin/l=
d: cannot find crtn.o: No such file or directory</div>
<div>collect2: error: ld returned 1 exit status</div>
<div><br>
</div>
<br>
<p></p>
<p><br>
</p>
<p>What is missing from my local.conf ?</p>
<p>This is below I have added.</p>
<p></p>
<div>IMAGE_INSTALL_append =3D &quot;gcc&quot;</div>
<div>IMAGE_INSTALL_append &#43;=3D &quot; glibc&quot;</div>
<div>IMAGE_INSTALL_append &#43;=3D &quot; libgcc&quot;</div>
<div>IMAGE_INSTALL_append &#43;=3D &quot; binutils&quot;</div>
<div>IMAGE_INSTALL_append &#43;=3D &quot; gccmakedep&quot;</div>
<p></p>
<p><br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<font face=3D"Cordia New, sans-serif" size=3D"2">Regards,</font>
<div><font face=3D"Cordia New, sans-serif" size=3D"2">Manish Jaggi</font></=
div>
</div>
</div>
</div>
</body>
</html>

--_000_BY1PR0701MB1594E5D662CBA5BFB5A38A17E1630BY1PR0701MB1594_--
