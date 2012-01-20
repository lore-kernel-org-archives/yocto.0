Return-Path: <autif.mlist@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84167E00307
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 08:54:45 -0800 (PST)
Received: by vbbfn1 with SMTP id fn1so661904vbb.35
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 08:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=n274QfbeCo8Nz8vgp8E5zX64bNeGVlNOp0MttXwO7rU=;
	b=YMxCNxUUWC9oI7PB1NyP9MPlV2wMVQF0YeI4IJvSSUUx3t2eIvShRp0wmpv/0krW6k
	FESMHjGY/iQILHoY5xCdoyQIPOnJplnT6vFcpEDq+1w53ETbSXFwLSReVydzCfp66N7o
	I8us+FMkUNXJIt8EY9SOUzlw2hWtN8+dazMkY=
MIME-Version: 1.0
Received: by 10.52.22.46 with SMTP id a14mr14132479vdf.102.1327078484729; Fri,
	20 Jan 2012 08:54:44 -0800 (PST)
Received: by 10.52.108.37 with HTTP; Fri, 20 Jan 2012 08:54:44 -0800 (PST)
In-Reply-To: <4F199299.4000003@gmail.com>
References: <CANFv2En8WfmoBpzqRYU9hhOH9aCMGTBgML41Ee+uaXc1MJrNjg@mail.gmail.com>
	<CADzUK1LK3+P7kiP-QDG6zB3H3sAtnBcUnGtfkju4vJXg=U+1fA@mail.gmail.com>
	<4F199299.4000003@gmail.com>
Date: Fri, 20 Jan 2012 11:54:44 -0500
Message-ID: <CADzUK1Lh9sDeiyXxo-K73FrHEz==kBDO=N_mH9GeGMSKYhPEzw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: core-image-sato-directdisk
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
X-List-Received-Date: Fri, 20 Jan 2012 16:54:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 20, 2012 at 11:13 AM, Jim Abernathy <jfabernathy@gmail.com> wro=
te:
> On 01/20/2012 09:16 AM, autif khan wrote:
>>
>> I have been using core-image-sato and core-image-sato-sdk on the hard
>> disk on Intel Atom (crownbay in my case).
>>
>> I perform the following broad steps:
>>
>> 1) have a suitable partition on the disk - say partition #3
>> 2) this partition will show up as sde3 on my host machine and sda3 on th=
e
>> atom
>> 3) mkfs.ext3 /dev/sde3
>> 4) mount /dev/sde3 /mnt/target
>> 5) mount -o loop tmp/deploy/images/core-image-sato-sdk.ext3
>> /mnt/target-text3
>> 6) cp -a /mnt/target-ext3/* /mnt/target
>> 7) grub-install --recheck --root-directory=3D/mnt/target /dev/sde
>>
>> If grub install passed, I copy the following to
>> /mnt/target/boot/grub/grub.cfg
>>
>> set default=3D"0"
>> set timeout=3D"30"
>>
>> menuentry 'Yocto SDK' {
>> =A0 =A0 =A0 =A0insmod part_msdos
>> =A0 =A0 =A0 =A0insmod ext2
>> =A0 =A0 =A0 =A0set root=3D'(hd0,msdos3)'
>> =A0 =A0 =A0 =A0linux /boot/bzImage root=3D/dev/sda3
>> }
>>
>>
>> Thats it - this boots for me.
>>
>> Eventually, when I move to some other media, I will have to
>> investigate other bootloaders - like syslinux.
>>
>> All the best, do tell if this works.
>
> This worked fine for me. one typo in step (5) ext3 and not text3, but the=
se
> are good instructions. =A0How do we get them put into the README.hardware
> instead of the directdisk section that doesn't work anymore.

Yup, I wrote then off the cuff, I am glad that a typo is the only
error and no major missing steps :-)

I am also glad that these steps worked for you.

> Did you file a bug on this?

I have not. I am not sure I should. I am not even sure whoose call it
should be weather or not this goes in README.hardware. I hope someone
chimes in

> Thanks,
>
> Jim Abernathy
>
>
>>
>> On Thu, Jan 19, 2012 at 7:51 PM, James Abernathy<jfabernathy@gmail.com>
>> =A0wrote:
>>>
>>> The README.hardware file in the poky directory talks about creating
>>> images
>>> on 2 types of disk for the Atom based PCs like the n450. The one I've
>>> successfully tested is the core-image-sato on a USB key. =A0I have no l=
uck
>>> with the directdisk method because the image recipe doesn't exist for
>>> core-image-minimal-directdisk or core-image-sato-directdisk.
>>>
>>> Is there a way to put Yocto on the hard drive on a Atom PC?
>>>
>>> Jim A
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>

