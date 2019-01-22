Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CF66E00CBC; Tue, 22 Jan 2019 07:49:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7AE9E00C62
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 07:49:11 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id k19-v6so20993474lji.11
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 07:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=njAM4Olk7O9pUXS2RztQE3sKwsrpFC18FkCsBuhUKhc=;
	b=DUEjvq18y8cuFGNkS9P7h0z2mtH22AKgfVV5sLQEGrB3ftykea+lxTDJkWzYpBxQ64
	j06Q8tJwVwWWYM3brerfdfccLRsg3hD29cRqxB0z6DAATTObr73JvceL1IOAxwHh96vZ
	fK97ahCIxytNC9/Qb+e70zN5t+3c8U3Q9nZv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=njAM4Olk7O9pUXS2RztQE3sKwsrpFC18FkCsBuhUKhc=;
	b=imIFZP22msXO1St27Ez4wdYF3/KWg50LKJIJ0pDRpO422Qy1ZN+Z0CRduoIOj1zeUI
	tAEYkW70m892NsuEiZSG6O6tRW3hK2C40s36LpPm0g66m6WqPOYsrlYhM4GpXcNIYA/m
	I/O35opoC6ADypxLMRAqJI7d8R718z0UnlKeFQrnAQUvI+hd8FOZPUabxDxbcFOGoAg5
	t2qYIBN7/NGgEaEna0yu4Ep8vuhPbN2M6xNMb5lM31lOA74HvXVPNSZkGSbRYrmz79j7
	CoF1AnPQLkQdvOB6TBGO/eSdEY68v4f4yYYK1uJPSjmCcj0efgj3SJBk3sHAn/QcFlZu
	cOeA==
X-Gm-Message-State: AJcUukeusAR1wIE05Nzq9G84pjHKv2nxg3GN3fHdRbi26/dCVwWbLXcO
	iKiTotdYt+7YOxNJMhS3HWxwG6Aq8wdZWOoBVZ5r6D0w
X-Google-Smtp-Source: ALg8bN586UFeh6uu2wbmSWc94unDdF8BQX2ilPkNm3gDhilCKDjBSm39cwniYcZ68G1PmDaHymmwZFX6VgrgtRTNuqg=
X-Received: by 2002:a2e:89d7:: with SMTP id
	c23-v6mr22724436ljk.0.1548172150627; 
	Tue, 22 Jan 2019 07:49:10 -0800 (PST)
MIME-Version: 1.0
References: <CE2E43470FE5444A811B580382FE5EDF524776BD8C@KEMPMAIL2.woodward.com>
	<CAGAf8LxwaWjAFeP8AH4L95iq=wTJC5x=ufp20rckweqyPJw81w@mail.gmail.com>
In-Reply-To: <CAGAf8LxwaWjAFeP8AH4L95iq=wTJC5x=ufp20rckweqyPJw81w@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 22 Jan 2019 16:48:59 +0100
Message-ID: <CAP71WjzTkMxPmgDTK36zTcDfOoTBFBWBgTQ=D=EK4JwinJCMrg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Systemd service recipe fails while booting from initramfs
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
X-List-Received-Date: Tue, 22 Jan 2019 15:49:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi,

On Tue, Jan 22, 2019 at 4:42 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Lukasz,
>
> Thank you very much for the advises. I did what you have suggested, and t=
his does work.
>
> And it solves my basic problem (NO GO for some reason when I had network =
manager).
>
> I use DUT (BBB) with YOCTO initramfs linux as testing vehicle for my vari=
ous pass-through VBox VMs (several designs) via my notebook host to test th=
em, how different designs VMs connect and interact with DUT.

can you share how you built your initramfs?  Are you saying that you
are booting an initramfs which then mounts the rootfs where you have
core-image-minimal?

>
> Lukasz and Peter,
>
> I also will investigate more about systemd service in order to get more i=
nside info about how to properly configure the service.
>
> Thank you,
> Zoran
> _______
>
> Here is the transcript after I built new YOCTO BBB DUT initramfs build:
>
> root@beaglebone:~# uname -a
> Linux beaglebone 4.19.7-jumpnow #1 Tue Jan 22 10:36:57 UTC 2019 armv7l GN=
U/Linux
> root@beaglebone:~# systemctl restart systemd-networkd
> root@beaglebone:~# ps -elf | grep dhc
> 0 S root      1521  1328  0  80   0 -   745 pipe_w 19:14 ttyO0    00:00:0=
0 grep dhc
> root@beaglebone:~# ifconfig eth0 down
> root@beaglebone:~# dhclient -4 eth0 -v
> Internet Systems Consortium DHCP Client 4.4.1
> Copyright 2004-2018 Internet Systems Consortium.
> All rights reserved.
> For info, please visit https://www.isc.org/software/dhcp/
>
> [11982.445947] net eth0: initializing cpsw version 1.12 (0)
> [11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY driver=
 [SMSC LAN8710/LAN8720] (mii_bus:phy_addr=3D4a101000.mdio:00, irq=3DPOLL)
> Listening on LPF/eth0/64:cf:d9:ff:67:05
> Sending on   LPF/eth0/64:cf:d9:ff:67:05
> Sending on   Socket/fallback
> DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 7
> [11984.640851] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - f=
low control off
> DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 10
> DHCPOFFER of 192.168.15.95 from 192.168.15.2
> DHCPREQUEST for 192.168.15.95 on eth0 to 255.255.255.255 port 67
> DHCPACK of 192.168.15.95 from 192.168.15.2
> suspect value in domain_name option - discarded
> chown: unrecognized option '--reference=3D/etc/resolv.conf'
> BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
>
> Usage: chown [-Rh]... USER[:[GRP]] FILE...
> chmod: unrecognized option '--reference=3D/etc/resolv.conf'
> BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
>
> Usage: chmod [-R] MODE[,MODE]... FILE...
> bound to 192.168.15.95 -- renewal in 40023 seconds.
> root@beaglebone:~#
>
> On Mon, Jan 21, 2019 at 9:07 AM Lukasz Zemla <Lukasz.Zemla@woodward.com> =
wrote:
>>
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org] On Behalf Of Zoran Stojsavljevic
>> Sent: Monday, January 21, 2019 7:56 AM
>>
>> [...]
>>
>> > While downloading initramfs on the target system, while bringing kerne=
l up, the following
>> > happened (actual log):
>> > [    0.000000] Kernel command line: console=3DttyO0,115200n8 root=3D/d=
ev/ram0 ip=3Ddhcp
>> > ... [snap]...
>> > [  114.064032] Sending DHCP requests ...... timed out!
>> > [  190.652571] IP-Config: Auto-configuration of network failed
>> > [  190.663158] Freeing unused kernel memory: 1024K
>> > [  190.668661] Run /init as init process
>> > System time before build time, advancing clock.
>> > Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory
>> > Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or dire=
ctory
>> > [!!!!!!] Failed to mount API filesystems, freezing.
>> > Freezing execution.
>> > [  192.984442] random: crng init done
>> > I have two questions (please, could you provide to me some help here):
>> > [1] How to fix this run-time bug (what I should do in the configuratio=
n)?
>> >     I found some interesting explanation about possible solution (PACK=
AGECONFIG):
>> >     https://lists.yoctoproject.org/pipermail/yocto/2013-November/01696=
5.html
>>
>> Probably you are missing CONFIG_CGROUPS in your kernel configuration.
>> Please read README file in the systemd sources folder - it describes all=
 options
>> required to be enabled in kernel configuration.
>>
>> > [2] I would like also to include networkctl service (should I do somet=
hing specific to
>> >     enable it, or this is done by default enabling systemd)?
>>
>> Please add following to your conf/local.conf file:
>> PACKAGECONFIG_append_pn-systemd =3D " networkd"
>>
>> Best regards,
>> Lukasz Zemla
>>
>> ***
>> The information in this email is confidential and intended solely for th=
e individual or entity to whom it is addressed.  If you have received this =
email in error please notify the sender by return e-mail, delete this email=
, and refrain from any disclosure or action based on the information.
>> ***
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

