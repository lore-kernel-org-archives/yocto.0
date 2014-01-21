Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f52.google.com (mail-oa0-f52.google.com
	[209.85.219.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 724B7E0087A
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 03:10:17 -0800 (PST)
Received: by mail-oa0-f52.google.com with SMTP id i4so2268412oah.25
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 03:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=lVhb2+EyUG1wIb13muET8vRjOAhbNpt0GlkyYEO4pa0=;
	b=NNdLUZOXBXJ0CdYmmeNKrPsxlZ+3zeIcaWpjLu6aH87zseEL7B4xIAWyPg29NfX6Zy
	7EO7CZMtpFAJrgaP3uID40/6uB6Na3K20P/BBxucrIEJSA0g2lvqn9/wuLRAruOMX4fJ
	rVAIXDweblhi/AVkSARZfEEW0oumi/W67EY3WY8ibU/pHtiRAEDxE8NjUuWYM/ziLfXi
	z6MrrJEngRTokBCbteJOyyX7O4s51iAP4HfLITjYcGnjtMWeTkJMDZInUc8QvOKqILK2
	7t+/5sQ5/q5pyfPqjxiN3s74PIMDt7liYz0kgRhRIybxGDhN2/IpbPKZF4VdCit8RBr+
	by4Q==
MIME-Version: 1.0
X-Received: by 10.60.99.8 with SMTP id em8mr20263241oeb.8.1390302616982; Tue,
	21 Jan 2014 03:10:16 -0800 (PST)
Received: by 10.182.228.81 with HTTP; Tue, 21 Jan 2014 03:10:16 -0800 (PST)
In-Reply-To: <20140121102358.GB4685@ad.chargestorm.se>
References: <CAFyqS9qExjBN0n51k7tibPZ6GFEdzghmr7c5OHehht58HXjCuw@mail.gmail.com>
	<20140121102358.GB4685@ad.chargestorm.se>
Date: Tue, 21 Jan 2014 12:10:16 +0100
Message-ID: <CAFyqS9pfMO3mDoxqNMNt5tYvompaCJbqivdLgdoAwZOe-J9PQA@mail.gmail.com>
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
X-List-Received-Date: Tue, 21 Jan 2014 11:10:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 21, 2014 at 11:23 AM, Anders Darander <anders@chargestorm.se> w=
rote:
> * Hans Beck=E9rus <hans.beckerus@gmail.com> [140121 11:05]:
>> Things looked ok for a while, /dev was populated properly after boot
>> and all necessary file systems / mount points were created.
>> We were using an ext2 fs in RAM for mounting /.
>> Now, we made a change to instead use a CPIO image compressed using xz
>> and enabled the support in kernel to handle this.
>> This is when our problems started :( Suddenly our system booted with
>> just a very minimalistic /dev folder, containing basically only a few
>> of the devices probed at boot time.
>
>> So, the questions now are:
>
>> - how was /dev populated before when there was no /etc/init.d/mdev?
>
> I haven't checked poky-tiny, or more specifically the kernel
> configurations for it. But based on the description that I cited above,
> I'd guess that poky-tiny has
>         CONFIG_DEVTMPFS=3Dy
>         CONFIG_DEVTMPFS_MOUNT=3Dy
> enabled.
>
Indeed  (from our .config):

CONFIG_DEVTMPFS=3Dy
CONFIG_DEVTMPFS_MOUNT=3Dy

> That would mean the the kernel itself were managing /dev for you when
> you were using ext2. Unfortunately, CONFIG_DEVTMPFS_MOUNT do only
> automount devmptfs on /dev if you're not in an initramfs (or initrd).
>
Sounds reasonable. But, when moving from ext2.gz to cpio.xz, we still
did not add any init script for mounting /dev, yet it is still created
and populated? But only with a very limited set of devices.
I guess there is a difference when the kernel mounts the cpio.xz image
compared to expanding the ext2.gz in RAM with respect to how /dev is
handled. But I am only guessing here.

> Thus, you should add a simple initscript which mounts devtmpfs on /dev.
> Thereafter, you should be fine.
>
Well, using the one that came from busybox-mdev rendered our /dev
completely useless :(
As I said, if I reduce the script to perform only 'mdev -s', then it
works a lot better. So mounting /dev again seems like a bad idea.

> Regarding your other questions on mdev, it's been a little while since I
> used mdev. Let us know if the ideas above is enough, or if you want to
> dig more into mdev.
>
mdev as a device manager I think we have under control, the confusion
is more in our current system behavior at boot.

> Cheers,
> Anders
>
> --
> Anders Darander
> ChargeStorm AB / eStorm AB

