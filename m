Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FBC1E00C80; Thu, 23 Jun 2016 07:01:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.147 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 916 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Jun 2016 07:01:17 PDT
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0147.outbound.protection.outlook.com [157.56.112.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66BCDE00C75
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 07:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=pW8UAcwuJvetFxdOVELJwP0U1gcKsob8J1rE17fdHnc=;
	b=OH8NF9SqEDYqqOIbiesHx4Ewk5u4Ba3FPlzP9dimigaZcvF8LC0jc513lOIwiF47bD4TTMUHxGgtbVA2W6bfThyU9+v6KqREvxLrpuBLD1rSBo2DuEOx4QE4eamLSYLA+sx/9zomE/zfVvZvDfNCpWDVrgqfVhPPF+SZDXO7kos=
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com (10.164.41.11) by
	DB5PR06MB1573.eurprd06.prod.outlook.com (10.164.41.11) with Microsoft
	SMTP Server (TLS) id 15.1.528.8; Thu, 23 Jun 2016 13:45:59 +0000
Received: from DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) by
	DB5PR06MB1573.eurprd06.prod.outlook.com ([10.164.41.11]) with mapi id
	15.01.0528.008; Thu, 23 Jun 2016 13:45:59 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Regarding backslash in bblayers.conf file
Thread-Index: AQHRzVSPrmHiL/CMbkuB9GzFAbTyag==
Date: Thu, 23 Jun 2016 13:45:59 +0000
Message-ID: <DB5PR06MB15731242248C60AED84A0353CF2D0@DB5PR06MB1573.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hgujulan@visteon.com; 
x-originating-ip: [25.164.34.4]
x-ms-office365-filtering-correlation-id: af53fe9b-7d22-415a-022b-08d39b6cb5ae
x-microsoft-exchange-diagnostics: 1; DB5PR06MB1573;
	6:ube3SviWhnbVbMYjA84Du7w91IOl6WNCVWrwukE2wkggpcHWh7g7HFs+5BeiHwXbmgMDaCwcrTRbCIE20UEIRaDjjhUpaq+jlyCYmgmYmDCuUsh+TRfzSWMvj0gNCIXysRB979nrKEpxtyxMR3nY+NQ3qnzLmTPu1Ix6l9lKvSdD8/T1xmS5hdDg1eukC1UPAEw1lQ4Yb8odyy25GbcoCYF4elFIqvar33gzQVNrSDHbwa5czgCw0Bxq9LSxh6/PwyrYox4/aMyyR4GJi8TwXPHElEU/Gook6S5aFu9TzxmLlk7mDUlKTdimYjF2AdXgkLCWgGgmnVd6HE/58zBVyQ==;
	5:CUxACoZ77aTqJM2zyaqCZT+u2gTX8Yyi4czTrGFhX/chtDqF9VCMvfKy7z/rwTqRztMmrOg8bSpHODbOqFSdsX5m86q0lA8/LJ+Fnu/uU0h83Q4XA/QZQBlyrbU8itLY5Ub7pngjoyZEC82lNzyiig==;
	24:AF8VVKXxtXdp7kP2HPPoaNLLTnNvhKQWdU9KZKycj2a8zPjX6O2RXH1yjXbh5S+ZHJZT5LTbCcrNUjgCIkCis9nypWPZ+rQUpVBsWA7/oKs=;
	7:O3rafbC6irtfNjg3Km5FLZwZKTWGzRG8VfS898kTq175cBlmOmmLP8ie9/QXxAspIpRg5MaZR1TZpVRikosHegX9HRpCKfUBXqzE7L0U1uT+yvedI05ixjEF/x1BJ8W1Cr98pzp9zd13RYi8psIMb80EbbP/slucIVAAjat5SF4vBZyq7fs1qLHFWWRibkHq+7YXA1KPORf6JDccWHN1c8T3Pd8rvCjMzzX3osMLaunGA3PsP6xhB6ug4xs46h0H
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR06MB1573;
x-microsoft-antispam-prvs: <DB5PR06MB157397AEFCEDFB74F69EFE35CF2D0@DB5PR06MB1573.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:DB5PR06MB1573; BCL:0; PCL:0; RULEID:; SRVR:DB5PR06MB1573; 
x-forefront-prvs: 098291215C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(199003)(189002)(3660700001)(450100001)(50986999)(2906002)(110136002)(97736004)(9686002)(5640700001)(54356999)(3280700002)(5002640100001)(68736007)(7846002)(86362001)(107886002)(19580395003)(2501003)(74316001)(7696003)(87936001)(5003600100003)(7736002)(8936002)(101416001)(1730700003)(10400500002)(8676002)(81156014)(81166006)(92566002)(189998001)(2351001)(33656002)(19627405001)(76576001)(229853001)(106356001)(586003)(77096005)(105586002)(66066001)(106116001)(19625215002)(122556002)(6116002)(102836003)(3846002)(16236675004)(2900100001)(11100500001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5PR06MB1573;
	H:DB5PR06MB1573.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: visteon.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2016 13:45:59.5013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR06MB1573
Subject: Regarding backslash in bblayers.conf file
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
X-List-Received-Date: Thu, 23 Jun 2016 14:01:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR06MB15731242248C60AED84A0353CF2D0DB5PR06MB1573eurp_"

--_000_DB5PR06MB15731242248C60AED84A0353CF2D0DB5PR06MB1573eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


We were facing a issue when building 'weston'. The issue is we had included=
 meta-renesas & poky in our bblayers.conf file. The weston package is provi=
ded by both poky(v1.8.0) and meta-renesas(v1.9.0). We want the weston provi=
ded by the meta-renesas layer as it is the latest and also includes some ch=
anges done by Renesas.


But for some reason, it was building the weston provided by poky(1.8.0) whi=
ch we don't want. Then we realized the issue to a backslash added by mistak=
e in the bblayers.conf file after meta-rcar-gen3 as shown below.


# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "6"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  ${TOPDIR}/../poky/meta \
  ${TOPDIR}/../poky/meta-yocto \
  ${TOPDIR}/../poky/meta-yocto-bsp \
  ${TOPDIR}/../meta-renesas/meta-rcar-gen3/ \
  ${TOPDIR}/../meta-linaro/meta-linaro-toolchain/ \
  ${TOPDIR}/../meta-visteon-monarch \
  ${TOPDIR}/../meta-browser \
  ${TOPDIR}/../meta-openembedded/meta-oe \
  ${TOPDIR}/../meta-openembedded/meta-gnome \
  ${TOPDIR}/../meta-openembedded/meta-networking \
  ${TOPDIR}/../meta-openembedded/meta-python \
  "
BBLAYERS_NON_REMOVABLE ?=3D " \
  ${TOPDIR}/../poky/meta \
  ${TOPDIR}/../poky/meta-yocto \
  "


After removing the character, its now building the weston provided by the m=
era-rcar-gen3 layer(v1.9.0) correctly as we expect. But I am not able to un=
derstand what was happening when the backslash character was present. Also =
when I was building weston with this unwanred character, I was getting the =
warning shown below which I couldn't understand.


Loading cache...done.
Loaded 4665 entries from dependency cache.
Parsing recipes...done.
Parsing of 2046 .bb files complete (2045 cached, 1 parsed). 4666 targets, 9=
43 skipped, 2 masked, 0 errors.
WARNING: No bb files matched BBFILE_PATTERN_rcar-gen3 '^/home/hari/salvator=
-x-1.1.0/monarch-distribution/build_release/../meta-renesas/meta-rcar-gen3/=
/'
WARNING: No bb files matched BBFILE_PATTERN_linaro-toolchain '^/home/hari/s=
alvator-x-1.1.0/monarch-distribution/build_release/../meta-linaro/meta-lina=
ro-toolchain//'
NOTE: Resolving any missing task queue dependencies
NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to PRE=
FERRED_PROVIDERS



Thanks & Regards,

Hari Prasath

--_000_DB5PR06MB15731242248C60AED84A0353CF2D0DB5PR06MB1573eurp_
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
<p>Hello,</p>
<p><br>
</p>
<p>We were facing a issue when building 'weston'. The issue is we had inclu=
ded meta-renesas &amp; poky in our bblayers.conf file. The weston package i=
s provided by both poky(v1.8.0) and meta-renesas(v1.9.0). We want the westo=
n provided by the meta-renesas layer
 as it is the latest and also includes some changes done by Renesas.</p>
<p><br>
</p>
<p>But for some reason, it was building the weston provided by poky(1.8.0) =
which we don't want. Then we realized the issue to a backslash added by mis=
take in the bblayers.conf file after meta-rcar-gen3&nbsp;as shown below.</p=
>
<p><br>
</p>
<p></p>
<div><span style=3D"font-family: &quot;Courier New&quot;,monospace;"># LAYE=
R_CONF_VERSION is increased each time build/conf/bblayers.conf</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;"># changes i=
ncompatibly</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">LCONF_VERSI=
ON =3D &quot;6&quot;</span><br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">BBPATH =3D =
&quot;${TOPDIR}&quot;</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">BBFILES ?=
=3D &quot;&quot;</span><br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">BBLAYERS ?=
=3D &quot; \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../poky/meta \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../poky/meta-yocto \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../poky/meta-yocto-bsp \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../meta-renesas/meta-rcar-gen3/ \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../meta-linaro/meta-linaro-toolchain/ \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../meta-visteon-monarch \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../meta-browser \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../meta-openembedded/meta-oe \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../meta-openembedded/meta-gnome \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../meta-openembedded/meta-networking \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../meta-openembedded/meta-python \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; &quo=
t;</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">BBLAYERS_NO=
N_REMOVABLE ?=3D &quot; \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../poky/meta \</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp; ${TO=
PDIR}/../poky/meta-yocto \</span><br>
&nbsp; &quot;<br>
</div>
<p></p>
<p><br>
</p>
<p>After removing the character, its now building the weston provided by th=
e mera-rcar-gen3 layer(v1.9.0) correctly as we expect. But I am not able to=
 understand what was happening when the backslash character was present. Al=
so when I was building weston with
 this unwanred character, I was getting the warning shown below which I cou=
ldn't understand.&nbsp;</p>
<p><br>
</p>
<p></p>
<div><span style=3D"font-family: &quot;Courier New&quot;,monospace;">Loadin=
g cache...done.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">Loaded 4665=
 entries from dependency cache.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">Parsing rec=
ipes...done.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">Parsing of =
2046 .bb files complete (2045 cached, 1 parsed). 4666 targets, 943 skipped,=
 2 masked, 0 errors.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">WARNING: No=
 bb files matched BBFILE_PATTERN_rcar-gen3 '^/home/hari/salvator-x-1.1.0/mo=
narch-distribution/build_release/../meta-renesas/meta-rcar-gen3//'</span><b=
r>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">WARNING: No=
 bb files matched BBFILE_PATTERN_linaro-toolchain '^/home/hari/salvator-x-1=
.1.0/monarch-distribution/build_release/../meta-linaro/meta-linaro-toolchai=
n//'</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">NOTE: Resol=
ving any missing task queue dependencies</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">NOTE: selec=
ting pseudo-native to satisfy virtual/fakeroot-native due to PREFERRED_PROV=
IDERS</span><br>
</div>
<br>
<p></p>
<p><br>
</p>
<div id=3D"Signature">Thanks &amp; Regards,
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_DB5PR06MB15731242248C60AED84A0353CF2D0DB5PR06MB1573eurp_--
