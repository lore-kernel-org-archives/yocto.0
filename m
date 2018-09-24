Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 867E3E00A9B; Mon, 24 Sep 2018 00:08:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.210.183 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com
	(mailrelay2-1.pub.mailoutpod1-cph3.one.com [46.30.210.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4411FE0090C
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 00:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	message-id:from:references:cc:to:subject:from;
	bh=SzTpqXK3hJj+BaG71cAmZRJjdn6IbK5IcYfa3eVSiIw=;
	b=ch6yK11CgS9fB2DaPNjwi+WL128RdMjcxv+MTnlrdD/Ds3VlJbbTsVqf8cCN7UzVeNGXcBiPHHz+z
	Csag+tA/NsRZhcdzhz8rV5e2G8Q5q+LHU5Wf+YuEQp5N+xJXA2ghwhMx6v46IoUoXzlvzJ9aHTMfVs
	v2lNpkQ6JDtG89uE=
X-HalOne-Cookie: 096b48f23f73dc1ee4e63e00ba37064dc7f29785
X-HalOne-ID: a37f3843-bfc8-11e8-9b9d-d0431ea8a290
Received: from [192.168.0.101] (unknown [176.71.129.70])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id a37f3843-bfc8-11e8-9b9d-d0431ea8a290;
	Mon, 24 Sep 2018 07:08:29 +0000 (UTC)
To: Andrea Adami <andrea.adami@gmail.com>
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
	<d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
	<c9071e74-5a04-408e-6a5b-87490fc9b167@berginkonsult.se>
	<CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com>
	<570c7242-e0a8-a65c-aa8f-93b4c331da08@berginkonsult.se>
	<CAAQYJAvccEtSj1VpXJ-KdaB8Q=s+rQ2SQ8oRn2Bo2ojo5+U3xg@mail.gmail.com>
	<CAAQYJAs7Wi5S1Qf2-TgQZC76wf7NxEATnr2dR1pfVi6r3zn30Q@mail.gmail.com>
From: Peter Bergin <peter@berginkonsult.se>
Message-ID: <f6f533e1-7215-6eb0-c9bb-a25a158521a7@berginkonsult.se>
Date: Mon, 24 Sep 2018 09:08:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAAQYJAs7Wi5S1Qf2-TgQZC76wf7NxEATnr2dR1pfVi6r3zn30Q@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: liblzma: memory allocation failed
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
X-List-Received-Date: Mon, 24 Sep 2018 07:08:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2018-09-24 00:06, Andrea Adami wrote:
> On Fri, Sep 21, 2018 at 1:04 AM Andrea Adami <andrea.adami@gmail.com> wrote:
>> On Thu, Sep 20, 2018 at 1:03 PM Peter Bergin <peter@berginkonsult.se> wrote:
>>> On 2018-09-17 10:27, Burton, Ross wrote:
>>>
>>> On Mon, 17 Sep 2018 at 08:13, Peter Bergin <peter@berginkonsult.se> wrote:
>>>
>>> I'm pretty sure I have narrowed down the root cause to the restriction
>>> of virtual memory and that liblzma base its memory calculations on
>>> physical RAM.
>>>
>>> To prove this I added a printout in rpm-native/rpmio/rpmio.c and the
>>> function lzopen_internal.
>>>
>>>           uint64_t memory_usage = lzma_stream_encoder_mt_memusage(&mt_options);
>>>          rpmlog(RPMLOG_NOTICE, "DBG: memory_usage %lu\n", memory_usage);
>>>
>>>
>>> The value of memory_usage is the same regardless of which 'ulimit -v'
>>> value I set. On the host with 256GB of physical RAM and 32GB of virtual
>>> memory, memory_usage is ~5.1GB. On another host with 16GB of physical
>>> RAM I get memory_usage of ~660MB.
>>>
>>> I guess you have not seen this kind of failure if you not have
>>> restricted virutal memory on your host. If you want to try to reproduce
>>> this set 'ulimit -v 8388608' (8GB) in your shell and then 'bitbake
>>> glibc-locale -c package_write_rpm -f'.
>>>
>>> Wouldn't a solution be to change lzma to look at free memory, not
>>> total physical memory?
>>>
>>> Ross
>>>
>>> I have been in contact with the maintainer of liblzma. There is currently no way to restrict the memory usage in liblzma during multi threaded compression. He recommended to adjust the number of threads used during compression. This kind of check is done for 32-bits but not when running 64-bits (in rpmio/rpmio.c lzopen_internal). To rewrite liblzma is another option but I took an easier way out.
>>>
>>> I have come up with a patch (https://patchwork.openembedded.org/patch/155017/) that solves my problem and do a restriction of memory usage when the 'ulimit -v' is set. The calculation is based on the assumption that lzopen_internal is run in parallel with as many instances as cpu threads as '#pragma omp parallel' is used in build/pack.c.
>>>
>>> When running test on my machine with 4 cores 16GB of physical RAM and 'ulimit -v 2097152' (2GB). It works good and the log shows:
>>>
>>> XZ: virtual memory restricted to 2147483648 and per CPU thread 536870912
>>> XZ: Adjusted the number of threads from 4 to 3 to not exceed the memory usage limit of 2147483648 bytes
>>>
>>> Didn't get a clear answer if this is something Yocto/OE should support but I hope my patch solves the issue and it will not affect the normal environments where 'ulimit -v' is not set.
>>>
>>> /Peter
>>> --
>> Peter,
>> first of all sorry for butting-in again. My bad I misunderstood the point,
>>
>> Looking properly at it, I see the sources do restrict only #if __WORDSIZE == 32.
>>
>> Again, there is the other way to reduce total memory footprint just
>> using lower preset in mt_options.
>> As far as I see default is  #define LZMA_PRESET_DEFAULT     UINT32_C(6)
>> so you could tr to modify   mt_options.preset to your needs.
>> I think more threads is normally  better.
>>
>> Cheers
>> Andrea
>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
> Well,
> call it luck, I now get similar problems with
> -  opkg-utils: use multithreaded xz when building packages
>     369c43cca4f0
>
> I build in tmpfs (8GB) and have 8 cores.
> Strange enough, it does happen with only one machine of our bsp (akita).
>
> Build Configuration:
> BB_VERSION           = "1.39.1"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "ubuntu-16.04"
> TARGET_SYS           = "arm-oe-linux-gnueabi"
> MACHINE              = "akita"
> DISTRO               = "nodistro"
> DISTRO_VERSION       = "nodistro.0"
> TUNE_FEATURES        = "arm armv5 thumb dsp"
> TARGET_FPU           = "soft"
> meta                 = "master:8cc08e44cf3e969c124456d459c6c06a76cad018"
> meta-handheld        = "master:61e16e253ea870b87592075efd87727e8b5c574d"
> meta-initramfs
> meta-oe              = "master:7ac8d82fec470a8c8e66cfc4216381e2364cb4b2"
>
> ...
> Installing kernel-module-nls-cp1251-4.14.62-handheld (4.14) on root
> Downloading file:/tmp/build/tmp-glibc/work/akita-oe-linux-gnueabi/core-image-base/1.0-r0/oe-rootfs-repo/akita/kernel-module-nls-cp1251-4.14.62-handheld_4.14-r0_akita.ipk.
> Installing kernel-mo
> ERROR: core-image-base-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /tmp/build/tmp-glibc/work/akita-oe-linux-gnueabi/core-image-base/1.0-r0/temp/log.do_rootfs.28481
> ERROR: Task (/oe/oe-core/meta/recipes-core/images/core-image-base.bb:do_rootfs)
> failed with exit code '1'
> ...
>
> and in dmesg you see opkg segfaulting and OOM kicking in.
> It is the same issue...unnoticed building for other similar devices
> (spitz). Maybe it did not happen using musl as TC_LIBC.
>
> Reverting the patch fixes that.
> Ross, worth opening a bug?
>
> Cheers
> Andrea
Andrea,

do you have any virtual memory restrictions (ulimit -v) or overcommit 
settings (vm.overcommit_memory)  on your build host?

Regarding my problem with rpm and liblzma when virtual memory is 
restricted I have supplied a patch to oe-core 
https://patchwork.openembedded.org/patch/155017/ with a suggested solution.

Regards,
/Peter

