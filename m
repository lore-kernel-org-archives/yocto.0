Return-Path: <Manish.Jaggi@caviumnetworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B06FE00CAE; Mon, 25 Apr 2016 06:46:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.54 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 964 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Apr 2016 06:46:13 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0054.outbound.protection.outlook.com [207.46.100.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 049B6E00AE4
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 06:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-caviumnetworks-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ON2/3uAMNkdOAIkwHAHNnS+kYCC0ckn9gOViy21N0W8=;
	b=VBK20zzGzbu3c5eckdJ627tLgCcYVn+K+sCcw/uZiY/Axt/q7uP01st63DBFNipADdb9lcNDwE+5D05UsEforus2Fs2HiOeZ/WcClZxxdEN4nLv7vBLa9B9HZCF3OqtNrzKozTzy43zcMgvW2Lts81+KQSMzybuZkPp26ak53b4=
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) by
	BY1PR0701MB1595.namprd07.prod.outlook.com (10.162.110.149) with
	Microsoft
	SMTP Server (TLS) id 15.1.466.19; Mon, 25 Apr 2016 13:30:06 +0000
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) by
	BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) with
	mapi id 15.01.0466.025; Mon, 25 Apr 2016 13:30:06 +0000
From: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fetcher failure: Unable to find revision
	2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
	upstream
Thread-Index: AQHRnvYtSwgidqLbqEOk4YMTyaEoKw==
Date: Mon, 25 Apr 2016 13:30:06 +0000
Message-ID: <BY1PR0701MB1594FEBCBD9F70D587587878E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=caviumnetworks.com;
x-originating-ip: [64.2.3.194]
x-ms-office365-filtering-correlation-id: b1ff4848-45b1-48a0-f67e-08d36d0db746
x-microsoft-exchange-diagnostics: 1; BY1PR0701MB1595;
	5:R1RcahNostbwt8DhyZmwndjrWCphlc2qiaPs2N4hdGWKv6jHMlEHEAfoXDktRgSe+a6navxkih3khrHB+NeXJrE2bTUWq50tHC8oKMnLFZusJQZM2Ro61Z+smLvBQuWeHuSm8wtDL2QatK/5iQKy2jUlBv9KoZKuKBFjdn2MLAANQGHIZUNHnWKXW2xo42DG;
	24:XglJsI+kIjCJ8m6TvqSwQyQambAkDgQscQb56Jxh75JLwhAXlTIWwTL7gQ0jWYbTwDkP/SwDOCogiwCcw9E7NVb2nQuiccWrowWlg9Xpggk=;
	7:UR3rHjAz8tnDbdafPJ97YNB8eNyCyiGqskzTbIheEtGZrwEiayQxFiltrbwDPz/JH7SISDtHTmmzcz6at5GfmSCL8VxYtVrO5yDIY9jnF0djvFzr6IIAE4AZyyZdZmIPlUAGsmf3oTzptwL+/qBy6ta6UQ1QQyME0fa3DSUuZlwkR4yfhClyl0v8oLjoi/tVM/6wuLbg/RQWu0eGCv7rhMkP5fC5qPqEOw2PMLTgIcc=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1595;
x-microsoft-antispam-prvs: <BY1PR0701MB15956AFD8D6DE65A7DB09BB1E1620@BY1PR0701MB1595.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521062)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:BY1PR0701MB1595; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1595; 
x-forefront-prvs: 0923977CCA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(54356999)(5004730100002)(2351001)(66066001)(2501003)(86362001)(229853001)(106116001)(99286002)(5003600100002)(5640700001)(450100001)(19580395003)(16236675004)(11100500001)(5002640100001)(33656002)(19625215002)(76576001)(50986999)(9686002)(5008740100001)(74316001)(81166005)(77096005)(3660700001)(92566002)(87936001)(3280700002)(19627405001)(122556002)(1730700002)(1220700001)(1096002)(110136002)(10400500002)(189998001)(2906002)(107886002)(586003)(2900100001)(102836003)(3846002)(6116002)(37363001)(15760500001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0701MB1595;
	H:BY1PR0701MB1594.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:nov; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2016 13:30:06.2505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1595
Subject: Fetcher failure: Unable to find revision 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upstream
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
X-List-Received-Date: Mon, 25 Apr 2016 13:46:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY1PR0701MB1594FEBCBD9F70D587587878E1620BY1PR0701MB1594_"

--_000_BY1PR0701MB1594FEBCBD9F70D587587878E1620BY1PR0701MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

In my bb file I added the below line,


SRCREV =3D "2134d97aa3a7ce38bb51f933f2e20cafde371085"
SRC_URI =3D "git://git.yoctoproject.org/linux-yocto-dev"

The revision id is of v4.4.3 tag.


Below errors are generated upon kernel fetching


ERROR: linux-4.4 do_fetch: Fetcher failure: Unable to find revision 2134d97=
aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upstream
ERROR: linux-4.4 do_fetch: Function failed: Fetcher failure for URL: 'git:/=
/git.yoctoproject.org/linux-yocto-dev'. Unable to fetch URL from any source=
.

It seems the revid / tag is not on any branch
git branch  --contains 2134d97aa3a7ce38bb51f933f2e20cafde371085
returns nothing.

How to fix this issue ?


Regards,
Manish Jaggi

--_000_BY1PR0701MB1594FEBCBD9F70D587587878E1620BY1PR0701MB1594_
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
<p>In my bb file I added the below line,</p>
<p><br>
</p>
<p></p>
<div>SRCREV =3D &quot;2134d97aa3a7ce38bb51f933f2e20cafde371085&quot;</div>
<div>SRC_URI =3D &quot;git://git.yoctoproject.org/linux-yocto-dev&quot;</di=
v>
<div><br>
</div>
The revision id is of v4.4.3 tag.&nbsp;
<p></p>
<p><br>
</p>
<p>Below errors are generated upon kernel fetching</p>
<p><br>
</p>
<p></p>
<div>ERROR: linux-4.4&nbsp;do_fetch: Fetcher failure: Unable to find revisi=
on 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upst=
ream</div>
<div>ERROR: linux-4.4 do_fetch: Function failed: Fetcher failure for URL: '=
git://git.yoctoproject.org/linux-yocto-dev'. Unable to fetch URL from any s=
ource.</div>
<div><br>
</div>
<div>It seems the revid / tag is not on any branch</div>
<div>git branch &nbsp;--contains 2134d97aa3a7ce38bb51f933f2e20cafde371085&n=
bsp;<br>
</div>
<div>returns nothing.</div>
<div><br>
</div>
<div>How to fix this issue ?</div>
<p></p>
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

--_000_BY1PR0701MB1594FEBCBD9F70D587587878E1620BY1PR0701MB1594_--
