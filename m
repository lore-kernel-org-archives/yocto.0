Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBAE5C3DA6E
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 12:36:34 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.16397.1704285390734652773
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jan 2024 04:36:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ShX6S0yV;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: daniele.lugli@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-28bd623c631so8473722a91.3
        for <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 04:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704285390; x=1704890190; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RXxH/6LZXscWuv57V6d+7C5cX3q99Fxnk1CC4ET6yjc=;
        b=ShX6S0yVEX5ZDkXarT6k6phm6pjrdzm67wSefUD9t7+bi0HEHmV82Ej//s3r8bKj9c
         X0DIz51bgFiCPkvFwYU8xSFF9B3vtTIvunXhexwmKh09yCg6Rpl8C2f6fyY5wWtII0Md
         mucgYYr9r/+Nj57e5MRBo+4X4+B6biRoxw2C1s6wVwp+axvNceN0tI6WIupmBB4ObzHQ
         bREjU/kfr0BfQ2lIfxVzY48obVVoAoADRcH0/TB7ju4X/L6vAuEoJM+vcYOt7Ax8xpCC
         3oh33hgM+I7mg1pBNLDc2gQKt6sFlYwQ8mloI9fZ9axMtzYFDl/NI8dgAa/1GwPgkKv6
         g1XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704285390; x=1704890190;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RXxH/6LZXscWuv57V6d+7C5cX3q99Fxnk1CC4ET6yjc=;
        b=TMa1iFdtg2w3ci9Wc3Fr+d7fctXiORJTnE8zkPLg16E1H/8auDoDI1srqsz6tgohWP
         qphUds/LYv2UyM6MvgnuBZpaWaugJw8kI9gRBwsscRPSa5sWhuQGZk2FCAJvak9h3FFD
         TzIMV587jhgL1JOdxvfYyLYmCIoPkJwbccLRGDpCOFP2Bi/xwoc912+1GSGzsIdj2vG7
         hNaVoCA+kBHdtTriK/nC0pSwL5rpVmXkaitJyTKlCyzW52Oo0PQXs8lrG4Fcd22Rs5Xo
         nAq0cQYGbtw7Mk7CJr76YLEKmkEnyfQ/ewJZsB/oWYJIuZSk3VrDk15mDJ3LLSNfSUmd
         QwMg==
X-Gm-Message-State: AOJu0YxTTwGr3isCQwnxVS2sMuIipm6JDyLJWU20SPWhaPwM8H9HwA3d
	MIugUK3u3419mTDsN3il6sW2GgzEBp8NYastTl9cvNjm3eo=
X-Google-Smtp-Source: AGHT+IG0JKKg32ZKQR12QQbEMoQrE+30QFU+FY4JdJmy2gnlMNZ15077QgcoGHrrOPYV0L3/gbd7PAtX5OFKO8Ibpsc=
X-Received: by 2002:a17:90a:4612:b0:28b:cc26:c973 with SMTP id
 w18-20020a17090a461200b0028bcc26c973mr10726686pjg.92.1704285389497; Wed, 03
 Jan 2024 04:36:29 -0800 (PST)
MIME-Version: 1.0
References: <z3fE.1704232194586691808.HEiw@lists.yoctoproject.org>
 <CAMKF1sqjx_YRMPOTTLNf0ku4ZZhtzow50Y2PTzPgSJKxkJDuTA@mail.gmail.com> <CADuc0QccV48nErsMcmvFdxJ8wiKXdEUgX_P46YU3YKUG_T-Yxw@mail.gmail.com>
In-Reply-To: <CADuc0QccV48nErsMcmvFdxJ8wiKXdEUgX_P46YU3YKUG_T-Yxw@mail.gmail.com>
From: Daniele Lugli <daniele.lugli@gmail.com>
Date: Wed, 3 Jan 2024 13:36:18 +0100
Message-ID: <CADuc0QdAnGhgMN=LERvb1hYeq+6TgrToJ+LmjnGWYKKszcGGtw@mail.gmail.com>
Subject: Re: [yocto] Nondeterministic errors with bitbake
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003ca833060e09ddad"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 12:36:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62078

--0000000000003ca833060e09ddad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, I forgot to say that

$ cat /proc/meminfo
MemTotal:       16342772 kB
MemFree:          487528 kB
MemAvailable:   12466660 kB
Buffers:           99088 kB
Cached:         10992948 kB
SwapCached:       193252 kB
Active:          5830636 kB
Inactive:        7700572 kB
Active(anon):     750184 kB
Inactive(anon):  1771264 kB
Active(file):    5080452 kB
Inactive(file):  5929308 kB
Unevictable:          36 kB
Mlocked:              36 kB
SwapTotal:       2097148 kB
SwapFree:         665396 kB
Zswap:                 0 kB
Zswapped:              0 kB
Dirty:               336 kB
Writeback:             0 kB
AnonPages:       2245872 kB
Mapped:           892664 kB
Shmem:             82276 kB
KReclaimable:    1304956 kB
Slab:            1595468 kB
SReclaimable:    1304956 kB
SUnreclaim:       290512 kB
KernelStack:       23440 kB
PageTables:        45896 kB
SecPageTables:         0 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:    10268532 kB
Committed_AS:   10681620 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       69392 kB
VmallocChunk:          0 kB
Percpu:            13440 kB
HardwareCorrupted:     0 kB
AnonHugePages:         0 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:         0 kB
FilePmdMapped:         0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:     1545776 kB
DirectMap2M:    15208448 kB

and

$ cat /proc/cpuinfo
processor : 0
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz
stepping : 7
microcode : 0x2f
cpu MHz : 2801.749
cache size : 6144 KB
physical id : 0
siblings : 8
core id : 0
cpu cores : 4
apicid : 0
initial apicid : 0
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16
xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx
lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid
xsaveopt dtherm ida arat pln pts md_clear flush_l1d
vmx flags : vnmi preemption_timer invvpid ept_x_only flexpriority
tsc_offset vtpr mtf vapic ept vpid unrestricted_guest
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs
itlb_multihit mmio_unknown
bogomips : 4389.92
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 1
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz
stepping : 7
microcode : 0x2f
cpu MHz : 2793.518
cache size : 6144 KB
physical id : 0
siblings : 8
core id : 1
cpu cores : 4
apicid : 2
initial apicid : 2
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16
xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx
lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid
xsaveopt dtherm ida arat pln pts md_clear flush_l1d
vmx flags : vnmi preemption_timer invvpid ept_x_only flexpriority
tsc_offset vtpr mtf vapic ept vpid unrestricted_guest
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs
itlb_multihit mmio_unknown
bogomips : 4389.92
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 2
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz
stepping : 7
microcode : 0x2f
cpu MHz : 2793.722
cache size : 6144 KB
physical id : 0
siblings : 8
core id : 2
cpu cores : 4
apicid : 4
initial apicid : 4
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16
xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx
lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid
xsaveopt dtherm ida arat pln pts md_clear flush_l1d
vmx flags : vnmi preemption_timer invvpid ept_x_only flexpriority
tsc_offset vtpr mtf vapic ept vpid unrestricted_guest
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs
itlb_multihit mmio_unknown
bogomips : 4389.92
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 3
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz
stepping : 7
microcode : 0x2f
cpu MHz : 2849.795
cache size : 6144 KB
physical id : 0
siblings : 8
core id : 3
cpu cores : 4
apicid : 6
initial apicid : 6
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16
xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx
lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid
xsaveopt dtherm ida arat pln pts md_clear flush_l1d
vmx flags : vnmi preemption_timer invvpid ept_x_only flexpriority
tsc_offset vtpr mtf vapic ept vpid unrestricted_guest
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs
itlb_multihit mmio_unknown
bogomips : 4389.92
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 4
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz
stepping : 7
microcode : 0x2f
cpu MHz : 2977.541
cache size : 6144 KB
physical id : 0
siblings : 8
core id : 0
cpu cores : 4
apicid : 1
initial apicid : 1
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16
xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx
lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid
xsaveopt dtherm ida arat pln pts md_clear flush_l1d
vmx flags : vnmi preemption_timer invvpid ept_x_only flexpriority
tsc_offset vtpr mtf vapic ept vpid unrestricted_guest
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs
itlb_multihit mmio_unknown
bogomips : 4389.92
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 5
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz
stepping : 7
microcode : 0x2f
cpu MHz : 2793.309
cache size : 6144 KB
physical id : 0
siblings : 8
core id : 1
cpu cores : 4
apicid : 3
initial apicid : 3
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16
xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx
lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid
xsaveopt dtherm ida arat pln pts md_clear flush_l1d
vmx flags : vnmi preemption_timer invvpid ept_x_only flexpriority
tsc_offset vtpr mtf vapic ept vpid unrestricted_guest
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs
itlb_multihit mmio_unknown
bogomips : 4389.92
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 6
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz
stepping : 7
microcode : 0x2f
cpu MHz : 2793.570
cache size : 6144 KB
physical id : 0
siblings : 8
core id : 2
cpu cores : 4
apicid : 5
initial apicid : 5
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16
xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx
lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid
xsaveopt dtherm ida arat pln pts md_clear flush_l1d
vmx flags : vnmi preemption_timer invvpid ept_x_only flexpriority
tsc_offset vtpr mtf vapic ept vpid unrestricted_guest
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs
itlb_multihit mmio_unknown
bogomips : 4389.92
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

processor : 7
vendor_id : GenuineIntel
cpu family : 6
model : 42
model name : Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz
stepping : 7
microcode : 0x2f
cpu MHz : 2977.566
cache size : 6144 KB
physical id : 0
siblings : 8
core id : 3
cpu cores : 4
apicid : 7
initial apicid : 7
fpu : yes
fpu_exception : yes
cpuid level : 13
wp : yes
flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat
pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm
constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc
cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16
xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx
lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid
xsaveopt dtherm ida arat pln pts md_clear flush_l1d
vmx flags : vnmi preemption_timer invvpid ept_x_only flexpriority
tsc_offset vtpr mtf vapic ept vpid unrestricted_guest
bugs : cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs
itlb_multihit mmio_unknown
bogomips : 4389.92
clflush size : 64
cache_alignment : 64
address sizes : 36 bits physical, 48 bits virtual
power management:

I didn't consider the possibility of RAM failure because, before installing
Ubuntu, the PC was (seemingly) working fine with Windows 10.

Thank you again & best regards

Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
tel 329 3933041
www.general-logic.com
www.linkedin.com/in/daniele-lugli


Il giorno mer 3 gen 2024 alle ore 13:09 Daniele Lugli <
daniele.lugli@gmail.com> ha scritto:

> Thank you for your replies,
>
> memtest86+ reports a couple of failing memory addresses, so this is
> probably the reason why. Must replace the RAM of this old beast and, whil=
e
> I am at it, expand it to 64 Gb.
>
> Apart from that, dmesg says
>
> [   18.608897] kernel: resource: resource sanity check: requesting [mem
> 0x000000
> 00000e0000-0x00000000000fffff], which spans more than PCI Bus 0000:00 [me=
m
> 0x000
> d0000-0x000e7fff window]
> [   18.608909] kernel: caller os_map_kernel_space.part.0+0x135/0x1b0
> [nvidia] mapping multiple BARs
> [   18.619097] kernel: ACPI Warning: \_SB.PCI0.PEG0.GFX0._DSM: Argument #=
4
> type mismatch - Found [Buffer], ACPI requires [Package]
> (20221020/nsarguments-61)
>
> but somebody in an NVIDIA forum says this should be harmless.
>
> In syslog I see several disconnections/reconnections of the WLAN, don't
> know if this is normal, hope it won't affect the dialog with the server.
>
> Thank you again & best regards
>
>
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> 10133 Torino
> tel 329 3933041
> www.general-logic.com
> www.linkedin.com/in/daniele-lugli
>
>
> Il giorno mer 3 gen 2024 alle ore 02:42 Khem Raj <raj.khem@gmail.com> ha
> scritto:
>
>> What is the configuration of this system ? CPU and memory specifically
>> one likely reason is that you have oom hitting the system because it=E2=
=80=99s
>> overloaded so check the system logs for any indication of this
>>
>> On Tue, Jan 2, 2024 at 1:49=E2=80=AFPM <daniele.lugli@gmail.com> wrote:
>>
>>> Hi all and best wishes for the new year.
>>>
>>> I recently worked with nanbield on Ubuntu 22.04.3 in a VirtualBox
>>> machine.
>>> I added layers meta-intel and meta-realtime and, with a couple of small
>>> modifications to core-image-rt-extended.bb and to rt-app.bb, as
>>> suggested by some kind reader (see
>>> https://lists.yoctoproject.org/g/yocto/topic/103135158), and after a
>>> couple of restarts, I could obtain the image, prepare a .vdi from the .=
wic
>>> and boot a virtual machine with that disk.
>>>
>>> Now I moved to a physical machine with Ubuntu 22.04.3. Here is the buil=
d
>>> configuration:
>>>
>>> BB_VERSION           =3D "2.6.1"
>>> BUILD_SYS            =3D "x86_64-linux"
>>> NATIVELSBSTRING      =3D "universal"
>>> TARGET_SYS           =3D "x86_64-poky-linux"
>>> MACHINE              =3D "genericx86-64"
>>> DISTRO               =3D "poky"
>>> DISTRO_VERSION       =3D
>>> "4.3+snapshot-b92406d2313234dccd77b05fe74c09ba9617a738"
>>> TUNE_FEATURES        =3D "m64 core2"
>>> TARGET_FPU           =3D ""
>>> meta
>>> meta-poky
>>> meta-yocto-bsp       =3D "master:b92406d2313234dccd77b05fe74c09ba9617a7=
38"
>>> meta-oe              =3D "master:10f1890af03dbb804bffd4fa7eda7729e08f12=
cb"
>>> meta-intel           =3D "master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d5=
6f"
>>> meta-realtime        =3D "master:489e1d6b34e46f845a4bfe6461a39c6a4bcb77=
94"
>>>
>>> I am using exactly the same configuration as in the virtual Ubuntu and =
I
>>> have also applied the suggested modifications to
>>> core-image-rt-extended.bb and to rt-app.bb. So the situation should be
>>> the same.
>>>
>>> I cannot understand why I am getting error messages which look random:
>>> when, after the error, I rerun bitbake, I get a different error.
>>>
>>> As an instance, in the first run of bitbake core-image-extended.bb I
>>> get:
>>>
>>> |
>>> /home/daniele/poky/build/tmp/work/x86_64-linux/cmake-native/3.27.7/cmak=
e-3.27.7/Source/cmComputeComponentGraph.cxx:139:1:
>>> internal compiler error: Segmentation fault
>>> |   139 | }
>>> |       | ^
>>> | 0x7fc36ca4251f ???
>>> |     ./signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigaction.c:0
>>> | 0x7fc36ca29d8f __libc_start_call_main
>>> |     ../sysdeps/nptl/libc_start_call_main.h:58
>>> | 0x7fc36ca29e3f __libc_start_main_impl
>>> |     ../csu/libc-start.c:392
>>> | Please submit a full bug report,
>>> | with preprocessed source if appropriate.
>>> ...
>>> Summary: 1 task failed:
>>>   /home/daniele/poky/meta/recipes-devtools/cmake/cmake-native_3.27.7.bb=
:
>>> do_compile
>>>
>>> Second attempt, without any modification. I get a different error:
>>>
>>> ERROR: Task
>>> (virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3=
_3.11.5.bb:do_install)
>>> failed with exit code '139'
>>> NOTE: Tasks Summary: Attempted 3568 tasks of which 3518 didn't need to
>>> be rerun and 1 failed.
>>>
>>> Summary: 1 task failed:
>>>
>>> virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_=
3.11.5.
>>>
>>> Third attempt, always without modifications. Still different:
>>>
>>> | ERROR: oe_runmake failed
>>> | WARNING: exit code 1 from a shell command.
>>> ERROR: Task (/home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:d=
o_compile)
>>> failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 6049 tasks of which 3567 didn't need to
>>> be rerun and 1 failed.
>>>
>>> Summary: 1 task failed:
>>>   /home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile
>>> Summary: There were 2 ERROR messages, returning a non-zero exit code.
>>>
>>> And so on. Fourth attempt:
>>>
>>> ERROR: Task
>>> (/home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt=
-extended.bb:do_rootfs)
>>> failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 6700 tasks of which 6052 didn't need to
>>> be rerun and 1 failed.
>>>
>>> Summary: 1 task failed:
>>>
>>> /home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt-=
extended.bb:
>>> do_rootfs
>>> Summary: There was 1 ERROR message, returning a non-zero exit code.
>>>
>>> How is this possible? Problems in the communication with the server, or
>>> what?
>>>
>>> Thank you in advance and best regards
>>>
>>> --
>>> Daniele Lugli
>>> General Logic srl
>>> Viale Curreno, 41
>>> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Tori=
no+Italy?entry=3Dgmail&source=3Dg>
>>>
>>> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Tori=
no+Italy?entry=3Dgmail&source=3Dg>
>>> 10133 Torino
>>> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Tori=
no+Italy?entry=3Dgmail&source=3Dg>
>>> Italy
>>> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Tori=
no+Italy?entry=3Dgmail&source=3Dg>
>>> tel +39 329 3933041
>>> www.general-logic.com
>>> www.linkedin.com/in/daniele-lugli
>>>
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> Links: You receive all messages sent to this group.
>>> You automatically follow any topics you start or reply to.
>>> View/Reply Online (#62072):
>>> https://lists.yoctoproject.org/g/yocto/message/62072
>>> Mute This Topic: https://lists.yoctoproject.org/mt/103491090/1997914
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>> raj.khem@gmail.com]
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>
>>>

--0000000000003ca833060e09ddad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, I forgot to say that<div><br><div><font color=3D"#0=
000ff">$ cat /proc/meminfo<br>MemTotal: =C2=A0 =C2=A0 =C2=A0 16342772 kB<br=
>MemFree: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0487528 kB<br>MemAvailable: =C2=
=A0 12466660 kB<br>Buffers: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 99088 kB<br>=
Cached: =C2=A0 =C2=A0 =C2=A0 =C2=A0 10992948 kB<br>SwapCached: =C2=A0 =C2=
=A0 =C2=A0 193252 kB<br>Active: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05830636 k=
B<br>Inactive: =C2=A0 =C2=A0 =C2=A0 =C2=A07700572 kB<br>Active(anon): =C2=
=A0 =C2=A0 750184 kB<br>Inactive(anon): =C2=A01771264 kB<br>Active(file): =
=C2=A0 =C2=A05080452 kB<br>Inactive(file): =C2=A05929308 kB<br>Unevictable:=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A036 kB<br>Mlocked: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A036 kB<br>SwapTotal: =C2=A0 =C2=A0 =C2=A0 2097148=
 kB<br>SwapFree: =C2=A0 =C2=A0 =C2=A0 =C2=A0 665396 kB<br>Zswap: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 kB<br>Zswapped: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 kB<br>Dirty: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 336 kB<br>Writeback: =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 0 kB<br>AnonPages: =C2=A0 =C2=A0 =C2=A0 2245872 kB<br>Map=
ped: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 892664 kB<br>Shmem: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 82276 kB<br>KReclaimable: =C2=A0 =C2=A01304956 =
kB<br>Slab: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01595468 kB<br>SReclaim=
able: =C2=A0 =C2=A01304956 kB<br>SUnreclaim: =C2=A0 =C2=A0 =C2=A0 290512 kB=
<br>KernelStack: =C2=A0 =C2=A0 =C2=A0 23440 kB<br>PageTables: =C2=A0 =C2=A0=
 =C2=A0 =C2=A045896 kB<br>SecPageTables: =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 kB<b=
r>NFS_Unstable: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 kB<br>Bounce: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 kB<br>WritebackTmp: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 kB<br>CommitLimit: =C2=A0 =C2=A010268532 k=
B<br>Committed_AS: =C2=A0 10681620 kB<br>VmallocTotal: =C2=A0 34359738367 k=
B<br>VmallocUsed: =C2=A0 =C2=A0 =C2=A0 69392 kB<br>VmallocChunk: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 kB<br>Percpu: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A013440 kB<br>HardwareCorrupted: =C2=A0 =C2=A0 0 kB<br>AnonHugePages: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0 kB<br>ShmemHugePages: =C2=A0 =C2=A0 =C2=A0 =
=C2=A00 kB<br>ShmemPmdMapped: =C2=A0 =C2=A0 =C2=A0 =C2=A00 kB<br>FileHugePa=
ges: =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 kB<br>FilePmdMapped: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0 kB<br>HugePages_Total: =C2=A0 =C2=A0 =C2=A0 0<br>HugePages_Fre=
e: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>HugePages_Rsvd: =C2=A0 =C2=A0 =C2=A0 =C2=
=A00<br>HugePages_Surp: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>Hugepagesize: =C2=
=A0 =C2=A0 =C2=A0 2048 kB<br>Hugetlb: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0 kB<br>DirectMap4k: =C2=A0 =C2=A0 1545776 kB<br>DirectMap2M:=
 =C2=A0 =C2=A015208448 kB</font><br></div><div><br></div><div>and</div><div=
><br></div><div><font color=3D"#0000ff">$ cat /proc/cpuinfo<br>processor	: =
0<br>vendor_id	: GenuineIntel<br>cpu family	: 6<br>model		: 42<br>model nam=
e	: Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz<br>stepping	: 7<br>microcode	=
: 0x2f<br>cpu MHz		: 2801.749<br>cache size	: 6144 KB<br>physical id	: 0<br=
>siblings	: 8<br>core id		: 0<br>cpu cores	: 4<br>apicid		: 0<br>initial ap=
icid	: 0<br>fpu		: yes<br>fpu_exception	: yes<br>cpuid level	: 13<br>wp		: =
yes<br>flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cm=
ov pat pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp=
 lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc =
cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16=
 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx la=
hf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid xs=
aveopt dtherm ida arat pln pts md_clear flush_l1d<br>vmx flags	: vnmi preem=
ption_timer invvpid ept_x_only flexpriority tsc_offset vtpr mtf vapic ept v=
pid unrestricted_guest<br>bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_s=
tore_bypass l1tf mds swapgs itlb_multihit mmio_unknown<br>bogomips	: 4389.9=
2<br>clflush size	: 64<br>cache_alignment	: 64<br>address sizes	: 36 bits p=
hysical, 48 bits virtual<br>power management:<br><br>processor	: 1<br>vendo=
r_id	: GenuineIntel<br>cpu family	: 6<br>model		: 42<br>model name	: Intel(=
R) Core(TM) i7-2670QM CPU @ 2.20GHz<br>stepping	: 7<br>microcode	: 0x2f<br>=
cpu MHz		: 2793.518<br>cache size	: 6144 KB<br>physical id	: 0<br>siblings	=
: 8<br>core id		: 1<br>cpu cores	: 4<br>apicid		: 2<br>initial apicid	: 2<b=
r>fpu		: yes<br>fpu_exception	: yes<br>cpuid level	: 13<br>wp		: yes<br>fla=
gs		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse=
36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm consta=
nt_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aper=
fmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm=
 pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx lahf_lm epb =
pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid xsaveopt dth=
erm ida arat pln pts md_clear flush_l1d<br>vmx flags	: vnmi preemption_time=
r invvpid ept_x_only flexpriority tsc_offset vtpr mtf vapic ept vpid unrest=
ricted_guest<br>bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypas=
s l1tf mds swapgs itlb_multihit mmio_unknown<br>bogomips	: 4389.92<br>clflu=
sh size	: 64<br>cache_alignment	: 64<br>address sizes	: 36 bits physical, 4=
8 bits virtual<br>power management:<br><br>processor	: 2<br>vendor_id	: Gen=
uineIntel<br>cpu family	: 6<br>model		: 42<br>model name	: Intel(R) Core(TM=
) i7-2670QM CPU @ 2.20GHz<br>stepping	: 7<br>microcode	: 0x2f<br>cpu MHz		:=
 2793.722<br>cache size	: 6144 KB<br>physical id	: 0<br>siblings	: 8<br>cor=
e id		: 2<br>cpu cores	: 4<br>apicid		: 4<br>initial apicid	: 4<br>fpu		: y=
es<br>fpu_exception	: yes<br>cpuid level	: 13<br>wp		: yes<br>flags		: fpu =
vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush=
 dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm constant_tsc arc=
h_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni=
 pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4=
_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave avx lahf_lm epb pti ssbd i=
brs ibpb stibp tpr_shadow vnmi flexpriority ept vpid xsaveopt dtherm ida ar=
at pln pts md_clear flush_l1d<br>vmx flags	: vnmi preemption_timer invvpid =
ept_x_only flexpriority tsc_offset vtpr mtf vapic ept vpid unrestricted_gue=
st<br>bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds=
 swapgs itlb_multihit mmio_unknown<br>bogomips	: 4389.92<br>clflush size	: =
64<br>cache_alignment	: 64<br>address sizes	: 36 bits physical, 48 bits vir=
tual<br>power management:<br><br>processor	: 3<br>vendor_id	: GenuineIntel<=
br>cpu family	: 6<br>model		: 42<br>model name	: Intel(R) Core(TM) i7-2670Q=
M CPU @ 2.20GHz<br>stepping	: 7<br>microcode	: 0x2f<br>cpu MHz		: 2849.795<=
br>cache size	: 6144 KB<br>physical id	: 0<br>siblings	: 8<br>core id		: 3<=
br>cpu cores	: 4<br>apicid		: 6<br>initial apicid	: 6<br>fpu		: yes<br>fpu_=
exception	: yes<br>cpuid level	: 13<br>wp		: yes<br>flags		: fpu vme de pse=
 tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi =
mmx fxsr sse sse2 ht tm pbe syscall nx rdtscp lm constant_tsc arch_perfmon =
pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq=
 dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 =
x2apic popcnt tsc_deadline_timer xsave avx lahf_lm epb pti ssbd ibrs ibpb s=
tibp tpr_shadow vnmi flexpriority ept vpid xsaveopt dtherm ida arat pln pts=
 md_clear flush_l1d<br>vmx flags	: vnmi preemption_timer invvpid ept_x_only=
 flexpriority tsc_offset vtpr mtf vapic ept vpid unrestricted_guest<br>bugs=
		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs it=
lb_multihit mmio_unknown<br>bogomips	: 4389.92<br>clflush size	: 64<br>cach=
e_alignment	: 64<br>address sizes	: 36 bits physical, 48 bits virtual<br>po=
wer management:<br><br>processor	: 4<br>vendor_id	: GenuineIntel<br>cpu fam=
ily	: 6<br>model		: 42<br>model name	: Intel(R) Core(TM) i7-2670QM CPU @ 2.=
20GHz<br>stepping	: 7<br>microcode	: 0x2f<br>cpu MHz		: 2977.541<br>cache s=
ize	: 6144 KB<br>physical id	: 0<br>siblings	: 8<br>core id		: 0<br>cpu cor=
es	: 4<br>apicid		: 1<br>initial apicid	: 1<br>fpu		: yes<br>fpu_exception	=
: yes<br>cpuid level	: 13<br>wp		: yes<br>flags		: fpu vme de pse tsc msr p=
ae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr s=
se sse2 ht tm pbe syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts r=
ep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 mo=
nitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic pop=
cnt tsc_deadline_timer xsave avx lahf_lm epb pti ssbd ibrs ibpb stibp tpr_s=
hadow vnmi flexpriority ept vpid xsaveopt dtherm ida arat pln pts md_clear =
flush_l1d<br>vmx flags	: vnmi preemption_timer invvpid ept_x_only flexprior=
ity tsc_offset vtpr mtf vapic ept vpid unrestricted_guest<br>bugs		: cpu_me=
ltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs itlb_multihi=
t mmio_unknown<br>bogomips	: 4389.92<br>clflush size	: 64<br>cache_alignmen=
t	: 64<br>address sizes	: 36 bits physical, 48 bits virtual<br>power manage=
ment:<br><br>processor	: 5<br>vendor_id	: GenuineIntel<br>cpu family	: 6<br=
>model		: 42<br>model name	: Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz<br>s=
tepping	: 7<br>microcode	: 0x2f<br>cpu MHz		: 2793.309<br>cache size	: 6144=
 KB<br>physical id	: 0<br>siblings	: 8<br>core id		: 1<br>cpu cores	: 4<br>=
apicid		: 3<br>initial apicid	: 3<br>fpu		: yes<br>fpu_exception	: yes<br>c=
puid level	: 13<br>wp		: yes<br>flags		: fpu vme de pse tsc msr pae mce cx8=
 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ht=
 tm pbe syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good no=
pl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_c=
pl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_de=
adline_timer xsave avx lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi=
 flexpriority ept vpid xsaveopt dtherm ida arat pln pts md_clear flush_l1d<=
br>vmx flags	: vnmi preemption_timer invvpid ept_x_only flexpriority tsc_of=
fset vtpr mtf vapic ept vpid unrestricted_guest<br>bugs		: cpu_meltdown spe=
ctre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs itlb_multihit mmio_unk=
nown<br>bogomips	: 4389.92<br>clflush size	: 64<br>cache_alignment	: 64<br>=
address sizes	: 36 bits physical, 48 bits virtual<br>power management:<br><=
br>processor	: 6<br>vendor_id	: GenuineIntel<br>cpu family	: 6<br>model		: =
42<br>model name	: Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz<br>stepping	: =
7<br>microcode	: 0x2f<br>cpu MHz		: 2793.570<br>cache size	: 6144 KB<br>phy=
sical id	: 0<br>siblings	: 8<br>core id		: 2<br>cpu cores	: 4<br>apicid		: =
5<br>initial apicid	: 5<br>fpu		: yes<br>fpu_exception	: yes<br>cpuid level=
	: 13<br>wp		: yes<br>flags		: fpu vme de pse tsc msr pae mce cx8 apic sep =
mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe sy=
scall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopolo=
gy nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est=
 tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_tim=
er xsave avx lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexprior=
ity ept vpid xsaveopt dtherm ida arat pln pts md_clear flush_l1d<br>vmx fla=
gs	: vnmi preemption_timer invvpid ept_x_only flexpriority tsc_offset vtpr =
mtf vapic ept vpid unrestricted_guest<br>bugs		: cpu_meltdown spectre_v1 sp=
ectre_v2 spec_store_bypass l1tf mds swapgs itlb_multihit mmio_unknown<br>bo=
gomips	: 4389.92<br>clflush size	: 64<br>cache_alignment	: 64<br>address si=
zes	: 36 bits physical, 48 bits virtual<br>power management:<br><br>process=
or	: 7<br>vendor_id	: GenuineIntel<br>cpu family	: 6<br>model		: 42<br>mode=
l name	: Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz<br>stepping	: 7<br>micro=
code	: 0x2f<br>cpu MHz		: 2977.566<br>cache size	: 6144 KB<br>physical id	:=
 0<br>siblings	: 8<br>core id		: 3<br>cpu cores	: 4<br>apicid		: 7<br>initi=
al apicid	: 7<br>fpu		: yes<br>fpu_exception	: yes<br>cpuid level	: 13<br>w=
p		: yes<br>flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge m=
ca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ht tm pbe syscall nx r=
dtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop=
_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3=
 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer xsave a=
vx lahf_lm epb pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vp=
id xsaveopt dtherm ida arat pln pts md_clear flush_l1d<br>vmx flags	: vnmi =
preemption_timer invvpid ept_x_only flexpriority tsc_offset vtpr mtf vapic =
ept vpid unrestricted_guest<br>bugs		: cpu_meltdown spectre_v1 spectre_v2 s=
pec_store_bypass l1tf mds swapgs itlb_multihit mmio_unknown<br>bogomips	: 4=
389.92<br>clflush size	: 64<br>cache_alignment	: 64<br>address sizes	: 36 b=
its physical, 48 bits virtual<br>power management:</font><br></div><div><br=
></div><div>I didn&#39;t consider the possibility of RAM failure because, b=
efore installing Ubuntu, the PC was (seemingly) working fine with Windows 1=
0.</div><div><br></div><div>Thank you again &amp; best regards</div><div><b=
r clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div di=
r=3D"ltr"><div><div dir=3D"ltr"><div>Daniele Lugli<br></div>General Logic s=
rl<br></div><div>Viale Curreno, 41<br></div><div>10133 Torino<br></div><div=
>tel 329 3933041<br></div></div><div><a href=3D"http://www.general-logic.co=
m" target=3D"_blank">www.general-logic.com</a></div><div><a href=3D"http://=
www.linkedin.com/in/daniele-lugli" target=3D"_blank">www.linkedin.com/in/da=
niele-lugli</a><br></div></div></div></div></div></div></div></div><br></di=
v></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">Il giorno mer 3 gen 2024 alle ore 13:09 Daniele Lugli &lt;<a href=
=3D"mailto:daniele.lugli@gmail.com">daniele.lugli@gmail.com</a>&gt; ha scri=
tto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Thank you for your replies,<div><br></div><div>memtest86+ reports a c=
ouple of failing memory addresses, so this is probably the reason why. Must=
 replace the RAM of this old beast and, while I am at it, expand it to 64 G=
b.</div><div><br></div><div>Apart from that, dmesg says</div><div><br></div=
><div><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#ff0=
000">[ =C2=A0 18.608897] kernel: resource: resource sanity check: requestin=
g [mem 0x000000<br>00000e0000-0x00000000000fffff], which spans more than PC=
I Bus 0000:00 [mem 0x000<br>d0000-0x000e7fff window]<br>[ =C2=A0 18.608909]=
 kernel: caller os_map_kernel_space.part.0+0x135/0x1b0 [nvidia] mapping mul=
tiple BARs<br>[ =C2=A0 18.619097] kernel: ACPI Warning: \_SB.PCI0.PEG0.GFX0=
._DSM: Argument #4 type mismatch - Found [Buffer], ACPI requires [Package] =
(20221020/nsarguments-61)</font></span></div><div><font color=3D"#000000" s=
tyle=3D"background-color:rgb(255,255,255)"><br></font></div><div><font colo=
r=3D"#000000" style=3D"background-color:rgb(255,255,255)">but somebody in a=
n NVIDIA forum says this should be harmless.</font></div><div><font color=
=3D"#000000" style=3D"background-color:rgb(255,255,255)"><br></font></div><=
div><font color=3D"#000000" style=3D"background-color:rgb(255,255,255)">In =
syslog I see several disconnections/reconnections of the WLAN, don&#39;t kn=
ow if this is normal, hope it won&#39;t affect the dialog with the server.<=
/font></div><div><font color=3D"#000000" style=3D"background-color:rgb(255,=
255,255)"><br></font></div><div><font color=3D"#000000" style=3D"background=
-color:rgb(255,255,255)">Thank you again &amp; best regards</font></div><di=
v><br></div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><=
div dir=3D"ltr"><div>Daniele Lugli<br></div>General Logic srl<br></div><div=
>Viale Curreno, 41<br></div><div>10133 Torino<br></div><div>tel 329 3933041=
<br></div></div><div><a href=3D"http://www.general-logic.com" target=3D"_bl=
ank">www.general-logic.com</a></div><div><a href=3D"http://www.linkedin.com=
/in/daniele-lugli" target=3D"_blank">www.linkedin.com/in/daniele-lugli</a><=
br></div></div></div></div></div></div></div></div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mer =
3 gen 2024 alle ore 02:42 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com=
" target=3D"_blank">raj.khem@gmail.com</a>&gt; ha scritto:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">What is the co=
nfiguration of this system ? CPU and memory specifically one likely reason =
is that you have oom hitting the system because it=E2=80=99s overloaded so =
check the system logs for any indication of this=C2=A0</div><div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 2, 2=
024 at 1:49=E2=80=AFPM &lt;<a href=3D"mailto:daniele.lugli@gmail.com" targe=
t=3D"_blank">daniele.lugli@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Hi all and best wishes for the new year=
.<br><br>I recently worked with nanbield on Ubuntu 22.04.3 in a VirtualBox =
machine. <br>I added layers meta-intel and meta-realtime and, with a couple=
 of small modifications to <a href=3D"http://core-image-rt-extended.bb" tar=
get=3D"_blank">core-image-rt-extended.bb</a> and to <a href=3D"http://rt-ap=
p.bb" target=3D"_blank">rt-app.bb</a>, as suggested by some kind reader (se=
e <a href=3D"https://lists.yoctoproject.org/g/yocto/topic/103135158" rel=3D=
"noopener" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/topic/1=
03135158</a>), and after a couple of restarts, I could obtain the image, pr=
epare a .vdi from the .wic and boot a virtual machine with that disk.<br><b=
r>Now I moved to a physical machine with Ubuntu 22.04.3. Here is the build =
configuration:<br><br><span style=3D"color:rgb(0,0,255)">BB_VERSION=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;2.6.1&quot=
;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;universal&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-poky-linux&quot;<br>M=
ACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;genericx86-64&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky=
&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;4.3+=
snapshot-b92406d2313234dccd77b05fe74c09ba9617a738&quot;<br>TUNE_FEATURES=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m64 core2&quot;<br>TARGET=
_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;=
&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>meta-yocto-bsp=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:b92406d2313234dccd77b05fe74c09ba9=
617a738&quot;<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:10f1890af03dbb804bffd4fa7eda77=
29e08f12cb&quot;<br>meta-intel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f&q=
uot;</span><br><span style=3D"color:rgb(0,0,255)">meta-realtime=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:489e1d6b34e46f845a4bfe6461a=
39c6a4bcb7794&quot;</span><br><br>I am using exactly the same configuration=
 as in the virtual Ubuntu and I have also applied the suggested modificatio=
ns to <a href=3D"http://core-image-rt-extended.bb" target=3D"_blank">core-i=
mage-rt-extended.bb</a> and to <a href=3D"http://rt-app.bb" target=3D"_blan=
k">rt-app.bb</a>. So the situation should be the same.<br><br>I cannot unde=
rstand why I am getting error messages which look random: when, after the e=
rror, I rerun bitbake, I get a different error.<br><br>As an instance, in t=
he first run of bitbake <a href=3D"http://core-image-extended.bb" target=3D=
"_blank">core-image-extended.bb</a> I get:<br><br><span style=3D"color:rgb(=
255,0,0)">| /home/daniele/poky/build/tmp/work/x86_64-linux/cmake-native/3.2=
7.7/cmake-3.27.7/Source/cmComputeComponentGraph.cxx:139:1: internal compile=
r error: Segmentation fault</span><br><span style=3D"color:rgb(255,0,0)">|=
=C2=A0=C2=A0 139 | }</span><br><span style=3D"color:rgb(255,0,0)">|=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ^</span><br><span style=3D"color:rgb(255,0=
,0)">| 0x7fc36ca4251f ???</span><br><span style=3D"color:rgb(255,0,0)">| =
=C2=A0=C2=A0=C2=A0 ./signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigactio=
n.c:0</span><br><span style=3D"color:rgb(255,0,0)">| 0x7fc36ca29d8f __libc_=
start_call_main</span><br><span style=3D"color:rgb(255,0,0)">| =C2=A0=C2=A0=
=C2=A0 ../sysdeps/nptl/libc_start_call_main.h:58</span><br><span style=3D"c=
olor:rgb(255,0,0)">| 0x7fc36ca29e3f __libc_start_main_impl</span><br><span =
style=3D"color:rgb(255,0,0)">| =C2=A0=C2=A0=C2=A0 ../csu/libc-start.c:392</=
span><br><span style=3D"color:rgb(255,0,0)">| Please submit a full bug repo=
rt,</span><br><span style=3D"color:rgb(255,0,0)">| with preprocessed source=
 if appropriate.</span><br><span style=3D"color:rgb(255,0,0)">...</span><br=
><span style=3D"color:rgb(255,0,0)">Summary: 1 task failed:</span><br><span=
 style=3D"color:rgb(255,0,0)">=C2=A0 /home/daniele/poky/meta/recipes-devtoo=
ls/cmake/cmake-native_3.27.7.bb:do_compile<br></span><br>Second attempt, wi=
thout any modification. I get a different error:<br><br><span style=3D"colo=
r:rgb(255,0,0)">ERROR: Task (virtual:native:/home/daniele/poky/meta/recipes=
-devtools/python/python3_3.11.5.bb:do_install) failed with exit code &#39;1=
39&#39;</span><br><span style=3D"color:rgb(255,0,0)">NOTE: Tasks Summary: A=
ttempted 3568 tasks of which 3518 didn&#39;t need to be rerun and 1 failed.=
</span><br><br><span style=3D"color:rgb(255,0,0)">Summary: 1 task failed:</=
span><br><span style=3D"color:rgb(255,0,0)">=C2=A0 virtual:native:/home/dan=
iele/poky/meta/recipes-devtools/python/python3_3.11.5.</span><br><br>Third =
attempt, always without modifications. Still different:<br><br><span style=
=3D"color:rgb(255,0,0)">| ERROR: oe_runmake failed</span><br><span style=3D=
"color:rgb(255,0,0)">| WARNING: exit code 1 from a shell command.</span><br=
><span style=3D"color:rgb(255,0,0)">ERROR: Task (/home/daniele/poky/meta/re=
cipes-devtools/gcc/gcc_13.2.bb:do_compile) failed with exit code &#39;1&#39=
;</span><br><span style=3D"color:rgb(255,0,0)">NOTE: Tasks Summary: Attempt=
ed 6049 tasks of which 3567 didn&#39;t need to be rerun and 1 failed.</span=
><br><br><span style=3D"color:rgb(255,0,0)">Summary: 1 task failed:</span><=
br><span style=3D"color:rgb(255,0,0)">=C2=A0 /home/daniele/poky/meta/recipe=
s-devtools/gcc/gcc_13.2.bb:do_compile</span><br><span style=3D"color:rgb(25=
5,0,0)">Summary: There were 2 ERROR messages, returning a non-zero exit cod=
e.</span><br><br>And so on. Fourth attempt:<br><br><span style=3D"color:rgb=
(255,0,0)">ERROR: Task (/home/daniele/poky/meta-realtime/recipes-extended/i=
mages/core-image-rt-extended.bb:do_rootfs) failed with exit code &#39;1&#39=
;</span><br><span style=3D"color:rgb(255,0,0)">NOTE: Tasks Summary: Attempt=
ed 6700 tasks of which 6052 didn&#39;t need to be rerun and 1 failed.</span=
><br><br><span style=3D"color:rgb(255,0,0)">Summary: 1 task failed:</span><=
br><span style=3D"color:rgb(255,0,0)">=C2=A0 /home/daniele/poky/meta-realti=
me/recipes-extended/images/core-image-rt-extended.bb:do_rootfs</span><br><s=
pan style=3D"color:rgb(255,0,0)">Summary: There was 1 ERROR message, return=
ing a non-zero exit code.</span><br><br>How is this possible? Problems in t=
he communication with the server, or what?<br><br>Thank you in advance and =
best regards<br><br>-- <br>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:=
rgb(80,0,80)">
<div dir=3D"ltr" style=3D"font-family:Arial,Helvetica,sans-serif">
<div style=3D"font-family:Arial,Helvetica,sans-serif">Daniele Lugli</div>
General Logic srl</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif"><a href=3D"https://ww=
w.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?entry=
=3Dgmail&amp;source=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif" t=
arget=3D"_blank">Viale Curreno, 41</a></div><a href=3D"https://www.google.c=
om/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?entry=3Dgmail&am=
p;source=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif" target=3D"_b=
lank">
</a><div style=3D"font-family:Arial,Helvetica,sans-serif"><a href=3D"https:=
//www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?en=
try=3Dgmail&amp;source=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif=
" target=3D"_blank">10133 Torino</a><br><a href=3D"https://www.google.com/m=
aps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?entry=3Dgmail&amp;so=
urce=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif" target=3D"_blank=
">Italy</a></div>
<div style=3D"font-family:Arial,Helvetica,sans-serif">tel +39 329 3933041</=
div>
</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:=
rgb(80,0,80)"><a style=3D"font-family:Arial,Helvetica,sans-serif;color:rgb(=
17,85,204)" href=3D"http://www.general-logic.com/" rel=3D"noopener" target=
=3D"_blank">www.general-logic.com</a></div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:=
rgb(80,0,80)"><a style=3D"font-family:Arial,Helvetica,sans-serif;color:rgb(=
17,85,204)" href=3D"http://www.linkedin.com/in/daniele-lugli" rel=3D"noopen=
er" target=3D"_blank">www.linkedin.com/in/daniele-lugli</a></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#62072): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62072" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62072</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103491090/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103491090/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--0000000000003ca833060e09ddad--

