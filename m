Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E131E0027E
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 14:25:11 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Fri, 12 Oct 2012 15:25:11 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Fri, 12 Oct 2012 15:25:10 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Fri, 12 Oct 2012 15:25:10 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Writable root filesystem - disable automount of drives
Thread-Index: Ac2owA4gZK7/FlvpRvuUcc9VJ6T2ag==
Date: Fri, 12 Oct 2012 21:25:08 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D95AF8D@Mercury.usurf.usu.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Oct 2012 21:25:10.0960 (UTC)
	FILETIME=[0F6CFB00:01CDA8C0]
Subject: Writable root filesystem - disable automount of drives
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Oct 2012 21:25:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am probably going about this the wrong way, but I am trying to create a n=
ew BSP for an Intel Core2 Duo PC104 board (from ADL-USA, the ADLGS45 to be =
exact).  I have the BSP and everything working (or so it appears) and I hav=
e checked the kernel configuration.  So far I have not had any issues - Pok=
y builds the base and minimal images perfectly.=0A=
=0A=
However, where do I go from here?  I used 'dd' to dump the generated ISO im=
age to a SATA SSD and I hooked that up and the system booted just fine - ho=
wever I have a couple of problems:=0A=
=0A=
1. The root filesystem is read-only - I would like it to be writable (espec=
ially since I cannot start SSH because the initscripts cannot generate the =
SSH keys on boot).=0A=
=0A=
2. I would like to prevent the system from automatically trying to mount ev=
ery drive it detects.  I would like it to create devices for any disks atta=
ched to the system, but stop there.=0A=
=0A=
Thoughts?=0A=
=0A=
Thanks!=0A=
Jonathan=0A=

