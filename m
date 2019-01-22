Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ED20E00CC8; Tue, 22 Jan 2019 08:45:31 -0800 (PST)
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
	*      [209.85.167.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
	[209.85.167.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93E3EE006B3
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 08:45:30 -0800 (PST)
Received: by mail-lf1-f49.google.com with SMTP id v5so18575349lfe.7
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 08:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=5P67oogthdtwyrhyZ6OQ0QMckANzYf0ms+XZA7CS9fg=;
	b=WndyTayyyigXKlrHJKtVZM4Dl/OYnmPH/TgGU4Fz6o+W95Dwcy4Vg6V5aHFKLk30IL
	610kNLhdwfQT5oIWDrpfKqphQIQS1fAWAxcPkkobwHhGdBb+on2kzfLxKKK3KDdATLfT
	Ur/DHOvGZZU/i5o/+Dl0CNpGaepILSUcYlC10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=5P67oogthdtwyrhyZ6OQ0QMckANzYf0ms+XZA7CS9fg=;
	b=HaOMw2ft7KWeTFVWFsSymAtumAVsro4qXP0Zcxu/KWybGAVLUWGVL6/kTAY2cLqyRu
	e25gxd9ZWOiIgMyoopFnKSB+XKSVQ/2ns8Hb8cp+Ck9ZJ2mSuaV4uR+FWuiXVbwrGUPN
	0VY20qaqYFgqFrcNhg+wIdlnHxPwa899/eZ9+iSabs80741swEN8m8gdhL++QU5X02oZ
	0jJTrm/fJP84acuwH9rxxBe4PtLm3m19Q0QDRbq9F8Z3HxczsggcHT489QxiIAJRsqgx
	EJSlF27Q14ajEeukNJg5AYsWl42gwWhYd9AaNi3QGiyQjnOuZl9Ozcbr3kCIYoFQ5Rav
	OTlg==
X-Gm-Message-State: AJcUukefIf/SuLj2m+MPbKBLw8UvNVQGz/tk4TA/bbK5O8rSnqjuDtBK
	ik1985hSX+gY/XNUTXmJFMyAvVFEE8IoWhApU6lD2g==
X-Google-Smtp-Source: ALg8bN4CoQdJeL2JjNLJh8D5Lv0lYdfnfrivj1tHlWlKwOYZCEkGvD49O0FbZbd/YHaS4hFh2zvIBvVZg/IAx/Smq9U=
X-Received: by 2002:a19:f718:: with SMTP id z24mr6902254lfe.97.1548175529259; 
	Tue, 22 Jan 2019 08:45:29 -0800 (PST)
MIME-Version: 1.0
References: <CE2E43470FE5444A811B580382FE5EDF524776BD8C@KEMPMAIL2.woodward.com>
	<CAGAf8LxwaWjAFeP8AH4L95iq=wTJC5x=ufp20rckweqyPJw81w@mail.gmail.com>
	<CAP71WjzTkMxPmgDTK36zTcDfOoTBFBWBgTQ=D=EK4JwinJCMrg@mail.gmail.com>
	<CAGAf8LyfbCqc5AeaDhxOAEwhL_KOe7mkE68d3afgv4DFJPVPmg@mail.gmail.com>
In-Reply-To: <CAGAf8LyfbCqc5AeaDhxOAEwhL_KOe7mkE68d3afgv4DFJPVPmg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 22 Jan 2019 17:45:16 +0100
Message-ID: <CAP71WjwvZPmn2zrMsvX6Cipm4zu4kROme-PVZFHueG_44dJPkg@mail.gmail.com>
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
X-List-Received-Date: Tue, 22 Jan 2019 16:45:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 22, 2019 at 5:38 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Nicolas,
>
> I build ONLY initramfs to be used on BBB DUT in order to test VMs. I
> do not use mtd neither flash rootfs (as mounted on flash), although in
> the BBB DUT's flash I have embedded Debian stretch. I use different
> ash scripts in U-Boot to bring only ramboot.
>
> Here is the proof:
> root@beaglebone:~# df
> Filesystem           1K-blocks      Used Available Use% Mounted on
> devtmpfs                213596         0    213596   0% /dev
> tmpfs                   251260         0    251260   0% /dev/shm
> tmpfs                   251260      8428    242832   3% /run
> tmpfs                   251260         0    251260   0% /sys/fs/cgroup
> tmpfs                   251260         0    251260   0% /tmp
> tmpfs                   251260       116    251144   0% /var/volatile
>
> But this email thread, my best guess, addresses your concerns:
> https://lists.yoctoproject.org/pipermail/yocto/2018-July/041680.html
>
> There is also how to build image with initramfs ONLY, in this thread,
> written by me:
> https://lists.yoctoproject.org/pipermail/yocto/2018-July/041696.html

thanks, that exactly what I was looking for.

>
> I hope this helps.
>
> Zoran
> _______
>
>
> On Tue, Jan 22, 2019 at 4:49 PM Nicolas Dechesne
> <nicolas.dechesne@linaro.org> wrote:
> >
> > hi,
> >
> > On Tue, Jan 22, 2019 at 4:42 PM Zoran Stojsavljevic
> > <zoran.stojsavljevic@gmail.com> wrote:
> > >
> > > Hello Lukasz,
> > >
> > > Thank you very much for the advises. I did what you have suggested, a=
nd this does work.
> > >
> > > And it solves my basic problem (NO GO for some reason when I had netw=
ork manager).
> > >
> > > I use DUT (BBB) with YOCTO initramfs linux as testing vehicle for my =
various pass-through VBox VMs (several designs) via my notebook host to tes=
t them, how different designs VMs connect and interact with DUT.
> >
> > can you share how you built your initramfs?  Are you saying that you
> > are booting an initramfs which then mounts the rootfs where you have
> > core-image-minimal?
> >
> > >
> > > Lukasz and Peter,
> > >
> > > I also will investigate more about systemd service in order to get mo=
re inside info about how to properly configure the service.
> > >
> > > Thank you,
> > > Zoran
> > > _______
> > >
> > > Here is the transcript after I built new YOCTO BBB DUT initramfs buil=
d:
> > >
> > > root@beaglebone:~# uname -a
> > > Linux beaglebone 4.19.7-jumpnow #1 Tue Jan 22 10:36:57 UTC 2019 armv7=
l GNU/Linux
> > > root@beaglebone:~# systemctl restart systemd-networkd
> > > root@beaglebone:~# ps -elf | grep dhc
> > > 0 S root      1521  1328  0  80   0 -   745 pipe_w 19:14 ttyO0    00:=
00:00 grep dhc
> > > root@beaglebone:~# ifconfig eth0 down
> > > root@beaglebone:~# dhclient -4 eth0 -v
> > > Internet Systems Consortium DHCP Client 4.4.1
> > > Copyright 2004-2018 Internet Systems Consortium.
> > > All rights reserved.
> > > For info, please visit https://www.isc.org/software/dhcp/
> > >
> > > [11982.445947] net eth0: initializing cpsw version 1.12 (0)
> > > [11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY dr=
iver [SMSC LAN8710/LAN8720] (mii_bus:phy_addr=3D4a101000.mdio:00, irq=3DPOL=
L)
> > > Listening on LPF/eth0/64:cf:d9:ff:67:05
> > > Sending on   LPF/eth0/64:cf:d9:ff:67:05
> > > Sending on   Socket/fallback
> > > DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 7
> > > [11984.640851] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full=
 - flow control off
> > > DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 10
> > > DHCPOFFER of 192.168.15.95 from 192.168.15.2
> > > DHCPREQUEST for 192.168.15.95 on eth0 to 255.255.255.255 port 67
> > > DHCPACK of 192.168.15.95 from 192.168.15.2
> > > suspect value in domain_name option - discarded
> > > chown: unrecognized option '--reference=3D/etc/resolv.conf'
> > > BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
> > >
> > > Usage: chown [-Rh]... USER[:[GRP]] FILE...
> > > chmod: unrecognized option '--reference=3D/etc/resolv.conf'
> > > BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
> > >
> > > Usage: chmod [-R] MODE[,MODE]... FILE...
> > > bound to 192.168.15.95 -- renewal in 40023 seconds.
> > > root@beaglebone:~#
> > >
> > > On Mon, Jan 21, 2019 at 9:07 AM Lukasz Zemla <Lukasz.Zemla@woodward.c=
om> wrote:
> > >>
> > >> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproj=
ect.org] On Behalf Of Zoran Stojsavljevic
> > >> Sent: Monday, January 21, 2019 7:56 AM
> > >>
> > >> [...]
> > >>
> > >> > While downloading initramfs on the target system, while bringing k=
ernel up, the following
> > >> > happened (actual log):
> > >> > [    0.000000] Kernel command line: console=3DttyO0,115200n8 root=
=3D/dev/ram0 ip=3Ddhcp
> > >> > ... [snap]...
> > >> > [  114.064032] Sending DHCP requests ...... timed out!
> > >> > [  190.652571] IP-Config: Auto-configuration of network failed
> > >> > [  190.663158] Freeing unused kernel memory: 1024K
> > >> > [  190.668661] Run /init as init process
> > >> > System time before build time, advancing clock.
> > >> > Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory
> > >> > Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or =
directory
> > >> > [!!!!!!] Failed to mount API filesystems, freezing.
> > >> > Freezing execution.
> > >> > [  192.984442] random: crng init done
> > >> > I have two questions (please, could you provide to me some help he=
re):
> > >> > [1] How to fix this run-time bug (what I should do in the configur=
ation)?
> > >> >     I found some interesting explanation about possible solution (=
PACKAGECONFIG):
> > >> >     https://lists.yoctoproject.org/pipermail/yocto/2013-November/0=
16965.html
> > >>
> > >> Probably you are missing CONFIG_CGROUPS in your kernel configuration=
.
> > >> Please read README file in the systemd sources folder - it describes=
 all options
> > >> required to be enabled in kernel configuration.
> > >>
> > >> > [2] I would like also to include networkctl service (should I do s=
omething specific to
> > >> >     enable it, or this is done by default enabling systemd)?
> > >>
> > >> Please add following to your conf/local.conf file:
> > >> PACKAGECONFIG_append_pn-systemd =3D " networkd"
> > >>
> > >> Best regards,
> > >> Lukasz Zemla
> > >>
> > >> ***
> > >> The information in this email is confidential and intended solely fo=
r the individual or entity to whom it is addressed.  If you have received t=
his email in error please notify the sender by return e-mail, delete this e=
mail, and refrain from any disclosure or action based on the information.
> > >> ***
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto

