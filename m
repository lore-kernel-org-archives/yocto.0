Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA62AE01346
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 08:13:16 -0800 (PST)
Received: by qcsp19 with SMTP id p19so458700qcs.35
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 08:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=+sXv/GgX3mLHRBNcsoqsr6w4YClNd6dzweWPsCVRRXs=;
	b=vIPUjZkvYF4qd5gQ4PEA5hCcDCsFcBHozWDw4C2ePWorLNdy7lpqduRR6XnmUOX4Gq
	kEJ36PWkLN8PdfXTvkzXE3VbLhsqUfJFbijYRbKFaUYnaQYSxbgm/yhGAAH5o7bm5jef
	YRv7sp8YqBAwE4vZTFV4mUP2EF2s5ReFc3BPE=
Received: by 10.229.78.163 with SMTP id l35mr12516739qck.32.1327075994876;
	Fri, 20 Jan 2012 08:13:14 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	eb5sm7308587qab.10.2012.01.20.08.13.13 (version=SSLv3 cipher=OTHER);
	Fri, 20 Jan 2012 08:13:14 -0800 (PST)
Message-ID: <4F199299.4000003@gmail.com>
Date: Fri, 20 Jan 2012 11:13:13 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: autif khan <autif.mlist@gmail.com>
References: <CANFv2En8WfmoBpzqRYU9hhOH9aCMGTBgML41Ee+uaXc1MJrNjg@mail.gmail.com>
	<CADzUK1LK3+P7kiP-QDG6zB3H3sAtnBcUnGtfkju4vJXg=U+1fA@mail.gmail.com>
In-Reply-To: <CADzUK1LK3+P7kiP-QDG6zB3H3sAtnBcUnGtfkju4vJXg=U+1fA@mail.gmail.com>
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
X-List-Received-Date: Fri, 20 Jan 2012 16:13:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/20/2012 09:16 AM, autif khan wrote:
> I have been using core-image-sato and core-image-sato-sdk on the hard
> disk on Intel Atom (crownbay in my case).
>
> I perform the following broad steps:
>
> 1) have a suitable partition on the disk - say partition #3
> 2) this partition will show up as sde3 on my host machine and sda3 on the atom
> 3) mkfs.ext3 /dev/sde3
> 4) mount /dev/sde3 /mnt/target
> 5) mount -o loop tmp/deploy/images/core-image-sato-sdk.ext3 /mnt/target-text3
> 6) cp -a /mnt/target-ext3/* /mnt/target
> 7) grub-install --recheck --root-directory=/mnt/target /dev/sde
>
> If grub install passed, I copy the following to /mnt/target/boot/grub/grub.cfg
>
> set default="0"
> set timeout="30"
>
> menuentry 'Yocto SDK' {
> 	insmod part_msdos
> 	insmod ext2
> 	set root='(hd0,msdos3)'
> 	linux /boot/bzImage root=/dev/sda3
> }
>
>
> Thats it - this boots for me.
>
> Eventually, when I move to some other media, I will have to
> investigate other bootloaders - like syslinux.
>
> All the best, do tell if this works.
This worked fine for me. one typo in step (5) ext3 and not text3, but 
these are good instructions.  How do we get them put into the 
README.hardware instead of the directdisk section that doesn't work anymore.

Did you file a bug on this?

Thanks,

Jim Abernathy

>
> On Thu, Jan 19, 2012 at 7:51 PM, James Abernathy<jfabernathy@gmail.com>  wrote:
>> The README.hardware file in the poky directory talks about creating images
>> on 2 types of disk for the Atom based PCs like the n450. The one I've
>> successfully tested is the core-image-sato on a USB key.  I have no luck
>> with the directdisk method because the image recipe doesn't exist for
>> core-image-minimal-directdisk or core-image-sato-directdisk.
>>
>> Is there a way to put Yocto on the hard drive on a Atom PC?
>>
>> Jim A
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>


