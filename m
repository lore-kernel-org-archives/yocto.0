Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAAB2E00303
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2012 12:38:00 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so13229460qcs.35
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2012 12:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=GbHvm0jdKNJC9FMjqCqSlD86l63X9FjwhI1/Q/COzL4=;
	b=gADJ1FY7mI+oDUmYNHstjhd6F10cBTE3tPbHDVDImPmWRzDKjVefQQMUrfRJSbSr9k
	NvYjSg/opfAaTRZVqVyhJKqp1BzW/Co1ExBfvxnKuJcZg4GH8zdt9xacINogicTS1tMG
	cdbqLWez1XFQN++RfxBkb3EGTNrtwMP047Tgk=
Received: by 10.229.78.213 with SMTP id m21mr7633893qck.22.1325709479865;
	Wed, 04 Jan 2012 12:37:59 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	h9sm109571326qac.13.2012.01.04.12.37.58 (version=SSLv3 cipher=OTHER);
	Wed, 04 Jan 2012 12:37:58 -0800 (PST)
Message-ID: <4F04B8A5.3000508@gmail.com>
Date: Wed, 04 Jan 2012 15:37:57 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANSwnwggQwOgZk61xvppWXnz3+Wks9jSaNcp0+cBf9eS2xNNOg@mail.gmail.com>
	<4EF20847.1030106@gmail.com>
	<loom.20111229T062302-471@post.gmane.org>
	<4EFC9755.60805@linux.intel.com> <4F033A40.3070507@gmail.com>
	<20120104045927.GC31275@sakrah.homelinux.org>
In-Reply-To: <20120104045927.GC31275@sakrah.homelinux.org>
Subject: Re: build error on meta-cedarview
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
X-List-Received-Date: Wed, 04 Jan 2012 20:38:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/03/2012 11:59 PM, Khem Raj wrote:
> On (03/01/12 12:26), Jim Abernathy wrote:
>> On 12/29/2011 11:37 AM, Saul Wold wrote:
>>> On 12/28/2011 09:26 PM, Andrew Schweitzer wrote:
>>>> Jim Abernathy<jfabernathy@...>   writes:
>>>>
>>>>>
>>>>>      While running a build of the core-image-sato using the
>>>>> edison latest
>>>>>      commits and the meta-cedartrail bsp, I notices some errors fly by
>>>>>      and thought I'd see if anyone knows the reason.  The build is just
>>>>>      to test the bsp with no changes.  Basically, doing the
>>>>> Appendix A of
>>>>>      the Development manual substituting cedartrail for crownbay.
>>>>>      snippet of the console log below:
>>>>>      NOTE: package icon-naming-utils-native-0.8.7-r3: task do_unpack:
>>>>>      Started
>>>>>      ERROR: Function 'Unpack failure for URL:
>>>> 'http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz'.
>>>>
>>>> I don't know the reason, but I did get the same error when
>>>> trying to build yocto
>>>> per the getting started page, changing local.conf to create qemuarm
>>>>
>>>> I would be interested in knowing the reason too.
>>>>
>>> There has been a bug filed against this issue, it seems that the
>>> tarballs have moved or are unavailable from that location for some
>>> reason.  You are getting a download page, and I believe that the
>>> failure should occur earlier with a checksum mismatch, but is not.
>>>
>>> You can fetch this file from our mirror at:
>>> http://downloads.yoctoproject.org/mirror/sources/icon-naming-utils-0.8.7.tar.gz
>>>
>>>
>> Saul,
>>
>> Sorry for the dumb question, but how do I download the file and fool
>> bitbake into not trying to download it from the invalid site?  Or do
>> I need to change a file somewhere to specific our mirror URL
>> instead??
> cd into DL_DIR
> wget the<tar>
> then touch<tar>.done
>
> You can add http://downloads.yoctoproject.org/mirror/sources/
> to MIRRORS
>
> something like
> MIRRORS =+ "http://downloads.yoctoproject.org/mirror/sources/"
> to the concerned recipe.
I went back and had a number of issues so I just deleted the current 
~/poky/build directory and restarted the process including editing the 
conf/local.conf, etc.  The only change I made to the recipes was to put 
in the reference to the Yocto mirror for icon-naming-utils.  I got a 
fair way down into the build(2358 of 4426) before I got a new error.  
The step is related to initramfs-live-boot_1.0.bb do_package_write_rpm 
the log is below:

NOTE: Creating RPM package for initramfs-live-boot-dbg
NOTE: Creating RPM package for initramfs-live-boot
NOTE: Creating RPM package for initramfs-live-boot
NOTE: Not creating empty RPM package for initramfs-live-boot-doc
NOTE: Creating EMPTY RPM Package for initramfs-live-boot-dev
NOTE: Not creating empty RPM package for initramfs-live-boot-staticdev
NOTE: Not creating empty RPM package for initramfs-live-boot-locale
Building target platforms: all-poky-linux
Processing files: initramfs-live-boot-1.0-r6.all
Finding  Provides: 
/home/jim/poky/build/tmp/work/all-poky-linux/initramfs-live-boot-1.0-r6/initramfs-live-boot.provides
Finding  Requires: 
/home/jim/poky/build/tmp/work/all-poky-linux/initramfs-live-boot-1.0-r6/initramfs-live-boot.requires
Requires: /bin/sh
Requires: /bin/sh
Processing files: initramfs-live-boot-dbg-1.0-r6.all
Finding  Provides: 
/home/jim/poky/build/tmp/work/all-poky-linux/initramfs-live-boot-1.0-r6/initramfs-live-boot.provides
Finding  Requires: 
/home/jim/poky/build/tmp/work/all-poky-linux/initramfs-live-boot-1.0-r6/initramfs-live-boot.requires
Processing files: initramfs-live-boot-dev-1.0-r6.all
Checking for unpackaged file(s): 
/home/jim/poky/build/tmp/sysroots/i686-linux/usr/lib/rpm/check-files 
/home/jim/poky/build/tmp/work/all-poky-linux/initramfs-live-boot-1.0-r6/package
error: Unable to open temp file.


RPM build errors:
     Unable to open temp file.
ERROR: Function 'BUILDSPEC' failed (see 
/home/jim/poky/build/tmp/work/all-poky-linux/initramfs-live-boot-1.0-r6/temp/log.do_package_write_rpm.27564 
for further information)

Jim A

