Return-Path: <itjegan@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E2F4E0098F
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 05:12:59 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id hn9so4950035wib.7
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 05:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=RsFUTo918QhqXbDtQ8cT+TqI60/ZpXJIvjU46UC5iwo=;
	b=d2cMueYzmfVPpLUyZxt4tmPa6spnJsbH1RPUXv4ze8dkoZvJPxf1czgkruK4zKhxIg
	8s/OjP7MpbLNDYykqMNp1Q38si0egOBhvwWDT2y7sXJJGxdQXxzKG62hU4y0GZ9hX6qN
	y5kYdjEeeAGMkJwdEor7s0aR1hqtUq0S6QduTkIqGPQ0pvnCE6XQIjhDyWTjqUgYM97d
	1iiDooH1GD1rglJ0omQsbkBvG4wTO9IHj5o3K1EVwEcQSlja30zVtf6v2gopNa/h5QYy
	HqSVn/uN7gHE7mBIFPnskAI/b4whTNAKjmExyzzzyuPKAQeNQIDIbZOWpnyS5FNqxte5
	ni7w==
MIME-Version: 1.0
X-Received: by 10.180.82.37 with SMTP id f5mr18583124wiy.6.1395231178102; Wed,
	19 Mar 2014 05:12:58 -0700 (PDT)
Received: by 10.194.95.167 with HTTP; Wed, 19 Mar 2014 05:12:58 -0700 (PDT)
Date: Wed, 19 Mar 2014 17:42:58 +0530
Message-ID: <CAFE+A7kjuv0x9mqr8+mYnd4eXTm1LCkyjBEHQjJA20KpvGsQAA@mail.gmail.com>
From: Jegathesan Durairaj <itjegan@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sat, 29 Mar 2014 13:14:58 -0700
Subject: Recursive entry to debugger" panic seen with KGDB (PowerPC)
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
X-List-Received-Date: Wed, 19 Mar 2014 12:13:00 -0000
Content-Type: multipart/alternative; boundary=f46d04430416c01de304f4f4927b

--f46d04430416c01de304f4f4927b
Content-Type: text/plain; charset=ISO-8859-1

I am using Linux Kernel Version 2.6.34.6 SMP for powerPC 64 bit. I tried to
debug kernel using KGDB and ended up in Kernel panic reboot issue. Here is
the list of steps I did.

1) I enabled the following in the config file

CONFIG_DEBUG_PAGEALLOC=y
CONFIG_DEBUG_KERNEL=y
CONFIG_DEBUG_INFO=y
CONFIG_KGDB=y
CONFIG_FRAME_POINTER=y
CONFIG_KGDB_SERIAL_CONSOLE=y

Built and loaded the Kernel.

2) My Linux PC is connected terminal server using ttyS0 and I enabled KGDB
over serial port by doing

"echo ttyS0 > /sys/module/kgdboc/parameters/kgdboc"

3) Trigger KGDB by issuing sysrq-g. echo g > /proc/sysrq-trigger

4) Kernel Panic reboot is seen with the following reboot log

sw0:root> echo ttyS0 > /sys/module/kgdboc/parameters/kgdboc
kgdb: Registered I/O driver kgdboc.
sw0:root> echo g > /proc/sysrq-trigger
SysRq : DEBUG
Entering KGDB
Unable to handle kernel paging request for instruction fetch
Faulting instruction address: 0x00000000
KGDB: re-enter exception: ALL breakpoints killed
Call Trace:
STACK MAGIC 0x57ac6e9d
[813679c0] [40007fcc] show_stack+0x84/0x24c (unreliable)
[81367a20] [4057d9f4] dump_stack+0x2c/0x44
[81367a30] [40098008] kgdb_handle_exception+0x184/0x1b8
[81367a80] [40013320] kgdb_debugger+0x88/0xa0
[81367a90] [4000f5a4] die+0x48/0x28c
[81367ac0] [40019460] bad_page_fault+0x90/0xe0
[81367ae0] [400123fc] handle_page_fault+0x7c/0x80
[81367ba0] [407a0000] kmalloc_caches+0xdc0/0x1340
[81367bb0] [402d11ac] uart_poll_get_char+0x58/0x70
[81367bc0] [402daae8] kgdboc_get_char+0x40/0x58
[81367bd0] [40096eac] kgdb_cpu_enter+0x420/0x1320
[81367c60] [40097f08] kgdb_handle_exception+0x84/0x1b8
[81367cb0] [40013250] kgdb_handle_breakpoint+0x4c/0x94
[81367cc0] [40578dbc] program_check_exception+0x5c/0x860
[81367da0] [40012544] ret_from_except_full+0x0/0x4c
[81367e60] [40096018] sysrq_handle_gdb+0x94/0xb0
[81367e70] [402c9f28] __handle_sysrq+0xe0/0x1c8
[81367ea0] [402ca06c] write_sysrq_trigger+0x5c/0x80
[81367eb0] [401614a4] proc_reg_write+0x90/0xcc
[81367ee0] [4011201c] vfs_write+0xb4/0x1a8
[81367f00] [401122b0] sys_write+0x60/0x144
[81367f40] [40011f4c] ret_from_syscall+0x0/0x3c
Kernel panic - not syncing: Recursive entry to debugger
Call Trace:
STACK MAGIC 0x57ac6e9d


Can you help me to understand the root cause of the issue? Let me know
how to solve this issue.


Thanks

Jegan

--f46d04430416c01de304f4f4927b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"white-space:pre-wrap;font-size:13px;margin-t=
op:0px;margin-bottom:0px;padding:15px;border-width:0px 0px 0px 1px;border-l=
eft-style:solid;border-left-color:rgb(229,229,229);outline:0px;vertical-ali=
gn:baseline;font-family:monospace,sans-serif;word-wrap:break-word;overflow:=
auto;color:rgb(85,85,85);line-height:18px">
I am using Linux Kernel Version 2.6.34.6 SMP for powerPC 64 bit. I tried to
debug kernel using KGDB and ended up in Kernel panic reboot issue. Here is
the list of steps I did.

1) I enabled the following in the config file

CONFIG_DEBUG_PAGEALLOC=3Dy
CONFIG_DEBUG_KERNEL=3Dy
CONFIG_DEBUG_INFO=3Dy
CONFIG_KGDB=3Dy
CONFIG_FRAME_POINTER=3Dy
CONFIG_KGDB_SERIAL_CONSOLE=3Dy

Built and loaded the Kernel.

2) My Linux PC is connected terminal server using ttyS0 and I enabled KGDB
over serial port by doing

&quot;echo ttyS0 &gt; /sys/module/kgdboc/parameters/kgdboc&quot;

3) Trigger KGDB by issuing sysrq-g. echo g &gt; /proc/sysrq-trigger

4) Kernel Panic reboot is seen with the following reboot log

sw0:root&gt; echo ttyS0 &gt; /sys/module/kgdboc/parameters/kgdboc
kgdb: Registered I/O driver kgdboc.
sw0:root&gt; echo g &gt; /proc/sysrq-trigger
SysRq : DEBUG
Entering KGDB
Unable to handle kernel paging request for instruction fetch
Faulting instruction address: 0x00000000
KGDB: re-enter exception: ALL breakpoints killed
Call Trace:
STACK MAGIC 0x57ac6e9d
[813679c0] [40007fcc] show_stack+0x84/0x24c (unreliable)
[81367a20] [4057d9f4] dump_stack+0x2c/0x44
[81367a30] [40098008] kgdb_handle_exception+0x184/0x1b8
[81367a80] [40013320] kgdb_debugger+0x88/0xa0
[81367a90] [4000f5a4] die+0x48/0x28c
[81367ac0] [40019460] bad_page_fault+0x90/0xe0
[81367ae0] [400123fc] handle_page_fault+0x7c/0x80
[81367ba0] [407a0000] kmalloc_caches+0xdc0/0x1340
[81367bb0] [402d11ac] uart_poll_get_char+0x58/0x70
[81367bc0] [402daae8] kgdboc_get_char+0x40/0x58
[81367bd0] [40096eac] kgdb_cpu_enter+0x420/0x1320
[81367c60] [40097f08] kgdb_handle_exception+0x84/0x1b8
[81367cb0] [40013250] kgdb_handle_breakpoint+0x4c/0x94
[81367cc0] [40578dbc] program_check_exception+0x5c/0x860
[81367da0] [40012544] ret_from_except_full+0x0/0x4c
[81367e60] [40096018] sysrq_handle_gdb+0x94/0xb0
[81367e70] [402c9f28] __handle_sysrq+0xe0/0x1c8
[81367ea0] [402ca06c] write_sysrq_trigger+0x5c/0x80
[81367eb0] [401614a4] proc_reg_write+0x90/0xcc
[81367ee0] [4011201c] vfs_write+0xb4/0x1a8
[81367f00] [401122b0] sys_write+0x60/0x144
[81367f40] [40011f4c] ret_from_syscall+0x0/0x3c
Kernel panic - not syncing: Recursive entry to debugger
Call Trace:
STACK MAGIC 0x57ac6e9d


Can you help me to understand the root cause of the issue? Let me know
how to solve this issue.


Thanks

Jegan</pre></div>

--f46d04430416c01de304f4f4927b--
