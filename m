Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.62])
 by mx.groups.io with SMTP id smtpd.web12.5269.1592479479520762371
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jun 2020 04:24:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail, err=mail: missing word in phrase: charset not supported: "windows-1252";
 spf=pass (domain: aertecsolutions.com, ip: 40.107.20.62, mailfrom: mvelasco@aertecsolutions.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/2yuBmk0mxv+GsAIbXASAmX/Zpv9lrRlv9lANmZ0nLMzk1vIQX2+98Jg8JE3zraAq1EBWIbI6ZZaHMjiqLZg57qFQ9Decish7E19o0o20ZtIbCoJXr13fa4C6wsGb7c4L2+LvzjLYAaTfjjpZ+vMwxIqn3t0vwxZ+KHC3CPvJeWECIWQSMhBpZ4Hr0hcSTDMBJUMu/XVHFFKs7sOfnU1rLQ6vD7O0RhRpp8haRJ/Qtdm5VLGsVFW58JJD9vgBu139CnRKsCkarI4Z2gEAgyF4FQwKb0RFMqwNd5r4hLKfcebnqQGuFmHOu4ToI4xR2Ss4QPIBaxZfX0I3kee0zhoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zaeYbdDTLNAV/OxbzrQu2eMwjTkvip8J3kSJ/Odevjc=;
 b=deWKBs1PxapRAHDExR0m4iQNdyvxa6J/6qdOCkXDQi1LD8DcUfpCCFZXd8MNVeH58P0BzRXAL10cTUuaFsGfhwfnRKvifyJuVsi5GZ5qKIQ+yhY9e1VNR8vD+puozLqkc6usKI+PiNrXEm61gACGooyYeaci7EqBOmEQqgsL2MMDWm6kGJ/gcc/+rPCHGaT77B1+thnRx7HqB5LO4Wmkkq/CBB+5n9sRurIG250NvZUQ07raBcfbMstoRq15YVW1cwRQ+l2f99gm4wExL2ymIadzkUBX6bnfq5LLRH1p3V5AGJCPnTFKEgdBvuUhwCZPFfxOuzjcdJf52LNVCY5cJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aertecsolutions.com; dmarc=pass action=none
 header.from=aertecsolutions.com; dkim=pass header.d=aertecsolutions.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aertec.onmicrosoft.com; s=selector2-aertec-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zaeYbdDTLNAV/OxbzrQu2eMwjTkvip8J3kSJ/Odevjc=;
 b=UZI5BDUFLVYvK3D3VQZEth5zVwIQmSlltlIC/RpajvblCWhM7h4izgpYKsnL1t0brb/recEdXYlozYj6HgF4XqdBy8/w1sPFjeCuPCLA62ojDPuOZWiNPu6b1M7DiWYRmiLsgLBzVw2/2ZYdRhCOKqSRW/fmv7zwz9ZCkdpJOGY=
Received: from DB6PR0902MB2086.eurprd09.prod.outlook.com (2603:10a6:6:9::16)
 by DB6PR0902MB1895.eurprd09.prod.outlook.com (2603:10a6:4:b3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Thu, 18 Jun
 2020 11:24:37 +0000
Received: from DB6PR0902MB2086.eurprd09.prod.outlook.com
 ([fe80::c1a0:85d0:babc:c5fc]) by DB6PR0902MB2086.eurprd09.prod.outlook.com
 ([fe80::c1a0:85d0:babc:c5fc%6]) with mapi id 15.20.3088.029; Thu, 18 Jun 2020
 11:24:36 +0000
From: "MM" <mvelasco@aertecsolutions.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Installing ath10k drivers/firmware
Thread-Topic: Installing ath10k drivers/firmware
Thread-Index: AdZFYkjPYP3wQVCOQRCcFJ0ad2JszQ==
Date: Thu, 18 Jun 2020 11:24:36 +0000
Message-ID: 
 <DB6PR0902MB20863E03E4CC8BAB06F7B8F9D79B0@DB6PR0902MB2086.eurprd09.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=aertecsolutions.com;
x-originating-ip: [77.230.158.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad1585c9-cbb6-42f6-86aa-08d8137a2f0d
x-ms-traffictypediagnostic: DB6PR0902MB1895:
x-microsoft-antispam-prvs: 
 <DB6PR0902MB18958B735B525F7E790DA1F7D79B0@DB6PR0902MB1895.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fTmqszf8s81XttXA+DHdMSCBNWA7ETQmOHROajC2u15gOwryivCutQK3CBNWQfd71+nUtZh76QE6A3b6oe0bBcxWIRNKh7IfEDePGnH/ldi8VkaprapkZXEmwSmX34TICJcZQQXVh3mLMwmEkfnBgh/HNr1dkMhDO6SHkXNnzIDy/XB7Ym7KlWGhH8/nWGDfJ7b0RtwOIa64vlUPe6NeXWUVPhS4+wFy2bUqemBZjZNCr6iIFKNzG7iJYoNjaT4nc+Omc9HVAIcCTSrxjRy1wrkon74A3if7QVd70UCjMC0HbRDoz28A/cu9NwA+sSarg57Og+y3imRtnOKV+qsEag==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0902MB2086.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(136003)(366004)(39850400004)(346002)(376002)(83380400001)(7696005)(71200400001)(8676002)(66946007)(76116006)(19627235002)(64756008)(66476007)(52536014)(8936002)(2906002)(66556008)(66446008)(9686003)(55016002)(86362001)(5660300002)(26005)(6916009)(186003)(478600001)(33656002)(6506007)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 kkA3tMnBXhC/Y/26u6as4NHZAvT8oW2f6tMgOkkq3fLcqWh5MIcy+yOuQKkKPnJfKnblt2d5r6E0NiaPl8vOb3qtg/cI4japeFT0pRJXYksxnPOtsNBJ9VUpFpbxCn4KuBfuJIKGEBERRd/7ZmpNNl6jtYCMF5RW2syNgYYlsfqYsqmxO2A76tyBpu2DDvuTLHdq7Pha1c+Usr6iQgE4U80/AbODu0DMCgJlv62stY+ZsjeQwVvZO0WbV5H37jxtPIRu4I07oEpH8YuOwVzXVz0vQ3U7O1Lge9cUsSK/yKgOpgOOh3kQuZg+QMUVfCDb3JOcAKor/YhjIY8rt4dW1WcJDoYQobvihFquvESyetIH8tJzl1wAwqYSIMIQ2b/KJvFMkJozMUq6wLJRc7YPy/fTW4tFJ0+wl2jgWhqjSdcI12nGb5A3BImihHhDuIHm8iEXXSUT07PbsHWVUuO8NM+cL0JRoLfXQ8/+F/Mw3gA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aertecsolutions.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad1585c9-cbb6-42f6-86aa-08d8137a2f0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 11:24:36.8199
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ab98a94e-6e04-48d7-be01-b54a8cfe74b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dTNLx+bfwYd7or2T+WxTNwSZVsZrJurvjA0yGGhdagsobHbk1y1lt7MMynPPcBvk2al6uwDSmRkAftCzvWcOPdZ6faaV5hND65WREHiAg6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1895
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0902MB20863E03E4CC8BAB06F7B8F9D79B0DB6PR0902MB2086_"

--_000_DB6PR0902MB20863E03E4CC8BAB06F7B8F9D79B0DB6PR0902MB2086_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear all,

I am using sumo release of Yocto Project. I have a QCA6174-5 chip which I w=
ould use as wireless Access Point. I have added =93linux-firmware=94 recipe=
 to IMAGE_INSTALL_append.

I can see the following kernel configuration:

CONFIG_NET_VENDOR_ATHEROS=3Dy
CONFIG_ATH_COMMON=3Dy
CONFIG_WLAN_VENDOR_ATH=3Dy
CONFIG_ATH10K=3Dy
CONFIG_ATH10K_PCI=3Dy

I can also see the wlan0 interface in my target.

~# ethtool -i wlan0
driver: ath10k_pci
version: 4.14.98
firmware-version: WLAN.RM.4.4.1-00140-QCARMSWPZ-1
expansion-rom-version:
bus-info: 0000:01:00.0
supports-statistics: yes
supports-test: no
supports-eeprom-access: no
supports-register-dump: no
supports-priv-flags: no

However I can=92t use 5GHz band for wireless (for any country). CRDA and wi=
reless-regdb are installed. Hostapd software indicates (for channel=3D48, h=
w_mode=3Da and country_code=3DUS):

nl80211: Regulatory information =96 country=3DUS (DFS-FCC)
nl80211: 2402-2472 @ 40 MHz 30 mBm
nl80211: 5170-5250 @ 80 MHz 23 mBm
nl80211: 5250-5330 @ 80 MHz 23 mBm (DFS)
nl80211: 5490-5730 @ 160 MHz 23 mBm (DFS)
nl80211: 5735-5835 @ 80 MHz 30 mBm
nl80211: 57240-63720 @ 2160 MHz 40 mBm
nl80211: Added 802.11b mode based on 802.11g information
nl80211: Mode IEEE 802.11g: 2412 2417 2422 2427 2432 2437 2442 2447 2452 24=
57 2462 2467[DISABLED][NO_IR] 2472[DISABLED][NO_IR] 2484[DISABLED]
nl80211: Mode IEEE 802.11a: 5180[NO_IR] 5200[NO_IR] 5220[NO_IR] 5240[NO_IR]=
 5260[NO_IR][RADAR] 5280[NO_IR][RADAR] 5300[NO_IR][RADAR] 5320[NO_IR][RADAR=
] 5500[NO_IR][RADAR] 5520[NO_IR][RADAR] 5540[NO_IR][RADAR]
nl80211: Mode IEEE 802.11b: 2412 2417 2422 2427 2432 2437 2442 2447 2452 24=
57 2462 2467[DISABLED][NO_IR] 2472[DISABLED][NO_IR] 2484[DISABLED]

[=85]

Channel 48 (primary) not allowed for AP mode, flags: 0x4073 NO-IR
wlan0: IEEE 802.11 Configured channel (48) not found from the channel list =
of current mode (2) IEEE 802.11a
wlan0: IEEE 802.11 Hardware does not support configured channel
Could not select hw_mode and channel. (-3)
With another driver/firmware ("kernel-module-qca6174" and "firmware-qca6174=
" recipes) , ethtool shows "hif_pci" driver installed. All works fine. In t=
his case, I can use 5GHZ band. However I can=92t change wlan txpower with: =
iw dev wlan0 set txpower fixed 900 (for example, 900mBm =3D 9dB).

What driver/firmware or kernel configuration should I use to solve it?

Thanks very much in advance,

M del Mar


--_000_DB6PR0902MB20863E03E4CC8BAB06F7B8F9D79B0DB6PR0902MB2086_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using sumo release of Yocto Project. I have a Q=
CA6174-5 chip which I would use as wireless Access Point. I have added =93l=
inux-firmware=94 recipe to IMAGE_INSTALL_append.<o:p></o:p></p>
<p><span lang=3D"EN-US">I can see the following kernel configuration:<o:p><=
/o:p></span></p>
<p style=3D"margin-left:36.0pt"><i><span lang=3D"EN-US">CONFIG_NET_VENDOR_A=
THEROS=3Dy<br>
CONFIG_ATH_COMMON=3Dy<br>
CONFIG_WLAN_VENDOR_ATH=3Dy<br>
CONFIG_ATH10K=3Dy<br>
CONFIG_ATH10K_PCI=3Dy<o:p></o:p></span></i></p>
<p><span lang=3D"EN-US">I can also see the wlan0 interface in my target. <o=
:p></o:p></span></p>
<p style=3D"margin-left:36.0pt"><i><span lang=3D"EN-US">~# ethtool -i wlan0=
<br>
driver: ath10k_pci<br>
version: 4.14.98<br>
firmware-version: WLAN.RM.4.4.1-00140-QCARMSWPZ-1<br>
expansion-rom-version:<br>
bus-info: 0000:01:00.0<br>
supports-statistics: yes<br>
supports-test: no<br>
supports-eeprom-access: no<br>
supports-register-dump: no<br>
supports-priv-flags: no<o:p></o:p></span></i></p>
<p><span lang=3D"EN-US">However I can=92t use 5GHz band for wireless (for a=
ny country). CRDA and wireless-regdb are installed. Hostapd software indica=
tes (for channel=3D48, hw_mode=3Da and country_code=3DUS):<o:p></o:p></span=
></p>
<p style=3D"margin-left:36.0pt"><i><span lang=3D"ES">nl80211: Regulatory in=
formation =96 country=3DUS (DFS-FCC)<br>
nl80211: 2402-2472 @ 40 MHz 30 mBm<br>
nl80211: 5170-5250 @ 80 MHz 23 mBm<br>
nl80211: 5250-5330 @ 80 MHz 23 mBm (DFS)<br>
nl80211: 5490-5730 @ 160 MHz 23 mBm (DFS)<br>
nl80211: 5735-5835 @ 80 MHz 30 mBm<br>
nl80211: 57240-63720 @ 2160 MHz 40 mBm<br>
nl80211: Added 802.11b mode based on 802.11g information<br>
nl80211: Mode IEEE 802.11g: 2412 2417 2422 2427 2432 2437 2442 2447 2452 24=
57 2462 2467[DISABLED][NO_IR] 2472[DISABLED][NO_IR] 2484[DISABLED]<br>
nl80211: Mode IEEE 802.11a: 5180[NO_IR] 5200[NO_IR] 5220[NO_IR] 5240[NO_IR]=
 5260[NO_IR][RADAR] 5280[NO_IR][RADAR] 5300[NO_IR][RADAR] 5320[NO_IR][RADAR=
] 5500[NO_IR][RADAR] 5520[NO_IR][RADAR] 5540[NO_IR][RADAR]<br>
nl80211: Mode IEEE 802.11b: 2412 2417 2422 2427 2432 2437 2442 2447 2452 24=
57 2462 2467[DISABLED][NO_IR] 2472[DISABLED][NO_IR] 2484[DISABLED]<o:p></o:=
p></span></i></p>
<p style=3D"margin-left:36.0pt"><i><span lang=3D"EN-US">[=85]<o:p></o:p></s=
pan></i></p>
<p style=3D"margin-left:36.0pt"><i><span lang=3D"EN-US">Channel 48 (primary=
) not allowed for AP mode, flags: 0x4073 NO-IR<br>
wlan0: IEEE 802.11 Configured channel (48) not found from the channel list =
of current mode (2) IEEE 802.11a<br>
wlan0: IEEE 802.11 Hardware does not support configured channel<br>
Could not select hw_mode and channel. (-3)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">With another driver/firmware (&=
quot;kernel-module-qca6174&quot; and &quot;firmware-qca6174&quot; recipes) =
,
<i>ethtool</i> shows &quot;hif_pci&quot; driver installed. All works fine. =
In this case, I can use 5GHZ band. However I can=92t change wlan txpower wi=
th:
<i>iw dev wlan0 set txpower fixed 900</i> (for example, 900mBm =3D 9dB).<o:=
p></o:p></span></p>
<p><span lang=3D"EN-US">What driver/firmware or kernel configuration should=
 I use to solve it?<o:p></o:p></span></p>
<p><span lang=3D"EN-US">Thanks very much in advance,<o:p></o:p></span></p>
<p><span lang=3D"EN-US">M del Mar<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DB6PR0902MB20863E03E4CC8BAB06F7B8F9D79B0DB6PR0902MB2086_--
