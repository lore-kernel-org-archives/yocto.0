Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0585FE00E5C; Thu,  8 Feb 2018 07:16:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0135.outbound.protection.outlook.com [104.47.38.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17D83E00D6D
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 07:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=fUFKrPl6v7sjPfcUSmEDn8l5wCtT7rRyAGLxamcrLOo=;
	b=g2YCzeU1FYNmzgn4I4lwNe79Alum1PLMa4U0Jr5YipXEfsLB1ZKDjA7y2yI2KzdgJDTrSIqzbjUn0lUiBO4E7H0ztQyaeH4K1aMTHA2ABYB2tojwPjOllsGX/4UpaUXjWNJBsNgW2tIaqL+3FRtZThndfiPWc5Dc9nNx87tHStI=
Received: from MWHPR13MB1584.namprd13.prod.outlook.com (10.175.140.149) by
	MWHPR13MB0957.namprd13.prod.outlook.com (10.169.206.148) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.485.3; Thu, 8 Feb 2018 13:43:05 +0000
Received: from MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) by
	MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) with mapi id
	15.20.0485.009; Thu, 8 Feb 2018 13:43:05 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Here is my BSP for the adzs-sc589-ezlite eval board.
Thread-Index: AQHToOJ2NAKx9/c8hEGhOiYD+7HFag==
Date: Thu, 8 Feb 2018 13:43:05 +0000
Message-ID: <MWHPR13MB1584BDB6AC757E1A07976D2E9EF30@MWHPR13MB1584.namprd13.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.42.252.129]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR13MB0957;
	7:s2y8brJskpvXZ/0EciZwZnz13hIAW0pUhVe0mT64UAUXeBaFL49m/LldqldHMF8U7ELE8c26DtCjSTG4k1jnN6CsJR+VlXfq3aoz9RGYnO0lTzRZpzagJC+BhZeKWxFtIy9koKjxZtvTMouOzPoOEWni+vc+EBCWb3c7AfFoQFxwbM/f59HXFp3c6okcNRI75J9xdtIur8z1LqzdSHNX/9F+jgGC/yoFnVg5C8GobZmMzYHVdIj5T/BqC3jB6E7D
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 02c68cd7-5320-4cff-329b-08d56ef9e17f
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:MWHPR13MB0957; 
x-ms-traffictypediagnostic: MWHPR13MB0957:
x-microsoft-antispam-prvs: <MWHPR13MB09573179E43B60D42AA14B479EF30@MWHPR13MB0957.namprd13.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(93006095)(93001095)(3231101)(2400082)(944501161)(10201501046)(3002001)(6041288)(20161123558120)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(6072148)(201708071742011);
	SRVR:MWHPR13MB0957; BCL:0; PCL:0; RULEID:; SRVR:MWHPR13MB0957; 
x-forefront-prvs: 0577AD41D6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39840400004)(376002)(396003)(366004)(346002)(39380400002)(199004)(189003)(74316002)(861006)(2900100001)(7736002)(5890100001)(3846002)(2501003)(33656002)(19627405001)(2351001)(6116002)(5660300001)(7696005)(6506007)(86362001)(106356001)(59450400001)(99286004)(6436002)(102836004)(66066001)(55016002)(6306002)(54896002)(5640700003)(316002)(9686003)(2906002)(236005)(53936002)(733005)(966005)(6916009)(77096007)(26005)(6346003)(6606003)(186003)(8676002)(1730700003)(81166006)(81156014)(478600001)(8936002)(105586002)(97736004)(3660700001)(25786009)(3280700002)(14454004)(68736007)(606006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR13MB0957;
	H:MWHPR13MB1584.namprd13.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nautel.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=peter.spierenburg@nautel.com; 
x-microsoft-antispam-message-info: ++bCVDEnhNff1hJzKnVjJAJQxd79HBNvsOqFZqWSEdrIOQEWs50ehWEymhULHnfFbmkUqqOZPdBzRFU1W/f0/A==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02c68cd7-5320-4cff-329b-08d56ef9e17f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2018 13:43:05.0196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB0957
Subject: Here is my BSP for the adzs-sc589-ezlite eval board.
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
X-List-Received-Date: Thu, 08 Feb 2018 15:16:51 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_MWHPR13MB1584BDB6AC757E1A07976D2E9EF30MWHPR13MB1584namp_"

--_000_MWHPR13MB1584BDB6AC757E1A07976D2E9EF30MWHPR13MB1584namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Greetings all,


I've created a board support package for the adzs-sc589-ezlite evaluation b=
oard from Analog Devices. I would be very interested in hearing about how i=
t can be improved.


Take a look at it here:


https://github.com/spierepf/meta-adzs-sc589-ezlite

[https://avatars2.githubusercontent.com/u/548990?s=3D400&v=3D4]<https://git=
hub.com/spierepf/meta-adzs-sc589-ezlite>

spierepf/meta-adzs-sc589-ezlite<https://github.com/spierepf/meta-adzs-sc589=
-ezlite>
github.com
meta-adzs-sc589-ezlite - bsp for Analod Devices' adzs-sc589-ezlite eval boa=
rd




This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.

--_000_MWHPR13MB1584BDB6AC757E1A07976D2E9EF30MWHPR13MB1584namp_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Greetings all,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I've created a board support pack=
age for the adzs-sc589-ezlite evaluation board from Analog Devices. I would=
 be very interested in hearing about how it can be improved.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Take a look at it here:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><a href=3D"https://github.com/spi=
erepf/meta-adzs-sc589-ezlite" class=3D"OWAAutoLink" id=3D"LPlnk999182" prev=
iewremoved=3D"true">https://github.com/spierepf/meta-adzs-sc589-ezlite</a><=
/p>
<div id=3D"LPBorder_GT_15180973219040.5328026521543765" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_15180973218960.9644220628355962" role=3D"presentat=
ion" cellspacing=3D"0" style=3D"width: 90%; background-color: rgb(255, 255,=
 255); position: relative; overflow: auto; padding-top: 20px; padding-botto=
m: 20px; margin-top: 20px; border-top: 1px dotted rgb(200, 200, 200); borde=
r-bottom: 1px dotted rgb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"ImageCell_15180973218980.27709374529519293" colspan=3D"1" style=
=3D"width: 250px; position: relative; display: table-cell; padding-right: 2=
0px;">
<div id=3D"LPImageContainer_15180973218990.272738823292507" style=3D"backgr=
ound-color: rgb(255, 255, 255); height: 250px; position: relative; margin: =
auto; display: table; width: 250px;">
<a id=3D"LPImageAnchor_15180973218990.4000631134716144" href=3D"https://git=
hub.com/spierepf/meta-adzs-sc589-ezlite" target=3D"_blank" style=3D"display=
: table-cell; text-align: center;"><img id=3D"LPThumbnailImageID_1518097321=
9000.4166694607638828" width=3D"250" height=3D"250" style=3D"display: inlin=
e-block; max-width: 250px; max-height: 250px; height: 250px; width: 250px; =
border-width: 0px; vertical-align: bottom;" src=3D"https://avatars2.githubu=
sercontent.com/u/548990?s=3D400&amp;v=3D4"></a></div>
</td>
<td id=3D"TextCell_15180973219010.1077780686083245" colspan=3D"2" style=3D"=
vertical-align: top; position: relative; padding: 0px; display: table-cell;=
">
<div id=3D"LPRemovePreviewContainer_15180973219010.1718732682380011"></div>
<div id=3D"LPTitle_15180973219010.434723542906331" style=3D"top: 0px; color=
: rgb(0, 120, 215); font-weight: 400; font-size: 21px; font-family: wf_sego=
e-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &quot;S=
egoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-height=
: 21px;">
<a id=3D"LPUrlAnchor_15180973219010.1123742228067337" href=3D"https://githu=
b.com/spierepf/meta-adzs-sc589-ezlite" target=3D"_blank" style=3D"text-deco=
ration: none;">spierepf/meta-adzs-sc589-ezlite</a></div>
<div id=3D"LPMetadata_15180973219020.2476256718065455" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: wf_se=
goe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, s=
ans-serif; font-size: 14px; line-height: 14px;">
github.com</div>
<div id=3D"LPDescription_15180973219030.6317996373865715" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: 400; font-family: wf_segoe-=
ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-=
serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: hid=
den;">
meta-adzs-sc589-ezlite - bsp for Analod Devices' adzs-sc589-ezlite eval boa=
rd</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
<p></p>
</div>
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the
 contents is strictly prohibited. If you have received this message in erro=
r, please contact us immediately so we may correct our records. Please then=
 delete or destroy the original transmission and any subsequent reply. Than=
k you.
</body>
</html>

--_000_MWHPR13MB1584BDB6AC757E1A07976D2E9EF30MWHPR13MB1584namp_--
