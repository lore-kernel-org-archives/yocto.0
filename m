Return-Path: <vidal.develone@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9ACDE00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 11:32:14 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so5098515yhf.35
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 11:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=i4W81yr09LOj09RVy7OXYyseWWJUyoOU37U7WCUZ2fc=;
	b=Ajfj0Wgzr55z39IcTWOPxNKeTSPWADV90eJAyf5+vR9e5RcryTHzsL7XD5aWKk4qo3
	ZgUISOhrOk4pYP8RLokheeEv3qhw4VhnPsC4pwYnZRgVjiJfOpzIg9GRGgdgIKtTPcCj
	B+wbUtxGQ8Uh0wshnp5q9eW05m1q1Hbb3lgd5q8EzpYgHgD2THdBHghBPZ4Qu452rS0n
	1caMTXKJ2lyiepw1onWjkaJkO96gSzw5Yq+1iA1uZFiaeaDBVcGOWy7DqFy011ikxAtC
	caJCTVPRsL/1xHWXW2sV0ckvxy9QospTlP6/8F2tF5VqFAUNNbQrxH9JVAawiVg5LzCn
	vzXg==
MIME-Version: 1.0
Received: by 10.50.87.227 with SMTP id bb3mr5104083igb.57.1342809133706; Fri,
	20 Jul 2012 11:32:13 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Fri, 20 Jul 2012 11:32:13 -0700 (PDT)
Date: Fri, 20 Jul 2012 12:32:13 -0600
Message-ID: <CANwz6nwu7VB_VGdC3OtqdLwG+MbveHz14zZ9pQkownym=XQ2KQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard not booting yacto1.2.1
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
X-List-Received-Date: Fri, 20 Jul 2012 18:32:14 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba4d36a6cd304c5471d34

--e89a8f3ba4d36a6cd304c5471d34
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I have done a build on a Fedora17 and CentOS6. using yacto1.2.1
the default kernel is Linux-3.0.32-yocto-standard This was occurring in
yacto1.2 also
In yacto1.2 I tried the 3.4 kernel and it would boot further and I could
ssh into the beagleboard.
With yacto 1.2.1 I tried 3.2 kernel but it no get to where I could ssh into
the beagleboard
still not get the sato display in either ver.

Console: switching to colour frame buffer device 80x25
regulator_init_complete: VDAC: incomplete constraints, leaving on
twl_rtc twl_rtc: setting system    clock to 2000-01-01 00:00:00 UTC
(946684800)
Waiting    for root device /dev/mmcblk0p2...
mmc0: new SDHC card at address b368
mmcblk0: mmc0:b368 SDU16 14.9 GiB (ro)
 mmcblk0: p1 p2
VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
Please append a correct "root="    boot option; here are the available
partitions:
b300        15637504 mmcblk0  driver: mmcblk
  b301           66544 mmcblk0p1 00000000-0000-0000-0000-000000000mmcblk0p1
  b302        15570944 mmcblk0p2 00000000-0000-0000-0000-000000000mmcblk0p2
VFS: Unable to mount root fs on    unknown-block(179,2)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents
continu
ing
[<c006381c>] (unwind_backtrace+0x0/0xec) from [<c044560c>]
(dump_stack+0x20/0x24
)
[<c044560c>] (dump_stack+0x20/0x24) from [<c0445854>] (panic+0x64/0x180)
[<c0445854>] (panic+0x64/0x180) from [<c0008ea4>]
(mount_block_root+0x1e8/0x234)
[<c0008ea4>] (mount_block_root+0x1e8/0x234) from [<c00090c8>]
(mount_root+0xf0/0
x110)
[<c00090c8>] (mount_root+0xf0/0x110) from [<c0009254>]
(prepare_namespace+0x16c/
0x1cc)
[<c0009254>] (prepare_namespace+0x16c/0x1cc) from [<c0008a9c>]
(kernel_init+0x12
c/0x160)
[<c0008a9c>] (kernel_init+0x12c/0x160) from [<c005e428>]
(kernel_thread_exit+0x0

In the report for release 1.2.1 this stated that the beagleboard tested
okay.'
Is there any other information that I might provide about my builds?


Thanks for any help.
/0x8)

--e89a8f3ba4d36a6cd304c5471d34
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br><br>I have done a build on a Fedora17 and CentOS6. using yacto1.2=
.1<br>the default kernel is Linux-3.0.32-yocto-standard This was occurring =
in yacto1.2 also<br>In yacto1.2 I tried the 3.4 kernel and it would boot fu=
rther and I could ssh into the beagleboard.<br>
With yacto 1.2.1 I tried 3.2 kernel but it no get to where I could ssh into=
 the beagleboard<br>still not get the sato display in either ver.<br><br>Co=
nsole: switching to colour frame buffer device 80x25<br>regulator_init_comp=
lete: VDAC: incomplete constraints, leaving on<br>
twl_rtc twl_rtc: setting system=A0=A0=A0 clock to 2000-01-01 00:00:00 UTC (=
946684800)<br>Waiting=A0=A0=A0 for root device /dev/mmcblk0p2...<br>mmc0: n=
ew SDHC card at address b368<br>mmcblk0: mmc0:b368 SDU16 14.9 GiB (ro)<br>=
=A0mmcblk0: p1 p2<br>
VFS: Cannot open root device &quot;mmcblk0p2&quot; or unknown-block(179,2)<=
br>Please append a correct &quot;root=3D&quot;=A0=A0=A0 boot option; here a=
re the available partitions:<br>b300=A0=A0=A0 =A0=A0=A0 15637504 mmcblk0=A0=
 driver: mmcblk<br>
=A0 b301=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 66544 mmcblk0p1 00000000-0000-0000-0=
000-000000000mmcblk0p1<br>=A0 b302=A0=A0=A0=A0=A0=A0=A0 15570944 mmcblk0p2 =
00000000-0000-0000-0000-000000000mmcblk0p2<br>VFS: Unable to mount root fs =
on=A0=A0=A0 unknown-block(179,2)<br>User configuration error - no valid roo=
t filesystem found<br>
Kernel panic - not syncing: Invalid configuration from end user prevents co=
ntinu<br>ing<br>[&lt;c006381c&gt;] (unwind_backtrace+0x0/0xec) from [&lt;c0=
44560c&gt;] (dump_stack+0x20/0x24<br>)<br>[&lt;c044560c&gt;] (dump_stack+0x=
20/0x24) from [&lt;c0445854&gt;] (panic+0x64/0x180)<br>
[&lt;c0445854&gt;] (panic+0x64/0x180) from [&lt;c0008ea4&gt;] (mount_block_=
root+0x1e8/0x234)<br>[&lt;c0008ea4&gt;] (mount_block_root+0x1e8/0x234) from=
 [&lt;c00090c8&gt;] (mount_root+0xf0/0<br>x110)<br>[&lt;c00090c8&gt;] (moun=
t_root+0xf0/0x110) from [&lt;c0009254&gt;] (prepare_namespace+0x16c/<br>
0x1cc)<br>[&lt;c0009254&gt;] (prepare_namespace+0x16c/0x1cc) from [&lt;c000=
8a9c&gt;] (kernel_init+0x12<br>c/0x160)<br>[&lt;c0008a9c&gt;] (kernel_init+=
0x12c/0x160) from [&lt;c005e428&gt;] (kernel_thread_exit+0x0<br><br>In the =
report for release 1.2.1 this stated that the beagleboard tested okay.&#39;=
<br>
Is there any other information that I might provide about my builds?<br><br=
><br>Thanks for any help.<br>/0x8)<br><br>

--e89a8f3ba4d36a6cd304c5471d34--
