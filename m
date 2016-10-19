Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A556E00E67; Wed, 19 Oct 2016 02:52:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5124E00E65
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 02:52:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u9J9q4tI023095
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 19 Oct 2016 02:52:04 -0700 (PDT)
Received: from [128.224.162.183] (128.224.162.183) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 19 Oct 2016 02:52:03 -0700
To: "Lock, Joshua G" <joshua.g.lock@intel.com>, "srifenbark@gmail.com"
	<srifenbark@gmail.com>
References: <1707604.JiaMnXxcz2@peggleto-mobl.ger.corp.intel.com>
	<2371a296-57bd-affa-0b1f-1304ce81e0dc@windriver.com>
	<1476434156.3083.2.camel@intel.com>
	<e78a5a30-b839-ffb4-8282-41896cdb1b77@windriver.com>
	<CAFNP8Ou9P=v+ohhXMr0gC2Kb4kwiuk2DuTrhJDHgxVLFLZvqOg@mail.gmail.com>
	<1476869465.18335.5.camel@intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <7b1afc7a-f970-86fa-8d1b-28ec4c50fa5e@windriver.com>
Date: Wed, 19 Oct 2016 17:52:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1476869465.18335.5.camel@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "EGGLETON,
	PAUL" <paul.eggleton@intel.com>
Subject: Re: Migration info - runqemu
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
X-List-Received-Date: Wed, 19 Oct 2016 09:52:10 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Joshua,

On 10/19/2016 05:31 PM, Lock, Joshua G wrote:
> Hi Scott,
>
> My only real concern is where we say "The script requires a configuration file…".
>
> The configuration file isn't compulsory. Previous usage models are supported, as
> noted below.

If we want to officially support runqemu boot the target without qemuboot.conf,
we should also document that.

Use runqemu without qemuboot.conf:
* Supported machines
qemuarm
qemuarm64
qemux86
qemux86-64
qemuppc
qemumips
qemumips64
qemumipsel
qemumips64el

And the usage is:
$ runqemu <machine> <rootfs> <kernel> [options]

For example:
$ runqemu qemux86-64 
tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.ext4 
tmp/deploy/images/qemux86-64/bzImage nographic


Please feel free to give your comments. I'm sorry to say that I have to
go now.

// Robert

>
> The configuration file enables fine-grained tuning of options passed to qemu
> without the runqemu script hard-coding any knowledge about different machines,
> using it is convenient (especially when trying to use QEMU with machines other
> than the qemu* machines in OE-Core) but not mandatory.
>
> Robert, would you agree? Could you review the docs changes Scott has made?
>
> Thanks,
>
> Joshua
>
> On Fri, 2016-10-14 at 09:24 -0700, Scott Rifenbark wrote:
>> Everyone,
>>
>> I updated the section about runqemu being ported to Python.  I don't
>> understand a lot of it so I did my best to clean up the basic texts and
>> changes you sent.  Look it over here
>> http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#migration-2.2-runqemu-ported-to-python
>> and provide me with fixes.  Things are getting down to the wire so if you want
>> changes in the RC get them to me as quick as possible.
>>
>> Thanks,
>> Scott
>>
>> On Fri, Oct 14, 2016 at 2:16 AM, Robert Yang <liezhi.yang@windriver.com
>> <mailto:liezhi.yang@windriver.com>> wrote:
>>>
>>>
>>> On 10/14/2016 04:35 PM, Lock, Joshua G wrote:
>>>> On Fri, 2016-10-14 at 10:12 +0800, Robert Yang wrote:
>>>>> Hi Paul and Scott,
>>>>>
>>>>> Here it is, and please feel free to comment, most of them are from
>>>>> qemuboot.bbclass:
>>>>>
>>>>> The new runqemu is a python script, it requires a
>>>>> <image-name>-<machine>.qemuboot.conf to boot the bsp, the
>>>>> qemuboot.conf
>>>>> is generated by qemuboot.bbclass during build rootfs, qemu boot
>>>>> arguments can be set in bsp's conf file, and qemuboot.bbclass will
>>>>> save
>>>>> them to qemuboot.conf.
>>>>>
>>>>
>>>> Can we also document when qemuboot.conf required and what benefits it
>>>> brings? Previous usage patterns should also be supported, right?
>>>>
>>>
>>> Yes, the benefit is that the machine knowledge are not hardcoded into
>>> runqemu any more, the bsp can define its own arguments to make it can be
>>> boot by runqemu. And previous usage patterns also be supported.
>>>
>>> // Robert
>>>
>>>
>>>>
>>>> Thanks,
>>>>
>>>> Joshua
>>>>
>>>>>
>>>>> Note, "QB" means Qemu Boot, the following vars can be set in conf
>>>>> files, such as <bsp.conf> to make it can be boot by runqemu:
>>>>>
>>>>> QB_SYSTEM_NAME: qemu name, e.g., "qemu-system-i386"
>>>>> QB_OPT_APPEND: options to append to qemu, e.g., "-show-cursor"
>>>>> QB_DEFAULT_KERNEL: default kernel to boot, e.g., "bzImage"
>>>>> QB_DEFAULT_FSTYPE: default FSTYPE to boot, e.g., "ext4"
>>>>> QB_MEM: memory, e.g., "-m 512"
>>>>> QB_MACHINE: qemu machine, e.g., "-machine virt"
>>>>> QB_CPU: qemu cpu, e.g., "-cpu qemu32"
>>>>> QB_CPU_KVM: the similar to QB_CPU, but used when kvm, e.g., '-cpu
>>>>> kvm64',
>>>>>              set it when support kvm.
>>>>> QB_KERNEL_CMDLINE_APPEND: options to append to kernel's -append
>>>>>                            option, e.g., "console=ttyS0 console=tty"
>>>>> QB_DTB: qemu dtb name
>>>>> QB_AUDIO_DRV: qemu audio driver, e.g., "alsa", set it when support
>>>>> audio
>>>>> QB_AUDIO_OPT: qemu audio option, e.g., "-soundhw ac97,es1370", used
>>>>>                when QB_AUDIO_DRV is set.
>>>>> QB_KERNEL_ROOT: kernel's root, e.g., /dev/vda
>>>>> QB_TAP_OPT: netowrk option for 'tap' mode, e.g.,
>>>>>              "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=n
>>>>> o -device
>>>>> virtio-net-device,netdev=net0"
>>>>>               Note, runqemu will replace "@TAP@" with the one which
>>>>> is used,
>>>>> such as tap0, tap1 ...
>>>>> QB_SLIRP_OPT: network option for SLIRP mode, e.g.,
>>>>>              "-netdev user,id=net0 -device virtio-net-
>>>>> device,netdev=net0"
>>>>> QB_ROOTFS_OPT: used as rootfs, e.g.,
>>>>>                "-drive id=disk0,file=@ROOTFS@,if=none,format=raw
>>>>> -device
>>>>> virtio-blk-device,drive=disk0"
>>>>>               Note, runqemu will replace "@ROOTFS@" with the one
>>>>> which is used,
>>>>> such as core-image-minimal-qemuarm64.ext4.
>>>>> QB_SERIAL_OPT: serial port, e.g., "-serial mon:stdio"
>>>>> QB_TCPSERIAL_OPT: tcp serial port option, e.g.,
>>>>>                    " -device virtio-serial-device -chardev
>>>>> socket,id=virtcon,port=@PORT@,host=127.0.0.1 -device
>>>>> virtconsole,chardev=virtcon"
>>>>>                    Note, runqemu will replace "@PORT@" with the port
>>>>> number
>>>>> which is used.
>>>>>
>>>>> Usage:
>>>>> IMAGE_CLASSES += "qemuboot"
>>>>> See "runqemu help" for more info
>>>>>
>>>>> // Robert
>>>>>
>>>>> On 10/14/2016 09:48 AM, Paul Eggleton wrote:
>>>>>>
>>>>>> Hi folks,
>>>>>>
>>>>>> We need some info for the migration section of the 2.2 manual about
>>>>>> what the
>>>>>> user needs to do to adapt to the new python-based runqemu. Robert /
>>>>>> Joshua,
>>>>>> can one of you please write something short that explains what
>>>>>> users need to
>>>>>> do (i.e. changes to the metadata for BSPs, or any other changes in
>>>>>> operation)?
>>>>>> It doesn't need to be polished, Scott Rifenbark will take care of
>>>>>> that. Just
>>>>>> replying to this email with Scott on CC should be sufficient.
>>>>>>
>>>>>> Thanks,
>>>>>> Paul
>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>

