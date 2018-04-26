Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B25C2E008D2; Thu, 26 Apr 2018 20:32:50 -0700 (PDT)
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
	no *      trust *      [40.92.9.53 listed in list.dnswl.org]
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
X-Greylist: delayed 28025 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 Apr 2018 20:32:48 PDT
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092009053.outbound.protection.outlook.com [40.92.9.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5688E00823
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 20:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=459aHdSTtEn2yS9Y9XiaKOk0+hIx3M1xouIxHCLjLFw=;
	b=onTbJxk3ozFOjqygMvaSk5Wjz0faVgGKkYtM2h1o3PBgelz50e5sL2suPkcrbiknYsXyjsWyoengCXr01L1iDu/KiyP1cXzzI+lrnFWY9orRxuMJMWhlhf9VZQxnLdCSuum76i9FBEvs9qIlwLfyOI5byCEL3Hm40DjhLXSyJf7DbAfkDn1rVAARyF63L5jSOYIpuI4IYSzwMs81ppmM4Fx8ucdbRQohlrpl+q0JZprYlwPofqU2jpuOAJSOwvi1dYiBvz/zBc7gKU0raTDmsX9cgNcTaOeZ/ZlcGZEz+NqSKvDFfIpTRIdIg0aqa2W+jqdl5AeYWubs1Sf+EnxrkQ==
Received: from BN3NAM04FT041.eop-NAM04.prod.protection.outlook.com
	(10.152.92.60) by BN3NAM04HT030.eop-NAM04.prod.protection.outlook.com
	(10.152.92.246) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.696.11;
	Thu, 26 Apr 2018 17:12:22 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.92.55) by
	BN3NAM04FT041.mail.protection.outlook.com (10.152.93.42) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.696.11 via Frontend Transport; Thu, 26 Apr 2018 17:12:21 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0696.020;
	Thu, 26 Apr 2018 17:12:21 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "Hussin, Mohamad Noor Alim" <mohamad.noor.alim.hussin@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PXE Boot NFS not working
Thread-Index: AQHT3RibB3SjOiqCJ0iFNIV79C8ZUKQSpG5AgACjeVU=
Date: Thu, 26 Apr 2018 17:12:21 +0000
Message-ID: <MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183FFEEF33178BA3331F6A6C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<A05DCA0C0293664FB237A9C4B0E55E4601515890@PGSMSX107.gar.corp.intel.com>
In-Reply-To: <A05DCA0C0293664FB237A9C4B0E55E4601515890@PGSMSX107.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E0BD638F7368E710DA871CAB701F9ED24473E199EB852C0A135E3F1AF3B7440D;
	UpperCasedChecksum:E238A1C8C388DBD1A6EA4EBD3B1C20749132C5B85BFB71B1FC4DF51A21582730;
	SizeAsReceived:7318; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Gi4JIGwL9/7MtxC4bylV0KLZgtP+5yuPmmcSJ/9Tf3F0i7jDpw7xE3Bybwlr6vxM]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM04HT030;
	7:ozzueUB0OkYlcbPPZxNue+2A07VH211S30E9wbkQ0GRJMp7gLF4pxvqsgXKq0ExwnOX7vj2Gy1PKps3Y7mJAVnuzjQPlULkQ0T5VTYmv12KAbfzVyi3ok6BwEijEZgWDZTgOb2on32LISjpplOAttp377wBQTpz/mjxgdET6/+McYtk255MSgRjty5tMPsX7dsk7RIHJYgdCPiDlGl9IDWQqAn29eRQeUCCQLMttQbZwtD5yQ/1DPCz5BccdaPT1;
	23:9Y7/1+RfPn4yQ2iG+zTrr7DOE9ASUtd6G5D5FLjitpOvmqlSvaP/tjLIZZ+CBWREKX/27bCQXN1UXmCcyQFwACxCxzKU8oqfN4IOlGszVn5ErOCnFu0mZDc5KUdiI0HOFu995HtszkWKeSzq0kGjcA==
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:BN3NAM04HT030; 
X-MS-TrafficTypeDiagnostic: BN3NAM04HT030:|BN3NAM04HT030:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BN3NAM04HT030; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM04HT030; 
x-forefront-prvs: 0654257CF5
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BN3NAM04HT030;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: wH6ZctMw+WsrmRaxFPoaPxqW1TnYlhgh6dnad1Rva5TwlT64Oi6IwCzEdHhzw1rYhMszVaoobLgzb/N85uZLOl6zKpGs7jIH+PDwAzjWCtkLryJd9d7D5IBMqQWvhunp3FSIRx8r7/qKZVXdG5euaxX5GH2PS++j6PpyxORLfuRb7tHMUFYgJREWG2tfLiL9
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: d62c4201-e5ef-469d-1246-08d5ab98dfb8
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: d62c4201-e5ef-469d-1246-08d5ab98dfb8
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2018 17:12:21.7943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT030
X-OriginatorOrg: hotmail.com
Subject: Re: PXE Boot NFS not working
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
X-List-Received-Date: Fri, 27 Apr 2018 03:32:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0MWHPR19MB1183namp_"

--_000_MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0MWHPR19MB1183namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Follow-up to my previous post, after seeing the reply below suggesting me n=
ot to use initramfs (but initrd is usable, right?).  BTW, I don't use bootx=
64.efi.  Instead, I use pxelinux.0 along with the other lib***.c32 files.


  1.  Is there a way to verify if GRUB (that I'm using) supports networking=
 or not?  It seems to have very limited user commands available.
  2.  How do I get into GRUB?  I'd been into GRUB, more like accidentally. =
 The reply below refers to grub.cfg.  Is this cfg file stored on target, or=
 on host (like pxelinux.cfg)?
  3.  How do I configure my build (and what yocto tool to use, if any) in o=
rder to get my network driver part of kernel, instead of being a LKM that i=
sn't there when I need it for NFS boot?


________________________________
From: Hussin, Mohamad Noor Alim <mohamad.noor.alim.hussin@intel.com>
Sent: Thursday, April 26, 2018 12:26 AM
To: Raymond Yeung; yocto@yoctoproject.org
Subject: RE: PXE Boot NFS not working


Refer to my post here https://lists.yoctoproject.org/pipermail/yocto/2018-A=
pril/040860.html



Don=92t use initramfs/initrd as it not working.





Regards,

Alim Hussin




--_000_MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0MWHPR19MB1183namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, Helvetica, EmojiFont, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"=
ltr">
<p>Follow-up to my previous post, after seeing the reply below suggesting m=
e not to use initramfs (but initrd is usable, right?). &nbsp;BTW, I don't u=
se bootx64.efi. &nbsp;Instead, I use pxelinux.0 along with the other lib***=
.c32 files.</p>
<p><br>
</p>
<p></p>
<ol style=3D"margin-bottom: 0px; margin-top: 0px;">
<li>Is there a way to verify if GRUB (that I'm using) supports networking o=
r not? &nbsp;It seems to have very limited user commands available.</li><li=
>How do I get into GRUB? &nbsp;I'd been into GRUB, more like accidentally. =
&nbsp;The reply below&nbsp;refers to grub.cfg. &nbsp;Is this cfg file store=
d on target, or on host (like pxelinux.cfg)?</li><li>How do I configure my =
build (and what yocto tool to use, if any) in order to get my network drive=
r part of kernel, instead of being a LKM that isn't there when I need it fo=
r NFS boot?</li></ol>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Hussin, Mohamad Noor =
Alim &lt;mohamad.noor.alim.hussin@intel.com&gt;<br>
<b>Sent:</b> Thursday, April 26, 2018 12:26 AM<br>
<b>To:</b> Raymond Yeung; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: PXE Boot NFS not working</font>
<div>&nbsp;</div>
</div>
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><a name=3D"x__MailEndCompose" id=3D"LPlnk286451" p=
reviewremoved=3D"true"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font=
-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Refer to my post her=
e
</span></a><a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-A=
pril/040860.html" id=3D"LPlnk128042" previewremoved=3D"true"><span lang=3D"=
EN-MY" style=3D"font-size:11.0pt; font-family:&quot;Calibri&quot;,sans-seri=
f">https://lists.yoctoproject.org/pipermail/yocto/2018-April/040860.html</s=
pan></a><span lang=3D"EN-MY" style=3D"font-size:11.0pt; font-family:&quot;C=
alibri&quot;,sans-serif; color:#1F497D"></span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">Don=92t use initra=
mfs/initrd as it not working.
</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif; color:#1F497D">Regards,</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif; color:#1F497D">Alim Hussin</span></p>
</div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt; fo=
nt-family:&quot;Calibri&quot;,sans-serif; color:#1F497D">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_MsoNormal"><a name=3D"x______replyseparator" id=3D"LPlnk84216=
1" previewremoved=3D"true"></a><br>
</p>
</div>
</div>
<div id=3D"x_divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
</span></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0MWHPR19MB1183namp_--
