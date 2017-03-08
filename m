Return-Path: <steove@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C9AEE00566; Wed,  8 Mar 2017 04:42:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (steove[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.90.215 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Mar 2017 04:41:57 PST
Received: from SNT004-OMC4S12.hotmail.com (snt004-omc4s12.hotmail.com
	[65.55.90.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C895E003C1
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 04:41:57 -0800 (PST)
Received: from APC01-HK2-obe.outbound.protection.outlook.com ([65.55.90.199])
	by SNT004-OMC4S12.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Wed, 8 Mar 2017 04:40:56 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=aXwXW8NZthw4Tt12aLdupfGgA/mzGP8v/DFXkOskg3c=;
	b=kKcmq0BkDFXJ0nJENxsYEL4H83QFEwFNJLWY8FinAIPMGJmVaUpL++ZzKQS8OMrxtntwZEER7og0bRRfkK3DgDXfF4GaMtfwShQtDp0ucbu0jnfn0mHi4OEbaRlSlbNxa0084+bbNC7IcLbAvEIZoNFrcg2rNjDrlFsgKe7vDXca3eaP7rbgkDnynNUhKCdZty5LrRG7aGHDcgngIvy51mcbE77y+olKd4tmfTHFh2v7/mWQ27aqzWBL0/KrrYYTiRhIiWKKWyTLUWlO9pi9gyZ//FAg+g487Nb5brPgNveB+bFqGY6j4TNLnv11L6Sa3pM1ApviIfuu5PS83Ck+Nw==
Received: from SG2APC01FT055.eop-APC01.prod.protection.outlook.com
	(10.152.250.56) by SG2APC01HT192.eop-APC01.prod.protection.outlook.com
	(10.152.251.156) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.933.11;
	Wed, 8 Mar 2017 12:40:52 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com (10.152.250.59) by
	SG2APC01FT055.mail.protection.outlook.com (10.152.251.60) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.933.11 via Frontend Transport; Wed, 8 Mar 2017 12:40:52 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) by
	SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) with mapi id
	15.01.0961.014; Wed, 8 Mar 2017 12:40:52 +0000
From: Steve Plant <steove@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Raspberry Pi2 Fails to boot into LXDE.
Thread-Index: AQHSmAS6lDZ5/Vwgn0y/oXWyad/Mnw==
Date: Wed, 8 Mar 2017 12:40:51 +0000
Message-ID: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:4B574DBE6243C929AD3BADD186123FDD8F9D629DCBD3CAA6376BACFDAE7DD62E;
	UpperCasedChecksum:5B7E00ED8D3D343FFD375521D060DFB15149D0B51D91EEA46269307EF60A0FA4;
	SizeAsReceived:7622; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [++YokEXagaWwf2NJ7LcPI9M6XcjR7/ep]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; SG2APC01HT192;
	5:iJan8Ot03HJPJRIyUiEivdkMazYXDrXuItZlqpApKgazoLvP7oSGw8ZP80nmewZOmV+6B8ZXj3YPsenPHG4/Bd0FqItR4UjnyFP1wXjQ1kHkpxICyvcZE4UbueVftlqCydD8S/vTJWc0y3HFy/WmFg==;
	24:s+FOY4AEg0iu7DKzS9G0kUhysnSTWfvRfKLtW/kfTRmOsnR/gPJAxez+3eIDiC9XSz9KEOJ0sn07XHimnW625hTLHpz0D+rPWEC/UPYgZYY=;
	7:4i1MLA1KOwFd1sf1epzzAp2+FJKOpv/AUI0tpxyPLDVMpRuNJdA2KPefrkj21coEm2tQm2iCJZm7oxLdC0Wosd9qQQL4u5AYJHrd6i6E5hoREcET8br42so+/NxfLz3rB8g2GucIRuvBC9vGKjaaASFcqaKkAEDzXCviaCiQMw6fjm62X0mxkwmNl0+n2wYhCUt6b+rbF7hALURSlsat/nldA3bswGoPLeVWN1VWQ48hiDcnoa54FBe1/IPsUz8d5b4KXST5HqUtC+O+C2Ri1YsHjlmYlDB3AvPsd4oYdzXvlBuJbPvUOUVvIO5ol2Ws
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900016);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SG2APC01HT192;
	H:SG2PR0301MB2016.apcprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 2c2fa564-d149-4f57-9571-08d466205b57
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(1603101448)(1601125254)(1701031045);
	SRVR:SG2APC01HT192; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(432015087)(444000031); SRVR:SG2APC01HT192; BCL:0; PCL:0;
	RULEID:; SRVR:SG2APC01HT192; 
x-forefront-prvs: 02408926C4
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2017 12:40:51.5879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT192
X-OriginalArrivalTime: 08 Mar 2017 12:40:56.0356 (UTC)
	FILETIME=[3B434E40:01D29809]
Subject: Raspberry Pi2 Fails to boot into LXDE.
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
X-List-Received-Date: Wed, 08 Mar 2017 12:42:00 -0000
Content-Language: en-NZ
Content-Type: multipart/alternative;
	boundary="_000_SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0SG2PR0301MB2016_"

--_000_SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0SG2PR0301MB2016_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,


Very new to all this linux world, and especially Yocto.


I'm working on a embedded project at the moment using a raspberry pi2 board=
.


I have used toaster with Morty 2.2 to compile an image using"rpi-basic-imag=
e", to this I have added the following bitbake variables:

Bitbake variables

DISTRO
poky
DL_DIR
/home/steve/poky/downloads
IMAGE_FSTYPES
ext3 jffs2 tar.bz2 rpi-sdimg
IMAGE_INSTALL_append
packagegroup-core-x11-base packagegroup-lxde-base connman
PACKAGE_CLASSES
package_rpm
SSTATE_DIR
/home/steve/poky/sstate-cache

DISABLE_OVERSCAN
1
GPU_MEM_1024
512

I have dd'ed the image to an SD card increased the sdb2 partition to the ma=
x size and powered up the rpi. Everything looks fine to start with, as it d=
isplays the four raspberrys in the top left, then the white "Yocto Project"=
 splash screen complete with small blue dot to the side appears, the progre=
ss bar moves across to 100 percent, then the screen turns black with a whit=
e cursor in the middle and it appears to freeze with only a very dim one se=
cond flash of the "act" led.


I have then connected the 7" touchscreen and apart from the added multicolo=
red square at the very beginning I get the exact same boot up problem, hang=
s on the black screen with white cursor (good to see its all resized correc=
tly for the TfT through!!)


Before adding the packagegroup-core-x11-base and packagegroup-lxde-base I s=
uccessfully copied over and ran the rpi-basic-image with no problem, ending=
 up with a usable console.


Looking for any help here, I'm thinking I've missed adding a package, or so=
me type of local.conf instruction. any suggestions would be appreciated....=
.........



Regards, Steve.

--_000_SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0SG2PR0301MB2016_
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
<p>Hi All,</p>
<p><br>
</p>
<p>Very new to all this linux world, and especially Yocto.</p>
<p><br>
</p>
<p>I'm working on a <span style=3D"font-size: 12pt;">embed</span>ded projec=
t at the moment using a raspberry pi2 board.</p>
<p><br>
</p>
<p>I have used toaster with Morty 2.2 to compile an image using&quot;rpi-ba=
sic-image&quot;, to this I have added the following bitbake variables:</p>
<p></p>
<h2><span style=3D"font-family: Calibri,Arial,Helvetica,sans-serif; font-si=
ze: 12pt;">Bitbake variables</span></h2>
<dl><dt><span style=3D"font-family: Calibri,Arial,Helvetica,sans-serif; fon=
t-size: 12pt;"></span><span style=3D"font-size: 12pt; font-family: Calibri,=
Arial,Helvetica,sans-serif;">DISTRO</span><span style=3D"font-size: 12pt; f=
ont-family: Calibri,Arial,Helvetica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dt><dd class=3D"variable-list"><span style=3D"font-s=
ize: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;"></span><span s=
tyle=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">=
poky</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helve=
tica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dd><dt><span style=3D"font-size: 12pt; font-family: =
Calibri,Arial,Helvetica,sans-serif;"></span><span style=3D"font-size: 12pt;=
 font-family: Calibri,Arial,Helvetica,sans-serif;">DL_DIR</span><span style=
=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dt><dd class=3D"variable-list"><span style=3D"font-s=
ize: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;"></span><span s=
tyle=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">=
/home/steve/poky/downloads</span><span style=3D"font-size: 12pt; font-famil=
y: Calibri,Arial,Helvetica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dd><dt><span style=3D"font-size: 12pt; font-family: =
Calibri,Arial,Helvetica,sans-serif;"></span><span style=3D"font-size: 12pt;=
 font-family: Calibri,Arial,Helvetica,sans-serif;">IMAGE_FSTYPES</span><spa=
n style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif=
;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dt><dd class=3D"variable-list"><span style=3D"font-s=
ize: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;"></span><span s=
tyle=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">=
ext3 jffs2 tar.bz2 rpi-sdimg</span><span style=3D"font-size: 12pt; font-fam=
ily: Calibri,Arial,Helvetica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dd><dt><span style=3D"font-size: 12pt; font-family: =
Calibri,Arial,Helvetica,sans-serif;"></span><span style=3D"font-size: 12pt;=
 font-family: Calibri,Arial,Helvetica,sans-serif;">IMAGE_INSTALL_append</sp=
an><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,san=
s-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dt><dd class=3D"variable-list"><span style=3D"font-s=
ize: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;"></span><span s=
tyle=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">=
packagegroup-core-x11-base packagegroup-lxde-base connman</span><span style=
=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span><span style=3D"font-size: 12pt; font-family: Calibri,A=
rial,Helvetica,sans-serif;"></span></dd><dt><span style=3D"font-size: 12pt;=
 font-family: Calibri,Arial,Helvetica,sans-serif;"></span><span style=3D"fo=
nt-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">PACKAGE_CL=
ASSES</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helv=
etica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dt><dd class=3D"variable-list"><span style=3D"font-s=
ize: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;"></span><span s=
tyle=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">=
package_rpm</span><span style=3D"font-size: 12pt; font-family: Calibri,Aria=
l,Helvetica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dd><dt><span style=3D"font-size: 12pt; font-family: =
Calibri,Arial,Helvetica,sans-serif;"></span><span style=3D"font-size: 12pt;=
 font-family: Calibri,Arial,Helvetica,sans-serif;">SSTATE_DIR</span><span s=
tyle=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dt><dd class=3D"variable-list"><span style=3D"font-s=
ize: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;"></span><span s=
tyle=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">=
/home/steve/poky/sstate-cache</span><span style=3D"font-size: 12pt; font-fa=
mily: Calibri,Arial,Helvetica,sans-serif;">
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dd></dl>
<dl id=3D"configvar-list"><dt><span style=3D"font-size: 12pt; font-family: =
Calibri,Arial,Helvetica,sans-serif;">DISABLE_OVERSCAN</span><span style=3D"=
font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">
</span></dt><dd class=3D"variable-list"><span style=3D"font-size: 12pt; fon=
t-family: Calibri,Arial,Helvetica,sans-serif;"></span><span style=3D"font-s=
ize: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">1</span><span =
style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;"=
>
</span><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica=
,sans-serif;"></span></dd><dt><span style=3D"font-size: 12pt; font-family: =
Calibri,Arial,Helvetica,sans-serif;">GPU_MEM_1024</span><span style=3D"font=
-size: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">
</span></dt><dd class=3D"variable-list"><span style=3D"font-size: 12pt; fon=
t-family: Calibri,Arial,Helvetica,sans-serif;"></span><span style=3D"font-s=
ize: 12pt; font-family: Calibri,Arial,Helvetica,sans-serif;">512</span><spa=
n class=3D"lead" id=3D"config_var_value_10"></span>
<span title=3D"" data-original-title=3D"" class=3D"glyphicon glyphicon-edit=
 js-icon-pencil-config_var">
</span></dd></dl>
<p></p>
<p>I have dd'ed the image to an SD card increased the sdb2 partition to the=
 max size and powered up the rpi. Everything looks fine to start with, as i=
t displays the four raspberrys in the top left, then the white &quot;Yocto =
Project&quot; splash screen complete with
 small blue dot to the side appears, the progress bar moves across to 100 p=
ercent, then the screen turns black with a white cursor in the middle and i=
t appears to freeze with only a very dim one second flash of the &quot;act&=
quot; led.</p>
<p><br>
</p>
<p>I have then connected the 7&quot; touchscreen and apart from the added m=
ulticolored square at the very beginning I get the exact same boot up probl=
em, hangs on the black screen with white cursor (good to see its all resize=
d correctly for the TfT through!!)<br>
</p>
<p><br>
</p>
<p>Before adding the <span style=3D"font-size: 12pt; font-family: Calibri,A=
rial,Helvetica,sans-serif;">
packagegroup-core-x11-base and packagegroup-lxde-base I successfully copied=
 over and ran the rpi-basic-image with no problem, ending up with a usable =
console.</span></p>
<p><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,san=
s-serif;"><br>
</span></p>
<p><span style=3D"font-size: 12pt; font-family: Calibri,Arial,Helvetica,san=
s-serif;">Looking for any help here, I'm thinking I've missed adding a pack=
age, or some type of local.conf instruction. any suggestions would be appre=
ciated.............</span><br>
</p>
<p><br>
</p>
<p><br>
</p>
<div id=3D"Signature">Regards, Steve. </div>
</div>
</body>
</html>

--_000_SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0SG2PR0301MB2016_--
