Return-Path: <anders@chargestorm.se>
Received: from stoexhubfe02.domain01.net (STOEXHUBFE02.domain01.net
	[83.145.59.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8E26E0087B
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 04:41:28 -0800 (PST)
Received: from ad.chargestorm.se (213.114.79.21) by stoexhubfe02.domain01.net
	(10.12.10.7) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 21 Jan 2014 13:41:10 +0100
Date: Tue, 21 Jan 2014 13:41:24 +0100
From: Anders Darander <anders@chargestorm.se>
To: Hans =?iso-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Message-ID: <20140121124123.GE4685@ad.chargestorm.se>
Mail-Followup-To: Hans =?iso-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFyqS9qExjBN0n51k7tibPZ6GFEdzghmr7c5OHehht58HXjCuw@mail.gmail.com>
	<20140121102358.GB4685@ad.chargestorm.se>
	<CAFyqS9pfMO3mDoxqNMNt5tYvompaCJbqivdLgdoAwZOe-J9PQA@mail.gmail.com>
	<CAFyqS9rsDmsuPiSQMxC3aMnur5BaPH-zYUdgMQBLUDF0fcYRkw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFyqS9rsDmsuPiSQMxC3aMnur5BaPH-zYUdgMQBLUDF0fcYRkw@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
X-GFI-SMTP-Submission: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: busybox and mdev, how does it really work?
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
X-List-Received-Date: Tue, 21 Jan 2014 12:41:33 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Hans Beck=E9rus <hans.beckerus@gmail.com> [140121 13:12]:

> On Tue, Jan 21, 2014 at 12:10 PM, Hans Beck=E9rus <hans.beckerus@gmail.co=
m> wrote:
> > On Tue, Jan 21, 2014 at 11:23 AM, Anders Darander <anders@chargestorm.s=
e> wrote:
> >> * Hans Beck=E9rus <hans.beckerus@gmail.com> [140121 11:05]:
> >>> Things looked ok for a while, /dev was populated properly after boot
> >>> and all necessary file systems / mount points were created.
> >>> We were using an ext2 fs in RAM for mounting /.
> >>> Now, we made a change to instead use a CPIO image compressed using xz
> >>> and enabled the support in kernel to handle this.
> >>> This is when our problems started :( Suddenly our system booted with
> >>> just a very minimalistic /dev folder, containing basically only a few
> >>> of the devices probed at boot time.

> >>> So, the questions now are:

> >>> - how was /dev populated before when there was no /etc/init.d/mdev?

> >> I haven't checked poky-tiny, or more specifically the kernel
> >> configurations for it. But based on the description that I cited above,
> >> I'd guess that poky-tiny has
> >>         CONFIG_DEVTMPFS=3Dy
> >>         CONFIG_DEVTMPFS_MOUNT=3Dy
> >> enabled.

> > Indeed  (from our .config):

> > CONFIG_DEVTMPFS=3Dy
> > CONFIG_DEVTMPFS_MOUNT=3Dy

> >> That would mean the the kernel itself were managing /dev for you when
> >> you were using ext2. Unfortunately, CONFIG_DEVTMPFS_MOUNT do only
> >> automount devmptfs on /dev if you're not in an initramfs (or initrd).

> > Sounds reasonable. But, when moving from ext2.gz to cpio.xz, we still
> > did not add any init script for mounting /dev, yet it is still created
> > and populated? But only with a very limited set of devices.
> > I guess there is a difference when the kernel mounts the cpio.xz image
> > compared to expanding the ext2.gz in RAM with respect to how /dev is
> > handled. But I am only guessing here.

I'm running a slow build of poky-tiny on an overloaded machine... Maybe
I can get back to those question in a while.

> Another thing, You say CONFIG_DEVTMPFS_MOUNT does *not* automount /dev
> if using the initrd scheme?
> But I think it did when using the compressed ext2 file system? How
> come /dev was mounted and populated automatically in the ext2 case but
> when we changed to cpio.xz things seem to break?

This one can I at least answer.

It's because that's how devmtpfs is implemented in the kernel.=20

"This option does not affect initramfs based booting, here the devtmpfs
filesystem always needs to be mounted manually after the roots is
mounted." quote taken from the help text of CONFIG_DEVMTPFS_MOUNT, see
your kernel tree or e.g.
http://cateee.net/lkddb/web-lkddb/DEVTMPFS_MOUNT.html

Cheers,
Anders

--=20
Anders Darander
ChargeStorm AB / eStorm AB

