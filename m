Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DBBBE0108A; Tue, 22 Sep 2015 11:34:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 68 seconds by postgrey-1.32 at yocto-www;
	Tue, 22 Sep 2015 11:34:55 PDT
Received: from FLEMING.seektech.com (unknown [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95529E01088
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 11:34:55 -0700 (PDT)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Tue, 22 Sep 2015 11:33:43 -0700
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Tue, 22 Sep 2015 11:33:44 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Tue, 22 Sep 2015 11:33:44 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, 'Mantas Mikulenas'
	<grawity@gmail.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [systemd-devel] How to automount
Thread-Index: AdD07JOgxjxVizetTnuI7JjPXGw5QAAcbW9gAAGEMkw=
Date: Tue, 22 Sep 2015 18:33:43 +0000
Message-ID: <1442946736651.15866@seescan.com>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD>
	<CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com>
	<3DB96F2F9D444EFE931CA8443BAFBACE@PAULD>
	<CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>,
	<DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
In-Reply-To: <DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Tue, 22 Sep 2015 18:34:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This is in the package: udev-extraconf=0A=
=0A=
On your system look here:=0A=
=0A=
/etc/udev/rules.d/automount.rules=0A=
=0A=
In this file, you'll find the following rules.=0A=
=0A=
The second one auto unmounts.=0A=
=0A=
SUBSYSTEM=3D=3D"block", ACTION=3D=3D"add"    RUN+=3D"/etc/udev/scripts/moun=
t.sh"=0A=
=0A=
SUBSYSTEM=3D=3D"block", ACTION=3D=3D"remove" RUN+=3D"/etc/udev/scripts/moun=
t.sh"=0A=
=0A=
SUBSYSTEM=3D=3D"block", ACTION=3D=3D"change", =0A=
ENV{DISK_MEDIA_CHANGE}=3D=3D"1" RUN+=3D"/etc/udev/scripts/mount.sh"=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Paul D. DeRocco <pderocco@ix.netcom.com>=0A=
Sent: Tuesday, September 22, 2015 10:45 AM=0A=
To: 'Mantas Mikulenas'; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] [systemd-devel] How to automount=0A=
=0A=
> From: Mantas Mikulenas [mailto:grawity@gmail.com]=0A=
>=0A=
> > I don't think there's any way to have something auto-unmount=0A=
>=0A=
> There certainly is - udev has been unmounting unplugged=0A=
> drives for many years. It's done by default.=0A=
=0A=
If creating a udev mount rule automatically does the unmount, then the=0A=
simplest thing for me would probably be to do that, and have my=0A=
application do a sync after each user-initiated operation. That way, the=0A=
drive would remain mounted after the operation, so I could still poke=0A=
around on it while debugging, yet there would be no corruption when it's=0A=
removed. Thanks for the tip.=0A=
=0A=
--=0A=
=0A=
Ciao,               Paul D. DeRocco=0A=
Paul                mailto:pderocco@ix.netcom.com=0A=
=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=

