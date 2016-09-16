Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B1A3E00C55; Fri, 16 Sep 2016 02:14:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.81 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0081.outbound.protection.outlook.com [104.47.41.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13A83E00A21
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 02:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ZZUG+5sTii2zJJdaKNuoS1Dn14DsFA6zghHhR1m0DMc=;
	b=Rex3MQgM+buyE8+1MENr18BygFXqI3ulEyvCBz+bD5x3wyNqN/N3bNhs8PndwPspMrhE2G0vElOF7d+mg9W76QQVvDvgmzySFAsj/qdtk77w8bdrhobHYwHVOTcE5SdBtgsEZ0JZV3SOIXuacba0iNjYWCY05EvTHyc+HuNLOzw=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1593.prod.exchangelabs.com (10.163.139.12) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.619.10; Fri, 16 Sep 2016 09:13:55 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0619.012; Fri, 16 Sep 2016 09:13:55 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: BBMASK does not work
Thread-Index: AQHSD8eFP1x6Px6sOkyNo58YrDHq/qB71ZnG
Date: Fri, 16 Sep 2016 09:13:55 +0000
Message-ID: <CY1PR0101MB159420CCFFA0785E3A9713FFD7F30@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB15943A023ACBF0AC7A142C3DD7F30@CY1PR0101MB1594.prod.exchangelabs.com>
In-Reply-To: <CY1PR0101MB15943A023ACBF0AC7A142C3DD7F30@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 77e70506-9337-45b8-d588-08d3de11c8a7
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1593;
	6:DKCaLSYTupgxhi1UV1LxcozGDjaIvmdXEwHimk/Zs4IbcIaCyfurLu/apQowm04xwAPUPIqMtMZhlgZPaCL1fcHmYHGi1TgFUL/cEK0UtfcO6KeBPZk/czUUmV5SdOcoSkg4i+yY0XBxqxnKJld0M+jX57wVy+C1phcDuReXp974TT2N/8eSfcdtdFYc1AmKhtrSXL9bLICyNxebz1rpZwiaBUC02gQjUP3+hwtn0uNYixjAXOWIgm4oVumIAs31bfRVFCW9niBZ3hlfA9qxkMpHkLQSA5coLy0rnMhJSt0=;
	5:gUtbz8L1rhpR8W14wmMYMLYnkAPCfD6r9aVtRTvZ3eOdP/XPof4vETIEpQOhAhI/Sl4m7oJsOO0Q+E8uJY/mx22gCwCjTIEJToOMh5ePYDg10abk1qBXyFT+mlVKbSpugrICuDWlCmUzohdt9tcjjg==;
	24:Lxx727aG6D47SSThJ7xjqaO0LQf9PePVHfXw8v4JpMwZGkJSQpBBM2LHCsXz5lW01vG2HzpUELkdbR+68qSJcoW302fO3Xz6SlW5SS/NzrQ=;
	7:gHcsH2K1X8wilz0qTsYkk/zmgw0u0s7+p3rXwY198lqgXpr6V8Zo/jBuVq27hHDO3X1a5RYhGR+yU9atLW5tMZ2hAzTMggoRF026HNAeGBy7+5xZhgELybVfHqHeWyS3dtYd4nNx1Uwu+QQMCt0onMJbaaGHFEcx6e/y5RxlO+juMkbZKBS7khyJVXDqk5Ezw5oSqLyt8NZtwicxisQFxhn6bz6/Poum3/Y8ImN1N46wsUjZ0qsZX/1ISKD89pfu
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1593;
x-microsoft-antispam-prvs: <CY1PR0101MB1593B51F9AF244D1F130E254D7F30@CY1PR0101MB1593.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:CY1PR0101MB1593; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1593; 
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(5660300001)(3280700002)(9686002)(77096005)(586003)(8936002)(33656002)(3480700004)(2906002)(16236675004)(6116002)(3846002)(74316002)(2501003)(3660700001)(7846002)(102836003)(2950100001)(7736002)(19625215002)(2900100001)(7696004)(19580395003)(87936001)(68736007)(107886002)(19627405001)(450100001)(97736004)(5640700001)(50986999)(76176999)(54356999)(11100500001)(10400500002)(110136003)(189998001)(5002640100001)(101416001)(105586002)(1730700003)(122556002)(106356001)(86362001)(2351001)(106116001)(81156014)(8676002)(92566002)(81166006)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1593;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2016 09:13:55.0583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1593
Subject: Re: BBMASK does not work
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
X-List-Received-Date: Fri, 16 Sep 2016 09:14:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB159420CCFFA0785E3A9713FFD7F30CY1PR0101MB1594_"

--_000_CY1PR0101MB159420CCFFA0785E3A9713FFD7F30CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Well, I tried adding debug lines to poky/bitbake/lib/bb/cooker.py, and I th=
ink what is happening is:

i) BSP has BBMASK =3D xxxx line.
ii) I add BBMASK_forcevariable =3D yyyy line to my local.conf
iii) If I check with -e option, I can see BBMASK variable is finally set to=
 "yyyy"
iv) However, when cooker.py is run, matching bbmask file list with recipe p=
aths, the original "xxxx" line is used for matching.

I feel, the recipe files matching is being done before BBMASK is finally se=
t to "yyyy".  Instead, they are matches against "xxxx" it is the initial BB=
MASK value set by BSP.

This is fido, and jethro may be behave differently (since on jethro based b=
uild this seemed to work)?


--_000_CY1PR0101MB159420CCFFA0785E3A9713FFD7F30CY1PR0101MB1594_
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
<div>Well, I tried adding debug lines to poky/bitbake/lib/bb/cooker.py, and=
 I think what is happening is:</div>
<div><br>
</div>
<div>i) BSP has BBMASK =3D xxxx line.</div>
<div>ii) I add BBMASK_forcevariable =3D yyyy line to my local.conf</div>
<div>iii) If I check with -e option, I can see BBMASK variable is finally s=
et to &quot;yyyy&quot;</div>
<div>iv) However, when cooker.py is run, matching bbmask file list with rec=
ipe paths, the original &quot;xxxx&quot; line is used for matching.</div>
<div><br>
</div>
<div>I feel, the recipe files matching is being done before BBMASK is final=
ly set to &quot;yyyy&quot;. &nbsp;Instead, they are matches against &quot;x=
xxx&quot; it is the initial BBMASK value set by BSP.</div>
<div><br>
</div>
<div>This is fido, and jethro may be behave differently (since on jethro ba=
sed build this seemed to work)?</div>
<div><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB159420CCFFA0785E3A9713FFD7F30CY1PR0101MB1594_--
