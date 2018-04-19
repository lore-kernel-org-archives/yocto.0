Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57803E00A1E; Thu, 19 Apr 2018 12:34:54 -0700 (PDT)
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
	no *      trust *      [40.92.7.46 listed in list.dnswl.org]
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
X-Greylist: delayed 63958 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Apr 2018 12:34:52 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092007046.outbound.protection.outlook.com [40.92.7.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D68FFE00823
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2018 12:34:52 -0700 (PDT)
Received: from DM3NAM03HT072.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e49::325) by
	CO1NAM03HT068.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e48::247) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.675.14;
	Thu, 19 Apr 2018 15:01:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Yd8h+/6evL3C+SjpglR8jranVlLAU5Iy7NrMdIytl8Q=;
	b=RG5HdRadzpHcFCIL0zW2tlsqEQItB9Fl6+zQ/V+guj6K+OkPnsAD4burndjPHBMC8aufEPOFaDV5K1JTYuUXfvLiNcIvPA/phwGEW6Xbjkb2IqJWhGs5CUsj3yKFlpJlItjM9jigSDlbwbEqUonirZidb7+CbFq0mfyagsiuNU66/o5dTmCy0ymktfcEHt1j0aKs06cMj3R2mVkiv6NZ5A2bXo5zLuaqkYHzq/j5pb+JcpnzGUnZb2JWq7OD/BMWbvcFX6+vnoaGCvMn3XFNbBriOtg3BY7BMBxjkH+7dd9Ipga7Hld1XELps9UGfa8+vyzFIK75B9d5PMnZQZAzdg==
Received: from DM3NAM03FT051.eop-NAM03.prod.protection.outlook.com
	(10.152.82.51) by DM3NAM03HT072.eop-NAM03.prod.protection.outlook.com
	(10.152.83.69) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.675.14;
	Thu, 19 Apr 2018 01:38:40 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.82.53) by
	DM3NAM03FT051.mail.protection.outlook.com (10.152.83.56) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.675.14 via Frontend Transport; Thu, 19 Apr 2018 01:38:40 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0675.015;
	Thu, 19 Apr 2018 01:38:40 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Linux Files needed for PXE network boot
Thread-Index: AQHT1bpx3ngPGcU8okapyJig9EgOd6QHT4bzgAAC7yY=
Date: Thu, 19 Apr 2018 01:38:40 +0000
Message-ID: <MWHPR19MB11839D60DD5DADD1573F4291C5B50@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183563A0DFAFC6B7313C25CC5B00@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<MWHPR19MB1183C61B954575D9F17CA1BEC5B50@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183C61B954575D9F17CA1BEC5B50@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:307D6F5FF921805D46A54D1E7DCC5494A180BA1EABA4197788DD49B7D428CDA1;
	UpperCasedChecksum:6E8AE25E1A3C2BC9D4B0CFA4AD9A7D2E21CE7D20B0386F50DCB2A626DAAB9D95;
	SizeAsReceived:7152; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [+/Eh/id/iIrGAHvg+PuOuNmTvEbFvuKZ]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM3NAM03HT072;
	7:Tp6Bm9xBsxZ4H8on5X0f1TfNXXnakeBeqnkSsn76blPXARafTdbnLNIqzphCDl5H6OAs1Vpzq68hyarhdo3vdhm3En3TJK3AzLVgjI96NJaHA9Xldia+f6OrhdC9Ghnp1ii85QQeer+ZcG18ud/hU48xuf1w44Sru9UyI5FNc2uryeYbZCyyP15d1+tdvcpyoruoWv63NSP2ec0AZytpnKN5zz+VFzvQtwRNzWf9APX5IQ8qfm9y19yhan/I8tm3
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:DM3NAM03HT072; 
X-MS-TrafficTypeDiagnostic: DM3NAM03HT072:|DM3NAM03HT072:|CO1NAM03HT068:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:DM3NAM03HT072; BCL:0; PCL:0; RULEID:; SRVR:DM3NAM03HT072; 
x-forefront-prvs: 0647963F84
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:DM3NAM03HT072;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: EOR+Ia6kiO1ikmKRpAPZSb3ts1shsPlhvjEsev3SIATwZ9AGOY416Tqtqv5rWxLq//dwjrUOUYhhh7NuZejfPNiVJQBE7gk1zWwKg4rWQirTuMb5oqsmUVYj218XW6zFl7uqZ2y7P1b9Yf2L8mJoXxJDhQ8NP+Ir0E7NhhtT8A2q/I/CtDb4C0P5QCx0JDbU
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 7afb1dc4-e8c2-4784-f140-08d5a596477d
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 7afb1dc4-e8c2-4784-f140-08d5a596477d
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2018 01:38:40.5125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3NAM03HT072
X-Microsoft-Exchange-Diagnostics: 1; CO1NAM03HT068;
	23:ay31vCnF7yZ84t4Ni7eK5APkNJ5LztzJKwal1UFr/TxS3fQ+2H35yO+ZrNsP3wUAagwBWTcxEaeH8wastUyFKLh5Y2YjkerHnRThmkpLWy0OTeFcZeks85Kp5Jlhzfq3FvxxHKFxM/R3numlMfRzuw==
X-OriginatorOrg: hotmail.com
Subject: Re: Linux Files needed for PXE network boot
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
X-List-Received-Date: Thu, 19 Apr 2018 19:34:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11839D60DD5DADD1573F4291C5B50MWHPR19MB1183namp_"

--_000_MWHPR19MB11839D60DD5DADD1573F4291C5B50MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Another thing I haven't tried is to set up NFS.  Can we simply specify ONE =
file (similar to .hddimg) that could be tftp over to target, and expect it =
to boot up?  Could this be the cause of my problem?


________________________________
From: Raymond Yeung <rksyeung@hotmail.com>
Sent: Wednesday, April 18, 2018 6:33 PM
To: yocto@yoctoproject.org
Subject: Re: Linux Files needed for PXE network boot


I've yet to receive any response to my post below.  I've gone through fair =
amount of experimentation to get my board downloaded successfully the first=
-stage boot loader.  I'd tried pxelinux.0 for legacy BIOS and bootx64.efi (=
also generated in build process) to work with UEFI on client side.  However=
, no luck going any further so far.  Debugging the client side is rather cr=
yptic (black box).


I'm just wondering if it's because of a missing kick-start file (ks.conf)? =
 I've tried "kernel images/<kernel>.hddimg" (was careful in specifying the =
path relative /tftpboot root directory), also bzImage.bin, and the combo of=
 vmlinuz + initrd files.  Neither one of the works so far.  When I tried UE=
FI with bootx64.efi, the client side stops at GRUB, complaining "error: no =
such device: ()/EFI/BOOT/grub.cfg."  When I tried legacy BIOS with pxelinux=
.0, I got "PXE-E16: No offer received.  ERROR: Boot option loading failed".


Any idea anyone?


________________________________
From: Raymond Yeung <rksyeung@hotmail.com>
Sent: Monday, April 16, 2018 12:42 PM
To: yocto@yoctoproject.org
Subject: Linux Files needed for PXE network boot

I've a .hddimg image bootable from USB thumb drive.  As part of the boot-up=
, I also could invoke "Serial Install" to transfer such an image to SSD, su=
ch that in the next round, I could boot from SSD instead.

What are the files and where do I get them (relative to where I find .hddim=
g) from the build tree, and install them on the tftp server, in order to su=
pport PXE network booting?  Also, what mechanism do people use to transfer =
this after PXE boot into the SSD, making it bootable?

Raymond

--_000_MWHPR19MB11839D60DD5DADD1573F4291C5B50MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Another thing I haven't tried is =
to set up NFS. &nbsp;Can we simply specify ONE file (similar to .hddimg) th=
at could be tftp over to target, and expect it to boot up? &nbsp;Could this=
 be the cause of my problem?</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Raymond Yeung &lt;rks=
yeung@hotmail.com&gt;<br>
<b>Sent:</b> Wednesday, April 18, 2018 6:33 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: Linux Files needed for PXE network boot</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">I've yet to receive any response=
 to my post below. &nbsp;I've gone through fair amount of experimentation t=
o get my board downloaded successfully the first-stage boot loader. &nbsp;I=
'd tried pxelinux.0 for legacy BIOS and bootx64.efi
 (also generated in build process) to work with UEFI on client side. &nbsp;=
However, no luck going any further so far. &nbsp;Debugging the client side =
is rather cryptic (black box).</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I'm just wondering if it's becau=
se of a missing kick-start file (ks.conf)? &nbsp;I've tried &quot;kernel im=
ages/&lt;kernel&gt;.hddimg&quot; (was careful in specifying the path relati=
ve /tftpboot root directory), also bzImage.bin, and the
 combo of vmlinuz &#43; initrd files. &nbsp;Neither one of the works so far=
. &nbsp;When I tried UEFI with bootx64.efi, the client side stops at GRUB, =
complaining &quot;error: no such device: ()/EFI/BOOT/grub.cfg.&quot; &nbsp;=
When I tried legacy BIOS with pxelinux.0, I got &quot;PXE-E16: No
 offer received. &nbsp;ERROR: Boot option loading failed&quot;.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Any idea anyone?</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Raymond Yeung &lt;r=
ksyeung@hotmail.com&gt;<br>
<b>Sent:</b> Monday, April 16, 2018 12:42 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Linux Files needed for PXE network boot</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; c=
olor:#000000; font-family:Calibri,Helvetica,sans-serif">
I've a .hddimg image bootable from USB thumb drive. &nbsp;As part of the bo=
ot-up, I also could invoke &quot;Serial Install&quot; to transfer such an i=
mage to SSD, such that in the next round, I could boot from SSD instead.
<div><br>
</div>
<div>What are the files and where do I get them (relative to where I find .=
hddimg) from the build tree, and install them on the tftp server, in order =
to support PXE network booting? &nbsp;Also, what mechanism do people use to=
 transfer this after PXE boot into the
 SSD, making it bootable?</div>
<div><br>
</div>
<div>Raymond</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB11839D60DD5DADD1573F4291C5B50MWHPR19MB1183namp_--
