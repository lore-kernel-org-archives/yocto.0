Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web10.13306.1605809734879160204
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:15:35 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=C1OuCbsa;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Wed, 18 Nov 2020 13:39:36 +0000
X-Sender: bounce+53643+51420+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 10107
X-Received: by 127.0.0.2 with SMTP id G965YY3619394x8VVy4lR3wr; Wed, 18 Nov 2020 05:36:47 -0800
X-Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.23630.1605704998070368465 for <yocto@lists.yoctoproject.org>; Wed, 18 Nov 2020 05:10:03 -0800
IronPort-PHdr: =?us-ascii?q?9a23=3ARd7emxAItSyUzWPe6vG0UyQJP3N1i/DPJgcQr6Af?= =?us-ascii?q?oPdwSPXzo8bcNUDSrc9gkEXOFd2Cra4d1KyP6P2rBTxIyK3CmUhKSIZLWR4BhJ?=
 =?us-ascii?q?detC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIBxrwKxd+?= =?us-ascii?q?KPjrFY7OlcS30P2594HObwlSizexfLF/IA+roQjftsQajoRvJ6UswRbVv3VEfP?=
 =?us-ascii?q?hby3l1LlyJhRb84cmw/J9n8ytOvv8q6tBNX6bncakmVLJUFDspPXw7683trhnD?= =?us-ascii?q?UBCA5mAAXWUMkxpHGBbK4RfnVZrsqCT6t+592C6HPc3qSL0/RDqv47t3RBLulS?=
 =?us-ascii?q?wKMSMy/mPKhcxqlK9VoAyvqQFjw4DaY4+VNeZxcazGcNwAWWZBXNxcWzBdDo+i?= =?us-ascii?q?aYYEEuoPPfxfr4n4v1YCoxywBQ6qBOP01DBHmGT20bUn2Oo8DQHJwhIgEMwIsH?=
 =?us-ascii?q?/Jstj+KaMeXu6owqXNwznIcvRb2Szh6IfWbBAuv/eMUah1ccrWz0kvDB3KgUuL?= =?us-ascii?q?qYH+JDyazPoCs3Ob7up7SeKglWsnqxprrjezwccsj5DEi4QIwV/L6St32pw6Jc?=
 =?us-ascii?q?GkSEFle96kFoNduS+UOoZqQ84vQWBltDgnxrAYupO2fCwHxZsoyhLCZfKKc4eG?= =?us-ascii?q?7g/nWeuTITp1i3NodK+hihu28kWtyfDxWtS73ltMsyFLkcHMu2gQ2xDP8MSKRP?=
 =?us-ascii?q?lw8l281TuL2Q3f8OBJLEAsmabGN5It2LE9m5UJvUnHBCP7m0f7gamLfUs+4Oeo?= =?us-ascii?q?8f7oYrD+q5+ZMI97lx/xP7w1msy6HeQ4Kg8OX3WH+eik1L3s40n5QLJSg/0oiK?=
 =?us-ascii?q?bZsJbaJcEApqO9BwJY1pov5wulAzegytsUh2III0hbdxKcj4npIE3OL+79Dfek?= =?us-ascii?q?mVijjDBrx/XeMr3gBJXCMGTDna/8cbph8UJRxgg+wcpC659QBLwNOvP+V0/puN?=
 =?us-ascii?q?zdFBA5Mgi0w+j9CNV604MTQXmPArOHP6PMr1CI4PgjI+yLZI8TozbyNeYq5+X1?= =?us-ascii?q?gHAig1ASY7Kp3JsMaHCkAPtmJl6ZbWDwjdcGFGcGphA+Q/DyiF2eTT5TYG6/Xq?=
 =?us-ascii?q?I75j4nFIKmCpzORoSsgLyawCe7BYdaZ2BBCl+QDXfocJ2EW+0LaCKQPMBujiAE?= =?us-ascii?q?WaKmS4872hH9/DP9nvB2KeHI/QUctIn/z55k4ObPkgko8j55BNjb1HuCBSkgj2?=
 =?us-ascii?q?QDWzge2KFkvVc721CIza9gmftaGNdPofRTXVFpG4TbyrkwLtf0QQ/MZZPBc0qr?= =?us-ascii?q?XNigSRp5Du8KgpVGN11hFsuviFbG2CyxDrIOv7aCCYcl6b7R2mO3LMF4nSWVnJ?= =?us-ascii?q?I9hkUrF5McfVatgbRyolDe?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D7BACeG7Vf/0HBJQpigQmCcoF7gUCyC?= =?us-ascii?q?AsBAQEBAQEBAQEIAS8EAQGGciY4EwIQAQEGAQEBAQEGBAGGUguCNyKDTV4BDHQ?=
 =?us-ascii?q?mAQQbgx+BfrAYgTSFV4R0CQGBLo8dPo8VBJsGnS8HA4JtmxAroXqTU6BXAgQCB?= =?us-ascii?q?AUCFYFrgXpwgzpPFwINnGiBKwIGCgEBAwmNN4ERAQE?=
X-IPAS-Result: =?us-ascii?q?A2D7BACeG7Vf/0HBJQpigQmCcoF7gUCyCAsBAQEBAQEBAQE?= =?us-ascii?q?IAS8EAQGGciY4EwIQAQEGAQEBAQEGBAGGUguCNyKDTV4BDHQmAQQbgx+BfrAYg?=
 =?us-ascii?q?TSFV4R0CQGBLo8dPo8VBJsGnS8HA4JtmxAroXqTU6BXAgQCBAUCFYFrgXpwgzp?= =?us-ascii?q?PFwINnGiBKwIGCgEBAwmNN4ERAQE?=
X-IronPort-AV: E=Sophos;i="5.77,486,1596499200";    d="scan'208,217";a="326854310"
X-IronPort-AV: E=Sophos;i="5.77,486,1596499200";    d="scan'208,217";a="446884464"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto] #yocto
Thread-Topic: #yocto 
Thread-Index: Ada9q0Gah+MAkjdpRLyRArogF5D01g==
Date: Wed, 18 Nov 2020 13:08:05 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
X-OldMsgId: <MADEUP.16489C3168A7B111.27344@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
Reply-To: steven.monsees@baesystems.com
List-Post: <mailto:yocto@lists.yoctoproject.org>
X-Gm-Message-State: ascrW15GBSsbzz2GCxTJFnlsx3618059AA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605706607; bh=LAqR+ft84Gl445+562csBdPb8yW5q8XA1V0J9NNFsjk=; h=Content-Type:Date:From:Reply-To:Subject:To;
 b=C1OuCbsaOum2VPZuVBge7PmWDDkz0wfAzskvu/DrHG/s/IdXZWGY0/2L6LjevwDST4R KLVth/i/gYy+awG7pLAu5+S57S0JxsZ85pm6D5r05Fi87qn775AL+MmpizJYIeASC4JPZ 787YDXsI0A6DNpAmS8FBy+n75r0lsmJZegw=
Return-Path: bounce+53643+51420+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <ca593f54caba45ed8b42487551ae0bb1@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="OUK06Sd21LK2stKzKhqx"

--OUK06Sd21LK2stKzKhqx
Content-Language: en-US
Content-Type: multipart/alternative;boundary="_000_45d9ca1045ed4bd58b91be394f47240fbaesystemscom_"

--_000_45d9ca1045ed4bd58b91be394f47240fbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {E85EE016-9477-4C56-BB37-47E48C9B22D5}


I was going through the kernel boot output and saw the following output, c=
an someone tell me why this might be popping up and how I might modify conf=
iguration to resolve? :
.
.
LIMWS (BAE LIMWS base distro) 3.0.4 sbcb-default ttyS0

-sh: cannot set terminal process group (1137): Inappropriate ioctl for dev=
ice
-sh: no job control in this shell
.
.

Thanks,
Steve




--_000_45d9ca1045ed4bd58b91be394f47240fbaesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {80265EA3-A4F1-420B-B028-EB3DA4E9D859}

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--

@font-face
	{font-family:"cambria math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}

p.msonormal, li.msonormal, div.msonormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"calibri",sans-serif;}
a:link, span.msohyperlink
	{mso-style-priority:99;
	color:#0563c1;
	text-decoration:underline;}
a:visited, span.msohyperlinkfollowed
	{mso-style-priority:99;
	color:#954f72;
	text-decoration:underline;}
span.emailstyle17
	{mso-style-type:personal-compose;
	font-family:"calibri",sans-serif;
	color:windowtext;}
.msochpdefault
	{mso-style-type:export-only;
	font-family:"calibri",sans-serif;}
@page wordsection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.wordsection1
	{page:wordsection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"> &nbsp; </p>
<p class=3D"MsoNormal">I was going through the kernel boot output and saw th=
e following output, can someone tell me why this might be popping up and how=
 I might modify configuration to resolve? :  </p>
<p class=3D"MsoNormal">.  </p>
<p class=3D"MsoNormal">.  </p>
<p class=3D"MsoNormal">LIMWS (BAE LIMWS base distro) 3.0.4 sbcb-default ttyS=
0  </p>
<p class=3D"MsoNormal"> &nbsp; </p>
<p class=3D"MsoNormal"><span style=3D"color:red">-sh: cannot set terminal pr=
ocess group (1137): Inappropriate ioctl for device  </span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">-sh: no job control in this=
 shell  </span></p>
<p class=3D"MsoNormal">.  </p>
<p class=3D"MsoNormal">.  </p>
<p class=3D"MsoNormal"> &nbsp; </p>
<p class=3D"MsoNormal">Thanks,  </p>
<p class=3D"MsoNormal">Steve  </p>
</div>
</body>
</html>

--_000_45d9ca1045ed4bd58b91be394f47240fbaesystemscom_--

--OUK06Sd21LK2stKzKhqx--
