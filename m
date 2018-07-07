Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41FF5E00BFB; Sat,  7 Jul 2018 15:00:57 -0700 (PDT)
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
	no *      trust
	*      [40.92.0.100 listed in list.dnswl.org]
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
X-Greylist: delayed 59024 seconds by postgrey-1.32 at yocto-www;
	Sat, 07 Jul 2018 15:00:54 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092000100.outbound.protection.outlook.com [40.92.0.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29520E00903
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 15:00:54 -0700 (PDT)
Received: from BN3NAM01HT155.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e41::161) by
	BY2NAM01HT045.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e42::148) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.906.15;
	Sat, 7 Jul 2018 18:27:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ozL/ZbOJjLCv7sW6nobsntjpm0VH6fuBgUzowzqcHkg=;
	b=NZQNMWN4rzPfWCM+zntxLBT/wQOZ3AAfrdmhHFqk8w7hkBc8tY6b2VArSn1MGzMoI6giLlQGuVH5jGCx4PvDVZhf1RYEs+pakJEchbEdIMetwscn1R70Uhc4jhElxX2KjrqM3t5lFv5c3LjpLfXhRzjacMaTRsoOvB3ansguPgmLuZlVejjtT+/OkBtBnsh3IveuKRxH8k4OVkgSKfimMr0H9sImuD5lRphle2A3xJgMH5aVyCp0ErFsS1UIN3w+wRvNFpXjk/IuAThZ/hJOxrULY355KKA9irNEB7BlmoEnQxxfri7npcR/hk+LJkpHwZrCR0b/wG2d+/NditVpKg==
Received: from BN3NAM01FT044.eop-nam01.prod.protection.outlook.com
	(10.152.66.58) by BN3NAM01HT155.eop-nam01.prod.protection.outlook.com
	(10.152.66.161) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.906.15;
	Sat, 7 Jul 2018 00:04:59 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.66.54) by
	BN3NAM01FT044.mail.protection.outlook.com (10.152.66.243) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.906.15 via Frontend Transport; Sat, 7 Jul 2018 00:04:59 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd%4]) with mapi id 15.20.0930.016;
	Sat, 7 Jul 2018 00:04:59 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Any  Linux/Yocto Image Installer (for target system)
Thread-Index: AQHUFXOx7sRayNuwSEi1lnlbDNd8IqSC394X
Date: Sat, 7 Jul 2018 00:04:59 +0000
Message-ID: <MWHPR19MB1183781E295393C010F655E6C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>,
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:267759F6E906D80CD8ABA153ED5D08890F086D50CDB4C201B8F2D92182CA3D9B;
	UpperCasedChecksum:85C638670148E682B41341B05357F36DBA9F903EFA2D42C78EC169634AAF069B;
	SizeAsReceived:7241; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ULcKevkUNP4R8dyT4oSA8HrOfpcYNkpj]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM01HT155;
	7:4E0XvihC3H3JNFfRo98yHaj9HzCwUz11wFgMXFxLXV3uw9poJUiboek8aCl0nlbFHLN5zPyed4ghtFXf8og6rf9oFTD+djlq+mknFRckxiS1RXAPZHZIwQvRJ/WRQza8o4l4giitZcWrDytYJ4pV/hhbWH/F/6XsJteXSAHY+by+MEib7ajVNTetIDGki11snmE0Z6wAtlPQ+BsM/PfQnKPvhZbqBspVCeFMB4PsNGaBDEaSZSyw3auCLLCdP2pl
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101448)(1701031045);
	SRVR:BN3NAM01HT155; 
X-MS-TrafficTypeDiagnostic: BN3NAM01HT155:|BN3NAM01HT155:|BY2NAM01HT045:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BN3NAM01HT155; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM01HT155; 
x-forefront-prvs: 0726B2D7A6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(76176011)(45080400002)(14444005)(256004)(86362001)(6606003)(2501003)(68736007)(105586002)(104016004)(6506007)(55016002)(5250100002)(20460500001)(6916009)(53546011)(14454004)(83332001)(229853002)(5640700003)(5660300001)(73972006)(6436002)(102836004)(2351001)(7696005)(25786009)(19627405001)(82202002)(26005)(6346003)(99286004)(9686003)(74316002)(33656002)(87572001)(54896002)(486006)(106356001)(1730700003)(81156014)(2940100002)(446003)(97736004)(11346002)(6246003)(8936002)(2900100001)(8676002)(476003)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:BN3NAM01HT155;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rksyeung@hotmail.com; 
x-microsoft-antispam-message-info: ycfmjP2+UDW9kHuTO3/+6VPIm17PHh/QvrPSt7iH6F9gvHj3GctlqkrqV5QHnlvQsIgm5XPZhNNmqg9QRyddY5VtbHWyzrgtTyOMYxH6q5uxlauG0WtbOxqWR/bctkiEZhI9nGbJFdIBCLjCK759lO/CfYQTNOC1/3KiIU7i5O8DTDWCCdOxw8axDs1DItehmXVFwRzAVKvFJz9fsaOsJip2D/OcscPwzIyZdDW8aqQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: e4361aa9-9d2f-4007-c48e-08d5e39d478f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2018 00:04:59.1547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM01HT155
X-Microsoft-Exchange-Diagnostics: 1; BY2NAM01HT045;
	23:ST8hrmPqfYUwhVBQGYys7RJHjrY9ptxeXz/lCEFiXjkLG8cJqTU814vNFoO6VTWX3zHYoIERQ7aoKCdQrAUOQAAPXS0yr0zA8+Qrd3rte2sQW3/3UiZI6Z1jCMvLoJ+3G7/9J59y5jGPp3LxwEV5RA==
X-OriginatorOrg: hotmail.com
Subject: Re: Any Linux/Yocto Image Installer (for target system)
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
X-List-Received-Date: Sat, 07 Jul 2018 22:00:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183781E295393C010F655E6C5470MWHPR19MB1183namp_"

--_000_MWHPR19MB1183781E295393C010F655E6C5470MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I tried poky/scripts/contrib/mkefidisk.sh. It showed promised as 3 primary =
partitions are created on my SSD instead of just 1 when I used dd to write =
.hddimg. However, I ran into a number of failures when I ran this script:


  1.  mktemp fails, as the .sh uses 3 "X" instead of 6 "X" as temporary dir=
ectory suffix.
  2.  Failures that look like this:  udevd[1140]: inotify_add_watch(6, /dev=
/sda1, 10) failed: No such file or directory".


My SSD is mounted as /dev/sda, while at the time I've a USB as boot device =
to boot the system up.  When I activate the SSD image, I have this USB devi=
ce removed first, so SSD should come up as /dev/sda.  Yet, boot fails, with=
 a blank screen.


Any idea what might have gone wrong?


________________________________
From: Raymond Yeung <rksyeung@hotmail.com>
Sent: Friday, July 6, 2018 2:52 PM
To: yocto@yoctoproject.org
Subject: Any Linux/Yocto Image Installer (for target system)


Is there any installer that I could download along with the .hddimg (or .is=
o) image to the RAM, invoke the installer, so we could have a bootable imag=
e installed on a SSD?


History:

I can already create USB live image with dd and .hddimg.  I could also dd t=
he .hddimg onto SSD and make it bootable.  The problem is that I need multi=
ple partitions on my 250MB SSD, some reserved for other purposes.


I find that when booting up with USB running SysLinux, I could install GRUB=
, vmlinuz, along with boot.img and core.img under /boot directory, and the =
rootFs under root (i.e. '/') directory.  That's 4 partitions.  I believe I =
could resize the largest partition after installation to do what I want.


Is there a way to do this manually, possibly with a utility or a shell scri=
pt?


Thanks,

Raymond

--_000_MWHPR19MB1183781E295393C010F655E6C5470MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I tried poky/scripts/contrib/<i s=
tyle=3D"white-space: pre-wrap; font-size: 12pt;">mkefidisk.sh. It showed pr=
omised as 3 primary partitions are created on my SSD instead of just 1 when=
 I used dd to write .hddimg. However,
 I ran into a number of failures when I ran this script:</i></p>
<p style=3D"margin-top:0;margin-bottom:0"><i style=3D"white-space: pre-wrap=
; font-size: 12pt;"><br>
</i></p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li><i style=3D"font-size: 12pt; white-space: pre-wrap;"></i>mktemp fails, =
as the .sh uses 3 &quot;X&quot; instead of 6 &quot;X&quot; as temporary dir=
ectory suffix.</li><li>Failures that look like this: &nbsp;udevd[1140]: ino=
tify_add_watch(6, /dev/sda1, 10) failed: No such file or directory&quot;.</=
li></ol>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0">My SSD is mounted as /dev/sda, wh=
ile at the time I've a USB as boot device to boot the system up. &nbsp;When=
 I activate the SSD image, I have this USB device removed first, so SSD sho=
uld come up as /dev/sda. &nbsp;Yet, boot fails,
 with a blank screen.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Any idea what might have gone wro=
ng?</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Raymond Yeung &lt;rks=
yeung@hotmail.com&gt;<br>
<b>Sent:</b> Friday, July 6, 2018 2:52 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Any Linux/Yocto Image Installer (for target system)</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Diso-8859-1">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Is there any installer that I co=
uld download along with the .hddimg (or .iso) image to the RAM, invoke the =
installer, so we could have a bootable image installed on a SSD?</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">History:</p>
<p style=3D"margin-top:0; margin-bottom:0">I can already create USB live im=
age with dd and .hddimg. &nbsp;I could also dd the .hddimg onto SSD and mak=
e it bootable. &nbsp;The problem is that I need multiple partitions on my 2=
50MB SSD, some reserved for other purposes.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I find that when booting up with=
 USB running SysLinux, I could install GRUB, vmlinuz, along with boot.img a=
nd core.img under /boot directory, and the rootFs under root (i.e. '/') dir=
ectory. &nbsp;That's 4 partitions. &nbsp;I believe
 I could resize the largest partition after installation to do what I want.=
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Is there a way to do this manual=
ly, possibly with a utility or a shell script?</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0; margin-bottom:0">Raymond</p>
<div style=3D"color:rgb(0,0,0)">
<div dir=3D"ltr">
<div id=3D"x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; c=
olor:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0"></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183781E295393C010F655E6C5470MWHPR19MB1183namp_--
