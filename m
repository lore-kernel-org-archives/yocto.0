Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C08E014F9
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 14:57:25 -0700 (PDT)
Received: from localhost ([127.0.0.1]:48786 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T9NbA-0002ze-Ab
	for yocto@yoctoproject.org; Wed, 05 Sep 2012 21:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=vjYogMNJXTxFnrCBG9nhPHkJiGc=; b=f3Zm644me37e7xAc5dxdj64Ye8Zo
	E7z0mHgJkEqw9Y2Q6lcg3sNor/FVXMEqXwChMhGGFwtJSbRS+ivo6ruUQEiKC10H
	vMR8KdFl/gS37xf80UsjWcWzYkxPGuTYTG8a5C+Ahm3+9jM9oV1/P39dS6LGk+vN
	Z2za2Hphyag1XQI=
Received: from cpc2-cmbg15-2-0-cust171.5-4.cable.virginmedia.com
	([86.26.12.172]:54097 helo=[192.168.1.113])
	by eumx.net with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <ml@communistcode.co.uk>)
	id 1T9NbA-0002zb-8G
	for yocto@yoctoproject.org; Wed, 05 Sep 2012 21:57:24 +0000
Message-ID: <5047CAC2.2020405@communistcode.co.uk>
Date: Wed, 05 Sep 2012 22:57:22 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120824 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5047970C.8010208@mlbassoc.com> <2238601.rFqqxpWrI4@helios>
In-Reply-To: <2238601.rFqqxpWrI4@helios>
Subject: Re: raspberrypi image questions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Sep 2012 21:57:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/2012 22:46, Paul Eggleton wrote:
> On Wednesday 05 September 2012 12:16:44 Gary Thomas wrote:
>> I just built Yocto/Poky for the raspberrypi, following the
>> recent thread on this list.  I noticed that the resulting SD
>> image is ~4GB, but most of that space seems to be unused:
>>
>>     $ ssh root@192.168.1.150
>>     Warning: Permanently added '192.168.1.150' (RSA) to the list of known
>> hosts. root@192.168.1.150's password:
>>     root@raspberrypi:~# df
>>     Filesystem           1K-blocks      Used Available Use% Mounted on
>>     /dev/root                57388     46754      7718  86% /
>>     none                     93964       156     93808   0% /dev
>>     /dev/mmcblk0p2           57388     46754      7718  86% /media/mmcblk0p2
>>     /dev/mmcblk0p1           19400      8928     10472  46% /media/mmcblk0p1
>>     tmpfs                    93964        56     93908   0% /var/volatile
>>     tmpfs                    93964         0     93964   0% /dev/shm
>>     tmpfs                    93964         0     93964   0% /media/ram
>>     root@raspberrypi:~# cat /proc/partitions
>>     major minor  #blocks  name
>>
>>      179        0    3977216 mmcblk0
>>      179        1      19456 mmcblk0p1
>>      179        2    3885056 mmcblk0p2
>>
>> Notice that the physical partition for /dev/mmcblk0p2 is huge but
>> the file system is only 57MB.
>>
>> How can I adjust my build and/or resize the file system to actually
>> use the rest of the SD card?
> I suspect a resize2fs call is needed in there. Since the SD card class in
> meta-raspberrypi was changed to use the actual ext2 rootfs image instead of
> creating a new one on the fly, this has become an issue. I would suggest filing
> the issue on the meta-raspberrypi github.
>
>> Also, is it possible to just build the SD image much like I do for
>> other devices like the BeagleBoard, albeit with different contents
>> in /boot?  Sloshing around 4GB images is rather painful, plus it
>> takes forever to DD it to the SD card.
> I must be missing something - do you want the rootfs larger or don't you? If
> it's expanded it will take up 4GB minus the boot partition size so you're into
> a large dd again...
>
> Cheers,
> Paul
>

I think what he means (or this is what I would like to see ) is a 
boot.tar.gz and a rootfs.tar.gz which can then be extracted straight 
onto the partitions? Hence only a ~40mb boot write and ~50mb rootfs 
write rather than a 4GB dd slog.

