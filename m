Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A643E00B45; Tue, 16 Oct 2018 06:32:00 -0700 (PDT)
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
	no *      trust
	*      [40.92.0.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 50424 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Oct 2018 06:31:58 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092000101.outbound.protection.outlook.com [40.92.0.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10F4FE00A10
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 06:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=eJvPheO6eV36n69YgkGhG6yRdlSj6kzr0U1Iu0dAJ1M=;
	b=Ksk60+iEOGScN9SSituMJJ3LgQdpVefs6sCW2pbKfye/sfFBIwzxRGahRaNzJ3Mea+x5WZawkQSmmmAFZjLQpLYAnJmRkUHxcIv6Nstr5iq/N12vgstzyCAWW726mxWPS4ojbnRm0yzROuYOQ277Q1nasWTRjPWopUK95My9Ko2PMw1YZcZctBQ/jIK7jj8l2i0xaxMI+OapTjs8yTXE6+oAxSbgO+5Ogj95OnbfidmmgVPnPXQoTYRTYu6HC6IJYBkjsf8vSJqRUwpk6zjA405+M8JJRhBkslCFm/8OnC7VPpjSpuvVMUG1VLsSxhHEl9HHNtT8MdSsdUGtRQEONw==
Received: from BN3NAM01FT020.eop-nam01.prod.protection.outlook.com
	(10.152.66.58) by BN3NAM01HT073.eop-nam01.prod.protection.outlook.com
	(10.152.67.40) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1250.12;
	Mon, 15 Oct 2018 21:00:39 +0000
Received: from CY4PR19MB1093.namprd19.prod.outlook.com (10.152.66.56) by
	BN3NAM01FT020.mail.protection.outlook.com (10.152.67.227) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1250.12 via Frontend Transport; Mon, 15 Oct 2018 21:00:39 +0000
Received: from CY4PR19MB1093.namprd19.prod.outlook.com
	([fe80::c4cd:5f6f:9f8:5fa7]) by CY4PR19MB1093.namprd19.prod.outlook.com
	([fe80::c4cd:5f6f:9f8:5fa7%8]) with mapi id 15.20.1228.027;
	Mon, 15 Oct 2018 21:00:39 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Kosta Zertsekel <KZertsekel@advaoptical.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Force rebuild to regenerate .ko
Thread-Index: AQHUYdvR5gAR/XyIlkKR803FN/gS06Uc4qR2gAPsfn0=
Date: Mon, 15 Oct 2018 21:00:39 +0000
Message-ID: <CY4PR19MB1093B9FDDE31BDA5B0049ACEC5FD0@CY4PR19MB1093.namprd19.prod.outlook.com>
References: <mailman.9.1539284401.19322.yocto@yoctoproject.org>,
	<CY4PR19MB1093B99F41A1F2F97E1427A3C5E20@CY4PR19MB1093.namprd19.prod.outlook.com>,
	<78ae629ee3b44d61a411030b8c95daa8@advaoptical.com>
In-Reply-To: <78ae629ee3b44d61a411030b8c95daa8@advaoptical.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:77E1E4147438AA44AD081C33E7C0AF2729770FB6EC07B05010F6B90E131B221B;
	UpperCasedChecksum:8B3B705F7E778FDAA2BCAE3F3DAD6988164059B2335C2372421C51C5D0E661AB;
	SizeAsReceived:7183; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [JN2K8fLA8uddQ6UBSzP/ydVm2JAF1ASo]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM01HT073;
	6:U7zN8VgFAugentXbw8SfFby7zZQN6tqqNlEvc2thsgN1lsEM/Kg3dGElIXB6ApO9LuEOSBOHZEekbFt7NJLE85m2UuHriP+CkUkxgcejJiNlJjddkThJyDES6c6pxyOx3SoaisWmWru/EAdz+0VVhQ03hOvpbWKPc4fBa+tIcQANAoB7nnaneYZC3Aj40NojDwxKDyRFiFBl7uScEsuS4P4XMlmQD6onT2nNoGT47L9jSvMbZYIlYhFegeoVFEvTYHmFDtSCG6ljzFBrCNe6I5C1WqAVTvI9U7C1IBARTt2f4u3z8HB+GfgHNZlFgcvBrJ2/z7lcn1keFefmPUgicMvgsEQBiy7by7vWq7t1qw5PcyQlUtckwFzQGys/Mnp1Dg8idMJunM9H6GgHUJfj8JGfTAuThx3U45bDvz5qx6ds3tdGxK5s55l14S53QFCVlRntbys8GXSKcZykZ5cg2Q==;
	5:ESxvjEEVTgkL/+xrM8EScT7gHKORnAAnZDPUc5pN1TiWAbw82CBnrEomVQArzLdrW/B8ixh7NO1INDQcoWppeSiZGfLcb0BkCuOmSjxOE/M/3/ZfOo92gemNkAkfe9PHEtEqKz8QpKOlfSP4fH6ntll3xADuapuD5bdfYHMkvQA=;
	7:j/JWs6VUdV9OrrVAnJnE/HIPDS9yq4TIqmFdR/eXbM7T554La2i6pYGML0fayZ+oebScDa/xyKBBHWQmeVj/V7cmCK/uO0hOJdI0Er3AXdVyleVGfscRzBqCPgqK8obG6QEohLalqZvKZsCheYvt89Fx+GX707Y3OwGGSctJ9NdgKY2jVIKpy9YAIT5nN6+W7CHGkHNLCsthUBCpeP+CUN40Pl6m2r5yH+navwDoIszo1ofspwyUIPKNLqT086cK
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:BN3NAM01HT073; 
x-ms-traffictypediagnostic: BN3NAM01HT073:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:BN3NAM01HT073; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM01HT073; 
x-microsoft-antispam-message-info: A8OCKkYG/us2F22F2ms11K/r/NrXKDyyC19RIOOSm2m4vjLWBnU1u9dHWR6J/GZZ
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: a4b65e03-a3e4-466c-6992-08d632e14343
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2018 21:00:39.6405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM01HT073
Subject: Re: Force rebuild to regenerate .ko
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
X-List-Received-Date: Tue, 16 Oct 2018 13:32:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR19MB1093B9FDDE31BDA5B0049ACEC5FD0CY4PR19MB1093namp_"

--_000_CY4PR19MB1093B9FDDE31BDA5B0049ACEC5FD0CY4PR19MB1093namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've meta-intel and poky.  I'm not sure which layer it's in, as an attempt =
to find/grep files with ixgbe in the recipes directories doesn't turn up an=
ything.  The source seems to be downloaded to work-shared sub-directory dur=
ing the bitbake process.

The .ko file is located in the following path:
tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/lib/modul=
es/4.4.26-yocto-standard/kernel/drivers/net/ethernet/intel/ixgbe/ixgbe.ko

Thanks,
Raymond


________________________________
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
Sent: Saturday, October 13, 2018 2:01 AM
To: Raymond Yeung; yocto@yoctoproject.org
Subject: Re: Force rebuild to regenerate .ko


Please add more details.


For example, where ixgbe.ko resides (what layer)?

If it is in Linux kernel (linux-yocto package), then just:

$ bitbake linux-yocto -c cleanall

$ bitbake linux-yocto


--- Kosta Z.


________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Raymond Yeung <rksyeung@hotmail.com>
Sent: Friday, 12 October 2018 6:29:44
To: yocto@yoctoproject.org
Subject: [yocto] Force rebuild to regenerate .ko

I've a Intel Ethernet driver, ixgbe.ko.  I made some changes (debug logs) t=
o the source file.  How do I force the .ko to be regenerated within yocto e=
nvironment, without rebuilding the entire yocto code base?

I tried to do bitbake of the image name earlier, but bitbake decides that t=
here's nothing to be done.  This is even after I'd removed the cache and ss=
tate directories.

Thanks,
Raymond

--_000_CY4PR19MB1093B9FDDE31BDA5B0049ACEC5FD0CY4PR19MB1093namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I've meta-intel and poky. &nbsp;I'm not sure which layer it's in, as an att=
empt to find/grep files with ixgbe in the recipes directories doesn't turn =
up anything. &nbsp;The source seems to be downloaded to work-shared sub-dir=
ectory during the bitbake process.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
The .ko file is located in the following path:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/lib/modul=
es/4.4.26-yocto-standard/kernel/drivers/net/ethernet/intel/ixgbe/ixgbe.ko<b=
r>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Raymond</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Kosta Zertsekel &lt;K=
Zertsekel@advaoptical.com&gt;<br>
<b>Sent:</b> Saturday, October 13, 2018 2:01 AM<br>
<b>To:</b> Raymond Yeung; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: Force rebuild to regenerate .ko</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Diso-8859-1">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
Please add more details.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
For example, where ixgbe.ko resides (what layer)?</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
If it is in Linux kernel (linux-yocto package), then just:</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
$&nbsp;bitbake linux-yocto -c cleanall</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<span style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">$&n=
bsp;bitbake linux-yocto</span><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<span style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><br=
>
</span></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<span style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">---=
 Kosta Z.</span></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top: 0px; margin-bot=
tom: 0px;">
<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> yocto-bounces@yocto=
project.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Raymond Yeu=
ng &lt;rksyeung@hotmail.com&gt;<br>
<b>Sent:</b> Friday, 12 October 2018 6:29:44<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Force rebuild to regenerate .ko</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I've a Intel Ethernet driver, ixgbe.ko. &nbsp;I made some changes (debug lo=
gs) to the source file. &nbsp;How do I force the .ko to be regenerated with=
in yocto environment, without rebuilding the entire yocto code base?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I tried to do bitbake of the image name earlier, but bitbake decides that t=
here's nothing to be done. &nbsp;This is even after I'd removed the cache a=
nd sstate directories.</div>
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
</div>
</div>
</body>
</html>

--_000_CY4PR19MB1093B9FDDE31BDA5B0049ACEC5FD0CY4PR19MB1093namp_--
