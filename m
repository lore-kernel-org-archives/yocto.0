Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [40.92.5.80])
 by mx.groups.io with SMTP id smtpd.web11.10238.1583940202623603613
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 08:23:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@msn.com header.s=selector1 header.b=DGiLdkwX;
 spf=pass (domain: msn.com, ip: 40.92.5.80, mailfrom: cashtrevor@msn.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H9NMNdaTQbLx6A/Nz4fbkCUMoFrvl3gXtyOJ2vgY6DTkkUZk3+zxs9yg9cxCJcb53Usq5VK9PchjwbJFPYZxAjkMP/EGfJn68vv8U23/pcvw6y7nEWfd9rAiBdBYx1PCHgf1BlYmUW33G4/Ybqdst44ahmvy1Ek3Mv/NFtim3v54HqwbdPFf0YoICVA2FviO4Vg4aX9RaPZ0TL7u03lz7jorM42P4I7sP1oFlPIfNbiM/3eJrURWD1SDk2AdbGcJsX2ltJ5gelITtdk0AgA5ZFOlpPJibrbGBjg01NuQ5k+njNq/CyhG9qBx6JHGKQ2nLOi7X3GDMoF0G95qCYMyIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7mhqpJXTYlDwU3s/EMJLGfTW1ASRn5RcbXGYdlSfBEY=;
 b=QovJ0/LCmkSnRpOM5xsYG4q8/1R3uv59LFKa0FF48358L6RZCiScviTIkgYbBgpeXJIXd/eZfL/8hAm6ZyXRNZc9KW3SFpCILJWuQP1vyQAM2rdTL1rrK/UpSAxHNwR3Cuu92l+cBBkyhqftwkEym8JiZoDx9EybPY3yta+AwM8uJYFZQDMZkkHG6LCGeji/PWKdvve3aMNYAX5juPnQ/Ysje7Ii+t2VQam2NkRuPX4FKfHBrpjhjDFJhQXbwzE0e7SEMeQFtIPjTT9sPAQ0fsKSMd04hR6mObKM3zMfDlYeTS7dm/XgEYmMdLQisczIAlOGI56IEyVAThxeegYaXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7mhqpJXTYlDwU3s/EMJLGfTW1ASRn5RcbXGYdlSfBEY=;
 b=DGiLdkwX0rrTHQotmqBKOBC8SZHeVQpNBo/pWTJslb27XW2pu28CBgyQ/3ovfEPydNrRXCnPIBBSYGAQAMZCzbbyTvcvukx9qvXkaWzh1XRqVnhxxDziQh56k7f0OBUUl+KNpW1AHojJsU3PyZ7OKvYz8HdfXERapYQifnqPMwO36nbwBrqlx0V3QHx72I487sLiTesDen/+/yccTxl+I27Fa7tpyciE9GMUfcp3NeJXLXod881ScqNGru7yQdZDRP95N/h1mEukBc9YzP2v2n+/gEn5Ggxa/z/P6OM5BB9mHoNC1U7OjjIQzGbV2Np3EdgUF2WBX7Rn+obRDnevTw==
Received: from CY1NAM02FT018.eop-nam02.prod.protection.outlook.com
 (10.152.74.58) by CY1NAM02HT216.eop-nam02.prod.protection.outlook.com
 (10.152.74.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Wed, 11 Mar
 2020 15:23:21 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (10.152.74.60) by
 CY1NAM02FT018.mail.protection.outlook.com (10.152.75.183) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Wed, 11 Mar 2020 15:23:21 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8%5]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 15:23:21 +0000
From: "Trevor" <cashtrevor@msn.com>
To: Nicolas Jeker <n.jeker@delisys.ch>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Uboot NetBoot IMX8
Thread-Topic: [yocto] Uboot NetBoot IMX8
Thread-Index: AQHV9zw24cLkj+4cIUa9YwzcshfwgqhDAw0AgAB/iPQ=
Date: Wed, 11 Mar 2020 15:23:21 +0000
Message-ID: 
 <CH2PR13MB33685CB9DDF2C2E5C637FADBD4FC0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: 
 <CH2PR13MB33689C78CFAB378C4CB7011CD4FC0@CH2PR13MB3368.namprd13.prod.outlook.com>,<4734dd8b227d1c9870e4528ebb68feb3786fe829.camel@delisys.ch>
In-Reply-To: <4734dd8b227d1c9870e4528ebb68feb3786fe829.camel@delisys.ch>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:EFE2344F924C7529E046367DBEF7CDA65EB9193C3C94218BA5047BAEC7AC46ED;UpperCasedChecksum:40FFB22165037B4E17078CE3FFA117065BE625C56D318DE603FB632622BEF5C0;SizeAsReceived:6987;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [5dj2Qcj8g8jjy0Vh7wc9CxZtaR4prk0L]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 3e8cbb3a-97e4-4c5d-4394-08d7c5d02267
x-ms-traffictypediagnostic: CY1NAM02HT216:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0n6jN7UEUQJtFdx18LlU5+3bbKuwgqlqTbYELvCV3yha14L79kO1mRf3KG0Q1adZ4fh0gg0OKRjVAl2ShOdKbPabz4ZLkeKtGPmAu1MgcLDpKlv03u9SEnLepvvloyDn9WU+jpXof+3bxYzEAG1z9w1VKh3rVM0/yR1QGFhJHAJvof01sA67npVfi8yis5/8J7S4XSj3asiX9DVQAgLb8M8vht2ko2t4UnCZwL3M8F4=
x-ms-exchange-antispam-messagedata: 
 +eOnhFT1TVTyvJel1zmAtPu+vu1ZpZJbAR1pIlyoCBdfSuTBwLgOk9CxFamoHjpsWDk1Gqvmbiak7l2C0FGXEfIq+DXDjj1CS5LIWHRCnzSH34zECMveIRiK71Qs3nEG4TWCbRIdzuMXGSHV9kXXug==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8cbb3a-97e4-4c5d-4394-08d7c5d02267
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 15:23:21.6527
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1NAM02HT216
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH2PR13MB33685CB9DDF2C2E5C637FADBD4FC0CH2PR13MB3368namp_"

--_000_CH2PR13MB33685CB9DDF2C2E5C637FADBD4FC0CH2PR13MB3368namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,


Thanks!

Extracting as root did the trick, I was extracting using the desktop extrac=
ter before.

I didnt end up adding fsid=3Droot option because that caused it not to moun=
t at all for some reason.

Thanks,
Trevor




Get Outlook for Android<https://aka.ms/ghei36>

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Nicolas Jeker <n.jeker@delisys.ch>
Sent: Wednesday, March 11, 2020, 1:43 AM
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Uboot NetBoot IMX8

On Wed, 2020-03-11 at 00:39 +0000, Trevor wrote:
> > Mar 11 00:21:16 b2qt-b9-imx8mq mount[2611]: mount: only root can
> > use "--types" option (effective UID is 1000)
>
>
> The mount error seems prevalent across all the errors.  somehow UID
> is 1000 when it should be 0 during boot?

By googling the error message I found a thread where somebody has the
same question, but I wouldn't recommend following the advice there
(running the yocto build as root). How do you extract the root
filesystem to your NFS directory? Maybe something is wrong there and
the files get extracted with UID 1000 as owner. For reference, I use
this command which seems to work fine:

sudo tar --strip-components=3D1 -C /srv/nfs/rootfs -xf images/apalis-
imx6-mainline/Apalis-iMX6-Mainline_Image.rootfs.tar.xz

Also check that there are no setuid/setgid bits set.

> On the Host side, here are the /etc/exports options for NFS:
>  *(rw,sync,insecure,no_subtree_check,no_root_squash)

I'm using pretty much the same NFS options, the only difference I could
spot is an additional 'fsid=3Droot' in my exports which is NFSv4
specific.



--_000_CH2PR13MB33685CB9DDF2C2E5C637FADBD4FC0CH2PR13MB3368namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
Hi Nicolas,</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
Thanks!</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
Extracting as root did the trick, I was extracting using the desktop extrac=
ter before.</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
I didnt end up adding fsid=3Droot option because that caused it not to moun=
t at all for some reason.</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
Thanks,</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
Trevor</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
 text-align: left;" dir=3D"auto">
<br>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
Get <a href=3D"https://aka.ms/ghei36">Outlook for Android</a></div>
<div id=3D"id-534f427d-7cd3-40de-b0bf-fdf7894d1bbd" class=3D"ms-outlook-mob=
ile-reference-message">
<div style=3D"font-family: sans-serif; font-size: 12pt; color: rgb(0, 0, 0)=
;"><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg"><strong>From:</strong> yocto@lists.yoctoproject.o=
rg &lt;yocto@lists.yoctoproject.org&gt; on behalf of Nicolas Jeker &lt;n.je=
ker@delisys.ch&gt;<br>
<strong>Sent:</strong> Wednesday, March 11, 2020, 1:43 AM<br>
<strong>To:</strong> yocto@lists.yoctoproject.org<br>
<strong>Subject:</strong> Re: [yocto] Uboot NetBoot IMX8<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style><font size=3D"=
2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText">On Wed, 2020-03-11 at 00:39 &#43;0000, Trevor wrot=
e:<br>
&gt; &gt; Mar 11 00:21:16 b2qt-b9-imx8mq mount[2611]: mount: only root can<=
br>
&gt; &gt; use &quot;--types&quot; option (effective UID is 1000)<br>
&gt; <br>
&gt; <br>
&gt; The mount error seems prevalent across all the errors.&nbsp; somehow U=
ID<br>
&gt; is 1000 when it should be 0 during boot?<br>
<br>
By googling the error message I found a thread where somebody has the<br>
same question, but I wouldn't recommend following the advice there<br>
(running the yocto build as root). How do you extract the root<br>
filesystem to your NFS directory? Maybe something is wrong there and<br>
the files get extracted with UID 1000 as owner. For reference, I use<br>
this command which seems to work fine:<br>
<br>
sudo tar --strip-components=3D1 -C /srv/nfs/rootfs -xf images/apalis-<br>
imx6-mainline/Apalis-iMX6-Mainline_Image.rootfs.tar.xz<br>
<br>
Also check that there are no setuid/setgid bits set.<br>
<br>
&gt; On the Host side, here are the /etc/exports options for NFS:<br>
&gt;&nbsp; *(rw,sync,insecure,no_subtree_check,no_root_squash)<br>
<br>
I'm using pretty much the same NFS options, the only difference I could<br>
spot is an additional 'fsid=3Droot' in my exports which is NFSv4<br>
specific.<br>
<br>
</div>
</span></font><br>
</div>
</body>
</html>

--_000_CH2PR13MB33685CB9DDF2C2E5C637FADBD4FC0CH2PR13MB3368namp_--
