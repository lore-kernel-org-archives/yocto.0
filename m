Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53316E00BFB; Thu, 26 Apr 2018 00:20:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.9.30 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 8413 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 Apr 2018 00:20:42 PDT
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092009030.outbound.protection.outlook.com [40.92.9.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C28BE00B9C
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 00:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=X24chEccMJyu666C1zZ5PNqrzCQKlmEyr3FjL6hycck=;
	b=Q+Ui/EoIsk6Woysg73JGX6t1gNq4LMf60aIuoaXPB8cHj7Ae8cjnfza9gkqrbS2bzwP/wrIPDXAQAQJO30X5kah/PEwAzVcfPx+S1HFtZye8I49aJ/1dYbX/VjwMq31Xr7V5IFOzz5GzAUU8PSwusM1OaB6a2ReRZkdHER8LEkwIU+akvvLapCG+9PY+j7U4NDDHy327gEcu1kOrddm0MI9+7xrXCc5ydsowv/4pOqeP4wS9lz3YpvRQZ0HJhC6it1FOYrX65IZbibBntEQSmryfTL8+sFDX554vDhi0Q9mcCKm72dl3tYew7aswhpJja7nMlPcd5QWAcCleIY58Gg==
Received: from SN1NAM04FT024.eop-NAM04.prod.protection.outlook.com
	(10.152.88.55) by SN1NAM04HT233.eop-NAM04.prod.protection.outlook.com
	(10.152.89.87) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.696.11;
	Thu, 26 Apr 2018 04:45:49 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.88.60) by
	SN1NAM04FT024.mail.protection.outlook.com (10.152.88.106) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.696.11 via Frontend Transport; Thu, 26 Apr 2018 04:45:49 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0696.020;
	Thu, 26 Apr 2018 04:45:49 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PXE Boot NFS not working
Thread-Index: AQHT3RibB3SjOiqCJ0iFNIV79C8ZUA==
Date: Thu, 26 Apr 2018 04:45:49 +0000
Message-ID: <MWHPR19MB1183FFEEF33178BA3331F6A6C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B965A4D3F0AC4A2FF40CCD6F8EC872B61C6DC204A3D4F879BC8369390BC9448E;
	UpperCasedChecksum:4EF83CB7EE6487982CBD862912AFDF48E2D67D14CD8A99AEDB7FA38D392C6170;
	SizeAsReceived:6966; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [wZXdLF19gwbJj4aZeIolNh9IuYjz5Np0Tsn/GA1va5PeRYbKZ0a566sHPaGcMi4N]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1NAM04HT233;
	7:VMHwjos4QnU58/aEy4keoMdoByUnLge/Iev3evnrDcncSbX7GoMlZIGRC3NIkvrahJNmMFlYmfDqgxMhVdSPguGjSq+H0msbWaXVuJdTYRwro8YzVctQUd/N1OPPdND1MwRyvEekr4hF8PTvlML06fh5SgUENnizyf8bKsD4dWVBXBWYPX4uRmt6g8t4chM/Yla15eHORLHX7+MXW1vrHrddxvjUaYXH2EjlHKxHREn6OJBY/sRnuMVybxjR5e6r
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:SN1NAM04HT233; 
x-ms-traffictypediagnostic: SN1NAM04HT233:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:SN1NAM04HT233; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM04HT233; 
x-forefront-prvs: 0654257CF5
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:SN1NAM04HT233;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: hdvQH505NL14MAX2v5pbGN0d6ccCqsb4lV2qeVpj6hdVW8ghFpVLp6gnmlV4EYHdkpz8aATiJ09kW20cJg+p1JLNeB7Jc6xE3jb+a7ZDjCO5u/Kbqg1SkWq+bwR7V3bSmO5qAbNXhOWIqytD0fGeZwZgf+TrDeVeUco8PDEfdVMg7brfNhFfyumdy7PjF2Ep
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 1a7c57d5-34ff-4f07-c2eb-08d5ab30957a
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a7c57d5-34ff-4f07-c2eb-08d5ab30957a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2018 04:45:49.6642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM04HT233
Subject: PXE Boot NFS not working
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
X-List-Received-Date: Thu, 26 Apr 2018 07:20:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183FFEEF33178BA3331F6A6C58E0MWHPR19MB1183namp_"

--_000_MWHPR19MB1183FFEEF33178BA3331F6A6C58E0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've an Intel Xeon-D board.  I could boot up the board with PXE booting.  H=
owever, this seems to be always looking for "removable media"; if there is =
none, it would hang (in a .sh file).  I want to explore NFS approach.  So f=
ar, I've read up, experimented on NFS setup via pxelinux.cfg/default file. =
 I'm able to manually perform nfs mount from client side, but doing it via =
configuration file doesn't seem to work.


Now, I'm wondering if my bzImage and initrd files are built correct.  Accor=
ding to this article here:


https://wiki.yoctoproject.org/wiki/Poky_NFS_Root


Two requirements must be met.  First one is that the network driver must be=
 built into the kernel rather than being a module.  Second one is to disabl=
e network init script.


Does anyone know how to do the above two items?  What recipe file(s) should=
 I modify?


Thanks,

Raymond

--_000_MWHPR19MB1183FFEEF33178BA3331F6A6C58E0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I've an Intel Xeon-D board. &nbsp=
;I could boot up the board with PXE booting. &nbsp;However, this seems to b=
e always looking for &quot;removable media&quot;; if there is none, it woul=
d hang (in a .sh file). &nbsp;I want to explore NFS approach.
 &nbsp;So far, I've read up, experimented on NFS setup via pxelinux.cfg/def=
ault file. &nbsp;I'm able to manually perform nfs mount from client side, b=
ut doing it via configuration file doesn't seem to work.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Now, I'm wondering if my bzImage =
and initrd files are built correct. &nbsp;According to this article here:</=
p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><a href=3D"https://wiki.yoctoproj=
ect.org/wiki/Poky_NFS_Root" class=3D"OWAAutoLink" id=3D"LPlnk23992" preview=
removed=3D"true">https://wiki.yoctoproject.org/wiki/Poky_NFS_Root</a><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Two requirements must be met. &nb=
sp;First one is that the network driver must be built into the kernel rathe=
r than being a module. &nbsp;Second one is to disable network init&nbsp;scr=
ipt.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Does anyone know how to do the ab=
ove two items? &nbsp;What recipe file(s) should I modify?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
</div>
</body>
</html>

--_000_MWHPR19MB1183FFEEF33178BA3331F6A6C58E0MWHPR19MB1183namp_--
