Return-Path: <josedavidbravo@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5798E00ECC; Sun,  4 Mar 2018 18:18:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (josedavidbravo[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.7.26 listed in list.dnswl.org]
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
X-Greylist: delayed 25356 seconds by postgrey-1.32 at yocto-www;
	Sun, 04 Mar 2018 18:18:13 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092007026.outbound.protection.outlook.com [40.92.7.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFA18E0081A
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2018 18:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=owe9dxK063tWmABMrQz00ABHA741sfgkIhroOxpoHc0=;
	b=VVBO6AMnit0pMeP4X+jx5yn4meD1Br7GqO1YjhfuBmLjh33BKiiyS2HcZo92vixCBxsBFa/mwrsAfvQD8zxaIn/B5uhDXQ1eX+BRMyRVgJeejZuEw53Pjp1E9H72KDMHLlF4k6uVKaeS6yLpC7fMo9RTvvxYthAKLhM14pVd7AXup3gsHX3Wa/w8DwJ+DhKPj9tAP1y573xdCs+WlA98G5OfNiWKs4eyw2F1PyLi8ob15EEiWCLZka/67hrL60ybz9UIvSdgDv9PGql+xGvl7ImN++DjRErzINkiT8ktvTpPp9H23evayKJAEB8FTMPl5+8BruzkOCDsX8yJ0CRGEQ==
Received: from BY2NAM03FT034.eop-NAM03.prod.protection.outlook.com
	(10.152.84.59) by BY2NAM03HT203.eop-NAM03.prod.protection.outlook.com
	(10.152.85.162) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.527.18;
	Sat, 3 Mar 2018 23:51:28 +0000
Received: from BLUPR17MB0020.namprd17.prod.outlook.com (10.152.84.58) by
	BY2NAM03FT034.mail.protection.outlook.com (10.152.84.211) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.527.18 via Frontend Transport; Sat, 3 Mar 2018 23:51:28 +0000
Received: from BLUPR17MB0020.namprd17.prod.outlook.com
	([fe80::1cf0:e6ad:20f9:f897]) by
	BLUPR17MB0020.namprd17.prod.outlook.com
	([fe80::1cf0:e6ad:20f9:f897%14]) with mapi id 15.20.0548.014;
	Sat, 3 Mar 2018 23:51:28 +0000
From: Jose David Bravo Alvarez <josedavidbravo@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Read Only File System
Thread-Index: AQHTs0ICHGSpRMxg102x0XjwRY6kBw==
Date: Sat, 3 Mar 2018 23:51:28 +0000
Message-ID: <BLUPR17MB0020E23135997E85A686B4D6CAC40@BLUPR17MB0020.namprd17.prod.outlook.com>
Accept-Language: en-US, es-CO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:18F8EAB6B3E4E7C8CBCAD03BD19286AEDDE32667157DBFDDC49D034AE9CBD2F7;
	UpperCasedChecksum:365FEC45EDB7C4F06D087BD7A67ACA07FDB04CE0BA55DB90999F4809A7E9905D;
	SizeAsReceived:6881; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [LUMIsW21lTYo9/Ob182SOMYuNCm5uW9jYdT000oJI0Q=]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY2NAM03HT203;
	6:0aGAzoC+QKuKQvbptTs4egJzKJY6CoW7KvA9dF2j5M5PG3HQ6ZjAEgYWOIqivUtJ+O7+F0W/eNLhz69bPQP0g36KlvXMLoGUa71lesmhAk+KHOh3LoYHRWxEWWJR6eaJbl9yAO1Eg/SrMI0GvMBJ7hNdEnEn4mua2aOhxuSnuxWItCZcYQG79KdvR3SkIlKGgDZRigA1uPMGYn+4s6roVFrgJI38KrnkymRfxP+OpIJaor4+wop4f3gGveHw2COnomiKsXwF49abKF3wZI+/vP0DhYG6kqufuEmq4ZE8IvvEv4GISTcqYPP2fm7EYLIQTI3I1YQJQTM8cw2XBZqdZYYZb+IJhQQIwxdlKdzVXoI=;
	5:vD+hBS/szgNfA14CsAUN9JQmUhD8Bwo/psAvtulidwZOUSDt7GbK/rjHa6KwUgVvNZVXvGWVCXQlwZc1Hs4p+egZ19xJhXRLqm081zp7XzqhuVd25Z1d8JTbXiu/XL6ZSRgHMEjxr2dDBVF1QQ6BWbrievCVhV5VRxzl4ybxFYc=;
	24:4KTcTfJuJEwd8NOK8BpDClT3zvrUAx1jeg7gFx0A6+NwH2WxTYNcWt7b7ZLgLDrLSx1nZEBF0vRtsbQGerD0JCM/ExQlL/uVXQZgGc5d2CE=;
	7:llgyEArBB9o3Z4c2PAFvPfg5haTguOQ/CLwM2npgpvVgc62piJy2Dj5Q3VK/rgejoemrY0e2wyiKaSAWJZX/AhmG+LGHp0cXwJj47MNEA2dv9Cdypw8HWiV9vA063fCfm1o2Mw8SEauU8gHhgUTj/+jYsPnte1q0ITxztMzTLml4/pAfxVcGC9QdeXNsTRiJhSyIfbolUkteL2t70URQKh1pfyNJLotVW6Z8iFsqblnCy9WJ+eO5YOqNGq7SoeFm
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:BY2NAM03HT203; 
X-MS-TrafficTypeDiagnostic: BY2NAM03HT203:|BY2NAM03HT203:
x-ms-office365-filtering-correlation-id: 47ee35b1-b5d8-42a3-5398-08d58161ae93
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BY2NAM03HT203; BCL:0; PCL:0; RULEID:; SRVR:BY2NAM03HT203; 
x-forefront-prvs: 0600F93FE1
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BY2NAM03HT203;
	H:BLUPR17MB0020.namprd17.prod.outlook.com; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 47ee35b1-b5d8-42a3-5398-08d58161ae93
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2018 23:51:28.2557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM03HT203
X-Microsoft-Exchange-Diagnostics: 1; BY2NAM03HT203;
	23:cBpwFOQCLL8F02O+UJEnzQtylw85m23a71chIO1x0kHWJs6jDzAAW6vw/Fs7pCeLfN4l/ut0FfoNy6zaJIP7RoleIL7eD3PGJWXgtsHdr5LTUeeG4uHFPftHpmiqAN/0UHBLx0aiFafdX1EmctymEw==
X-OriginatorOrg: hotmail.com
Subject: Read Only File System
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
X-List-Received-Date: Mon, 05 Mar 2018 02:18:15 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR17MB0020E23135997E85A686B4D6CAC40BLUPR17MB0020namp_"

--_000_BLUPR17MB0020E23135997E85A686B4D6CAC40BLUPR17MB0020namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm building a image using Yocto rocky and Xilinx for my zynq-702 board.


But for some reason my root file system can only be mounted as a read only.=
 If I put rw in the u-boot load command it fails. I'm booting from a SD car=
d, that doesn't have any lock switch.


And if I boot using other kernel different than the one generated by yocto =
it does mount the file system as read write... the problem is somewhere in =
my image and not physical in the SD card or in the controller.


If generate my yocto image using a qemux86 machine, it does work good and m=
ount the partition as rw.


This is the latest part of my boot log:

Waiting for root device /dev/mmcblk0p2...
mmc0: new high speed SDHC card at address aaaa
mmcblk0: mmc0:aaaa SL08G 7.40 GiB (ro)
 mmcblk0: p1 p2
VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2): error -30
Please append a correct "root=3D" boot option; here are the available parti=
tions:
0100           16384 ram0  (driver?)
0101           16384 ram1  (driver?)
0102           16384 ram2  (driver?)
0103           16384 ram3  (driver?)
0104           16384 ram4  (driver?)
0105           16384 ram5  (driver?)
0106           16384 ram6  (driver?)
0107           16384 ram7  (driver?)
0108           16384 ram8  (driver?)
0109           16384 ram9  (driver?)
010a           16384 ram10  (driver?)
010b           16384 ram11  (driver?)
010c           16384 ram12  (driver?)
010d           16384 ram13  (driver?)
010e           16384 ram14  (driver?)
010f           16384 ram15  (driver?)
b300         7761920 mmcblk0  driver: mmcblk
  b301         1048576 mmcblk0p1 9d7a9d10-01
  b302         6712320 mmcblk0p2 9d7a9d10-02
Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(1=
79,2)
CPU1: stopping
CPU: 1 PID: 0 Comm: swapper/1 Not tainted 4.9.0-xilinx-v2017.3 #1
Hardware name: Xilinx Zynq Platform
[<c010e3ac>] (unwind_backtrace) from [<c010a5f0>] (show_stack+0x10/0x14)
[<c010a5f0>] (show_stack) from [<c02dcce4>] (dump_stack+0x80/0xa0)
[<c02dcce4>] (dump_stack) from [<c010cb58>] (ipi_cpu_stop+0x3c/0x70)
[<c010cb58>] (ipi_cpu_stop) from [<c010d388>] (handle_IPI+0x64/0x84)
[<c010d388>] (handle_IPI) from [<c0101420>] (gic_handle_irq+0x80/0x8c)
[<c0101420>] (gic_handle_irq) from [<c010b00c>] (__irq_svc+0x6c/0xa8)
Exception stack(0xde471f70 to 0xde471fb8)
1f60:                                     00000000 00000000 1e29c000 debde9=
c0
1f80: 49d2e7a1 00000000 debdde40 00000001 47add66a 00000000 00000000 000000=
01
1fa0: 00000015 de471fc0 c04af5dc c04af600 60000013 ffffffff
[<c010b00c>] (__irq_svc) from [<c04af600>] (cpuidle_enter_state+0xe4/0x1b4)
[<c04af600>] (cpuidle_enter_state) from [<c014cdb4>] (cpu_startup_entry+0x1=
8c/0)
[<c014cdb4>] (cpu_startup_entry) from [<001014cc>] (0x1014cc)
---[ end Kernel panic - not syncing: VFS: Unable to mount root fs on unknow=
n-bl)

Thanks for your help!


Jose Bravo

--_000_BLUPR17MB0020E23135997E85A686B4D6CAC40BLUPR17MB0020namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I'm building a image using Yocto =
rocky and Xilinx for my zynq-702 board.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">But for some<span>&nbsp;reason my=
 root file system can only be mounted as a read only. If I put rw in the u-=
boot load&nbsp;command it fails. I'm booting from a SD card, that doesn't h=
ave any lock switch.</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span>And if I boot using o=
ther kernel different than the one generated by yocto it does mount the fil=
e system as read write... the problem is somewhere in my image and not phys=
ical in the SD card or in the controller.</span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><br>
</span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span>If generate my yocto =
image using a&nbsp;<span>qemux86 machine, it does work good and mount the p=
artition as rw.</span></span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><span><br>
</span></span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><span>This is the lat=
est part of my boot log:</span></span></span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span><span></p>
<div>Waiting for root device /dev/mmcblk0p2...&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>mmc0: new high speed SDHC card at address aaaa&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>mmcblk0: mmc0:aaaa SL08G 7.40 GiB (ro)&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>&nbsp;mmcblk0: p1 p2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>VFS: Cannot open root device &quot;mmcblk0p2&quot; or unknown-block(17=
9,2): error -30&nbsp; &nbsp; &nbsp;</div>
<div>Please append a correct &quot;root=3D&quot; boot option; here are the =
available partitions:&nbsp;</div>
<div>0100&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram0&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>0101&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram1&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>0102&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram2&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>0103&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram3&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>0104&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram4&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>0105&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram5&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>0106&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram6&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>0107&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram7&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>0108&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram8&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>0109&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram9&nbsp; (driver?=
)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</div>
<div>010a&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram10&nbsp; (driver=
?)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;</div>
<div>010b&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram11&nbsp; (driver=
?)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;</div>
<div>010c&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram12&nbsp; (driver=
?)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;</div>
<div>010d&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram13&nbsp; (driver=
?)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;</div>
<div>010e&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram14&nbsp; (driver=
?)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;</div>
<div>010f&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;16384 ram15&nbsp; (driver=
?)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;</div>
<div>b300&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;7761920 mmcblk0&nbsp; driver: mm=
cblk&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>&nbsp; b301&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1048576 mmcblk0p1 9d7a9d1=
0-01&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>&nbsp; b302&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;6712320 mmcblk0p2 9d7a9d1=
0-02&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-bl=
ock(179,2)</div>
<div>CPU1: stopping&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>CPU: 1 PID: 0 Comm: swapper/1 Not tainted 4.9.0-xilinx-v2017.3 #1&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>Hardware name: Xilinx Zynq Platform&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>[&lt;c010e3ac&gt;] (unwind_backtrace) from [&lt;c010a5f0&gt;] (show_st=
ack&#43;0x10/0x14)&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>[&lt;c010a5f0&gt;] (show_stack) from [&lt;c02dcce4&gt;] (dump_stack&#4=
3;0x80/0xa0)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>[&lt;c02dcce4&gt;] (dump_stack) from [&lt;c010cb58&gt;] (ipi_cpu_stop&=
#43;0x3c/0x70)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>[&lt;c010cb58&gt;] (ipi_cpu_stop) from [&lt;c010d388&gt;] (handle_IPI&=
#43;0x64/0x84)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>[&lt;c010d388&gt;] (handle_IPI) from [&lt;c0101420&gt;] (gic_handle_ir=
q&#43;0x80/0x8c)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>[&lt;c0101420&gt;] (gic_handle_irq) from [&lt;c010b00c&gt;] (__irq_svc=
&#43;0x6c/0xa8)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>Exception stack(0xde471f70 to 0xde471fb8)&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>1f60:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000000=
 00000000 1e29c000 debde9c0&nbsp; &nbsp;</div>
<div>1f80: 49d2e7a1 00000000 debdde40 00000001 47add66a 00000000 00000000 0=
0000001&nbsp; &nbsp;</div>
<div>1fa0: 00000015 de471fc0 c04af5dc c04af600 60000013 ffffffff&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>[&lt;c010b00c&gt;] (__irq_svc) from [&lt;c04af600&gt;] (cpuidle_enter_=
state&#43;0xe4/0x1b4)&nbsp; &nbsp; &nbsp;</div>
<div>[&lt;c04af600&gt;] (cpuidle_enter_state) from [&lt;c014cdb4&gt;] (cpu_=
startup_entry&#43;0x18c/0)</div>
<div>[&lt;c014cdb4&gt;] (cpu_startup_entry) from [&lt;001014cc&gt;] (0x1014=
cc)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</d=
iv>
<div>---[ end Kernel panic - not syncing: VFS: Unable to mount root fs on u=
nknown-bl)</div>
<div><br>
</div>
Thanks for your help!</span></span></span>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif, Helvet=
ica, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, =
NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Emo=
jiSymbols;">
<p>Jose Bravo </p>
</div>
</div>
</div>
</body>
</html>

--_000_BLUPR17MB0020E23135997E85A686B4D6CAC40BLUPR17MB0020namp_--
