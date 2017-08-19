Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF7E8E00CC3; Fri, 18 Aug 2017 19:08:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B24ADE00B83
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 19:08:12 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id h75so2088646pfh.5
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 19:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=2dJG3Tnca7FK3J75Ekc+gHuT97Y6fe1W0aMc/c2QN9U=;
	b=KFLOgjADIrMWvL713BaRKGpiN8XgPBZLfhzXZ8G2HPRhgik89j5Uog/BKAIoZni003
	dhDlb9PRqUL9uxNWzHqaLqDtF5MtMzQMQuhisG/alKf99j/ugvxRFp0scYKnHVonpSwt
	ZQekhZrp3iMV9z+LUA6jfRpnN63QJZyLq//FGr09lO4pd2QQLxGOEvBz9+F0Vk+4kG8o
	OqsQbSv8DK/DEuki6/0EOpsQMRFV+ygMnFjTScanrDLeMujVayBM/j+ViZDo07U3lrlY
	Y4BI8a1R17UrdCTbY47cWRu41Lq4mHoOm5RvRPaSIQ08f2C255LK97r5T2zTEy3dEkAj
	+WTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2dJG3Tnca7FK3J75Ekc+gHuT97Y6fe1W0aMc/c2QN9U=;
	b=djEILdm+RvMWToBkAIETnwkNbQWHI1u6C7pY6ly7KdBIirDVcZU42ZjZq/PpiNfiR3
	Ar7OC0Bfjz74bbcdR1Ea2QgP0BX8Z6gk2e1ckAmisJr1PJ5jjcqEepABPAVR5QApFRAX
	v2xIqKa5N59TkrUgiG+7MtoADSqSjNdKb565tgCoUN0FkR5fRoGAWo9WLSVejR8mSXPb
	dOCthISZtMwfSx9DQuSlzg/zsOW+jcsFEZ9bxQR9WbqN7E7nkwMtFzZLKmIUnUncO+BF
	R++sX4tbCjt0FRV3Q1Z2ZjEqQsxkIdjTxtZ4gpaCF3yvL8UGUHNG/0IL98CyJCE8mMU7
	9s0Q==
X-Gm-Message-State: AHYfb5jSlRAWQtByXBT8kTAPvKxJyTk5IaqIilBbWkXuVFTOzWelEU1Z
	QMRLX0JF4Mx3Rhm5uk4=
X-Received: by 10.99.121.206 with SMTP id u197mr2295417pgc.340.1503108491696; 
	Fri, 18 Aug 2017 19:08:11 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	m3sm13028765pfg.16.2017.08.18.19.08.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Aug 2017 19:08:11 -0700 (PDT)
To: ed.bartosh@linux.intel.com
References: <CAByQQ_q9bBxrK6gzn2nAj2QK9PEiOfyt_09Le27DvXpU4_54hg@mail.gmail.com>
	<1502979391.28682.1.camel@linux.intel.com>
	<3e39f3ca-9228-769f-0b39-126fb124d280@gmail.com>
	<20170818085833.GA6976@linux.intel.com>
From: Riko <antonius.riko@gmail.com>
Message-ID: <6428aa75-f822-710e-fd86-c1a83401f1e3@gmail.com>
Date: Sat, 19 Aug 2017 10:08:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170818085833.GA6976@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dd to nand flash chip?
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
X-List-Received-Date: Sat, 19 Aug 2017 02:08:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Is it related with :

https://stackoverflow.com/questions/43211384/how-to-get-to-menuconfig-for-u-boot-in-yocto-environment

?

Thanks


On 18/08/17 16:58, Ed Bartosh wrote:
> On Fri, Aug 18, 2017 at 11:40:58AM +0800, Riko wrote:
>> Here's the boot messages :
>>
>> ===
>>
>> VFS: PARTUUID= is invalid.
>> Expected PARTUUID=<valid-uuid-id>[/PARTNROFF=%d]
>> Disabling rootwait; root= is invalid.
>> VFS: Cannot open root device "PARTUUID=" or unknown-block(0,0): error -6
> Looks like you have empty PARTUUID in the kernel command line. Which wks
> file do you use for this image? Which layers? Can you show your
> bootloader config?
>
>> Please append a correct "root=" boot option; here are the available
>> partitions:
>> 0100            4096 ram0 (driver?)
>> 0101            4096 ram1 (driver?)
>> 0102            4096 ram2 (driver?)
>> 0103            4096 ram3 (driver?)
>> 0104            4096 ram4 (driver?)
>> 0105            4096 ram5 (driver?)
>> 0106            4096 ram6 (driver?)
>> 0107            4096 ram7 (driver?)
>> 0108            4096 ram8 (driver?)
>> 0109            4096 ram9 (driver?)
>> 010a            4096 ram10 (driver?)
>> 010b            4096 ram11 (driver?)
>> 010c            4096 ram12 (driver?)
>> 010d            4096 ram13 (driver?)
>> 010e            4096 ram14 (driver?)
>> 010f            4096 ram15 (driver?)
>> b300         3735552 mmcblk1  driver: mmcblk
>>    b301           16384 mmcblk1p1 2848be0f-01
>>    b302          756704 mmcblk1p2 2848be0f-02
>> b310            4096 mmcblk1boot1 (driver?)
>> b308            4096 mmcblk1boot0 (driver?)
>> VFS: Unable to mount root fs on unknown-block(0,0)
>> User configuration error - no valid root filesystem found
>> Kernel panic - not syncing: Invalid configuration from end user
>> prevents conting
>> CPU: 0 PID: 1 Comm: swapper Not tainted 4.8.12-yocto-standard #3
>> Hardware name: Generic AM33XX (Flattened Device Tree)
>> [<c010f260>] (unwind_backtrace) from [<c010c11c>] (show_stack+0x20/0x24)
>> [<c010c11c>] (show_stack) from [<c0493068>] (dump_stack+0x20/0x28)
>> [<c0493068>] (dump_stack) from [<c01f20f4>] (panic+0xc0/0x22c)
>> [<c01f20f4>] (panic) from [<c0f013ac>] (mount_block_root+0x19c/0x274)
>> [<c0f013ac>] (mount_block_root) from [<c0f0163c>] (mount_root+0xd0/0x124)
>> [<c0f0163c>] (mount_root) from [<c0f01810>] (prepare_namespace+0x180/0x1c0)
>> [<c0f01810>] (prepare_namespace) from [<c0f00f3c>]
>> (kernel_init_freeable+0x220/)
>> [<c0f00f3c>] (kernel_init_freeable) from [<c0964fb8>]
>> (kernel_init+0x18/0x11c)
>> [<c0964fb8>] (kernel_init) from [<c01078b8>] (ret_from_fork+0x14/0x3c)
>> ---[ end Kernel panic - not syncing: Invalid configuration from end
>> user preveng
>>
>> =====
>>
>> How to fix it ? thanks
>>
>>
>> On 17/08/17 22:16, Leonardo Sandoval wrote:
>>> On Thu, 2017-08-17 at 18:37 +0800, Riko Ho wrote:
>>>> Dear Yocto Team Members，
>>>>
>>>> I tried to dd *.wic to nand flash but always got kernel panic, it can
>>>> not find rootfs
>>>> when I dd the same file to sd card, it worked.
>>>>
>> >from the bootloader command prompt, you may need to change the root
>>> kernel parameter and point to the device where the filesystem resides.
>>>
>>>
>>>> I copy only *.wic file to usb drive n dd it.
>>>> Do I need the whole directory of images for dd? or I need hddimg?
>>>>
>>>> Regards,
>>>> Riko
>>>>
>> -- 
>> /*****
>> Sent By
>> Ubuntu 16.04 LTS
>> Kernel 4.4.0-92-generic
>> Regards,
>> Riko H
>> *****/
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
/*****
Sent By
Ubuntu 16.04 LTS
Kernel 4.4.0-92-generic
Regards,
Riko H
*****/


