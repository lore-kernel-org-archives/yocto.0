Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFA2CE01213
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2011 01:20:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7M8KftJ024446
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 22 Aug 2011 01:20:41 -0700 (PDT)
Received: from [128.224.162.246] (128.224.162.246) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 22 Aug 2011 01:20:41 -0700
Message-ID: <4E521174.8090804@windriver.com>
Date: Mon, 22 Aug 2011 16:21:08 +0800
From: Liming Wang <liming.wang@windriver.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1313748398-31102-1-git-send-email-liming.wang@windriver.com>
	<1313771298.13995.116.camel@rex>
In-Reply-To: <1313771298.13995.116.camel@rex>
X-Originating-IP: [128.224.162.246]
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH] script/runqemu: change boot command line for qemuppc
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
X-List-Received-Date: Mon, 22 Aug 2011 08:20:45 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-8-20 0:28, Richard Purdie wrote:
> On Fri, 2011-08-19 at 18:06 +0800, Liming Wang wrote:
>> Because qemuppc has no graphic emulation, remove console=tty0
>> and make it run into 3 run level. This can reduce boot time
>> for qemuppc booting.
>>
>> Signed-off-by: Liming Wang<liming.wang@windriver.com>
>> ---
>>   scripts/runqemu-internal |    4 ++--
>>   1 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
>> index c15632d..883fa5b 100755
>> --- a/scripts/runqemu-internal
>> +++ b/scripts/runqemu-internal
>> @@ -384,7 +384,7 @@ if [ "$MACHINE" = "qemuppc" ]; then
>>       BIOS=powerpc_rom.bin
>>       QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS -nographic"
>>       if [ "$FSTYPE" = "ext3" -o "$FSTYPE" = "btrfs" ]; then
>> -        KERNCMDLINE="root=/dev/hda rw console=ttyS0 console=tty0 $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
>> +        KERNCMDLINE="root=/dev/hda rw console=ttyS0 3 $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
>>           QEMUOPTIONS="$QEMU_NETWORK_CMD -cpu $CPU_SUBTYPE -M $MACHINE_SUBTYPE -bios $BIOS -hda $ROOTFS -no-reboot $QEMU_UI_OPTIONS"
>>       fi
>>       if [ "$FSTYPE" = "nfs" ]; then
>> @@ -393,7 +393,7 @@ if [ "$MACHINE" = "qemuppc" ]; then
>>               cleanup
>>               return
>>           fi
>> -        KERNCMDLINE="root=/dev/nfs console=ttyS0 console=tty0 nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
>> +        KERNCMDLINE="root=/dev/nfs console=ttyS0 3 nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
>>           QEMUOPTIONS="$QEMU_NETWORK_CMD -cpu $CPU_SUBTYPE -M $MACHINE_SUBTYPE -bios $BIOS -no-reboot $QEMU_UI_OPTIONS"
>>       fi
>>   fi
> Can we not fix the X scripts so that if an fbdev X server is in use and
X scripts serve for all the boards. And we also can't assume all the 
boards use the same
framebuffer device. So how to detect whether the framebuffer device 
exists is board dependent.
Maybe we can see whether the device /dev/fb0 exists(it could be created 
manually, so we should try to open it to verify)
or the file /proc/fb exists to confirm the framebuffer device. Anyway, 
any modification should be
tested on all boards to see whether it works. I prefer to mark it as 
todo task in 1.1

Liming Wang
> the framebuffer device node does not exist, it just exits cleanly with a
> suitable message and doesn't timeout on boot?
>
> Cheers,
>
> Richard
>
>


