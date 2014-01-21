Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E167E00888
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 05:01:58 -0800 (PST)
Received: by mail-oa0-f44.google.com with SMTP id g12so9061101oah.17
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 05:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=GQyelXbqoPhoKB9kK5SGRRoe8ZU2cY3pWtworQwDhXc=;
	b=NmKjlc9JsKbw7ZBS5PfGUYZ9tuM+zt7bONIIGMd+w+P4lJrkqtA5aCvxtlJmdOFr/c
	qde3HXGwo1DXhp/G3914yyz1UdDdy+KjJIuC2ddiwdefiTE8Do/YNYDAdluUSn8QoJJc
	uC1zlYeoH4td0Sd9miJqKHtEPJP//ioh4lkxR/zmzbWnOvJdVkdavDMO3dbkEha+ipe5
	48Y3XzDvxOxgoT5NZX91j8WGuiR/Nyn2O9ZX/UEb4f2NFXmwpwuuXS3lhprRXTMd1vMY
	qtqVsmQZ+Mp8iDWggvqrCHoJSq710/fIcDHHFE73WYmcney6k3SUDa9bgTt/KlSniqsE
	eHiA==
MIME-Version: 1.0
X-Received: by 10.182.22.33 with SMTP id a1mr1445257obf.60.1390309317802; Tue,
	21 Jan 2014 05:01:57 -0800 (PST)
Received: by 10.182.228.81 with HTTP; Tue, 21 Jan 2014 05:01:57 -0800 (PST)
In-Reply-To: <20140121124123.GE4685@ad.chargestorm.se>
References: <CAFyqS9qExjBN0n51k7tibPZ6GFEdzghmr7c5OHehht58HXjCuw@mail.gmail.com>
	<20140121102358.GB4685@ad.chargestorm.se>
	<CAFyqS9pfMO3mDoxqNMNt5tYvompaCJbqivdLgdoAwZOe-J9PQA@mail.gmail.com>
	<CAFyqS9rsDmsuPiSQMxC3aMnur5BaPH-zYUdgMQBLUDF0fcYRkw@mail.gmail.com>
	<20140121124123.GE4685@ad.chargestorm.se>
Date: Tue, 21 Jan 2014 14:01:57 +0100
Message-ID: <CAFyqS9puUuHpeZmPa8YzRFhodvv6S-eHOBAeMtJK+RZZerDnrA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 21 Jan 2014 13:02:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 21, 2014 at 1:41 PM, Anders Darander <anders@chargestorm.se> wr=
ote:
> * Hans Beck=E9rus <hans.beckerus@gmail.com> [140121 13:12]:
>
>> On Tue, Jan 21, 2014 at 12:10 PM, Hans Beck=E9rus <hans.beckerus@gmail.c=
om> wrote:
>> > On Tue, Jan 21, 2014 at 11:23 AM, Anders Darander <anders@chargestorm.=
se> wrote:
>> >> * Hans Beck=E9rus <hans.beckerus@gmail.com> [140121 11:05]:
>> >>> Things looked ok for a while, /dev was populated properly after boot
>> >>> and all necessary file systems / mount points were created.
>> >>> We were using an ext2 fs in RAM for mounting /.
>> >>> Now, we made a change to instead use a CPIO image compressed using x=
z
>> >>> and enabled the support in kernel to handle this.
>> >>> This is when our problems started :( Suddenly our system booted with
>> >>> just a very minimalistic /dev folder, containing basically only a fe=
w
>> >>> of the devices probed at boot time.
>
>> >>> So, the questions now are:
>
>> >>> - how was /dev populated before when there was no /etc/init.d/mdev?
>
>> >> I haven't checked poky-tiny, or more specifically the kernel
>> >> configurations for it. But based on the description that I cited abov=
e,
>> >> I'd guess that poky-tiny has
>> >>         CONFIG_DEVTMPFS=3Dy
>> >>         CONFIG_DEVTMPFS_MOUNT=3Dy
>> >> enabled.
>
>> > Indeed  (from our .config):
>
>> > CONFIG_DEVTMPFS=3Dy
>> > CONFIG_DEVTMPFS_MOUNT=3Dy
>
>> >> That would mean the the kernel itself were managing /dev for you when
>> >> you were using ext2. Unfortunately, CONFIG_DEVTMPFS_MOUNT do only
>> >> automount devmptfs on /dev if you're not in an initramfs (or initrd).
>
>> > Sounds reasonable. But, when moving from ext2.gz to cpio.xz, we still
>> > did not add any init script for mounting /dev, yet it is still created
>> > and populated? But only with a very limited set of devices.
>> > I guess there is a difference when the kernel mounts the cpio.xz image
>> > compared to expanding the ext2.gz in RAM with respect to how /dev is
>> > handled. But I am only guessing here.
>
> I'm running a slow build of poky-tiny on an overloaded machine... Maybe
> I can get back to those question in a while.
>
No problem. Take your time ;)

>> Another thing, You say CONFIG_DEVTMPFS_MOUNT does *not* automount /dev
>> if using the initrd scheme?
>> But I think it did when using the compressed ext2 file system? How
>> come /dev was mounted and populated automatically in the ext2 case but
>> when we changed to cpio.xz things seem to break?
>
> This one can I at least answer.
>
> It's because that's how devmtpfs is implemented in the kernel.
>
> "This option does not affect initramfs based booting, here the devtmpfs
> filesystem always needs to be mounted manually after the roots is
> mounted." quote taken from the help text of CONFIG_DEVMTPFS_MOUNT, see
> your kernel tree or e.g.
> http://cateee.net/lkddb/web-lkddb/DEVTMPFS_MOUNT.html
>
Well, I do not think this is absolutely true, or I have misunderstood somet=
hing.
But we do not *use* the initramfs scheme, we use initrd in both ext2
and cpio case.
So, what from what I can tell we use the initrd scheme  and /sbin/init.
And if CONFIG_DEVMTPFS_MOUNT is only affected the initramfs scheme
then it should work similar for initrd for both the ext2 and the cpio
case, which obviously is not the case.

> Cheers,
> Anders
>
> --
> Anders Darander
> ChargeStorm AB / eStorm AB

