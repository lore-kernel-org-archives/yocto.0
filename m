Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE256E00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 12:33:46 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 23 Oct 2012 13:33:46 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Tue, 23 Oct 2012 13:33:50 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Tue, 23 Oct 2012 13:33:45 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Unreadable menuconfig
Thread-Index: Ac2xVTYvAn6H2sS5QHWt58OqYu3XSw==
Date: Tue, 23 Oct 2012 19:33:44 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D969119@Mercury.usurf.usu.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 23 Oct 2012 19:33:50.0528 (UTC)
	FILETIME=[541F3400:01CDB155]
Subject: Unreadable menuconfig
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
X-List-Received-Date: Tue, 23 Oct 2012 19:33:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When I run 'bitbake linux-yocto -c menuconfig' I was not getting a menuconf=
ig - I had to tell my local.conf to use screen because auto was selecting a=
 gnome terminal which would resize itself to something too small and menuco=
nfig would exit with an error.=0A=
=0A=
Now I can get menuconfig and make changes, but it is extremely difficult to=
 read.  I have attached a screenshot of what I am talking about.=0A=
=0A=
Can anyone point me in the right direction on how to fix this?  I would lik=
e to use the correct commands so that I don't mess anything up.  Right now =
I have resorted to running menuconfig down in my build directory where the =
.config file is stored with the kernel source.=0A=
=0A=
Thoughts?=0A=
=0A=
Thanks!=0A=
Jonathan=0A=
=0A=

