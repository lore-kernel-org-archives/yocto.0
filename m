Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CC77E00C14; Thu, 22 Mar 2018 00:46:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0136.outbound.protection.outlook.com [104.47.2.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 019D7E008D2
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2018 00:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=5ylFCJBEyxETLqyCYFq7MHGWydMeE+KraZ55OYCLfHE=;
	b=cu0rpK1OmUOyBPi6RR4fL94RpWzFLBuuFfTu0Q/XnSz5HuQk/cwTFV3+q08MYlgGkmLIirr3kdJtcUp1NughT6dIRfhgZh91+zI6aDi5P327W3VaUKAYorW+3wZ635ZCiAO8hkpt5vzWl+5ekTI1ze6WmIX4BmrGWvgJ4p9y1DQ=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0384.EURP192.PROD.OUTLOOK.COM (52.134.24.24) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.588.14; Thu, 22 Mar 2018 07:31:57 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505%18]) with mapi id 15.20.0609.010;
	Thu, 22 Mar 2018 07:31:57 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to "compute" path to install module file
Thread-Index: AdPBqG3vmHBD7DQ1T6SGrF4Y5N0r+A==
Date: Thu, 22 Mar 2018 07:31:57 +0000
Message-ID: <VI1P192MB0143E912A128CECB0C06CF998DA90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0384;
	6:/x5bTAyQd26a5DJnhQQUkeLVH02v78I+D4uM2q/U1GZAx4DoRO/D6rCYN6V0tDEUtOs2WAZtCWkQD6AnTrTCrddoT5BSf6+8zIsPeZ9+4kFC4wba16gALTdWgiwT8hoSnMDtfPpXbsKHjNqHgP8m0RIHsuw2mFgli4N6EDiQxG0+UVmPmY4AygE0tIWRCBiBQq5yxuLkbSR9krhbh5sdN8fuCpfrE0VwVNSzZsiZW4ok4e3cefesTgdlHOAvZsq9OA2rCVmARABTG7jJ5g9wi5fgLXAk1o2w5eCa+fMNfcrAQd99642bzdtG6AZ8DXAb+IJD4mfbYIfGbIH55W+alQ8R0+BQLvI6hpB03nMCkH/gQpIgX0JfEP4RME/40cx1;
	5:aQaqyJSuW0soPkpda8SwPvsD2jX6C7o42+7ZK8ASZEPKt4NitxGVQlqTooCnvq0ThuK4JenuU+84hFkpgrcnhY2DX1VZbYDJmRSEjZJ1mDIlVJQD+AtKjrm+JLw2fyqaCEF7JJ5zvd09c2TkTqbgINWo14eT24zuZjEvVT11Vx4=;
	24:bL2iP3vukq0ywN43/YRhnCt4OQ50a8w/sw1bfDBoSN5jR1FWaFLNYQ3sX1zcfsKksSIsITUsRiUP/R2h225KR5r3zZEA6kkJ4JvGk7B6pDc=;
	7:BEVeOHTSc9rx9QXALfTDQMER4CXzXwylWqlC9Yp158/5xHmAFZ3qaG7gm4y3cUSSUrrktzznAKj37UTXfWoewqJ2Zb8XjMSRJRetZ50LqRyq6WEbJDpadRFWyLdjhcF702FEys4NpMhbJWHDhZ49y4zqbAqbdfcCO5St0zKhoSg/K0NyqyJOwjRla1RGbOkcjs4Uxx5sq6t13fErf78hoo0C1d59jpercM/NYKynk5A7ZCs6E/yHUBRt20czodRz
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: faf16d79-d95f-4bf0-ae31-08d58fc6fe32
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0384; 
x-ms-traffictypediagnostic: VI1P192MB0384:
x-microsoft-antispam-prvs: <VI1P192MB038400D21D0D487C22ADB4838DA90@VI1P192MB0384.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(3231221)(944501327)(52105095)(93006095)(93001095)(6041310)(20161123562045)(2016111802025)(20161123564045)(20161123558120)(20161123560045)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0384; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0384; 
x-forefront-prvs: 0619D53754
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(346002)(376002)(366004)(39830400003)(396003)(199004)(189003)(6436002)(6506007)(316002)(5250100002)(81156014)(81166006)(3660700001)(5630700001)(97736004)(68736007)(8936002)(74316002)(2501003)(5660300001)(59450400001)(7696005)(3280700002)(86362001)(14454004)(5640700003)(6916009)(8676002)(53936002)(790700001)(3846002)(186003)(26005)(7736002)(2906002)(66066001)(1730700003)(6116002)(9326002)(25786009)(33656002)(102836004)(106356001)(2351001)(2900100001)(54896002)(9686003)(6306002)(105586002)(55016002)(478600001)(99286004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0384;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 2wCYjvz47503DTgkiJXU+eRnDok+pf9j+DZ7BVSWwlfXiS48fYg/iCkj3T3qwrnYqfeWpz7wJ5tPIcG7Am4LCjOArezH9JAGD4pe4ZUhRGa0iuwugs1KK+dBdrAdz/CX0BXOzhCxX8pTrgA505cNh2l6Wv7MgabSo0YFRFrnjN51M05pzaXGCn+5PoC2yJq0sZc48xnAPRKieB+ghR8kYbVdmo6HNv4c7phV+YorjQ+YZqmt4uPKKsgoMW3OYAHHVw10OtNvvhtib0h4KfjjEK7hFou7Gq0ywSJxokk/xCZtIaFxoahj5uWN1I+qguKde1yvUjTaF2deVR5M+h5kgg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: faf16d79-d95f-4bf0-ae31-08d58fc6fe32
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2018 07:31:57.2574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0384
Subject: how to "compute" path to install module file
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
X-List-Received-Date: Thu, 22 Mar 2018 07:46:22 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1P192MB0143E912A128CECB0C06CF998DA90VI1P192MB0143EURP_"

--_000_VI1P192MB0143E912A128CECB0C06CF998DA90VI1P192MB0143EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm porting the makefile to build SocketCan for Ixxat on yocto. At this tim=
e I successfully build the module file.
I now have to install it in the target image.

The "install" procedure from the original makefile does not work out-of-the=
-box. It copies files in the following directories starting by /lib and thu=
s it tries to install in the host system, not the target system..

In order to install in the target image, the installation is performed in a=
 customized do_install function in the bb file, and the problem starts here=
 !

In the original makefile, installation process copies a file in the followi=
ng directory : /lib/modules/$(shell uname -r)/kernel/drivers/net/.....

In the bb file, I "compute" the kernel version using ${KERNEL_VERSION}

Thus the bb file contains the following lines:

#MODDIR =3D Module file destination directory
MODDIR =3D"${nonarch_base_libdir}/modules/${KERNEL_VERSION}/kernel/drivers/=
net/can/ixxat"

do_install() {
        install -d ${D}${base_libdir}/firmware
        install -m 0755 ${WORKDIR}/can-ibxxx_socketcan/ixx-can-ib-1.9.3.fw =
${D}${base_libdir}/firmware
        install -d ${D}${MODDIR}
        install -m 0755 ${WORKDIR}/can-ibxxx_socketcan/ixx_pci.ko ${D}${MOD=
DIR}
}
FILES_${PN} +=3D " ${base_libdir}/firmware ${MODDIR}"

Build fails with the following error:
nothing provides kernel-module-ixx-pci-4.12.14-yocto-standard needed by ker=
nel-module-ixxat-candriver-1.0-r0.qemux86_64

I don't understand how yocto computes to module filename. It adds the kerne=
l-version to the default filename...
Is it the standard way for computing module filename with yocto (I searched=
 and did not find any info about this) or could it be a side-effect of my b=
b file (and in this case, how can I identify where this side-effect occurs)=
 or .. maybe if bug in bitbake ??

Thanks for helping

Vincent


--_000_VI1P192MB0143E912A128CECB0C06CF998DA90VI1P192MB0143EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m porting the makefile to build SocketCan fo=
r Ixxat on yocto. At this time I successfully build the module file.<o:p></=
o:p></p>
<p class=3D"MsoNormal">I now have to install it in the target image.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The &#8220;install&#8221; procedure from the origina=
l makefile does not work out-of-the-box. It copies files in the following d=
irectories starting by /lib and thus it tries to install in the host system=
, not the target system..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In order to install in the target image, the install=
ation is performed in a customized do_install function in the bb file, and =
the problem starts here !<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the original makefile, installation process copie=
s a file in the following directory : /lib/modules/$(shell uname -r)/kernel=
/drivers/net/&#8230;..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the bb file, I &#8220;compute&#8221; the kernel v=
ersion using ${KERNEL_VERSION}
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thus the bb file contains the following lines:<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#MODDIR =3D Module file destination directory<o:p></=
o:p></p>
<p class=3D"MsoNormal">MODDIR =3D&quot;${nonarch_base_libdir}/modules/${KER=
NEL_VERSION}/kernel/drivers/net/can/ixxat&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -=
d ${D}${base_libdir}/firmware<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -=
m 0755 ${WORKDIR}/can-ibxxx_socketcan/ixx-can-ib-1.9.3.fw ${D}${base_libdir=
}/firmware&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;inst=
all -d ${D}${MODDIR}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -=
m 0755 ${WORKDIR}/can-ibxxx_socketcan/ixx_pci.ko ${D}${MODDIR}<o:p></o:p></=
p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal">FILES_${PN} &#43;=3D &quot; ${base_libdir}/firmware =
${MODDIR}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build fails with the following error:<o:p></o:p></p>
<p class=3D"MsoNormal">nothing provides kernel-module-ixx-pci-4.12.14-yocto=
-standard needed by kernel-module-ixxat-candriver-1.0-r0.qemux86_64<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I don&#8217;t understand how yocto computes to modul=
e filename. It adds the kernel-version to the default filename&#8230;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">Is it the standard way for computing module filename=
 with yocto (I searched and did not find any info about this) or could it b=
e a side-effect of my bb file (and in this case, how can I identify where t=
his side-effect occurs) or .. maybe
 if bug in bitbake ??<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for helping<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Vincent<span lang=3D"FR" style=3D"font-family:&quot;=
Arial&quot;,sans-serif;color:#222222;mso-fareast-language:EN-GB"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_VI1P192MB0143E912A128CECB0C06CF998DA90VI1P192MB0143EURP_--
