Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5129.1580117556452396689
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 01:32:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sdcsystems.com, ip: 140.211.169.56, mailfrom: andy.pont@sdcsystems.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F20ECE01629; Mon, 27 Jan 2020 01:32:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [216.40.44.83 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
X-Greylist: delayed 523 seconds by postgrey-1.32 at yocto-www; Mon, 27 Jan 2020 01:32:34 PST
Received: from smtprelay.hostedemail.com (smtprelay0083.hostedemail.com [216.40.44.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8FEE01509
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 01:32:34 -0800 (PST)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com [10.5.19.251])
	by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 8EB981801BEB3
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 09:23:51 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 2806C8E5C;
	Mon, 27 Jan 2020 09:23:50 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: smile67_43e8402da925
X-Filterd-Recvd-Size: 5355
Received: from [192.168.10.100] (leeshill.plus.com [81.174.243.117])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf20.hostedemail.com (Postfix) with ESMTPA;
	Mon, 27 Jan 2020 09:23:49 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: JH <jupiter.hce@gmail.com>, "Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: [yocto] lost busybox mysteriously
Cc: linux-mtd <linux-mtd@lists.infradead.org>, connman <connman@lists.01.org>
Date: Mon, 27 Jan 2020 09:23:47 +0000
Message-Id: <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
In-Reply-To: <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
Reply-To: "Andy Pont" <andy.pont@sdcsystems.com>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MB9C799271-6657-42C5-81A8-3FB468B099E0"

--------=_MB9C799271-6657-42C5-81A8-3FB468B099E0
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

JH wrote...=0A=0A>That the same problem of missing busybox was not just occ=
urred during=0A>the device running in the middle of operation, it was also=
 occurred=0A>during booting image from NAND, I saw several times that the fi=
rst and=0A>second cycles of booting image from NAND were working well, then =
some=0A>following booting process would be crashed by missing busybox, the=
n=0A>could not run whole shell commands. I have been pondering if it could=
=0A>be caused by NAND issue or network virus / fishy? Appreciate any=0A>clu=
es.=0AThe first step is for us to understand what =E2=80=9Cmissing=E2=80=9D =
means?  Have you =0Agot any mechanism (U-Boot, SD card boot, etc.) that wi=
ll allow you to =0Amount and look at the contents of the NAND file system?=
=0A=0AIf you look at the /bin directory (ls -la /bin/busy*) what do you see=
?  =0AHave the files been deleted? Truncated? Zero length?=0A=0AWhat file s=
ystem are you using on the NAND flash?  How are the devices =0Abeing reset=
 during the various boot cycles?  If it is a hardware reset =0Athen some fil=
e systems are less resilient to it than others but I would =0Aexpect in tha=
t case more fundamental boot issues.=0A=0A-Andy.=0A=0A=0A=0A

--------=_MB9C799271-6657-42C5-81A8-3FB468B099E0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div><div>JH wrote...</div>=0A</div><div><br /></div>=
=0A<div id=3D"x0b8a654993cb4e8"><blockquote type=3D"cite" class=3D"cite2"><=
div class=3D"plain_line">That the same problem of missing busybox was not j=
ust occurred during</div>=0A<div class=3D"plain_line">the device running in =
the middle of operation, it was also occurred</div>=0A<div class=3D"plain_=
line">during booting image from NAND, I saw several times that the first an=
d</div>=0A<div class=3D"plain_line">second cycles of booting image from NAN=
D were working well, then some</div>=0A<div class=3D"plain_line">following=
 booting process would be crashed by missing busybox, then</div>=0A<div clas=
s=3D"plain_line">could not run whole shell commands. I have been pondering=
 if it could</div>=0A<div class=3D"plain_line">be caused by NAND issue or ne=
twork virus / fishy? Appreciate any</div>=0A<div class=3D"plain_line">clues=
.</div></blockquote>The first step is for us to understand what =E2=80=9Cmi=
ssing=E2=80=9D=C2=A0means? =C2=A0Have you got any mechanism (U-Boot, SD car=
d boot, etc.) that will allow you to mount and look at the contents of the=
 NAND file system?</div><div id=3D"x0b8a654993cb4e8"><br /></div><div id=3D"=
x0b8a654993cb4e8">If you look at the /bin directory (ls -la /bin/busy*) wha=
t do you see? =C2=A0Have the files been deleted? Truncated? Zero length?</d=
iv><div id=3D"x0b8a654993cb4e8"><br /></div><div id=3D"x0b8a654993cb4e8">Wh=
at file system are you using on the NAND flash? =C2=A0How are the devices b=
eing reset during the various boot cycles? =C2=A0If it is a hardware reset=
 then some file systems are less resilient to it than others but I would exp=
ect in that case more fundamental boot issues.</div><div id=3D"x0b8a654993c=
b4e8"><br /></div><div id=3D"x0b8a654993cb4e8">-Andy.</div><div id=3D"x0b8a=
654993cb4e8"><br /></div><div id=3D"x0b8a654993cb4e8"><br /></div><div id=
=3D"x0b8a654993cb4e8"><br /></div><div id=3D"x0b8a654993cb4e8"><br /></div>=
<div id=3D"x0b8a654993cb4e8"><blockquote type=3D"cite" class=3D"cite2"><blo=
ckquote type=3D"cite" class=3D"cite">=0A</blockquote>=0A</blockquote></div>=
=0A=0A=0A</body></html>

--------=_MB9C799271-6657-42C5-81A8-3FB468B099E0--
