Return-Path: <pdemetrotion@winsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0847EE00F01; Wed,  1 Jun 2016 06:28:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1095 seconds by postgrey-1.32 at yocto-www;
	Wed, 01 Jun 2016 06:27:59 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0085.outbound.protection.outlook.com [157.56.111.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90554E00E31
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 06:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=winsystemsinc.onmicrosoft.com; s=selector1-winsystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=xqQ7gGquqbauMOwgu+/VXJD9wlrfFq1ALVlUSSrG2Fs=;
	b=L0lpvSoKMrSxkZNqkQXBShZpA4+qfhAslwYOZyotkN+U3QkRbEOZbdzaf9FH6KZYNWRCZJP5FdpTweAeF0AFX8ab5a0Mfo1SzRqvrJdwhSW0ywAWcuJ1ry7K81LETUxPrAJntYiVit8XUESGj8mqI6+AysekCBUU60C8KWk5z3w=
Received: from CO2PR01MB2184.prod.exchangelabs.com (10.166.91.149) by
	CO2PR01MB2181.prod.exchangelabs.com (10.166.91.146) with Microsoft SMTP
	Server (TLS) id 15.1.506.9; Wed, 1 Jun 2016 12:55:09 +0000
Received: from CO2PR01MB2184.prod.exchangelabs.com ([10.166.91.149]) by
	CO2PR01MB2184.prod.exchangelabs.com ([10.166.91.149]) with mapi id
	15.01.0506.013; Wed, 1 Jun 2016 12:55:09 +0000
From: Paul DeMetrotion <pdemetrotion@winsystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Recipe Debug - QA Issue
Thread-Index: AdG8BNNjvzuqu3WvR72ElwP38yl0Ng==
Date: Wed, 1 Jun 2016 12:55:09 +0000
Message-ID: <CO2PR01MB2184C310EE183297732FDFE0BF470@CO2PR01MB2184.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=winsystems.com;
x-originating-ip: [50.84.106.250]
x-ms-office365-filtering-correlation-id: 99d35bcc-9077-4fbe-8be9-08d38a1bf6a0
x-microsoft-exchange-diagnostics: 1; CO2PR01MB2181;
	5:HQ0WIaNuepVT9ieDcOnLviSHvAxUAjewZhAyBZyZT9nWctfRjo6BX/lBUK8m0+BPjOZ6AypNVSJGVzjJA1BXGiMuMoYkiNjthYRYJ/O5EHzZ2h5ymCzXLXz8injWll6ap49LA61NRXorEs0JgSTjSA==;
	24:t+HJbdUkemc85MmsxKFjk8VdxRRFs07QoC37U4xUo6iTK+bbcMgdsaTDT14IS0iPvAwihgINHge+sPsr7LA3JWbThqZRXwixA4ZaEkByUqo=;
	7:NDV/aMwBx4viye5p5sI1ISapxMgoj9Dw8OSDTYkPLg60443W4tI+59TDmMkP/QFZdWv0RIGUrLskjQbLs8bQZHGoSJBJiyUSm/87Ah5emIzscSsK8lIsmh7OphXaMTqHIi5A1NiT5z8AXepGkLeE0SzsY23DIHzSVx+UPRDHZKJyTu3zBsvEm6tnGfVnAEDV
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CO2PR01MB2181;
x-microsoft-antispam-prvs: <CO2PR01MB2181371FC36A8B6A948981F8BF470@CO2PR01MB2181.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040130)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041072)(6043046);
	SRVR:CO2PR01MB2181; BCL:0; PCL:0; RULEID:; SRVR:CO2PR01MB2181; 
x-forefront-prvs: 096029FF66
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(54356999)(50986999)(18717965001)(19580395003)(10400500002)(5004730100002)(8936002)(19625215002)(81166006)(11100500001)(87936001)(19300405004)(19609705001)(19617315012)(77096005)(8676002)(15975445007)(33656002)(2501003)(74316001)(1730700003)(2351001)(6116002)(3280700002)(16236675004)(586003)(86362001)(5002640100001)(107886002)(110136002)(189998001)(5008740100001)(5003600100002)(229853001)(3660700001)(5630700001)(122556002)(92566002)(102836003)(5640700001)(2906002)(2900100001)(790700001)(3846002)(450100001)(66066001)(9686002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CO2PR01MB2181;
	H:CO2PR01MB2184.prod.exchangelabs.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: winsystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2016 12:55:09.4276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 499305db-9394-4200-97fb-d233902786c6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR01MB2181
Subject: Recipe Debug - QA Issue
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
X-List-Received-Date: Wed, 01 Jun 2016 13:28:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO2PR01MB2184C310EE183297732FDFE0BF470CO2PR01MB2184prod_"

--_000_CO2PR01MB2184C310EE183297732FDFE0BF470CO2PR01MB2184prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have created a simple (?) recipe to copy some existing drivers and script=
s into my kernel image. I am getting the following error when I attempt to =
bitbake the recipe. Is this a license issue?

ERROR: QA Issue: rs9113: Files/directories were installed but not shipped
  /lib
  /lib/modules
  /lib/modules/kernel
  /lib/modules/kernel/drivers
  /lib/modules/kernel/drivers/net
  /lib/modules/kernel/drivers/net/wireless
  /lib/modules/kernel/drivers/net/wireless/redpine
  /lib/modules/kernel/drivers/net/wireless/redpine/wlan.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/wlan_ccmp.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/onebox_common_gpl.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/wlan_tkip.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/wlan_wep.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/wlan_scan_sta.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/wlan_acl.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/onebox_wlan_nongpl.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/onebox_wlan_gpl.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/wlan_xauth.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/onebox_gpl.ko
  /lib/modules/kernel/drivers/net/wireless/redpine/onebox_nongpl.ko [instal=
led-vs-shipped]

Here is the recipe. I have all of the files to be copied in the same direct=
ory as the recipe.

DESCRIPTION =3D "Install of redpine drivers and scripts"

LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COREBASE}/LICENSE;md5=3D4d92cd373abda3937c2b=
c47fbc49d690 \
                    file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c=
80a0384361b4de20420"

kmoddir =3D "/lib/modules/${KERNEL_VERSION}/kernel/drivers/net/wireless/red=
pine"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"

SRC_URI_append =3D " \
    file://onebox_common_gpl.ko \
    file://onebox_gpl.ko \
    file://onebox_nongpl.ko \
    file://onebox_wlan_gpl.ko \
    file://onebox_wlan_nongpl.ko \
    file://wlan.ko \
    file://wlan_wep.ko \
    file://wlan_ccmp.ko \
    file://wlan_tkip.ko \
    file://wlan_acl.ko \
    file://wlan_scan_sta.ko \
    file://wlan_xauth.ko \
    file://wlan_enable.sh \
    file://wlan_disable.sh \
"

do_install_append() {
    mkdir -p ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/onebox_common_gpl.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/onebox_gpl.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/onebox_nongpl.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/onebox_wlan_gpl.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/onebox_wlan_nongpl.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/wlan.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/wlan_wep.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/wlan_ccmp.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/wlan_tkip.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/wlan_acl.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/wlan_scan_sta.ko ${D}${kmoddir}
    install -m 0755 ${WORKDIR}/wlan_xauth.ko ${D}${kmoddir}
    mkdir -p ${D}/etc/redpine
    install -m 0755 ${WORKDIR}/wlan_enable.sh ${D}/etc/redpine
    install -m 0755 ${WORKDIR}/wlan_disable.sh ${D}/etc/redpine
}

FILES_${PN}_append =3D " \
    ${D}${kmoddir}/onebox_common_gpl.ko \
    ${D}${kmoddir}/onebox_gpl.ko \
    ${D}${kmoddir}/onebox_nongpl.ko \
    ${D}${kmoddir}/onebox_wlan_gpl.ko \
    ${D}${kmoddir}/onebox_wlan_nongpl.ko \
    ${D}${kmoddir}/wlan.ko \
    ${D}${kmoddir}/wlan_wep.ko \
    ${D}${kmoddir}/wlan_ccmp.ko \
    ${D}${kmoddir}/wlan_tkip.ko \
    ${D}${kmoddir}/wlan_acl.ko \
    ${D}${kmoddir}/wlan_scan_sta.ko \
    ${D}${kmoddir}/wlan_xauth.ko \
    ${D}/etc/redpine/wlan_enable.sh \
    ${D}/etc/redpine/wlan_disable.sh \
"

Paul DeMetrotion
Software Guru
WinSystems, Inc.
(972) 571-8657
www.winsystems.com<http://www.winsystems.com/>


--_000_CO2PR01MB2184C310EE183297732FDFE0BF470CO2PR01MB2184prod_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have created a simple (?) recipe to copy some exis=
ting drivers and scripts into my kernel image. I am getting the following e=
rror when I attempt to bitbake the recipe. Is this a license issue?<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">ERROR: QA Issue: rs9113: Files/directories were installed but not ship=
ped<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/wlan.ko<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/wlan_ccmp.ko<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/onebox_common_=
gpl.ko<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/wlan_tkip.ko<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/wlan_wep.ko<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/wlan_scan_sta.=
ko<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/wlan_acl.ko<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/onebox_wlan_no=
ngpl.ko<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/onebox_wlan_gp=
l.ko<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/wlan_xauth.ko<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/onebox_gpl.ko<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp; /lib/modules/kernel/drivers/net/wireless/redpine/onebox_nongpl.=
ko [installed-vs-shipped]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the recipe. I have all of the files to be co=
pied in the same directory as the recipe.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">DESCRIPTION =3D &quot;Install of redpine drivers and scripts&quot;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">LICENSE =3D &quot;MIT&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">LIC_FILES_CHKSUM =3D &quot;file://${COREBASE}/LICENSE;md5=3D4d92cd373a=
bda3937c2bc47fbc49d690 \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://${COREBASE}/meta/COPYIN=
G.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">kmoddir =3D &quot;/lib/modules/${KERNEL_VERSION}/kernel/drivers/net/wi=
reless/redpine&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}:&quot;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">SRC_URI_append =3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://onebox_common_gpl.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://onebox_gpl.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://onebox_nongpl.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://onebox_wlan_gpl.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://onebox_wlan_nongpl.ko \<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://wlan.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://wlan_wep.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://wlan_ccmp.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://wlan_tkip.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://wlan_acl.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://wlan_scan_sta.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://wlan_xauth.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://wlan_enable.sh \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; file://wlan_disable.sh \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">do_install_append() {
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp;&nbsp;mkdir -p ${D}${kmoddir}
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp;&nbsp;install -m 0755 ${WORKDIR}/onebox_common_gpl.k=
o ${D}${kmoddir}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/onebox_gpl.ko ${D}${kmod=
dir}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/onebox_nongpl.ko ${D}${k=
moddir}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/onebox_wlan_gpl.ko ${D}$=
{kmoddir}
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp;&nbsp;install -m 0755 ${WORKDIR}/onebox_wlan_nongpl.=
ko ${D}${kmoddir}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/wlan.ko ${D}${kmoddir}<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/wlan_wep.ko ${D}${kmoddi=
r}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/wlan_ccmp.ko ${D}${kmodd=
ir}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/wlan_tkip.ko ${D}${kmodd=
ir}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/wlan_acl.ko ${D}${kmoddi=
r}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/wlan_scan_sta.ko ${D}${k=
moddir}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/wlan_xauth.ko ${D}${kmod=
dir}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; mkdir -p ${D}/etc/redpine
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp;&nbsp;install -m 0755 ${WORKDIR}/wlan_enable.sh ${D}=
/etc/redpine<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/wlan_disable.sh ${D}/etc=
/redpine<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">}<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">FILES_${PN}_append =3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/onebox_common_gpl.ko \<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/onebox_gpl.ko \<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/onebox_nongpl.ko \<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/onebox_wlan_gpl.ko \<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/onebox_wlan_nongpl.ko \<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/wlan.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/wlan_wep.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/wlan_ccmp.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/wlan_tkip.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/wlan_acl.ko \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/wlan_scan_sta.ko \<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}${kmoddir}/wlan_xauth.ko \<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}/etc/redpine/wlan_enable.sh \<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&nbsp;&nbsp;&nbsp; ${D}/etc/redpine/wlan_disable.sh \<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt;font-family:Consolas;color:black;background:white;mso-highlight:wh=
ite">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Paul DeMetrotion<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Software Guru<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">WinSystems, Inc. <o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">(972) 571-8657<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><a href=3D"http://www.=
winsystems.com/"><span style=3D"color:blue">www.winsystems.com</span></a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CO2PR01MB2184C310EE183297732FDFE0BF470CO2PR01MB2184prod_--
