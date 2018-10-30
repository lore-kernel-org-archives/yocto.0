Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62AFCE00950; Tue, 30 Oct 2018 11:59:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.5.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 43361 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 Oct 2018 11:59:34 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092005058.outbound.protection.outlook.com [40.92.5.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DF61E008D7
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 11:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=v4kvyKscQRZwirBzw1MuXORKYc+j4zH4RR9x/CKw+Cw=;
	b=nEczodi6FwSXfadmaVidpda9WxsUDOOR8r4NbuEIB65N5cOWA6YPQQfAoaEt+0BPLSwoPJAxr+gyk04kmYgdJco55i5T5nDAxNe2htoUhSbQvLUTemqpX56DH/aji97xQDEU6JD3zddGORzUwWCdmwBhosNwfRWfLTCtazhRoO5HVEPqflPvkHBQBYbXKhyy/UQk48zoDa7MEKVH943z6wLz5jK2hv5dfYpfkIa1ZQEGioysqYdKJf+W/p3SknD6JS7+jbwtJARwbCPE5Mr428T5Yd2xg5KIng1CHOTdCCQ63S3xRQyFN0n88vnSgpbNGYPCkOdxLVoIZk7oSmDsmw==
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
	(10.152.76.51) by BL2NAM02HT233.eop-nam02.prod.protection.outlook.com
	(10.152.77.208) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1294.14;
	Tue, 30 Oct 2018 02:23:44 +0000
Received: from CY4PR19MB1093.namprd19.prod.outlook.com (10.152.76.60) by
	BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1294.14 via Frontend Transport; Tue, 30 Oct 2018 02:23:44 +0000
Received: from CY4PR19MB1093.namprd19.prod.outlook.com
	([fe80::4cd:8af7:32fd:6c3c]) by CY4PR19MB1093.namprd19.prod.outlook.com
	([fe80::4cd:8af7:32fd:6c3c%8]) with mapi id 15.20.1273.027;
	Tue, 30 Oct 2018 02:23:44 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to update YP kernel image (run-time)
Thread-Index: AQHUb/eUjDRm7mG5z0uEWa2wJi8/bg==
Date: Tue, 30 Oct 2018 02:23:44 +0000
Message-ID: <CY4PR19MB1093B30D2DC8617F1A0783C5C5CC0@CY4PR19MB1093.namprd19.prod.outlook.com>
References: <mailman.4187.1540841639.2881.yocto@yoctoproject.org>
In-Reply-To: <mailman.4187.1540841639.2881.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:912A91E7B849E1A32A03E34E4F9C726A02D8B2FA5C427CD1B77A142DF4EC3167;
	UpperCasedChecksum:CF2DF5A5D9251BBECBE51AA4D010904339E1DB274526FB889B1642BB8FA7C055;
	SizeAsReceived:6997; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [NMUhrNGlk/ZQNgw6mOKsF5FDa3vJcWO1]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2NAM02HT233;
	6:Ce4RqVvW3f1voIkiCrj2CCKfnnGS77W6Oc+eXjOyn1NLbb1e4y+nKj9BBqm3MD2ZAeRrnqY4/PLybNBlyI0vDZdIVlUmom1fo4SWQq6sflXB0awOAh68Qxlj+sEmfOTVSiS1ejPLgW935EWmBU8tdmJlYRuHRhLuqmebZE9V1M08mjmP2we5Y0Pt1rc7BtGiCkuCrgh5RWwIdw/Qv5Y12mnVSUj4F2ldmky/HYENbksNjTAwu7vxaJMglf5fGBuUvTV0iQJpJkJbjy4IPuvC4GpBv1A6A8TLzO66Tpq2hj6/5mVW/Sr/nLa0fXRSLeLSrGY5f08Mt90TF+DFhHz3M44ReKd6bV86kabCezKKrm7gRpVgvWK5V2hnSdvsUUcri0TLIHeqSSmbPXkwUYhL102q/GpS1wOFB/vXZcDV4z9Miiwl+//FtI1lxQ6rUEbytwzmK8JYgwx3WNtaHirw8Q==;
	5:rKVrFpUyT976ghQPQXQ8o6mNu+LwToTH+dd/6ord4MU+cht8AWUDIuCFCUZ+GPCX8I4H3uRcRU2UUPrFNyDPeR8ZJEcRarjTKjki+15Qoyst7pTgd+5aNGAyVIZG64vvqXhyIZTY2Qa/HJnO/6QBcHdJO/+2FAkDyCbzjoC0YpA=;
	7:Urah65jJvo5nA2lt+GG6ipZhMIZJVdbdCdyiE6ueTBJH/PXbaqvrS7LiyIgA0O4nl3pw0EcUGwQK6Xk1sWlEevaUOESGTjcbNYuBSvMIGn1AHL3eHNZF8BVzYD2SoMSCRQyXqsFtHizL5ZFxEEdSWw==
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101475)(1701031045);
	SRVR:BL2NAM02HT233; 
x-ms-traffictypediagnostic: BL2NAM02HT233:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:BL2NAM02HT233; BCL:0; PCL:0; RULEID:; SRVR:BL2NAM02HT233; 
x-microsoft-antispam-message-info: ghBMSmsjdBFCz1QKud7PFLhaOdzWJQuJun6YXzLGzZVZVxpoGsBTpwFQhZ1VRAxC
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: fa2ffa8f-677c-49e3-6650-08d63e0eb724
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2018 02:23:44.2271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT233
Subject: How to update YP kernel image (run-time)
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
X-List-Received-Date: Tue, 30 Oct 2018 18:59:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR19MB1093B30D2DC8617F1A0783C5C5CC0CY4PR19MB1093namp_"

--_000_CY4PR19MB1093B30D2DC8617F1A0783C5C5CC0CY4PR19MB1093namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Let's say I've a working run-time system running 2016 April release (Krogot=
h) Poky image.  I've it installed previously from a USB thumb drive onto a =
much bigger SSD with all partitions setup.  I don't need to change the part=
ition from here onward.

Is there an easy way to replace it with, say 2017 Oct release (Rocko) Poky =
image (and vice versa)?  E.g. by replacing just one file (e.g. bzImage)?  O=
r is there a script that would take care of it?  What happens to all the ex=
isting directories, e.g. /etc, /bin etc.?

I've been trying to adapt init_install.sh under poky/meta/recipes-core/init=
rdScripts/files, but it seems to assume I've a separate device (like USB dr=
ive).

Thanks,
Raymond

--_000_CY4PR19MB1093B30D2DC8617F1A0783C5C5CC0CY4PR19MB1093namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Let's say I've a working run-time system running 2016 April release (Krogot=
h) Poky image. &nbsp;I've it installed previously from a USB thumb drive on=
to a much bigger SSD with all partitions setup. &nbsp;I don't need to chang=
e the partition from here onward.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Is there an easy way to replace it with, say 2017 Oct release (Rocko) Poky =
image (and vice versa)? &nbsp;E.g. by replacing just one file (e.g. bzImage=
)? &nbsp;Or is there a script that would take care of it? &nbsp;What happen=
s to all the existing directories, e.g. /etc, /bin
 etc.?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I've been trying to adapt init_install.sh under poky/meta/recipes-core/init=
rdScripts/files, but it seems to assume I've a separate device (like USB dr=
ive).</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Raymond</div>
</body>
</html>

--_000_CY4PR19MB1093B30D2DC8617F1A0783C5C5CC0CY4PR19MB1093namp_--
