Return-Path: <rahul.saxena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77727E01264
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2011 13:41:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Sep 2011 13:41:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,315,1312182000"; d="scan'208,217";a="44819015"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 01 Sep 2011 13:41:55 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 1 Sep 2011 13:41:55 -0700
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Thu, 1 Sep 2011 13:41:54 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 1 Sep 2011 13:41:53 -0700
Thread-Topic: [PATCH 2/2] [KERNEL] Removed unused cfg file
Thread-Index: Acxo55Ta+FrG9VjXQGG+h4labpsP5g==
Message-ID: <4FF5AC937153B0459463C1A88EB478F2012E1E5AF1@orsmsx505.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 2/2] [KERNEL] Removed unused cfg file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Sep 2011 20:41:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4FF5AC937153B0459463C1A88EB478F2012E1E5AF1orsmsx505amrc_"

--_000_4FF5AC937153B0459463C1A88EB478F2012E1E5AF1orsmsx505amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Removed unused cfg file
---
 meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg |   39 ---------------------=
----
 1 files changed, 0 insertions(+), 39 deletions(-)
 delete mode 100644 meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg

diff --git a/meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg b/meta/cfg/kerne=
l-cache/bsp/fishriver/eg20t.cfg
deleted file mode 100644
index 225581c..0000000
--- a/meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg
+++ /dev/null
@@ -1,39 +0,0 @@
-# Hardware support for the Platform Controller Hub EG20T
-
-CONFIG_PCH_DMA=3Dy
-CONFIG_PCH_UART_DMA=3Dy
-CONFIG_SERIAL_8250_PCI=3Dy
-CONFIG_SERIAL_8250_PCH=3Dy
-CONFIG_SERIAL_8250_PCH_DMA=3Dy
-
-CONFIG_SERIAL_PCH_UART=3Dy
-CONFIG_SERIAL_CORE=3Dy
-
-CONFIG_SPI=3Dy
-CONFIG_SPI_BITBANG=3Dy
-CONFIG_SPI_GPIO=3Dy
-CONFIG_SPI_TOPCLIFF_PCH=3Dy
-
-CONFIG_MISC_DEVICES=3Dy
-CONFIG_PCH_PHUB=3Dy
-
-CONFIG_NETDEVICES=3Dy
-CONFIG_NETDEV_1000=3Dy
-CONFIG_PCH_GBE=3Dy
-
-CONFIG_PCH_USBDEV=3Dy
-CONFIG_USB_GADGET=3Dy
-CONFIG_USB_GADGET_EG20T=3Dy
-CONFIG_USB_GADGET_DUALSPEED=3Dy
-CONFIG_USB_GADGET_SELECTED=3Dy
-
-CONFIG_I2C_EG20T=3Dy
-
-CONFIG_GPIOLIB=3Dy
-CONFIG_GPIO_PCH=3Dy
-
-CONFIG_PCH_IEEE1588=3Dy
-
-CONFIG_CAN=3Dy
-CONFIG_CAN_DEV=3Dy
-CONFIG_PCH_CAN=3Dy
--
1.7.0.4


--_000_4FF5AC937153B0459463C1A88EB478F2012E1E5AF1orsmsx505amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal>Removed unused cfg file<o:p></o:p></p>

<p class=3DMsoNormal>---<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg
|&nbsp;&nbsp; 39 -------------------------<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;1 files changed, 0 insertions(+), 39 deletions(-=
)<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;delete mode 100644
meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>diff --git a/meta/cfg/kernel-cache/bsp/fishriver/eg20t=
.cfg
b/meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg<o:p></o:p></p>

<p class=3DMsoNormal>deleted file mode 100644<o:p></o:p></p>

<p class=3DMsoNormal>index 225581c..0000000<o:p></o:p></p>

<p class=3DMsoNormal>--- a/meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg<o:=
p></o:p></p>

<p class=3DMsoNormal>+++ /dev/null<o:p></o:p></p>

<p class=3DMsoNormal>@@ -1,39 +0,0 @@<o:p></o:p></p>

<p class=3DMsoNormal>-# Hardware support for the Platform Controller Hub EG=
20T<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_PCH_DMA=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_PCH_UART_DMA=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_SERIAL_8250_PCI=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_SERIAL_8250_PCH=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_SERIAL_8250_PCH_DMA=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_SERIAL_PCH_UART=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_SERIAL_CORE=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_SPI=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_SPI_BITBANG=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_SPI_GPIO=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_SPI_TOPCLIFF_PCH=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>- <o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_MISC_DEVICES=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_PCH_PHUB=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_NETDEVICES=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_NETDEV_1000=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_PCH_GBE=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_PCH_USBDEV=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_USB_GADGET=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_USB_GADGET_EG20T=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_USB_GADGET_DUALSPEED=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_USB_GADGET_SELECTED=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_I2C_EG20T=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_GPIOLIB=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_GPIO_PCH=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_PCH_IEEE1588=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_CAN=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_CAN_DEV=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_PCH_CAN=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-- <o:p></o:p></p>

<p class=3DMsoNormal>1.7.0.4<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

--_000_4FF5AC937153B0459463C1A88EB478F2012E1E5AF1orsmsx505amrc_--
