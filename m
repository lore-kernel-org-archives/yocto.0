Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85DAEE0087B
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 04:10:49 -0800 (PST)
Received: by mail-oa0-f45.google.com with SMTP id i11so4213642oag.32
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 04:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=ljVrG4mcqQUn5FKwZY2L+Msv9u5nVqnbb838QaEBVis=;
	b=ftqFaUnpgc0xsaWz+sD7YogZgPPev0rj+vwj/5MFwROwyWqhlb6DXF/Kziv5kKl4W4
	y6uvJvmcK/uDNZROfEfM9CZjRyQzZavzUMffNTZh2y5F9sfXD8G9OEKPYy7m9HAFvfMl
	18EMPsEHfMcmBd0QMjpmNuAZfnI5VtmWB+l47d4maI0UoHL7St6qQH09rcd0XXjqWFWZ
	OFd8ofVNrj/7S/LseGjjGBDG6ze/8q/38k1+NGQZtyvOSISJ0Zqa+0CDqjkF0XSHSM3K
	dlgQOWw2Sx2atHJVt4o10OmUmWisHLGf54obusfBvigMB2Fy25BiOl0YJNt1dmNNgjtM
	fHWQ==
MIME-Version: 1.0
X-Received: by 10.60.47.116 with SMTP id c20mr1122156oen.60.1390306248489;
	Tue, 21 Jan 2014 04:10:48 -0800 (PST)
Received: by 10.182.228.81 with HTTP; Tue, 21 Jan 2014 04:10:48 -0800 (PST)
In-Reply-To: <CAFyqS9pfMO3mDoxqNMNt5tYvompaCJbqivdLgdoAwZOe-J9PQA@mail.gmail.com>
References: <CAFyqS9qExjBN0n51k7tibPZ6GFEdzghmr7c5OHehht58HXjCuw@mail.gmail.com>
	<20140121102358.GB4685@ad.chargestorm.se>
	<CAFyqS9pfMO3mDoxqNMNt5tYvompaCJbqivdLgdoAwZOe-J9PQA@mail.gmail.com>
Date: Tue, 21 Jan 2014 13:10:48 +0100
Message-ID: <CAFyqS9rsDmsuPiSQMxC3aMnur5BaPH-zYUdgMQBLUDF0fcYRkw@mail.gmail.com>
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
X-List-Received-Date: Tue, 21 Jan 2014 12:10:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 21, 2014 at 12:10 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>=
 wrote:
> On Tue, Jan 21, 2014 at 11:23 AM, Anders Darander <anders@chargestorm.se>=
 wrote:
>> * Hans Beck=E9rus <hans.beckerus@gmail.com> [140121 11:05]:
>>> Things looked ok for a while, /dev was populated properly after boot
>>> and all necessary file systems / mount points were created.
>>> We were using an ext2 fs in RAM for mounting /.
>>> Now, we made a change to instead use a CPIO image compressed using xz
>>> and enabled the support in kernel to handle this.
>>> This is when our problems started :( Suddenly our system booted with
>>> just a very minimalistic /dev folder, containing basically only a few
>>> of the devices probed at boot time.
>>
>>> So, the questions now are:
>>
>>> - how was /dev populated before when there was no /etc/init.d/mdev?
>>
>> I haven't checked poky-tiny, or more specifically the kernel
>> configurations for it. But based on the description that I cited above,
>> I'd guess that poky-tiny has
>>         CONFIG_DEVTMPFS=3Dy
>>         CONFIG_DEVTMPFS_MOUNT=3Dy
>> enabled.
>>
> Indeed  (from our .config):
>
> CONFIG_DEVTMPFS=3Dy
> CONFIG_DEVTMPFS_MOUNT=3Dy
>
>> That would mean the the kernel itself were managing /dev for you when
>> you were using ext2. Unfortunately, CONFIG_DEVTMPFS_MOUNT do only
>> automount devmptfs on /dev if you're not in an initramfs (or initrd).
>>
> Sounds reasonable. But, when moving from ext2.gz to cpio.xz, we still
> did not add any init script for mounting /dev, yet it is still created
> and populated? But only with a very limited set of devices.
> I guess there is a difference when the kernel mounts the cpio.xz image
> compared to expanding the ext2.gz in RAM with respect to how /dev is
> handled. But I am only guessing here.
>
Another thing, You say CONFIG_DEVTMPFS_MOUNT does *not* automount /dev
if using the initrd scheme?
But I think it did when using the compressed ext2 file system? How
come /dev was mounted and populated automatically in the ext2 case but
when we changed to cpio.xz things seem to break?


>> Thus, you should add a simple initscript which mounts devtmpfs on /dev.
>> Thereafter, you should be fine.
>>
> Well, using the one that came from busybox-mdev rendered our /dev
> completely useless :(
> As I said, if I reduce the script to perform only 'mdev -s', then it
> works a lot better. So mounting /dev again seems like a bad idea.
>
>> Regarding your other questions on mdev, it's been a little while since I
>> used mdev. Let us know if the ideas above is enough, or if you want to
>> dig more into mdev.
>>
> mdev as a device manager I think we have under control, the confusion
> is more in our current system behavior at boot.
>
>> Cheers,
>> Anders
>>
>> --
>> Anders Darander
>> ChargeStorm AB / eStorm AB

