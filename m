Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63B8FE00BAD; Thu,  3 May 2018 13:14:33 -0700 (PDT)
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
	no *      trust *      [40.92.9.83 listed in list.dnswl.org]
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
X-Greylist: delayed 65388 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 May 2018 13:14:30 PDT
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092009083.outbound.protection.outlook.com [40.92.9.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66ED1E00994
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 13:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=OkuykB4bOPWb03URoCxk3+mckS8TXRgvnOw/6avfMGk=;
	b=jJKL5ljlompRxwIbFAcpOyN9nqpsqZF6+5cS3e4kpb6PZSO3qIEMvus5F11fn8EMYh88/JDpS4JxKtUAG7HpekGZw+eP/OwGFsGi2Edjb3eXePBGHAuG6gU7vJi3Nr+H6MZqYZiaXp+6Oo4RCP3Y1RSXR6YyBzuNRG3X/rXvDkWiUVJvqBw8qioY5ozonsTNKNo3Vzpvl8K2jzVJ1wK9RUboSu0mFfqIJ2zrIVWimO0tTT0olaRxyO7pjGwl7gu7iPkp/NBcO5ieVhCYqtXi+E+jRbza4xLObqkUuUo0jITqoQr2FbdepvXyXB4U3TYcevK1EmSj3xn5ZJyWUzemdg==
Received: from CO1NAM04FT047.eop-NAM04.prod.protection.outlook.com
	(10.152.90.53) by CO1NAM04HT052.eop-NAM04.prod.protection.outlook.com
	(10.152.91.98) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.715.13;
	Thu, 3 May 2018 19:41:29 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.90.54) by
	CO1NAM04FT047.mail.protection.outlook.com (10.152.90.126) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.715.13 via Frontend Transport; Thu, 3 May 2018 19:41:29 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0715.024;
	Thu, 3 May 2018 19:41:29 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PXE booting ISO image fails with message "Waiting for removable
	media..."
Thread-Index: AQHT4xa7kZ51esAEykaXqXu2cIV6uw==
Date: Thu, 3 May 2018 19:41:29 +0000
Message-ID: <MWHPR19MB11834493BB850310B51FF64CC5870@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.83558.1525373248.15860.yocto@yoctoproject.org>
In-Reply-To: <mailman.83558.1525373248.15860.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:08BEAA845EBEBBB7CBC51B1ADE2665E897A59A98D9A317EA42C9E1B0C9D6ED8E;
	UpperCasedChecksum:F925F9C444605D10932B4921CC22B2867FD2B50DD57728B174A5352AE380AFC0;
	SizeAsReceived:7080; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [L1kyssdLYLYSRa9LOX9Eyc7CE3mVktqg]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CO1NAM04HT052;
	7:sx92Kr+n+tOGjz3T6aE5m2U90t5T+UbIxr7cZNVSX4zWnw6UjZFbX1uR9zMMr3/7dx12qabmn9U5E/xAcpyXVQwm8cqes1ZIQwrAnKoKEuDdKpGAV5u8EQIjdJZhbjxdRW3R0TjNI93jfGiJ6XhhYjHiJhVH6vDn+iHX8fHXxKWVCIrMgoYiyuOKZH5vGaPfZzM9U6cWuD1PGTKA2v8MWEckVbPszow/CxRnbuRZKhFSGVdm5i+T2ZuAPENXz1QL
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:CO1NAM04HT052; 
x-ms-traffictypediagnostic: CO1NAM04HT052:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:CO1NAM04HT052; BCL:0; PCL:0; RULEID:; SRVR:CO1NAM04HT052; 
x-forefront-prvs: 066153096A
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:CO1NAM04HT052;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: 80v/mNQA3pYAc5P7ZcNT6KM92daY/R68TD0tjrDMuTNudtC0T3Mm3ffb2kyysFDkzOF7tqCTqmbMdtHPG1uL7Bk+HyHLPmskfWLemijVSdodxOt40PqXGR7JAtiN4ZkVBKBoZR7FMUSZmGj4G9DJJbO4n2NPso8QDV+smYxSB55sIGhaII4bXBkZ/+N4zGuz
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 75ec02a6-71da-4561-c4d1-08d5b12ddd95
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 75ec02a6-71da-4561-c4d1-08d5b12ddd95
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2018 19:41:29.1549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT052
Subject: Re: PXE booting ISO image fails with message "Waiting for removable media..."
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
X-List-Received-Date: Thu, 03 May 2018 20:14:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11834493BB850310B51FF64CC5870MWHPR19MB1183namp_"

--_000_MWHPR19MB11834493BB850310B51FF64CC5870MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Vincent,


I'd recently gone through similar issue that you're experiencing.  The "Wai=
ting for Removable Media" hang had been there for at least 7-8 years.  A wo=
rkaround was put in around 2013.  See here:

https://patchwork.openembedded.org/patch/42291/


Add "debugshell=3D30" (30 is in second, for timeout, or any other reasonabl=
e value that you like) to the append
statement in your pxelinux.cfg/default file.  Then you'd timeout when you "=
normally" hangs, break into a shell,
where you could initiate udhcpc to configure networking, after which you co=
uld transfer your bootable image onto
your RAM, and write out onto your HDD/SSD.

It seems this kernel boot option of debugshell isn't documented officially =
in kernel-parameters.txt file.

You could also look for init-live.sh on your yocto tree, and look for "Wait=
ing for Removable Media", and see the
surrounding code to get a fell how this debugshell thing works.

Raymond




Date: Thu, 3 May 2018 14:27:46 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] PXE booting ISO image fails with message "Waiting for
        removable media..."
Message-ID:
        <VI1P192MB01430B16A66D217CB44829098D870@VI1P192MB0143.EURP192.PROD.=
OUTLOOK.COM>

Content-Type: text/plain; charset=3D"utf-8"

Hi,

We want to deploy image created with Yocto (Rocko) via PXE.
The target board is a Intel-based SBC (AAEON GENE BT05).

At first, we tried with a ISO from Archlinux and the target-board successfu=
lly booted.

Then we create a ISO using Yocto but boot hangs with a message ?Waiting for=
 removable media ...?.
Googling this message points me to this post: http://thread.gmane.org/gmane=
.linux.embedded.yocto.general/20611 which relates exactly the same problem,=
 explain why the issue raises, gives an indication to how to fix .. and tha=
t?s all ?

So at this point, we know that the problem comes from the /recipes-core/ini=
trdscripts/files/init-live.sh file.
It seems searching for an /dev/sdx should be protected by a timeout set by =
default to 30 secs but during our trials, no timeout seems to exist.

What we do not understand, is how to highlight the differences between the =
Yocto-based and the Archlinux ISO files so that we can ?unblock? the boot u=
sing the Yocto-based ISO file.

Is the someone here how could help?

Thanks

Vincent


--_000_MWHPR19MB11834493BB850310B51FF64CC5870MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi Vincent,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I'd recently gone through similar=
 issue that you're experiencing. &nbsp;The &quot;Waiting for Removable Medi=
a&quot; hang had been there for at least 7-8 years. &nbsp;A workaround was =
put in around 2013. &nbsp;See here: &nbsp;</p>
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"87" style=
=3D"font-family: -webkit-standard; border-collapse: collapse; width: 65pt;"=
 class=3D"">
<colgroup><col width=3D"87" style=3D"width: 65pt;"></colgroup>
<tbody>
<tr height=3D"21" style=3D"height: 16pt;" class=3D"">
<td height=3D"21" width=3D"87" style=3D"padding-top: 1px; padding-right: 1p=
x; padding-left: 1px; font-size: 12pt; font-family: Calibri, sans-serif; ve=
rtical-align: bottom; border: none; white-space: nowrap; height: 16pt; widt=
h: 65pt;" class=3D"">
https://patchwork.openembedded.org/patch/42291/</td>
</tr>
<tr height=3D"21" style=3D"height: 16pt;" class=3D"">
<td height=3D"21" width=3D"87" style=3D"padding-top: 1px; padding-right: 1p=
x; padding-left: 1px; font-size: 12pt; font-family: Calibri, sans-serif; ve=
rtical-align: bottom; border: none; white-space: nowrap; height: 16pt; widt=
h: 65pt;" rowspan=3D"1" class=3D"">
<br>
</td>
</tr>
<tr height=3D"21" style=3D"height: 16pt;" class=3D"">
<td height=3D"21" width=3D"87" style=3D"padding-top: 1px; padding-right: 1p=
x; padding-left: 1px; font-size: 12pt; font-family: Calibri, sans-serif; ve=
rtical-align: bottom; border: none; white-space: nowrap; height: 16pt; widt=
h: 65pt;" rowspan=3D"1" class=3D"">
Add &quot;debugshell=3D30&quot; (30 is in second, for timeout, or any other=
 reasonable value that you like) to the append
<br>
statement in your pxelinux.cfg/default file. &nbsp;Then you'd timeout when =
you &quot;normally&quot; hangs, break into a shell,<br>
where you could initiate udhcpc to configure networking, after which you co=
uld transfer your bootable image onto<br>
your RAM, and write out onto your HDD/SSD.<br>
<br>
It seems this kernel boot option of debugshell isn't documented officially =
in kernel-parameters.txt file.<br>
<br>
You could also look for&nbsp;<span style=3D"font-size: 12pt;">init-live.sh =
on your yocto tree, and look for &quot;Waiting for Removable Media&quot;, a=
nd see the<br>
</span>surrounding code to get a fell how this debugshell thing works.<br>
<br>
Raymond</td>
</tr>
<tr height=3D"21" style=3D"height: 16pt;" class=3D"">
<td height=3D"21" width=3D"87" style=3D"padding-top: 1px; padding-right: 1p=
x; padding-left: 1px; font-size: 12pt; font-family: Calibri, sans-serif; ve=
rtical-align: bottom; border: none; white-space: nowrap; height: 16pt; widt=
h: 65pt;" rowspan=3D"1" class=3D"">
<br>
</td>
</tr>
</tbody>
</table>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Date: Thu, 3 May 2018 14:27:46 &#43;0000<br>
From: Vincent Daanen &lt;vincent.daanen@orthotaxy.com&gt;<br>
To: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;<br>
Subject: [yocto] PXE booting ISO image fails with message &quot;Waiting for=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; removable media...&quot;<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;VI1P192MB01430B16A66D217CB44=
829098D870@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi,<br>
<br>
We want to deploy image created with Yocto (Rocko) via PXE.<br>
The target board is a Intel-based SBC (AAEON GENE BT05).<br>
<br>
At first, we tried with a ISO from Archlinux and the target-board successfu=
lly booted.<br>
<br>
Then we create a ISO using Yocto but boot hangs with a message ?Waiting for=
 removable media ...?.<br>
Googling this message points me to this post: <a href=3D"http://thread.gman=
e.org/gmane.linux.embedded.yocto.general/20611" id=3D"LPlnk645940" previewr=
emoved=3D"true">
http://thread.gmane.org/gmane.linux.embedded.yocto.general/20611</a> which =
relates exactly the same problem, explain why the issue raises, gives an in=
dication to how to fix .. and that?s all ?<br>
<br>
So at this point, we know that the problem comes from the /recipes-core/ini=
trdscripts/files/init-live.sh file.<br>
It seems searching for an /dev/sdx should be protected by a timeout set by =
default to 30 secs but during our trials, no timeout seems to exist.<br>
<br>
What we do not understand, is how to highlight the differences between the =
Yocto-based and the Archlinux ISO files so that we can ?unblock? the boot u=
sing the Yocto-based ISO file.<br>
<br>
Is the someone here how could help?<br>
<br>
Thanks<br>
<br>
Vincent<br>
<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB11834493BB850310B51FF64CC5870MWHPR19MB1183namp_--
