Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1293FE00CBC; Tue, 22 Jan 2019 08:38:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB7EDE0049A
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 08:38:51 -0800 (PST)
Received: by mail-qt1-f179.google.com with SMTP id d19so28244993qtq.9
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 08:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Zj6bnmQsJOTSHDwLUC7khAxns8tp8DDslFgzZD/7jrM=;
	b=DRX1sFcXK7tbIZqVjiqeuEA1+H9+2Nhs5wqWe8Hj87ew3ug9CtDYfMgr2ADGNGU+h7
	/N+SeM+2K+f5Pr5hAu7+mHtO/U5kRAqEH3EsnaE0Ob5uroHXjCIu2t37uKfxrPwkjxhw
	hy5/yskfpuQdhL1oErgVdpoEldUWqaZ+YSR7gbMpo5VkMVGf7DLAXWE745ZC9r8VYSLU
	5gdNO27DIhT6FWG7H5qWEL81i9LBEQ+c3eFlmEAjsMhZXwEMAu72F63QKhnU1CnX/++W
	mUZg4uwGKS6LEHbeGstejpAq03DDgq91/9ds5X0eRJZ5T08Ppn8UoC80aCLQ+2zkwtuN
	AZdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Zj6bnmQsJOTSHDwLUC7khAxns8tp8DDslFgzZD/7jrM=;
	b=c6KZoohXlbxH1/QuWsG4wms/SMCbTlxpTd/UJ3/IMGPNEuwodI7LKinJMr7J4Vk8VB
	vjmCTTngxTaLBYvY3pO2p3l9eVYuaFT6+3pYjX+UBLVP0lh5YV6sJfMn5/iPKqLYVjhT
	SYv5XkeBaHHo47ZAJBO9QSaLpLRNYTASJQ0gcQRJfXTTq4vzkyv4gJhUhJeTOGk4YQSc
	WDU7iAcSkNqBc5rhIxnqwfqvUdLhA/9i05PovdyAN+7DlXs0g6x/Uz45egPJZe1RNBzl
	TgDBYTJXFiquUKtbzAdm+6jDPOCX4VFcd8a5sWv7jwazLMcONozqLBWMBGjhsBO+pdpB
	bE2Q==
X-Gm-Message-State: AJcUukd8C7ZTeFud8blfZKyeDsIcOjfAWreMRVKOZvnlOzyOHXG9hjQM
	vcFYSTlPr3lUaBzvp3/B194os7vzl3T4KetltHI=
X-Google-Smtp-Source: ALg8bN4rmG7Pe20iz9AG3C8obilTt/av9n+FXJUYLtKJANz5+bVAyPBDj/VVS80rmT0S6SIHNJUNcTjqYxGpCsOk4qI=
X-Received: by 2002:a0c:f90b:: with SMTP id v11mr29644433qvn.236.1548175131090;
	Tue, 22 Jan 2019 08:38:51 -0800 (PST)
MIME-Version: 1.0
References: <CE2E43470FE5444A811B580382FE5EDF524776BD8C@KEMPMAIL2.woodward.com>
	<CAGAf8LxwaWjAFeP8AH4L95iq=wTJC5x=ufp20rckweqyPJw81w@mail.gmail.com>
	<CAP71WjzTkMxPmgDTK36zTcDfOoTBFBWBgTQ=D=EK4JwinJCMrg@mail.gmail.com>
In-Reply-To: <CAP71WjzTkMxPmgDTK36zTcDfOoTBFBWBgTQ=D=EK4JwinJCMrg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 22 Jan 2019 17:38:39 +0100
Message-ID: <CAGAf8LyfbCqc5AeaDhxOAEwhL_KOe7mkE68d3afgv4DFJPVPmg@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
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
X-List-Received-Date: Tue, 22 Jan 2019 16:38:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Nicolas,

I build ONLY initramfs to be used on BBB DUT in order to test VMs. I
do not use mtd neither flash rootfs (as mounted on flash), although in
the BBB DUT's flash I have embedded Debian stretch. I use different
ash scripts in U-Boot to bring only ramboot.

Here is the proof:
root@beaglebone:~# df
Filesystem           1K-blocks      Used Available Use% Mounted on
devtmpfs                213596         0    213596   0% /dev
tmpfs                   251260         0    251260   0% /dev/shm
tmpfs                   251260      8428    242832   3% /run
tmpfs                   251260         0    251260   0% /sys/fs/cgroup
tmpfs                   251260         0    251260   0% /tmp
tmpfs                   251260       116    251144   0% /var/volatile

But this email thread, my best guess, addresses your concerns:
https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html

There is also how to build image with initramfs ONLY, in this thread,
written by me:
https://lists.yoctoproject.org/pipermail/yocto/2018-July/041696.html

I hope this helps.

Zoran
_______


On Tue, Jan 22, 2019 at 4:49 PM Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
>
> hi,
>
> On Tue, Jan 22, 2019 at 4:42 PM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> >
> > Hello Lukasz,
> >
> > Thank you very much for the advises. I did what you have suggested, and=
 this does work.
> >
> > And it solves my basic problem (NO GO for some reason when I had networ=
k manager).
> >
> > I use DUT (BBB) with YOCTO initramfs linux as testing vehicle for my va=
rious pass-through VBox VMs (several designs) via my notebook host to test =
them, how different designs VMs connect and interact with DUT.
>
> can you share how you built your initramfs?  Are you saying that you
> are booting an initramfs which then mounts the rootfs where you have
> core-image-minimal?
>
> >
> > Lukasz and Peter,
> >
> > I also will investigate more about systemd service in order to get more=
 inside info about how to properly configure the service.
> >
> > Thank you,
> > Zoran
> > _______
> >
> > Here is the transcript after I built new YOCTO BBB DUT initramfs build:
> >
> > root@beaglebone:~# uname -a
> > Linux beaglebone 4.19.7-jumpnow #1 Tue Jan 22 10:36:57 UTC 2019 armv7l =
GNU/Linux
> > root@beaglebone:~# systemctl restart systemd-networkd
> > root@beaglebone:~# ps -elf | grep dhc
> > 0 S root      1521  1328  0  80   0 -   745 pipe_w 19:14 ttyO0    00:00=
:00 grep dhc
> > root@beaglebone:~# ifconfig eth0 down
> > root@beaglebone:~# dhclient -4 eth0 -v
> > Internet Systems Consortium DHCP Client 4.4.1
> > Copyright 2004-2018 Internet Systems Consortium.
> > All rights reserved.
> > For info, please visit https://www.isc.org/software/dhcp/
> >
> > [11982.445947] net eth0: initializing cpsw version 1.12 (0)
> > [11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY driv=
er [SMSC LAN8710/LAN8720] (mii_bus:phy_addr=3D4a101000.mdio:00, irq=3DPOLL)
> > Listening on LPF/eth0/64:cf:d9:ff:67:05
> > Sending on   LPF/eth0/64:cf:d9:ff:67:05
> > Sending on   Socket/fallback
> > DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 7
> > [11984.640851] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full -=
 flow control off
> > DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 10
> > DHCPOFFER of 192.168.15.95 from 192.168.15.2
> > DHCPREQUEST for 192.168.15.95 on eth0 to 255.255.255.255 port 67
> > DHCPACK of 192.168.15.95 from 192.168.15.2
> > suspect value in domain_name option - discarded
> > chown: unrecognized option '--reference=3D/etc/resolv.conf'
> > BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
> >
> > Usage: chown [-Rh]... USER[:[GRP]] FILE...
> > chmod: unrecognized option '--reference=3D/etc/resolv.conf'
> > BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
> >
> > Usage: chmod [-R] MODE[,MODE]... FILE...
> > bound to 192.168.15.95 -- renewal in 40023 seconds.
> > root@beaglebone:~#
> >
> > On Mon, Jan 21, 2019 at 9:07 AM Lukasz Zemla <Lukasz.Zemla@woodward.com=
> wrote:
> >>
> >> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoprojec=
t.org] On Behalf Of Zoran Stojsavljevic
> >> Sent: Monday, January 21, 2019 7:56 AM
> >>
> >> [...]
> >>
> >> > While downloading initramfs on the target system, while bringing ker=
nel up, the following
> >> > happened (actual log):
> >> > [    0.000000] Kernel command line: console=3DttyO0,115200n8 root=3D=
/dev/ram0 ip=3Ddhcp
> >> > ... [snap]...
> >> > [  114.064032] Sending DHCP requests ...... timed out!
> >> > [  190.652571] IP-Config: Auto-configuration of network failed
> >> > [  190.663158] Freeing unused kernel memory: 1024K
> >> > [  190.668661] Run /init as init process
> >> > System time before build time, advancing clock.
> >> > Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory
> >> > Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or di=
rectory
> >> > [!!!!!!] Failed to mount API filesystems, freezing.
> >> > Freezing execution.
> >> > [  192.984442] random: crng init done
> >> > I have two questions (please, could you provide to me some help here=
):
> >> > [1] How to fix this run-time bug (what I should do in the configurat=
ion)?
> >> >     I found some interesting explanation about possible solution (PA=
CKAGECONFIG):
> >> >     https://lists.yoctoproject.org/pipermail/yocto/2013-November/016=
965.html
> >>
> >> Probably you are missing CONFIG_CGROUPS in your kernel configuration.
> >> Please read README file in the systemd sources folder - it describes a=
ll options
> >> required to be enabled in kernel configuration.
> >>
> >> > [2] I would like also to include networkctl service (should I do som=
ething specific to
> >> >     enable it, or this is done by default enabling systemd)?
> >>
> >> Please add following to your conf/local.conf file:
> >> PACKAGECONFIG_append_pn-systemd =3D " networkd"
> >>
> >> Best regards,
> >> Lukasz Zemla
> >>
> >> ***
> >> The information in this email is confidential and intended solely for =
the individual or entity to whom it is addressed.  If you have received thi=
s email in error please notify the sender by return e-mail, delete this ema=
il, and refrain from any disclosure or action based on the information.
> >> ***
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

