Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60A72E00EA8; Tue, 22 Sep 2015 16:49:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from FLEMING.seektech.com (unknown [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87B78E009F3
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 16:49:24 -0700 (PDT)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Tue, 22 Sep 2015 16:49:23 -0700
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Tue, 22 Sep 2015 16:49:23 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Tue, 22 Sep 2015 16:49:23 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, 'Mantas Mikulenas'
	<grawity@gmail.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [systemd-devel] How to automount
Thread-Index: AdD07JOgxjxVizetTnuI7JjPXGw5QAAcbW9gAAGEMkwACf1w0AABGiUE
Date: Tue, 22 Sep 2015 23:49:23 +0000
Message-ID: <1442965676104.72571@seescan.com>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD><CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com><3DB96F2F9D444EFE931CA8443BAFBACE@PAULD><CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>,
	<DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
	<1442946736651.15866@seescan.com>,
	<23E6267BFA52430DA768DDA7DC46AC9C@PAULD>
In-Reply-To: <23E6267BFA52430DA768DDA7DC46AC9C@PAULD>
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
X-List-Received-Date: Tue, 22 Sep 2015 23:49:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

You can see what udev thinks it will do for a given drive by using:=0A=
=0A=
 $ udevadm test /sys/block/sdb1=0A=
=0A=
Given that your drive is in /sys/block/sdb1 (could be sda1, etc).=0A=
=0A=
As for the dirty bit, we had to clear it ourselves.=0A=
=0A=
Frederick=0A=
=0A=
________________________________________=0A=
From: Paul D. DeRocco <pderocco@ix.netcom.com>=0A=
Sent: Tuesday, September 22, 2015 4:42 PM=0A=
To: Fred Ollinger; 'Mantas Mikulenas'; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [systemd-devel] How to automount=0A=
=0A=
> From: Fred Ollinger [mailto:Fred.Ollinger@seescan.com]=0A=
>=0A=
> This is in the package: udev-extraconf=0A=
>=0A=
> On your system look here:=0A=
>=0A=
> /etc/udev/rules.d/automount.rules=0A=
>=0A=
> In this file, you'll find the following rules.=0A=
>=0A=
> The second one auto unmounts.=0A=
>=0A=
> SUBSYSTEM=3D=3D"block", ACTION=3D=3D"add"    RUN+=3D"/etc/udev/scripts/mo=
unt.sh"=0A=
>=0A=
> SUBSYSTEM=3D=3D"block", ACTION=3D=3D"remove" RUN+=3D"/etc/udev/scripts/mo=
unt.sh"=0A=
>=0A=
> SUBSYSTEM=3D=3D"block", ACTION=3D=3D"change",=0A=
> ENV{DISK_MEDIA_CHANGE}=3D=3D"1" RUN+=3D"/etc/udev/scripts/mount.sh"=0A=
=0A=
Well, that started me down a long path. First of all, none of these things=
=0A=
existed because my Yocto build didn't include udev-extraconf. The version=
=0A=
I did two years ago did (although I didn't see it mentioned in my own=0A=
metadata), which is why it worked. So I added it back, rebuilt it, and=0A=
then tried plugging in a USB flash drive.=0A=
=0A=
The drive appeared as /dev/sdb and /dev/sdb1 (it has a partition table),=0A=
The syslog showed the mount.sh script message "Auto-mount of=0A=
[/run/media/sdb1] successful", /run/media/sdb1 exists as a directory, but=
=0A=
nothing is mounted there. The next syslog message from FAT-fs said "Volume=
=0A=
was not properly unmounted. Some data may be corrupt. Please run fsck."=0A=
When I did that, all I found was that the dirty bit was set, so I=0A=
speculated that that caused the mount to somehow be undone.=0A=
=0A=
So I cleaned the dirty bit, synced the file system, unplugged the drive=0A=
and plugged it in again. This time the syslog showed the successful mount=
=0A=
message, but no complaint about the drive. Yet it still wasn't mounted.=0A=
=0A=
I can manually mount it, and see its contents. If I then yank the drive,=0A=
the mount.sh script doesn't unmount it. I even tweaked the script to log=0A=
any attempt to unmount, and it didn't even try.=0A=
=0A=
Whenever I fix the dirty bit, disconnecting and reconnecting logs the=0A=
successful mount message, doesn't complain about the dirty bit, but=0A=
doesn't mount. Disconnecting again gives me a FAT-fs error "unable to read=
=0A=
boot sector to mark fs as dirty". Connecting again gives me the successful=
=0A=
mount message, and complains about the dirty bit.=0A=
=0A=
Something must be missing here.=0A=
=0A=
--=0A=
=0A=
Ciao,               Paul D. DeRocco=0A=
Paul                mailto:pderocco@ix.netcom.com=0A=
=0A=

