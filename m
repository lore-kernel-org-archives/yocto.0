Received: from 19.mo5.mail-out.ovh.net (19.mo5.mail-out.ovh.net [46.105.35.78])
 by mx.groups.io with SMTP id smtpd.web11.2962.1603486856402455499
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Oct 2020 14:00:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.35.78, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player738.ha.ovh.net (unknown [10.108.54.209])
	by mo5.mail-out.ovh.net (Postfix) with ESMTP id 0FDEE29BF33
	for <yocto@lists.yoctoproject.org>; Fri, 23 Oct 2020 23:00:53 +0200 (CEST)
Received: from 3mdeb.com (89-66-159-90.dynamic.chello.pl [89.66.159.90])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player738.ha.ovh.net (Postfix) with ESMTPSA id BE8431794A3B3;
	Fri, 23 Oct 2020 21:00:51 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-96R001c7aecae8-e5f5-413f-acd4-30c2f1c4e9a7,
                    2DE46494AFDAC589AF6A9D63B09136B6C802EBF5) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] State of qemuppc64
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
References: <428851cf-9d68-b608-5efd-8916c6dd621a@3mdeb.com>
 <eb5948e3-b391-deb5-c8c6-9cfe78d8b5de@gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <5a6a8670-62f7-6e8e-aa42-248a3323937e@3mdeb.com>
Date: Fri, 23 Oct 2020 23:00:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <eb5948e3-b391-deb5-c8c6-9cfe78d8b5de@gmail.com>
X-Ovh-Tracer-Id: 4937352567952125671
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrkedtgdduheekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpedukefhffekveekfeegleehvddthfeiiedvlefgueehkedvteekvedtgeeitedugfenucffohhmrghinhepghhithhhuhgsrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghdpohhpvghnvghmsggvugguvggurdhorhhgpdefmhguvggsrdgtohhmnecukfhppedtrddtrddtrddtpdekledrieeirdduheelrdeltdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfeekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepmhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomhdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
Content-Type: multipart/alternative;
 boundary="------------2C07B7CFBDD93924235FFC43"
Content-Language: en-US

--------------2C07B7CFBDD93924235FFC43
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 22.10.2020 19:21, Khem Raj wrote:
> Hi Maciej
Hi,
>
> I have set of patches that I carry to support qemuppc64
>
> https://github.com/YoeDistro/openembedded-core/commit/885104134403da36b9=
ecb47ced6423e183262392
>
>
> https://github.com/YoeDistro/openembedded-core/commit/aa9797636a6039ede7=
52a57b05f839ce641e3cfc
>
>
> you can plant them on top of master oe-core or poky and
> try out. I haven't built it in months so maybe a bit jaded.
Thanks. I've tried to continue my approach or to take yours config and
adapt it.
I can get the machine to boot with certain parameters, but so far I was
not able
to get the login prompt to spawn on the serial console.

Publishing some status update here, maybe it will be useful to someone.

Depending on the QEMU params, it either freezes after mounting rootfs
(when the
login prompt should appear):

[=C2=A0=C2=A0=C2=A0 3.076659] udevd (79) used greatest stack depth: 10024 =
bytes left
[=C2=A0=C2=A0=C2=A0 3.092691] udevd[80]: starting eudev-3.2.9
[=C2=A0=C2=A0=C2=A0 5.186145] EXT4-fs (vda): re-mounted. Opts: (null)
[=C2=A0=C2=A0=C2=A0 5.186906] ext4 filesystem being remounted at / support=
s timestamps
until 2038 (0x7fffffff)
[=C2=A0=C2=A0=C2=A0 7.370678] urandom_read: 4 callbacks suppressed
[=C2=A0=C2=A0=C2=A0 7.370816] random: dd: uninitialized urandom read (512 =
bytes read)

or could even crash:

[=C2=A0=C2=A0=C2=A0 1.374644] Driver 'hvc_console' was unable to register =
with bus_type
'vio' because the bus was not initialized.
[=C2=A0=C2=A0=C2=A0 1.376651] hvc0: raw protocol on /ibm,opal/consoles/ser=
ial@0 (boot
console)
[=C2=A0=C2=A0=C2=A0 1.377099] hvc0: No interrupts property, using OPAL eve=
nt
[=C2=A0=C2=A0=C2=A0 1.380151] Serial: 8250/16550 driver, 4 ports, IRQ shar=
ing disabled
[=C2=A0=C2=A0=C2=A0 1.387642] printk: console [ttyS0] disabled
[=C2=A0=C2=A0=C2=A0 1.389410] BUG: Unable to handle kernel data access on =
read at
0xc00a0000000003e9
[=C2=A0=C2=A0=C2=A0 1.389927] Faulting instruction address: 0xc0000000008d=
79f4
[=C2=A0=C2=A0=C2=A0 1.390532] Oops: Kernel access of bad area, sig: 11 [#1=
]
[=C2=A0=C2=A0=C2=A0 1.390812] LE PAGE_SIZE=3D64K MMU=3DRadix SMP NR_CPUS=
=3D2048 NUMA PowerNV
[=C2=A0=C2=A0=C2=A0 1.391331] Modules linked in:
[=C2=A0=C2=A0=C2=A0 1.391790] CPU: 1 PID: 1 Comm: swapper/0 Not tainted
5.8.13-yocto-standard #1
[=C2=A0=C2=A0=C2=A0 1.392237] NIP:=C2=A0 c0000000008d79f4 LR: c0000000008d=
9cf8 CTR:
c0000000008d7960
[=C2=A0=C2=A0=C2=A0 1.392696] REGS: c0000000723c2f70 TRAP: 0300=C2=A0=C2=
=A0 Not tainted=C2=A0
(5.8.13-yocto-standard)
[=C2=A0=C2=A0=C2=A0 1.393104] MSR:=C2=A0 9000000002009033 <SF,HV,VEC,EE,ME=
,IR,DR,RI,LE>=C2=A0 CR:
24000220=C2=A0 XER: 20040000
[=C2=A0=C2=A0=C2=A0 1.393714] CFAR: c0000000008d799c DAR: c00a0000000003e9=
 DSISR:
40000000 IRQMASK: 1
[=C2=A0=C2=A0=C2=A0 1.393714] GPR00: c0000000008d9cf8 c0000000723c3200 c00=
0000001921f00
c00a0000000003e9
[=C2=A0=C2=A0=C2=A0 1.393714] GPR04: c00a000000000000 00000000000003ef c00=
00000017ac378
0000000000000000
[=C2=A0=C2=A0=C2=A0 1.393714] GPR08: 0000000000000000 c0000000019cab10 000=
0000031000040
00000000fffffffe
[=C2=A0=C2=A0=C2=A0 1.393714] GPR12: 0000000000000000 c00000007ffff280 c00=
0000000012190
0000000000000000
[=C2=A0=C2=A0=C2=A0 1.393714] GPR16: 0000000000000000 0000000000000000 000=
0000000000000
0000000000000000
[=C2=A0=C2=A0=C2=A0 1.393714] GPR20: 0000000000000000 0000000000000000 000=
0000000000000
0000000000000000
[=C2=A0=C2=A0=C2=A0 1.393714] GPR24: 0000000000000000 c00000000125ad38 c00=
0000001857140
0000000000000000
[=C2=A0=C2=A0=C2=A0 1.393714] GPR28: ffffffffffffffea c000000072d87908 000=
0000000000001
c000000001adab40
[=C2=A0=C2=A0=C2=A0 1.397765] NIP [c0000000008d79f4] io_serial_in+0x94/0x1=
00
[=C2=A0=C2=A0=C2=A0 1.398104] LR [c0000000008d9cf8] serial8250_config_port=
+0x3b8/0x1240
[=C2=A0=C2=A0=C2=A0 1.398619] Call Trace:
[=C2=A0=C2=A0=C2=A0 1.398977] [c0000000723c3200] [0000000000000005] 0x5 (u=
nreliable)
[=C2=A0=C2=A0=C2=A0 1.399428] [c0000000723c3230] [c0000000008d9970]
serial8250_config_port+0x30/0x1240
[=C2=A0=C2=A0=C2=A0 1.399874] [c0000000723c32d0] [c0000000008d3570]
uart_add_one_port+0x250/0x690
[=C2=A0=C2=A0=C2=A0 1.400311] [c0000000723c33e0] [c0000000008d5138]
serial8250_register_8250_port+0x368/0x5a0
[=C2=A0=C2=A0=C2=A0 1.400767] [c0000000723c3470] [c0000000008d56fc]
serial8250_probe+0x14c/0x1e0
[=C2=A0=C2=A0=C2=A0 1.401194] [c0000000723c37e0] [c000000000995d50]
platform_drv_probe+0x60/0xf0
[=C2=A0=C2=A0=C2=A0 1.401603] [c0000000723c3860] [c00000000099208c]
really_probe+0x12c/0x580
[=C2=A0=C2=A0=C2=A0 1.401976] [c0000000723c3910] [c000000000992808]
driver_probe_device+0x88/0x120
[=C2=A0=C2=A0=C2=A0 1.402373] [c0000000723c3940] [c000000000992d2c]
device_driver_attach+0x11c/0x130
[=C2=A0=C2=A0=C2=A0 1.402805] [c0000000723c3980] [c000000000992dec]
__driver_attach+0xac/0x190
[=C2=A0=C2=A0=C2=A0 1.403185] [c0000000723c39d0] [c00000000098e868]
bus_for_each_dev+0xa8/0x130
[=C2=A0=C2=A0=C2=A0 1.403564] [c0000000723c3a30] [c0000000009914b4] driver=
_attach+0x34/0x50
[=C2=A0=C2=A0=C2=A0 1.403935] [c0000000723c3a50] [c000000000990bd0]
bus_add_driver+0x170/0x2b0
[=C2=A0=C2=A0=C2=A0 1.404329] [c0000000723c3ae0] [c000000000993fd4]
driver_register+0xb4/0x1c0
[=C2=A0=C2=A0=C2=A0 1.404690] [c0000000723c3b50] [c000000000995c5c]
__platform_driver_register+0x5c/0x70
[=C2=A0=C2=A0=C2=A0 1.405092] [c0000000723c3b70] [c0000000012cbed4]
serial8250_init+0x16c/0x1d8
[=C2=A0=C2=A0=C2=A0 1.405454] [c0000000723c3c00] [c000000000011b30]
do_one_initcall+0x60/0x2b0
[=C2=A0=C2=A0=C2=A0 1.405828] [c0000000723c3cd0] [c000000001284408]
kernel_init_freeable+0x2e0/0x3a4
[=C2=A0=C2=A0=C2=A0 1.406199] [c0000000723c3db0] [c0000000000121b4] kernel=
_init+0x2c/0x158
[=C2=A0=C2=A0=C2=A0 1.406616] [c0000000723c3e20] [c00000000000d1a8]
ret_from_kernel_thread+0x5c/0x74
[=C2=A0=C2=A0=C2=A0 1.407061] Instruction dump:
[=C2=A0=C2=A0=C2=A0 1.407492] 38210030 7fe3fb78 ebe1fff8 4e800020 60000000=
 60000000
60420000 3d22000b
[=C2=A0=C2=A0=C2=A0 1.407930] 39298c10 e8890000 7c632214 7c0004ac <8be3000=
0> 0c1f0000
4c00012c 57ff063e
[=C2=A0=C2=A0=C2=A0 1.408889] ---[ end trace 57df7bc12c90327a ]---
[=C2=A0=C2=A0=C2=A0 1.409238]
[=C2=A0=C2=A0=C2=A0 2.410095] Kernel panic - not syncing: Attempted to kil=
l init!
exitcode=3D0x0000000b
[=C2=A0=C2=A0 12.174535161,3] Could not set special wakeup on 0:0: timeout=
 waiting
for SPECIAL_WKUP_DONE.
[=C2=A0=C2=A0=C2=A0 2.517929] Rebooting in 10 seconds..

When trying to modify your config, I needed to:
- remove the "-show-cursor" - deprecated option
- either remove the virtio serial console entries or change the
=C2=A0 virtio-serial-device to virtio-serial-pci due to the error:

qemu-system-ppc64: -device virtio-serial-device: No 'virtio-bus' bus
found for device 'virtio-serial-device'

I have found some recent docs on running the qemuppc64 here:
https://github.com/legoater/qemu/wiki/PowerNV#running-qemu

Their example works fine. But when using artifacts from Yocto build, I
fail to
spawn the login prompt. I have also noticed that they are using
different image type
and tried building it as well, with the same results.

I have also updated my repo: https://github.com/3mdeb/meta-ppc64

>
> On 10/22/20 10:11 AM, Maciej Pijanowski wrote:
>> Hello,
>>
>> I need to build a development environment for ppc64 (POWER9).
>> I wanted to use Yocto to build ppc64 QEMU images. I'm starting with
>> big endian as I need to test out this one first.
>>
>> I was surprised to see that there is no qemuppc64 target, so I have
>> just started my own here [1]. I want to use the POWER9 tune and POWER9
>> CPU in QEMU. It is already supported in recent QEMU as we have already
>> been running some firmware images.
>>
>> I've been trying to find something about qemuppc64 and Yocto and found
>> just some old meta layer [2] and a thread on adding qemuppc64 support
>> to the linux-yocto [3]. The last part (yocto-kernel-cache) was merged
>> and
>> is still there. There are some more unmerged patches in this regard
>> though [4].
>>
>> Do you know what is the status there? I would be happy to help moving i=
t
>> forward.
>>
>> [1]
>> https://github.com/3mdeb/meta-ppc64/blob/master/conf/machine/qemuppc64.=
conf
>>
>> [2] https://github.com/akuster/meta-qemu-bsps
>> [3]https://www.yoctoproject.org/pipermail/linux-yocto/2014-September/00=
3184.html
>>
>> [4]
>> https://patchwork.openembedded.org/project/oe-core/patches/?submitter=
=3D11275&state=3D&q=3Dppc64&archive=3Dboth&delegate=3D
>>
>>
>>
>>
>>
>>
>
>=20
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------2C07B7CFBDD93924235FFC43
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 22.10.2020 19:21, Khem Raj wrote:<br=
>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:eb5948e3-b391-deb5-c8c6-9cfe78d8b5de@gmail.com">Hi
      Maciej
      <br>
    </blockquote>
    Hi,<br>
    <blockquote type=3D"cite"
      cite=3D"mid:eb5948e3-b391-deb5-c8c6-9cfe78d8b5de@gmail.com">
      <br>
      I have set of patches that I carry to support qemuppc64
      <br>
      <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/YoeDistro/op=
enembedded-core/commit/885104134403da36b9ecb47ced6423e183262392">https://gi=
thub.com/YoeDistro/openembedded-core/commit/885104134403da36b9ecb47ced6423e=
183262392</a>
      <br>
      <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/YoeDistro/op=
enembedded-core/commit/aa9797636a6039ede752a57b05f839ce641e3cfc">https://gi=
thub.com/YoeDistro/openembedded-core/commit/aa9797636a6039ede752a57b05f839c=
e641e3cfc</a>
      <br>
      <br>
      you can plant them on top of master oe-core or poky and
      <br>
      try out. I haven't built it in months so maybe a bit jaded.
      <br>
    </blockquote>
    Thanks. I've tried to continue my approach or to take yours config
    and adapt it.<br>
    I can get the machine to boot with certain parameters, but so far I
    was not able<br>
    to get the login prompt to spawn on the serial console.<br>
    <br>
    Publishing some status update here, maybe it will be useful to
    someone.<br>
    <br>
    Depending on the QEMU params, it either freezes after mounting
    rootfs (when the<br>
    login prompt should appear):<br>
    <br>
    [=C2=A0=C2=A0=C2=A0 3.076659] udevd (79) used greatest stack depth: 10=
024 bytes
    left<br>
    [=C2=A0=C2=A0=C2=A0 3.092691] udevd[80]: starting eudev-3.2.9<br>
    [=C2=A0=C2=A0=C2=A0 5.186145] EXT4-fs (vda): re-mounted. Opts: (null)<=
br>
    [=C2=A0=C2=A0=C2=A0 5.186906] ext4 filesystem being remounted at / sup=
ports
    timestamps until 2038 (0x7fffffff)<br>
    [=C2=A0=C2=A0=C2=A0 7.370678] urandom_read: 4 callbacks suppressed<br>
    [=C2=A0=C2=A0=C2=A0 7.370816] random: dd: uninitialized urandom read (=
512 bytes
    read)<br>
    <br>
    or could even crash:<br>
    <br>
    [=C2=A0=C2=A0=C2=A0 1.374644] Driver 'hvc_console' was unable to regis=
ter with
    bus_type 'vio' because the bus was not initialized.<br>
    [=C2=A0=C2=A0=C2=A0 1.376651] hvc0: raw protocol on /ibm,opal/consoles=
/serial@0
    (boot console)<br>
    [=C2=A0=C2=A0=C2=A0 1.377099] hvc0: No interrupts property, using OPAL=
 event<br>
    [=C2=A0=C2=A0=C2=A0 1.380151] Serial: 8250/16550 driver, 4 ports, IRQ =
sharing
    disabled<br>
    [=C2=A0=C2=A0=C2=A0 1.387642] printk: console [ttyS0] disabled<br>
    [=C2=A0=C2=A0=C2=A0 1.389410] BUG: Unable to handle kernel data access=
 on read at
    0xc00a0000000003e9<br>
    [=C2=A0=C2=A0=C2=A0 1.389927] Faulting instruction address: 0xc0000000=
008d79f4<br>
    [=C2=A0=C2=A0=C2=A0 1.390532] Oops: Kernel access of bad area, sig: 11=
 [#1]<br>
    [=C2=A0=C2=A0=C2=A0 1.390812] LE PAGE_SIZE=3D64K MMU=3DRadix SMP NR_CP=
US=3D2048 NUMA
    PowerNV<br>
    [=C2=A0=C2=A0=C2=A0 1.391331] Modules linked in:<br>
    [=C2=A0=C2=A0=C2=A0 1.391790] CPU: 1 PID: 1 Comm: swapper/0 Not tainte=
d
    5.8.13-yocto-standard #1<br>
    [=C2=A0=C2=A0=C2=A0 1.392237] NIP:=C2=A0 c0000000008d79f4 LR: c0000000=
008d9cf8 CTR:
    c0000000008d7960<br>
    [=C2=A0=C2=A0=C2=A0 1.392696] REGS: c0000000723c2f70 TRAP: 0300=C2=A0=
=C2=A0 Not tainted=C2=A0
    (5.8.13-yocto-standard)<br>
    [=C2=A0=C2=A0=C2=A0 1.393104] MSR:=C2=A0 9000000002009033
    &lt;SF,HV,VEC,EE,ME,IR,DR,RI,LE&gt;=C2=A0 CR: 24000220=C2=A0 XER: 2004=
0000<br>
    [=C2=A0=C2=A0=C2=A0 1.393714] CFAR: c0000000008d799c DAR: c00a00000000=
03e9 DSISR:
    40000000 IRQMASK: 1 <br>
    [=C2=A0=C2=A0=C2=A0 1.393714] GPR00: c0000000008d9cf8 c0000000723c3200
    c000000001921f00 c00a0000000003e9 <br>
    [=C2=A0=C2=A0=C2=A0 1.393714] GPR04: c00a000000000000 00000000000003ef
    c0000000017ac378 0000000000000000 <br>
    [=C2=A0=C2=A0=C2=A0 1.393714] GPR08: 0000000000000000 c0000000019cab10
    0000000031000040 00000000fffffffe <br>
    [=C2=A0=C2=A0=C2=A0 1.393714] GPR12: 0000000000000000 c00000007ffff280
    c000000000012190 0000000000000000 <br>
    [=C2=A0=C2=A0=C2=A0 1.393714] GPR16: 0000000000000000 0000000000000000
    0000000000000000 0000000000000000 <br>
    [=C2=A0=C2=A0=C2=A0 1.393714] GPR20: 0000000000000000 0000000000000000
    0000000000000000 0000000000000000 <br>
    [=C2=A0=C2=A0=C2=A0 1.393714] GPR24: 0000000000000000 c00000000125ad38
    c000000001857140 0000000000000000 <br>
    [=C2=A0=C2=A0=C2=A0 1.393714] GPR28: ffffffffffffffea c000000072d87908
    0000000000000001 c000000001adab40 <br>
    [=C2=A0=C2=A0=C2=A0 1.397765] NIP [c0000000008d79f4] io_serial_in+0x94=
/0x100<br>
    [=C2=A0=C2=A0=C2=A0 1.398104] LR [c0000000008d9cf8]
    serial8250_config_port+0x3b8/0x1240<br>
    [=C2=A0=C2=A0=C2=A0 1.398619] Call Trace:<br>
    [=C2=A0=C2=A0=C2=A0 1.398977] [c0000000723c3200] [0000000000000005] 0x=
5
    (unreliable)<br>
    [=C2=A0=C2=A0=C2=A0 1.399428] [c0000000723c3230] [c0000000008d9970]
    serial8250_config_port+0x30/0x1240<br>
    [=C2=A0=C2=A0=C2=A0 1.399874] [c0000000723c32d0] [c0000000008d3570]
    uart_add_one_port+0x250/0x690<br>
    [=C2=A0=C2=A0=C2=A0 1.400311] [c0000000723c33e0] [c0000000008d5138]
    serial8250_register_8250_port+0x368/0x5a0<br>
    [=C2=A0=C2=A0=C2=A0 1.400767] [c0000000723c3470] [c0000000008d56fc]
    serial8250_probe+0x14c/0x1e0<br>
    [=C2=A0=C2=A0=C2=A0 1.401194] [c0000000723c37e0] [c000000000995d50]
    platform_drv_probe+0x60/0xf0<br>
    [=C2=A0=C2=A0=C2=A0 1.401603] [c0000000723c3860] [c00000000099208c]
    really_probe+0x12c/0x580<br>
    [=C2=A0=C2=A0=C2=A0 1.401976] [c0000000723c3910] [c000000000992808]
    driver_probe_device+0x88/0x120<br>
    [=C2=A0=C2=A0=C2=A0 1.402373] [c0000000723c3940] [c000000000992d2c]
    device_driver_attach+0x11c/0x130<br>
    [=C2=A0=C2=A0=C2=A0 1.402805] [c0000000723c3980] [c000000000992dec]
    __driver_attach+0xac/0x190<br>
    [=C2=A0=C2=A0=C2=A0 1.403185] [c0000000723c39d0] [c00000000098e868]
    bus_for_each_dev+0xa8/0x130<br>
    [=C2=A0=C2=A0=C2=A0 1.403564] [c0000000723c3a30] [c0000000009914b4]
    driver_attach+0x34/0x50<br>
    [=C2=A0=C2=A0=C2=A0 1.403935] [c0000000723c3a50] [c000000000990bd0]
    bus_add_driver+0x170/0x2b0<br>
    [=C2=A0=C2=A0=C2=A0 1.404329] [c0000000723c3ae0] [c000000000993fd4]
    driver_register+0xb4/0x1c0<br>
    [=C2=A0=C2=A0=C2=A0 1.404690] [c0000000723c3b50] [c000000000995c5c]
    __platform_driver_register+0x5c/0x70<br>
    [=C2=A0=C2=A0=C2=A0 1.405092] [c0000000723c3b70] [c0000000012cbed4]
    serial8250_init+0x16c/0x1d8<br>
    [=C2=A0=C2=A0=C2=A0 1.405454] [c0000000723c3c00] [c000000000011b30]
    do_one_initcall+0x60/0x2b0<br>
    [=C2=A0=C2=A0=C2=A0 1.405828] [c0000000723c3cd0] [c000000001284408]
    kernel_init_freeable+0x2e0/0x3a4<br>
    [=C2=A0=C2=A0=C2=A0 1.406199] [c0000000723c3db0] [c0000000000121b4]
    kernel_init+0x2c/0x158<br>
    [=C2=A0=C2=A0=C2=A0 1.406616] [c0000000723c3e20] [c00000000000d1a8]
    ret_from_kernel_thread+0x5c/0x74<br>
    [=C2=A0=C2=A0=C2=A0 1.407061] Instruction dump:<br>
    [=C2=A0=C2=A0=C2=A0 1.407492] 38210030 7fe3fb78 ebe1fff8 4e800020 6000=
0000 60000000
    60420000 3d22000b <br>
    [=C2=A0=C2=A0=C2=A0 1.407930] 39298c10 e8890000 7c632214 7c0004ac &lt;=
8be30000&gt;
    0c1f0000 4c00012c 57ff063e <br>
    [=C2=A0=C2=A0=C2=A0 1.408889] ---[ end trace 57df7bc12c90327a ]---<br>
    [=C2=A0=C2=A0=C2=A0 1.409238] <br>
    [=C2=A0=C2=A0=C2=A0 2.410095] Kernel panic - not syncing: Attempted to=
 kill init!
    exitcode=3D0x0000000b<br>
    [=C2=A0=C2=A0 12.174535161,3] Could not set special wakeup on 0:0: tim=
eout
    waiting for SPECIAL_WKUP_DONE.<br>
    [=C2=A0=C2=A0=C2=A0 2.517929] Rebooting in 10 seconds..<br>
    <br>
    When trying to modify your config, I needed to:<br>
    - remove the "-show-cursor" - deprecated option<br>
    - either remove the virtio serial console entries or change the<br>
    =C2=A0 virtio-serial-device to virtio-serial-pci due to the error:<br>
    <br>
    qemu-system-ppc64: -device virtio-serial-device: No 'virtio-bus' bus
    found for device 'virtio-serial-device'<br>
    <br>
    I have found some recent docs on running the qemuppc64 here:<br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/legoater=
/qemu/wiki/PowerNV#running-qemu">https://github.com/legoater/qemu/wiki/Powe=
rNV#running-qemu</a><br>
    <br>
    Their example works fine. But when using artifacts from Yocto build,
    I fail to<br>
    spawn the login prompt. I have also noticed that they are using
    different image type<br>
    and tried building it as well, with the same results.<br>
    <br>
    I have also updated my repo: <a class=3D"moz-txt-link-freetext" href=
=3D"https://github.com/3mdeb/meta-ppc64">https://github.com/3mdeb/meta-ppc=
64</a><br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:eb5948e3-b391-deb5-c8c6-9cfe78d8b5de@gmail.com">
      <br>
      On 10/22/20 10:11 AM, Maciej Pijanowski wrote:
      <br>
      <blockquote type=3D"cite">Hello,
        <br>
        <br>
        I need to build a development environment for ppc64 (POWER9).
        <br>
        I wanted to use Yocto to build ppc64 QEMU images. I'm starting
        with
        <br>
        big endian as I need to test out this one first.
        <br>
        <br>
        I was surprised to see that there is no qemuppc64 target, so I
        have
        <br>
        just started my own here [1]. I want to use the POWER9 tune and
        POWER9
        <br>
        CPU in QEMU. It is already supported in recent QEMU as we have
        already
        <br>
        been running some firmware images.
        <br>
        <br>
        I've been trying to find something about qemuppc64 and Yocto and
        found
        <br>
        just some old meta layer [2] and a thread on adding qemuppc64
        support
        <br>
        to the linux-yocto [3]. The last part (yocto-kernel-cache) was
        merged and
        <br>
        is still there. There are some more unmerged patches in this
        regard
        <br>
        though [4].
        <br>
        <br>
        Do you know what is the status there? I would be happy to help
        moving it
        <br>
        forward.
        <br>
        <br>
        [1]
        <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/3mdeb/meta-p=
pc64/blob/master/conf/machine/qemuppc64.conf">https://github.com/3mdeb/meta=
-ppc64/blob/master/conf/machine/qemuppc64.conf</a>
        <br>
        [2] <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/=
akuster/meta-qemu-bsps">https://github.com/akuster/meta-qemu-bsps</a>
        <br>
[3]<a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject.org=
/pipermail/linux-yocto/2014-September/003184.html">https://www.yoctoproject=
.org/pipermail/linux-yocto/2014-September/003184.html</a>
        <br>
        [4]
        <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://patchwork.openembedded.=
org/project/oe-core/patches/?submitter=3D11275&amp;state=3D&amp;q=3Dppc64&a=
mp;archive=3Dboth&amp;delegate=3D">https://patchwork.openembedded.org/proje=
ct/oe-core/patches/?submitter=3D11275&amp;state=3D&amp;q=3Dppc64&amp;archiv=
e=3Dboth&amp;delegate=3D</a>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
      </blockquote>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3mde=
b.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------2C07B7CFBDD93924235FFC43--
