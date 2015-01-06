Return-Path: <andre.marschalek@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C10A4E00571; Tue,  6 Jan 2015 15:19:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andre.marschalek[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.116.109 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from BLU004-OMC3S34.hotmail.com (blu004-omc3s34.hotmail.com
	[65.55.116.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DEF5E00571
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 15:19:45 -0800 (PST)
Received: from BLU406-EAS21 ([65.55.116.74]) by BLU004-OMC3S34.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Tue, 6 Jan 2015 15:19:44 -0800
X-TMN: [m3PQt0hwZX8b+taZGLTME10O+SrOtgKr]
X-Originating-Email: [andre.marschalek@outlook.com]
Message-ID: <BLU406-EAS2137744DD06CBBE1E384D48B590@phx.gbl>
From: Andre Marschalek <andre.marschalek@outlook.com>
To: "'Tom Zanussi'" <tom.zanussi@intel.com>,
	"'Moore, Thomas \(FtWorth\)'" <Thomas.Moore2@ATK.COM>
References: <BLU406-EAS388E30ADBB7B8ABF5E862C58B580@phx.gbl>	
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9@UT40SVCWEM001.atk.com>	
	<BLU406-EAS2048C24D52F9E36403A1FAB8B590@phx.gbl>	
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E70ED9C@UT40SVCWEM001.atk.com>
	<1420558128.8591.28.camel@picadillo>
In-Reply-To: <1420558128.8591.28.camel@picadillo>
Date: Wed, 7 Jan 2015 00:19:39 +0100
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQABAgMEpM1h462i2UafeuILe2ozlgCeirv8AMIA3G8AOY5nz6BFN63w
X-OriginalArrivalTime: 06 Jan 2015 23:19:44.0909 (UTC)
	FILETIME=[41B25BD0:01D02A07]
Cc: yocto@yoctoproject.org
Subject: Re: separate partition support
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
X-List-Received-Date: Tue, 06 Jan 2015 23:19:52 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-us

Hi

thank you all for your help
i decided to not use yocto/poky for my projects

br
Andre

-----Original Message-----
From: Tom Zanussi [mailto:tom.zanussi@intel.com]=20
Sent: Tuesday, January 6, 2015 4:29 PM
To: Moore, Thomas (FtWorth)
Cc: Andre Marschalek; yocto@yoctoproject.org
Subject: Re: [yocto] separate partition support

Hi,

As far as wic goes, I think this is something that should be supported, =
and probably wouldn't be too hard to implement, but I really haven't =
thought about the details much.  Off the top of my head, I think it =
would mainly require some changes to the Wic_PartData and rootfs plugin =
and an extension to the rootfs syntax - possibly just appending the =
directory within the rootfs to the rootfs plugin e.g.: =20

part / --source rootfs --ondisk sda --fstype=3Dext3 --label platform =
--align 1024 part /var --source rootfs/var --ondisk sda --fstype=3Dext3 =
--label data --align 1024

The second line would cause just the contents of the /var directory of =
rootfs to be put into a separate partition and mounted as /var.

One complication would be then subtracting that from the rootfs and =
leaving just the remainder mounted as / - it would probably require a =
copy and subtraction.

Tom

On Tue, 2015-01-06 at 15:05 +0000, Moore, Thomas (FtWorth) wrote:
> Andre,
>=20
> =20
>=20
> I spent some time trying to determine how to generate multiple images=20
> as you=E2=80=99ve mentioned. However, the process used to generate the =
rootfs=20
> image appears to be buried deep in the Open Embedded core and I =
wasn=E2=80=99t=20
> able to figure out how it works. Maybe someone else can chime in on=20
> how that might be accomplished.
>=20
> =20
>=20
> Thomas Moore
>=20
>=20
> =20
>=20
> From: Andre Marschalek [mailto:andre.marschalek@outlook.com]
> Sent: Tuesday, January 06, 2015 8:34 AM
> To: Moore, Thomas (FtWorth); yocto@yoctoproject.org
> Subject: RE: [yocto] separate partition support
>=20
>=20
> =20
>=20
> Hi Thomas,
>=20
> =20
>=20
> what I need is to have one image per partition
>=20
> =20
>=20
> for example if i need to have /opt on a different partition i would=20
> need 2 image files at the end
>=20
> =20
>=20
> one containing the root partition but without /opt and one with the=20
> contents of /opt (without /opt itself because this image will be=20
> mounted as /opt at the end)
>=20
> =20
>=20
> br
>=20
> Andre
>=20
> =20
>=20
> From: Moore, Thomas (FtWorth) [mailto:Thomas.Moore2@ATK.COM]
> Sent: Tuesday, January 6, 2015 1:01 AM
> To: Andre Marschalek; yocto@yoctoproject.org
> Subject: RE: [yocto] separate partition support
>=20
>=20
> =20
>=20
> I=E2=80=99m actually experimenting with this today.
>=20
> =20
>=20
> Per the Development Manual, my first attempt was to use wic. While I=20
> was able to create an image with multiple partitions, there appears to =

> be no way to split up the rootfs image that is created amongst the=20
> multiple partitions. Below is the wks file I created for my test:
>=20
> =20
>=20
> part /boot --source bootimg-pcbios --ondisk sda --label boot --active=20
> --align 1024
>=20
> part / --source rootfs --ondisk sda --fstype=3Dext3 --label platform=20
> --align 1024
>=20
> part /var --source rootfs --ondisk sda --fstype=3Dext3 --label data=20
> --align 1024
>=20
> =20
>=20
> bootloader  --timeout=3D0  --append=3D"rootwait rootfstype=3Dext3=20
> video=3Dvesafb vga=3D0x318 console=3Dtty0"
>=20
> =20
>=20
> After running wic, I was able to examine the resulting image and there =

> were three partitions. However, the second and third partitions (/ and =

> /var) both contained the entire rootfs. In this case, I was hoping=20
> that wic would realize that I only wanted the contents /var in the=20
> third partition and to also not be included in the second partition.
>=20
> =20
>=20
> While it may be possible to create a new plugin for wic to achieve my=20
> desired result, I=E2=80=99m not sure if it would be possible for the =
instance=20
> of the plugin creating the / partition to be aware of the other=20
> partitions and their mount points to be able to exclude those folders=20
> from the / partition. Does anyone have any thoughts on this?
>=20
> =20
>=20
> Thanks,
>=20
> =20
>=20
> Thomas Moore
>=20
>=20
> =20
>=20
> From:yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Andre Marschalek
> Sent: Monday, January 05, 2015 5:50 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] separate partition support
>=20
>=20
> =20
>=20
> hi,
>=20
> =20
>=20
> splitting the root file filesystem into different partitions is a=20
> common task and supported from every operating system during install=20
> and should be also supported from yocto=E2=80=99s build system
>=20
> based on the current available documentation it seems impossible to=20
> accomplish this task, the only available result is one full blown=20
> image containing the root partition
>=20
> =20
>=20
> currently the only idea i had is to run bitbake which will generate=20
> the root image containing everything
>=20
> create afterwards my own images with the desired size (also a new root =

> image because in this case IMAGE_ROOTFS_SIZE does not reflect the=20
> ending image size)
>=20
> mount every image and move the directories from the bitbake produced=20
> image into this new images
>=20
> and finally flash that images to my devices
>=20
> =20
>=20
> what do you mean?
>=20
> should this basic core functionality part of yocto=E2=80=99s build =
process=20
> without an overhead for everyone to create isolated solutions?
>=20
> do you see a better workaround as to create new images and movements=20
> after the build process?
>=20
> =20
>=20
> thank you in advance
>=20
> =20
>=20
> br
>=20
> Andre
>=20
>=20



