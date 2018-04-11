Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22127E008A2; Thu, 12 Apr 2018 06:05:48 -0700 (PDT)
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
	no *      trust *      [40.92.6.28 listed in list.dnswl.org]
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
X-Greylist: delayed 82994 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Apr 2018 06:05:45 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-oln040092006028.outbound.protection.outlook.com [40.92.6.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4392EE00708
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 06:05:45 -0700 (PDT)
Received: from BY2NAM03HT227.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e4a::475) by
	CO1NAM03HT229.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e48::402) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.8;
	Wed, 11 Apr 2018 06:29:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=eWUJu7PDCFZyaYJvAQ/35SdKe7oWZh/FHtohEBssNHM=;
	b=Z4FnyoO13z4NnOTGMbFy5qYkbhMDjzbtfihoa7xUUDKLnJt8/0KTmeWkhjDlynXV0edQZJ4zpDNhpmb/z2+9rjSCkjHs2Yq0+NWEPCFO7yqHCPG1KeeLQi9MkmjEL47ZwxfsEw9frDDYIjXtWVBGzXU1p/PDV/D88D36OCRNmBeoV6UJQNB5Z+YDPjSpDsTi7K7mnPh8/8d7CiD1wPO29ZGBDWcsIr+WlOw2xDr2YlJ1Mzhv3V3fcbaLO6JxaF6/7crRixgNHhDKdYfzSAjAbOQuv/SXwQm5CLogjxZmrzMaLgsJ29ZyaLfR1WX0Aoi4yH2/y9PkSGPnimxcVb+i7g==
Received: from BY2NAM03FT005.eop-NAM03.prod.protection.outlook.com
	(10.152.84.57) by BY2NAM03HT227.eop-NAM03.prod.protection.outlook.com
	(10.152.85.219) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.8;
	Wed, 11 Apr 2018 05:54:36 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.84.59) by
	BY2NAM03FT005.mail.protection.outlook.com (10.152.84.94) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.8 via Frontend Transport; Wed, 11 Apr 2018 05:54:35 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0653.015;
	Wed, 11 Apr 2018 05:54:35 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Boot Question
Thread-Index: AQHT0O/6gwl+jwmcWUK7Bu54LcEQmKP6/oKAgAAQMVk=
Date: Wed, 11 Apr 2018 05:54:35 +0000
Message-ID: <MWHPR19MB118371EB4528E99F098F0BBBC5BD0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB11834B837C90D26A2F737FE4C5BE0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<MWHPR15MB1760096987CE2D2371B9FE0DF0BD0@MWHPR15MB1760.namprd15.prod.outlook.com>
In-Reply-To: <MWHPR15MB1760096987CE2D2371B9FE0DF0BD0@MWHPR15MB1760.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B6CCF0374302326C6779D30BEB42E14656680A5607290E2E68981242E4C1B295;
	UpperCasedChecksum:669094886C677B33B15EBADDFE9A600CCD8984FDF3181FC6420471106FA2123D;
	SizeAsReceived:7310; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [MJ22G0SzFjtmrb2t5yuapkoo7goCyl7UZus86woPhXV1SVfyFucFLZlEiDNdghVF]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY2NAM03HT227;
	7:SIDSidHwfExaT4ZdNqu1QE/aiqiGym9BoJ4e/Bly7oYyMhpR/uYIbJuKigyv7WB4yr70g/bDCIMZODVk3+Yohuwg48TlB12p6iLTYILYcxy+PGEpcsEJG0lBJcrkDTOD872xdFE3GTYQQ+ckwCNxWY9YWFjEMDa5YDzt6nZTdktpsQ2R+IF43r2Xvwwcb0tg1wG6m8nYWNDOZgBFLcpRLswGvWQWhdyiZ7GIaGLi9QWjsKSOvTsxuC+EMcOrJ8QS
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BY2NAM03HT227; 
X-MS-TrafficTypeDiagnostic: BY2NAM03HT227:|BY2NAM03HT227:|CO1NAM03HT229:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BY2NAM03HT227; BCL:0; PCL:0; RULEID:; SRVR:BY2NAM03HT227; 
x-forefront-prvs: 0639027A9E
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BY2NAM03HT227;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: Yemu7ZZ44znlWDNZKlKQLT7KEj5Y14ZXCtjvR94RKeVo6V2/oqvjNaTxnsXTwpQKoei0h5MDbMecUPInt7htxGQaM1obvKuB0ryV70pBUXotDNGxzHhB/k69Tz0VIp4Q45c5hsQi8XJBzmHEYqX8/ntQkm4uTuzw9GMCcv2coj1F9z4Q/Km2tkl0pYp985M9
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 4fc40534-7850-401d-6737-08d59f70b4af
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fc40534-7850-401d-6737-08d59f70b4af
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2018 05:54:35.6684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM03HT227
X-Microsoft-Exchange-Diagnostics: 1; CO1NAM03HT229;
	23:Z1znbB1hOjjsvbvYnM1VGmi6mzAh/mDIl5HaRI79IsrRG67VCWMzLx/96WR+qqT67rk3ZkXqyDDLOTm6OFly+8AUJ6ajxCyD2weXtB4OAgJH8uA9tJZFnA29OdRolG+hgooAqYvBZN46E8iPhkoQ1Q==
X-OriginatorOrg: hotmail.com
Subject: Re: Yocto Boot Question
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
X-List-Received-Date: Thu, 12 Apr 2018 13:05:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB118371EB4528E99F098F0BBBC5BD0MWHPR19MB1183namp_"

--_000_MWHPR19MB118371EB4528E99F098F0BBBC5BD0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I actually resolved my first issue today - the install on SSD from USB thum=
b drive's .hddimg seemed correct.  There're probably user's prompts on the =
boot console that I didn't pay attention to at first (I used COM1, which wa=
sn't the boot console).  I'd tried removing thumb drive, and changed boot o=
rder to use the SSD, and it worked.


I'd even made some progress on the network-boot client side.  The key steps=
 for me were to switch to UEFI Standard instead of Legacy mode.  Then enabl=
ed PXE option ROM Launch.  This would create a few network devices (with IP=
v4 and IPv6 options) to support PXE.  I now focus on the server side.  Hope=
fully, I will have some good news to share shortly.


My eval board is based on Intel's Broadwell DE (Camelback Mountain BSP) fro=
m Intel.  Machine type is intel-corei7-64.  Hope this help.


Raymond


________________________________
From: Mohammad, Jamal M <MohammadJamal.Mohiuddin@ncr.com>
Sent: Tuesday, April 10, 2018 9:48 PM
To: Raymond Yeung; yocto@yoctoproject.org
Subject: RE: Yocto Boot Question


I also faced a similar issue while installing on Intel machine, switching t=
o other machine I was able to install and boot successfully.. I have not tr=
ied network boot option..



Which is the board you are using and what is the machine type?



Regards,

Jamal



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Raymond Yeung
Sent: Tuesday, April 10, 2018 10:53 PM
To: yocto@yoctoproject.org
Subject: [yocto] Yocto Boot Question



Hi,



I've successfully booted a BSP using USB thumb drive (.hddimg type).  I've =
two follow-up questions -



  1.  The BIOS offers "Serial Install" which seems to copy the USB boot ima=
ge over to SSD.  Would SSD be using the same .hddimg type?  Right now, afte=
r the above install, when I switch boot order to try both SSD (0 and 1), bo=
oting doesn't seem to work.
  2.  When using network boot option, what image type should I use?



It would be great if details have already been documented somewhere.



Thanks,

Raymond

--_000_MWHPR19MB118371EB4528E99F098F0BBBC5BD0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I actually resolved my first issu=
e today - the install on SSD from USB thumb drive's .hddimg seemed correct.=
 &nbsp;There're probably user's prompts on the boot console that I didn't p=
ay attention to at first&nbsp;(I used COM1,
 which wasn't the boot console). &nbsp;I'd tried removing thumb drive, and =
changed boot order to use the SSD, and it worked.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I'd even made some progress on th=
e network-boot client side. &nbsp;The key steps for me were to switch to UE=
FI Standard instead of Legacy mode. &nbsp;Then enabled PXE option ROM Launc=
h. &nbsp;This would create a few network devices
 (with IPv4 and IPv6 options) to support PXE. &nbsp;I now focus on the serv=
er side. &nbsp;Hopefully, I will have some good news to share shortly.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">My eval board is based on Intel's=
 Broadwell DE (Camelback Mountain BSP) from Intel. &nbsp;Machine type is in=
tel-corei7-64. &nbsp;Hope this help.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mohammad, Jamal M &lt=
;MohammadJamal.Mohiuddin@ncr.com&gt;<br>
<b>Sent:</b> Tuesday, April 10, 2018 9:48 PM<br>
<b>To:</b> Raymond Yeung; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: Yocto Boot Question</font>
<div>&nbsp;</div>
</div>
<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif">I also faced a similar issue while installing on=
 Intel machine, switching to other machine I was able to install and boot s=
uccessfully.. I have not tried network boot option..</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif">Which is the board you are using and what is the=
 machine type?</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif">Regards,</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif">Jamal</span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-size:11.0pt; font-family:&quot=
;Calibri&quot;,sans-serif">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_MsoNormal"><b><span style=3D"font-size:11.0pt; font-family:&q=
uot;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0=
pt; font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject=
.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Raymond Yeung<br>
<b>Sent:</b> Tuesday, April 10, 2018 10:53 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Yocto Boot Question</span></p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div id=3D"x_divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Hi,</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
I've successfully booted a BSP using USB thumb drive (.hddimg type). &nbsp;=
I've two follow-up questions -</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<ol start=3D"1" type=3D"1">
<li class=3D"x_MsoNormal" style=3D"color:black"><span style=3D"font-family:=
&quot;Calibri&quot;,sans-serif">The BIOS offers &quot;Serial Install&quot; =
which seems to copy the USB boot image over to SSD. &nbsp;Would SSD be usin=
g the same .hddimg type? &nbsp;Right now, after the above install, when
 I switch boot order to try both SSD (0 and 1), booting doesn't seem to wor=
k.</span></li><li class=3D"x_MsoNormal" style=3D"color:black"><span style=
=3D"font-family:&quot;Calibri&quot;,sans-serif">When using network boot opt=
ion, what image type should I use?</span></li></ol>
<p class=3D"x_MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,san=
s-serif; color:black">&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
It would be great if details have already been documented somewhere.</span>=
</p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
&nbsp;</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Thanks,</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
Raymond</span></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB118371EB4528E99F098F0BBBC5BD0MWHPR19MB1183namp_--
