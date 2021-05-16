Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.1758.1621131370483210289
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 May 2021 19:16:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aTZKWoEA;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: b.hutchman@gmail.com)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9549338C06FF
	for <yocto@yoctoproject.org>; Sun, 16 May 2021 02:16:09 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id k19so2623477pfu.5
        for <yocto@yoctoproject.org>; Sat, 15 May 2021 19:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=JiDB9GNV7v9fN/HSOBw/eTTxvja5oPcb1pPPra0kOzo=;
        b=aTZKWoEAwWZux2AJwz/6Cp1laqk5UW/gI3Kjlx3U37QIyEY9YkhIyHyPpSNYkXOyK6
         ZzYgK+H2AMkdmptVzj9WESlybgq+jxM44BfzzvEDmONppuUWOu1VXyirDsz1j+J/9q0e
         xy3hQRJy/v4wn+9Jed/aIbB1+izASlr21T4ZxYuIBT6TmEK8Kxfh20HyB7ffE8MA60iZ
         3KyfwuJgL8lEcBErmM796SKhusjGZUfDyzChNoLMucgOHBmFYaC1j5Nafc1vHAESvazH
         hwLm2hYeg4pNJwmnlA2S3YJkzWDJFw+GSX0LsghYPmnwdBVM4IqB/9iRacqnV54sTewr
         8+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=JiDB9GNV7v9fN/HSOBw/eTTxvja5oPcb1pPPra0kOzo=;
        b=mKBkKd3t9y1nFPsZqYgT//RhAYBFuxmBeeGQfVMy2Ty3Tjyh0lOgQHU+odig4zFmGi
         N8Eu+FJciDfbSM0az8nDJI6zh2MQidUXIbEHSFZzMJGmEA2lA+t0LdOvUH5YTdSdIs+M
         D+2KPxSlC1ZTG2I3TGTtuJLR9Ug+0hm4LECZriCIR+HiqntBmPGMrqadCo/X2HTqP0DQ
         o04xybYjqBN/IJeaJf3xlJHXBfbI3P9ytk6mIyyTmmZ3nxau+qx2v+nztYT5+SKVWFBk
         k7ssUk3PLguFVdj6JQTA4kf6szFhu9K4GVZQ8BBMup6NtiW3+/rn0F3x+T6zYrHUCMXn
         PbQw==
X-Gm-Message-State: AOAM533MhAS6rF+/HcrAPWPb7AEOJSCL6iY1xRwYLShxMntnPYRrulzh
	P+lScSQl818qXPi1HnoZMH2hWdFXaei8KYF2ohp3Ro2zx0o=
X-Google-Smtp-Source: ABdhPJy5B5xPx9XrOmiaOZWnrk/q+UdRTXDLpOgeUELtW4s9GNIiyBEgxM7sBeTzhzRWRBKF4YriSmkguHrZkqQzpUI=
X-Received: by 2002:a63:d710:: with SMTP id d16mr53888533pgg.214.1621131367151;
 Sat, 15 May 2021 19:16:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZh4h9LFAduG7dAS8=5stVuE2x3RWcVz3zy5rTmPPshEY+AiA@mail.gmail.com>
 <f557832d-7de2-b752-d18f-38fb951dfa69@windriver.com>
In-Reply-To: <f557832d-7de2-b752-d18f-38fb951dfa69@windriver.com>
From: "Brian Hutchinson" <b.hutchman@gmail.com>
Date: Sat, 15 May 2021 22:15:55 -0400
Message-ID: <CAFZh4h-8ApWCC1qr_M0biAwe6W0iEON6PBSkV9qpVi59w4823g@mail.gmail.com>
Subject: Re: [yocto] meta-selinux issues. Depending on what I put in my local.conf, I get boot loops or can't log in.
To: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000045fcff05c2690f6b"

--00000000000045fcff05c2690f6b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 14, 2021 at 12:35 AM Yi Zhao <yi.zhao@windriver.com> wrote:

>
> On 5/14/21 9:40 AM, Brian Hutchinson wrote:
>
> Hi,
>
> Pretty new to selinux.  I've worked through a lot of issues to get this
> far but am stumped at the moment so any pointers, clues are appreciated.
>
> I'm trying to add selinux to my custom image.  After running into
> problems, I decided it was best to start with building core-image-selinux
> for my NXP imx8mm-evk board as a reference for getting my custom image to
> work.
>
> I'm using fscl-community-bsp meta-freescale Dunfell release which is
> building a 5.4.114 kernel.
>
> My first issues were getting kernel config options right (.config
> attached).  I kept booting my rootfs and sestatus would result in selinux
> not being enabled.
>
> After getting kernel config somewhat worked out, then I started getting
> either boot loops or locked out.
>
> I'll stay focused on my core-image-selinux image as hopefully if I can ge=
t
> it working it will help me get my custom image working too.
>
> Here is my last iteration of my local.conf that results in me not being
> able to log in.  With core-image-selinux image, it freezes before it gets
> to login prompt.  On my custom image, I get log in prompt but when I try =
to
> log in a root I get audit messages and dropped back to login prompt.
>
> local.conf for core-image-selinux:
>
> MACHINE ??=3D 'imx8mmevk'
> DISTRO ?=3D 'poky'
> PACKAGE_CLASSES ?=3D 'package_rpm'
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
> DISTRO_FEATURES_remove =3D " sysvinit"
> DISTRO_FEATURES_append +=3D " acl xattr pam selinux systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D ""
> PREFERRED_PROVIDER_virtual/refpolicy ?=3D "refpolicy-mls"
>
>
> You can try refpolicy-mcs or refpolicy-targeted. The mls policy doesn't
> work for systemed on dunfell.
>
> //Yi
>

Thank you very much for that!  I made that change to my core-image-selinux
build and it worked!  When it booted I saw a systemd process take a while
to finish, I assume that was the relable process.  And when I logged in as
root, there is a significant delay before being logged in, not sure what is
going on there.

When I made the same change to my imx8mm-evk core-image-base image with
selinux added, I saw the same systemd process run but it didn't take quite
as long and it made the system reboot.  Once it rebooted I did get a login
prompt but it won't let me login as root.  So something is still
miss-configured and still at a loss as to what to look at next.

Will provide the startup logs below:

First, my local.conf:

MACHINE ??=3D 'imx8mmevk'
DISTRO ?=3D 'poky'
PACKAGE_CLASSES ?=3D 'package_rpm'
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
DISTRO_FEATURES_remove =3D " sysvinit"
DISTRO_FEATURES_append +=3D " acl xattr pam selinux systemd"
#PREFERRED_PROVIDER_virtual/refpolicy ?=3D "refpolicy-minimum"
PREFERRED_PROVIDER_virtual/refpolicy ?=3D "refpolicy-mcs"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
#DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D ""
#VIRTUAL-RUNTIME_initscripts =3D ""
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
#IMAGE_INSTALL_append =3D " packagegroup-core-selinux"
CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-core-selinux"
IMAGE_FSTYPES +=3D " tar.bz2 ext4 wic.bz2 wic.bmap"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS ??=3D "\
   STOPTASKS,${TMPDIR},1G,100K \
   STOPTASKS,${DL_DIR},1G,100K \
   STOPTASKS,${SSTATE_DIR},1G,100K \
   STOPTASKS,/tmp,100M,100K \
   ABORT,${TMPDIR},100M,1K \
   ABORT,${DL_DIR},100M,1K \
   ABORT,${SSTATE_DIR},100M,1K \
   ABORT,/tmp,10M,1K"
PACKAGECONFIG_append_pn-qemu-system-native =3D " sdl"
CONF_VERSION =3D "1"

DL_DIR ?=3D "${BSPDIR}/downloads/"
ACCEPT_FSL_EULA =3D "1"

This is first boot of my core-image-base build that rebooted:

[    1.202737] usbserial: USB Serial support registered for hp4x
[    1.208499] usbserial: USB Serial support registered for suunto
[    1.214436] usbserial: USB Serial support registered for siemens_mpi
[    1.223136] input: 30370000.snvs:snvs-powerkey as /devices/platform/soc@=
0
/soc@0:bus@30000000/30370000.snvs/30370000.snvs:snvs-powerkey/input/input0
[    1.238115] snvs_rtc 30370000.snvs:snvs-rtc-lp: registered as rtc0
[    1.244381] i2c /dev entries driver
[    1.252319] imx2-wdt 30280000.watchdog: timeout 60 sec (nowayout=3D0)
[    1.258858] Bluetooth: HCI UART driver ver 2.3
[    1.263316] Bluetooth: HCI UART protocol H4 registered
[    1.268461] Bluetooth: HCI UART protocol BCSP registered
[    1.273797] Bluetooth: HCI UART protocol LL registered
[    1.278941] Bluetooth: HCI UART protocol ATH3K registered
[    1.284357] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.290707] Bluetooth: HCI UART protocol Broadcom registered
[    1.296391] Bluetooth: HCI UART protocol QCA registered
[    1.303363] sdhci: Secure Digital Host Controller Interface driver
[    1.309555] sdhci: Copyright(c) Pierre Ossman
[    1.314079] Synopsys Designware Multimedia Card Interface Driver
[    1.320593] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.326995] mmc1: CQHCI version 5.10
[    1.331061] mmc2: CQHCI version 5.10
[    1.366826] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using
ADMA
[    1.376124] ledtrig-cpu: registered to indicate activity on CPUs
[    1.383257] caam 30900000.crypto: device ID =3D 0x0a16040100000000 (Era =
9)
[    1.390030] caam 30900000.crypto: job rings =3D 3, qi =3D 0
[    1.404678] caam algorithms registered in /proc/crypto
[    1.410573] caam 30900000.crypto: caam pkc algorithms registered in
/proc/crypto
[    1.420094] caam_jr 30901000.jr: registering rng-caam
[    1.430401] caam-snvs 30370000.caam-snvs: can't get snvs clock
[    1.436287] caam-snvs 30370000.caam-snvs: violation handlers armed -
non-secure state
[    1.444721] usbcore: registered new interface driver usbhid
[    1.450298] usbhid: USB HID core driver
[    1.456169] No fsl,qman node
[    1.459065] Freescale USDPAA process driver
[    1.463252] fsl-usdpaa: no region found
[    1.467091] Freescale USDPAA process IRQ driver
[    1.475141] optee: probing for conduit method from DT.
[    1.480307] optee: revision 3.2 (6a22e6e8)
[    1.481414] optee: dynamic shared memory is enabled
[    1.490624] optee: initialized driver
[    1.496444] mmc2: Command Queue Engine enabled
[    1.497954] wm8524-codec audio-codec: Failed to get mute line: -517
[    1.500937] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    1.507662] OF: /sound-bt-sco/simple-audio-card,cpu: could not get
#sound-dai-cells for /soc@0/bus@30000000/sai@30020000
[    1.514447] mmcblk2: mmc2:0001 DG4016 7.49 GiB
[    1.524427] asoc-simple-card sound-bt-sco: parse error -22
[    1.529081] mmcblk2boot0: mmc2:0001 DG4016 partition 1 4.00 MiB
[    1.534459] asoc-simple-card: probe of sound-bt-sco failed with error
-22
[    1.540491] mmcblk2boot1: mmc2:0001 DG4016 partition 2 4.00 MiB
[    1.553232] mmcblk2gp0: mmc2:0001 DG4016 partition 4 3.52 GiB
[    1.559457] mmcblk2rpmb: mmc2:0001 DG4016 partition 3 4.00 MiB, chardev
(237:0)
[    1.561232] pktgen: Packet Generator for packet performance testing.
Version: 2.75
[    1.568692]  mmcblk2: p1 p2
[    1.578981] NET: Registered protocol family 26
[    1.580349]  mmcblk2gp0: p1 p2
[    1.583939] NET: Registered protocol family 10
[    1.592304] Segment Routing with IPv6
[    1.596030] NET: Registered protocol family 17
[    1.601163] Bluetooth: RFCOMM TTY layer initialized
[    1.606055] Bluetooth: RFCOMM socket layer initialized
[    1.611235] Bluetooth: RFCOMM ver 1.11
[    1.614998] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.620315] Bluetooth: BNEP filters: protocol multicast
[    1.625547] Bluetooth: BNEP socket layer initialized
[    1.630517] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.636443] Bluetooth: HIDP socket layer initialized
[    1.641440] 8021q: 802.1Q VLAN Support v1.8
[    1.645644] lib80211: common routines for IEEE802.11 drivers
[    1.651428] 9pnet: Installing 9P2000 support
[    1.655735] tsn generic netlink module v1 init...
[    1.660501] Key type dns_resolver registered
[    1.665522] registered taskstats version 1
[    1.669630] Loading compiled-in X.509 certificates
[    1.698859] usb_phy_generic usbphynop1: usbphynop1 supply vcc not found,
using dummy regulator
[    1.707660] usb_phy_generic usbphynop2: usbphynop2 supply vcc not found,
using dummy regulator
[    1.780652] random: fast init done
[    1.788737] LDO6: supplied by regulator-dummy
[    1.793242] i2c i2c-0: IMX I2C adapter registered
[    1.799240] i2c i2c-1: IMX I2C adapter registered
[    1.805114] i2c i2c-2: IMX I2C adapter registered
[    1.810936] i2c i2c-3: IMX I2C adapter registered
[    1.815964] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment
2 supported-hw 0x4 0x4
[    1.828449] mmc1: CQHCI version 5.10
[    1.832108] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    1.869469] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using
ADMA
[    1.878135] imx8mm-pinctrl 30330000.pinctrl: pin MX8MM_IOMUXC_I2C4_SDA
already requested by 30a50000.i2c; cannot claim for audio-codec
[    1.890254] imx8mm-pinctrl 30330000.pinctrl: pin-140 (audio-codec)
status -22
[    1.897398] imx8mm-pinctrl 30330000.pinctrl: could not request pin 140
(MX8MM_IOMUXC_I2C4_SDA) from group gpiowlfgrp  on device 30330000.pinctrl
[    1.910356] wm8524-codec audio-codec: Error applying setting, reverse
things back
[    1.917856] wm8524-codec: probe of audio-codec failed with error -22
[    1.932525] input: bd718xx-pwrkey as /devices/platform/soc@0/soc@0
:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.1.auto/input/input1
[    1.946584] snvs_rtc 30370000.snvs:snvs-rtc-lp: setting system clock to
1970-01-01T01:19:14 UTC (4754)
[    1.956250] cfg80211: Loading compiled-in X.509 certificates for
regulatory database
[    1.967556] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    1.974159] platform regulatory.0: Direct firmware load for
regulatory.db failed with error -2
[    1.979590] ALSA device list:
[    1.982781] platform regulatory.0: Falling back to sysfs fallback for:
regulatory.db
[    1.985744]   No soundcards found.
[    2.004502] EXT4-fs (mmcblk2p2): mounted filesystem with ordered data
mode. Opts: (null)
[    2.012659] VFS: Mounted root (ext4 filesystem) readonly on device
179:2.
[    2.019978] devtmpfs: mounted
[    2.023749] Freeing unused kernel memory: 2880K
[    2.040759] Run /sbin/init as init process
[    2.114222] audit: type=3D1404 audit(4754.664:2): enforcing=3D1
old_enforcing=3D0 auid=3D4294967295 ses=3D4294967295 enabled=3D1 old-enable=
d=3D1
lsm=3Dselinux res=3D1
[    2.252102] SELinux:  Permission watch in class filesystem not defined
in policy.
[    2.259701] SELinux:  Permission watch in class file not defined in
policy.
[    2.266668] SELinux:  Permission watch_mount in class file not defined
in policy.
[    2.274162] SELinux:  Permission watch_sb in class file not defined in
policy.
[    2.281386] SELinux:  Permission watch_with_perm in class file not
defined in policy.
[    2.289225] SELinux:  Permission watch_reads in class file not defined
in policy.
[    2.296721] SELinux:  Permission watch in class dir not defined in
policy.
[    2.303606] SELinux:  Permission watch_mount in class dir not defined in
policy.
[    2.311013] SELinux:  Permission watch_sb in class dir not defined in
policy.
[    2.318158] SELinux:  Permission watch_with_perm in class dir not
defined in policy.
[    2.325902] SELinux:  Permission watch_reads in class dir not defined in
policy.
[    2.333318] SELinux:  Permission watch in class lnk_file not defined in
policy.
[    2.340628] SELinux:  Permission watch_mount in class lnk_file not
defined in policy.
[    2.348467] SELinux:  Permission watch_sb in class lnk_file not defined
in policy.
[    2.356038] SELinux:  Permission watch_with_perm in class lnk_file not
defined in policy.
[    2.364224] SELinux:  Permission watch_reads in class lnk_file not
defined in policy.
[    2.372061] SELinux:  Permission watch in class chr_file not defined in
policy.
[    2.379380] SELinux:  Permission watch_mount in class chr_file not
defined in policy.
[    2.387211] SELinux:  Permission watch_sb in class chr_file not defined
in policy.
[    2.394790] SELinux:  Permission watch_with_perm in class chr_file not
defined in policy.
[    2.402968] SELinux:  Permission watch_reads in class chr_file not
defined in policy.
[    2.410806] SELinux:  Permission watch in class blk_file not defined in
policy.
[    2.418122] SELinux:  Permission watch_mount in class blk_file not
defined in policy.
[    2.425962] SELinux:  Permission watch_sb in class blk_file not defined
in policy.
[    2.433532] SELinux:  Permission watch_with_perm in class blk_file not
defined in policy.
[    2.441718] SELinux:  Permission watch_reads in class blk_file not
defined in policy.
[    2.449558] SELinux:  Permission watch in class sock_file not defined in
policy.
[    2.456964] SELinux:  Permission watch_mount in class sock_file not
defined in policy.
[    2.464881] SELinux:  Permission watch_sb in class sock_file not defined
in policy.
[    2.472547] SELinux:  Permission watch_with_perm in class sock_file not
defined in policy.
[    2.480811] SELinux:  Permission watch_reads in class sock_file not
defined in policy.
[    2.488743] SELinux:  Permission watch in class fifo_file not defined in
policy.
[    2.496140] SELinux:  Permission watch_mount in class fifo_file not
defined in policy.
[    2.504066] SELinux:  Permission watch_sb in class fifo_file not defined
in policy.
[    2.511724] SELinux:  Permission watch_with_perm in class fifo_file not
defined in policy.
[    2.519987] SELinux:  Permission watch_reads in class fifo_file not
defined in policy.
[    2.528238] SELinux: the above unknown classes and permissions will be
allowed
[    2.535473] SELinux:  policy capability network_peer_controls=3D1
[    2.541403] SELinux:  policy capability open_perms=3D1
[    2.546368] SELinux:  policy capability extended_socket_class=3D1
[    2.552297] SELinux:  policy capability always_check_network=3D0
[    2.558132] SELinux:  policy capability cgroup_seclabel=3D1
[    2.563539] SELinux:  policy capability nnp_nosuid_transition=3D1
[    2.611027] audit: type=3D1403 audit(4755.160:3): auid=3D4294967295
ses=3D4294967295 lsm=3Dselinux res=3D1
[    2.618342] systemd[1]: Successfully loaded SELinux policy in 506.080ms.
[    2.644224] systemd[1]: System time before build time, advancing clock.
[    2.729021] systemd[1]: Relabelled /dev, /dev/shm, /run, /sys/fs/cgroup
in 67.016ms.
[    2.748329] systemd[1]: systemd 244.5+ running in system mode. (+PAM
+AUDIT +SELINUX +IMA -APPARMOR -SMACK +SYSVINIT +UTMP -LIBCRYPTSETUP
-GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN
-PCRE2 default-hierarchy=3Dhybrid)
[    2.770341] systemd[1]: Detected architecture arm64.

Welcome to Poky (Yocto Project Reference Distro) 3.1.7 (dunfell)!

[    2.818431] systemd[1]: Set hostname to <imx8mmevk>.
[    2.826687] random: systemd: uninitialized urandom read (16 bytes read)
[    2.833351] systemd[1]: Initializing machine ID from random generator.
[    2.840377] systemd[1]: Installed transient /etc/machine-id file.
[    3.043231] random: systemd: uninitialized urandom read (16 bytes read)
[    3.050040] systemd[1]: system-getty.slice: unit configures an IP
firewall, but the local system does not support BPF/cgroup firewalling.
[    3.062433] systemd[1]: (This warning is only shown for the first unit
using IP firewalling.)
[    3.073214] systemd[1]: Created slice system-getty.slice.
[  OK  ] Created slice system-getty.slice.
[    3.092834] random: systemd: uninitialized urandom read (16 bytes read)
[    3.101077] systemd[1]: Created slice system-serial\x2dgetty.slice.
[  OK  ] Created slice system-serial\x2dgetty.slice.
[    3.121748] systemd[1]: Created slice User and Session Slice.
[  OK  ] Created slice User and Session Slice.
[    3.142242] systemd[1]: Started Dispatch Password Requests to Console
Directory Watch.
[  OK  ] Started Dispatch Password =EF=BF=BD=EF=BF=BD=E2=80=A6ts to Console=
 Directory Watch.
[    3.169455] systemd[1]: Started Forward Password Requests to Wall
Directory Watch.
[  OK  ] Started Forward Password R=EF=BF=BD=EF=BF=BD=E2=80=A6uests to Wall=
 Directory Watch.
[    3.192930] systemd[1]: Reached target Paths.
[  OK  ] Reached target Paths.
[    3.213846] systemd[1]: Reached target Remote File Systems.
[  OK  ] Reached target Remote File Systems.
[    3.232996] systemd[1]: Reached target Slices.
[  OK  ] Reached target Slices.
[    3.252886] systemd[1]: Reached target Swap.
[  OK  ] Reached target Swap.
[    3.277486] systemd[1]: Listening on RPCbind Server Activation Socket.
[  OK  ] Listening on RPCbind Server Activation Socket.
[    3.300937] systemd[1]: Reached target RPC Port Mapper.
[  OK  ] Reached target RPC Port Mapper.
[    3.323791] systemd[1]: Listening on Syslog Socket.
[  OK  ] Listening on Syslog Socket.
[    3.345949] systemd[1]: Listening on initctl Compatibility Named Pipe.
[  OK  ] Listening on initctl Compatibility Named Pipe.
[    3.370655] systemd[1]: systemd-journald-audit.socket: Failed to create
listening socket (audit 1): Operation not permitted
[    3.370910] audit: type=3D1400 audit(1600598638.724:4): avc:  denied  {
audit_read } for  pid=3D1 comm=3D"systemd" capability=3D37
 scontext=3Dsystem_u:system_r:kernel_t:s0
tcontext=3Dsystem_u:system_r:kernel_t:s0 tclass=3Dcapability2 permissive=3D=
0
[    3.381893] systemd[1]: systemd-journald-audit.socket: Failed to listen
on sockets: Operation not permitted
[    3.412415] systemd[1]: systemd-journald-audit.socket: Failed with
result 'resources'.
[    3.420654] systemd[1]: Failed to listen on Journal Audit Socket.
[FAILED] Failed to listen on Journal Audit Socket.
See 'systemctl status systemd-journald-audit.socket' for details.
[    3.457659] systemd[1]: Listening on Journal Socket (/dev/log).
[  OK  ] Listening on Journal Socket (/dev/log).
[    3.481864] systemd[1]: Listening on Journal Socket.
[  OK  ] Listening on Journal Socket.
[    3.501997] systemd[1]: Listening on Network Service Netlink Socket.
[  OK  ] Listening on Network Service Netlink Socket.
[    3.527382] systemd[1]: Listening on udev Control Socket.
[  OK  ] Listening on udev Control Socket.
[    3.549791] systemd[1]: Listening on udev Kernel Socket.
[  OK  ] Listening on udev Kernel Socket.
[    3.573120] systemd[1]: Mounting Huge Pages File System...
        Mounting Huge Pages File System...
[    3.596907] systemd[1]: Mounting POSIX Message Queue File System...
        Mounting POSIX Message Queue File System...
[    3.621131] systemd[1]: Mounting Kernel Debug File System...
        Mounting Kernel Debug File System...
[    3.646188] systemd[1]: Mounting Temporary Directory (/tmp)...
        Mounting Temporary Directory (/tmp)...
[    3.669201] systemd[1]: Starting Create list of static device nodes for
the current kernel...
        Starting Create list of st=EF=BF=BD=EF=BF=BD=E2=80=A6odes for the c=
urrent kernel...
[    3.696449] systemd[1]: Starting Start psplash boot splash screen...
        Starting Start psplash boot splash screen...
[    3.728875] systemd[1]: Starting RPC Bind...
        Starting RPC Bind...
[    3.752279] systemd[1]: Starting SELinux autorelabel service loading...
        Starting SELinux autorelabel service loading...
[    3.766897] audit: type=3D1404 audit(1600598639.120:5): enforcing=3D0
old_enforcing=3D1 auid=3D4294967295 ses=3D4294967295 enabled=3D1 old-enable=
d=3D1
lsm=3Dselinux res=3D1
[    3.788003] systemd[1]: Starting SELinux init for /dev service
loading...
        Starting SELinux init for /dev service loading...
[    3.812966] systemd[1]: Starting File System Check on Root Device...
        Starting File System Check on Root Device...
[    3.838411] systemd[1]: Starting Journal Service...
        Starting Journal Servi[    3.845479] systemd[1]: Condition check
resulted in Load Kernel Modules being skipped.
ce...
[    3.856066] systemd[1]: Condition check resulted in FUSE Control File
System being skipped.
[    3.871557] systemd[1]: Mounting Kernel Configuration File System...
        Mounting Kernel Configuration File System...
[    3.889392] systemd[1]: Starting Apply Kernel Variables...
        Starting Apply Kernel Variables...
[    3.900053] systemd[1]: Starting udev Coldplug all Devices...
        Starting udev Coldplug all Devices...
[    3.911256] systemd[1]: Started RPC Bind.
[  OK  ] Started     3.916791] systemd[1]: Mounted Huge Pages File System.
;39mRPC Bind.
[  OK  ] Mounted Huge Pages File System.
[    3.953835] systemd[1]: Started Journal Service.
[  OK  ] Started Journal Service.
[  OK  ] Mounted POSIX Message Queue File System.
[  OK  ] Mounted Kernel Debug File System.
[  OK  ] Mounted Temporary Directory (/tmp).
[  OK  ] Started Create list of sta=EF=BF=BD=EF=BF=BD=E2=80=A6 nodes for th=
e current kernel.
[FAILED] Failed to start Start psplash boot splash screen.
See 'systemctl status psplash-start.service' for details.
[DEPEND] Dependency failed for Star=EF=BF=BD=EF=BF=BD=E2=80=A6progress comm=
unication helper.
[  OK  ] Started SELinux init for /dev service loading.
[  OK  ] Started File System Check on Root Device.
[  OK  ] Mounted Kernel Configuration File System.
[  OK  ] Started Apply Kernel Variables.
        Starting Remount Root and Kernel File Systems...
[    4.193492] EXT4-fs (mmcblk2p2): re-mounted. Opts: (null)
[  OK  ] Started Remount Root and Kernel File Systems.
        Starting Flush Journal to Persistent Storage...
[    4.243991] systemd-journald[321]: Received client request to flush
runtime journal.
        Starting Create System Users...
[  OK  ] Started Flush Journal to Persistent Storage.
[  OK  ] Started Create System Users.
        Starting Create Static Device Nodes in /dev...
[  OK  ] Started Create Static Device Nodes in /dev.
[  OK  ] Reached target Local File Systems (Pre).
        Mounting /var/volatile...
        Starting udev Kernel Device Manager...
[  OK  ] Started udev Coldplug all Devices.
[  OK  ] Mounted /var/volatile.
        Starting Load/Save Random Seed...
[  OK  ] Reached target Local File Systems.
        Starting Rebuild Dynamic Linker Cache...
        Starting SELinux init service loading...
        Starting Commit a transient machine-id on disk...
        Starting Create Volatile Files and Directories...
[  OK  ] Started udev Kernel Device Manager.
[  OK  ] Started SELinux init service loading.
[  OK  ] Started Commit a transient machine-id on disk.
[  OK  ] Started Rebuild Dynamic Linker Cache.
        Starting Network Service...
[  OK  ] Started Create Volatile Files and Directories.
        Starting Run pending postinsts...
        Starting Rebuild Journal Catalog...
        Starting Network Time Synchronization...
        Starting Update UTMP about System Boot/Shutdown...
[  OK  ] Started Network Service.
[  OK  ] Started Rebuild Journal Catalog.
[  OK  ] Started Update UTMP about System Boot/Shutdown.
[  OK  ] Started Run pending postinsts.
        Starting Network Name Resolution...
        Starting Update is Completed...
[  OK  ] Started Update is Completed.
[  OK  ] Started Network Time Synchronization.
[  OK  ] Reached target System Time Set.
[  OK  ] Reached target System Time Synchronized.
[  OK  ] Started Network Name Resolution.
[  OK  ] Reached target Network.
[  OK  ] Reached target Host and Network Name Lookups.
[    5.399674] audit: type=3D1400 audit(1600598640.748:6): avc:  denied  {
module_load } for  pid=3D648 comm=3D"systemd-udevd"
path=3D"/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/crct10d=
if-ce.ko"
dev=3D"mmcblk2p2" ino=3D577 scontext=3Dsystem_u:system_r:1
[    5.446185] Generic PHY fixed-0:00: attached PHY driver [Generic PHY]
(mii_bus:phy_addr=3Dfixed-0:00, irq=3DPOLL)
[    5.461534] fec 30be0000.ethernet eth0: Link is Up - 1Gbps/Full - flow
control off
[    5.474253] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[    9.012772] random: crng init done
[    9.016184] random: 7 urandom warning(s) missed due to ratelimiting
[  OK  ] Started Load/Save Random Seed.
[   ***] A start job is running for SELinux =EF=BF=BD=EF=BF=BD=E2=80=A6l se=
rvice loading (27s / no
limit)
[   30.793551] audit: type=3D1107 audit(1621001013.725:7): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 msg=
=3D'avc:
 denied  { start } for auid=3Dn/a uid=3D0 gid=3D0
path=3D"/lib/systemd/system/reboot.target" cmdline=3D"" scontext=3Dsyste1
[   30.793551]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'
[   30.831206] audit: type=3D1107 audit(1621001013.741:8): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 msg=
=3D'avc:
 denied  { status } for auid=3Dn/a uid=3D0 gid=3D0
path=3D"/lib/systemd/system/reboot.target" cmdline=3D"" scontext=3Dsyst1
[  OK  ] Stopped target Host and Network Name Lookups.
[  OK  ] Stopped target RPC Port Mapper.
[  OK  ] Stopped target System Time Synchronized.
[  OK  ] Stopped target System Time Set.
        Stopping Load/Save Random Seed...
[  OK  ] Removed slice system-getty.slice.
[  OK  ] Removed slice system-serial\x2dgetty.slice.
[  OK  ] Stopped target Network.
[  OK  ] Stopped target Paths.
[  OK  ] Stopped Dispatch Password =EF=BF=BD=EF=BF=BD=E2=80=A6ts to Console=
 Directory Watch.
[  OK  ] Stopped Forward Password R=EF=BF=BD=EF=BF=BD=E2=80=A6uests to Wall=
 Directory Watch.
[  OK  ] Stopped target Remote File Systems.
[  OK  ] Stopped target Slices.
[  OK  ] Removed slice User and Session Slice.
[  OK  ] Closed Syslog Socket.
[  OK  ] Stopped Commit a transient machine-id on disk.
        Stopping Network Name Resolution...
        Stopping Network Time Synchronization...
[  OK  ] Stopped Update is Completed.
[  OK  ] Stopped Rebuild Dynamic Linker Cache.
[  OK  ] Stopped Rebuild Journal Catalog.
        Stopping Update UTMP about System Boot/Shutdown...
[  OK  ] Stopped Network Time Synchronization.
[  OK  ] Stopped Network Name Resolution.
[  OK  ] Stopped Load/Save Random Seed.
[  OK  ] Started SELinux autorelabel service loading.
[  OK  ] Stopped Update UTMP about System Boot/Shutdown.
        Stopping Network Service...
[  OK  ] Stopped Create Volatile Files and Directories.
[  OK  ] Stopped target Local File Systems.
        Unmounting Temporary Directory (/tmp)...
        Unmounting /var/volatile...
[  OK  ] Stopped Network Service.
[  OK  ] Unmounted Temporary Directory (/tmp).
[  OK  ] Unmounted /var/volatile.
[  OK  ] Stopped target Local File Systems (Pre).
[  OK  ] Stopped target Swap.
[  OK  ] Reached target Unmount All Filesystems.
[  OK  ] Stopped Apply Kernel Variables.
[  OK  ] Stopped Create Static Device Nodes in /dev.
[  OK  ] Stopped Create System Users.
[  OK  ] Stopped Remount Root and Kernel File Systems.
[  OK  ] Stopped File System Check on Root Device.
[  OK  ] Reached target Shutdown.
[  OK  ] Reached target Final Step.
[  OK  ] Started Reboot.
[  OK  ] Reached target Reboot.
[   31.749936] watchdog: watchdog0: watchdog did not stop!
[   31.772995] systemd-shutdown[1]: Syncing filesystems and block devices.
[   31.779924] systemd-shutdown[1]: Sending SIGTERM to remaining
processes...
[   31.794460] systemd-journald[321]: Received SIGTERM from PID 1
(systemd-shutdow).
[   31.815284] systemd-shutdown[1]: Sending SIGKILL to remaining
processes...
[   31.828512] systemd-shutdown[1]: Hardware watchdog 'imx2+ watchdog',
version 0
[   31.837401] systemd-shutdown[1]: Unmounting file systems.
[   31.844851] [872]: Remounting '/' read-only in with options 'seclabel'.
[   31.861839] EXT4-fs (mmcblk2p2): re-mounted. Opts:
[   31.869728] systemd-shutdown[1]: All filesystems unmounted.
[   31.875392] systemd-shutdown[1]: Deactivating swaps.
[   31.880533] systemd-shutdown[1]: All swaps deactivated.
[   31.885835] systemd-shutdown[1]: Detaching loop devices.
[   31.893753] systemd-shutdown[1]: All loop devices detached.
[   31.899354] systemd-shutdown[1]: Detaching DM devices.
[   31.904814] systemd-shutdown[1]: All DM devices detached.
[   31.910272] systemd-shutdown[1]: All filesystems, swaps, loop devices
and DM devices detached.
[   31.924538] systemd-shutdown[1]: Syncing filesystems and block devices.
[   31.931348] systemd-shutdown[1]: Rebooting.
[   31.935672] imx-sdma 302b0000.dma-controller: external firmware not
found, using ROM firmware
[   31.935695] imx-sdma 30bd0000.dma-controller: external firmware not
found, using ROM firmware
[   31.937033] kvm: exiting hardware virtualization
[   31.944226] cfg80211: failed to load regulatory.db
[   31.958656] imx-sdma 302c0000.dma-controller: loaded firmware 4.5
[   32.009904] imx2-wdt 30280000.watchdog: Device shutdown: Expect reboot!
[   32.017454] reboot: Restarting system


This is after the reboot.   I make it to login prompt but can't log in:

Thanks for any pointers as to what to look into next ... in the meantime
I'm continuing to dig.

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.4.114+gf9a9b58ef7cc (oe-user@oe-host) (gcc
version 9.3.0 (GCC)) #1 SMP PREEMPT Thu Apr 22 11:48:16 UTC 2021
[    0.000000] Machine model: FSL i.MX8MM EVK board
[    0.000000] earlycon: ec_imx6q0 at MMIO 0x0000000030890000 (options
'115200')
[    0.000000] printk: bootconsole [ec_imx6q0] enabled
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] Reserved memory: created CMA memory pool at
0x0000000078000000, size 640 MiB
[    0.000000] OF: reserved mem: initialized node linux,cma, compatible id
shared-dma-pool
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem
0x0000000040000000-0x00000000bdffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbe0500-0xbdbe1fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000040000000-0x00000000bdffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x00000000b7ffffff]
[    0.000000]   node   0: [mem 0x00000000b8000000-0x00000000b83fffff]
[    0.000000]   node   0: [mem 0x00000000b8400000-0x00000000bdffffff]
[    0.000000] Initmem setup node 0 [mem
0x0000000040000000-0x00000000bdffffff]
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: Trusted OS migration not required
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 24 pages/cpu s58904 r8192 d31208 u98304
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Speculative Store Bypass Disable mitigation not required
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
508032
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: console=3Dttymxc1,115200
earlycon=3Dec_imx6q,0x30890000,115200 rootwait ro root=3D/dev/mmcblk2p2
rauc.slot=3DB
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152
bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576
bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1336216K/2064384K available (16508K kernel code,
1234K rwdata, 6480K rodata, 2880K init, 1038K bss, 72808K reserved, 655360K
cma-reserved)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to
nr_cpu_ids=3D4.
[    0.000000]  Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is
25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
[    0.000000] GICv3: 128 SPIs implemented
[    0.000000] GICv3: 0 Extended SPIs implemented
[    0.000000] GICv3: Distributor has no Range Selector support
[    0.000000] GICv3: 16 PPIs implemented
[    0.000000] GICv3: no VLPI support, no direct LPI support
[    0.000000] GICv3: CPU0: found redistributor 0 region
0:0x0000000038880000
[    0.000000] ITS: No ITS available, not enabling LPIs
[    0.000000] random: get_random_bytes called from
start_kernel+0x2b8/0x43c with crng_init=3D0
[    0.000000] arch_timer: cp15 timer(s) running at 8.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
[    0.000003] sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every
2199023255500ns
[    0.008456] Console: colour dummy device 80x25
[    0.012579] Calibrating delay loop (skipped), value calculated using
timer frequency.. 16.00 BogoMIPS (lpj=3D32000)
[    0.022844] pid_max: default: 32768 minimum: 301
[    0.027543] LSM: Security Framework initializing
[    0.032140] SELinux:  Initializing.
[    0.035680] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes,
linear)
[    0.043062] Mountpoint-cache hash table entries: 4096 (order: 3, 32768
bytes, linear)
[    0.052066] ASID allocator initialised with 32768 entries
[    0.056439] rcu: Hierarchical SRCU implementation.
[    0.062122] EFI services will not be available.
[    0.065890] smp: Bringing up secondary CPUs ...
[    0.070649] Detected VIPT I-cache on CPU1
[    0.070673] GICv3: CPU1: found redistributor 1 region
0:0x00000000388a0000
[    0.070704] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.071100] Detected VIPT I-cache on CPU2
[    0.071116] GICv3: CPU2: found redistributor 2 region
0:0x00000000388c0000
[    0.071134] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.071499] Detected VIPT I-cache on CPU3
[    0.071514] GICv3: CPU3: found redistributor 3 region
0:0x00000000388e0000
[    0.071530] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.071581] smp: Brought up 1 node, 4 CPUs
[    0.126889] SMP: Total of 4 processors activated.
[    0.131607] CPU features: detected: 32-bit EL0 Support
[    0.136780] CPU features: detected: CRC32 instructions
[    0.148802] CPU: All CPU(s) started at EL2
[    0.150074] alternatives: patching kernel code
[    0.155989] devtmpfs: initialized
[    0.163606] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.170559] futex hash table entries: 1024 (order: 4, 65536 bytes,
linear)
[    0.194288] pinctrl core: initialized pinctrl subsystem
[    0.197376] DMI not present or invalid.
[    0.200809] NET: Registered protocol family 16
[    0.212008] DMA: preallocated 256 KiB pool for atomic allocations
[    0.215305] audit: initializing netlink subsys (disabled)
[    0.220944] audit: type=3D2000 audit(0.160:1): state=3Dinitialized
audit_enabled=3D0 res=3D1
[    0.228511] cpuidle: using governor menu
[    0.232941] hw-breakpoint: found 6 breakpoint and 4 watchpoint
registers.
[    0.240026] Serial: AMBA PL011 UART driver
[    0.243412] imx mu driver is registered.
[    0.247304] imx rpmsg driver is registered.
[    0.256464] imx8mm-pinctrl 30330000.pinctrl: initialized IMX pinctrl
driver
[    0.277600] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
[    0.281486] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
[    0.288213] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.294951] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
[    0.302495] cryptd: max_cpu_qlen set to 1000
[    0.308932] ACPI: Interpreter disabled.
[    0.310658] iommu: Default domain type: Translated
[    0.314960] vgaarb: loaded
[    0.317804] SCSI subsystem initialized
[    0.321602] usbcore: registered new interface driver usbfs
[    0.326845] usbcore: registered new interface driver hub
[    0.332164] usbcore: registered new device driver usb
[    0.338385] mc: Linux media interface: v0.10
[    0.341527] videodev: Linux video capture interface: v2.00
[    0.347076] pps_core: LinuxPPS API ver. 1 registered
[    0.352005] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo
Giometti <giometti@linux.it>
[    0.361200] PTP clock support registered
[    0.365247] EDAC MC: Ver: 3.0.0
[    0.368995] No BMan portals available!
[    0.372270] QMan: Allocated lookup table at (____ptrval____), entry
count 65537
[    0.379649] No QMan portals available!
[    0.383534] No USDPAA memory, no 'fsl,usdpaa-mem' in device-tree
[    0.389567] FPGA manager framework
[    0.392686] Advanced Linux Sound Architecture Driver Initialized.
[    0.399111] Bluetooth: Core ver 2.22
[    0.402332] NET: Registered protocol family 31
[    0.406784] Bluetooth: HCI device and connection manager initialized
[    0.413175] Bluetooth: HCI socket layer initialized
[    0.418071] Bluetooth: L2CAP socket layer initialized
[    0.423152] Bluetooth: SCO socket layer initialized
[    0.428742] clocksource: Switched to clocksource arch_sys_counter
[    0.434312] VFS: Disk quotas dquot_6.6.0
[    0.438149] VFS: Dquot-cache hash table entries: 512 (order 0, 4096
bytes)
[    0.445171] pnp: PnP ACPI: disabled
[    0.454139] thermal_sys: Registered thermal governor 'step_wise'
[    0.454143] thermal_sys: Registered thermal governor 'power_allocator'
[    0.457634] NET: Registered protocol family 2
[    0.468576] tcp_listen_portaddr_hash hash table entries: 1024 (order: 2,
16384 bytes, linear)
[    0.476866] TCP established hash table entries: 16384 (order: 5, 131072
bytes, linear)
[    0.484900] TCP bind hash table entries: 16384 (order: 6, 262144 bytes,
linear)
[    0.492368] TCP: Hash tables configured (established 16384 bind 16384)
[    0.498788] UDP hash table entries: 1024 (order: 3, 32768 bytes, linear)
[    0.505483] UDP-Lite hash table entries: 1024 (order: 3, 32768 bytes,
linear)
[    0.512778] NET: Registered protocol family 1
[    0.517326] RPC: Registered named UNIX socket transport module.
[    0.522951] RPC: Registered udp transport module.
[    0.527670] RPC: Registered tcp transport module.
[    0.532392] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.539245] PCI: CLS 0 bytes, default 64
[    0.543524] hw perfevents: enabled with armv8_pmuv3 PMU driver, 7
counters available
[    0.550924] kvm [1]: IPA Size Limit: 40 bits
[    0.555485] kvm [1]: GICv3: no GICV resource entry
[    0.559695] kvm [1]: disabling GICv2 emulation
[    0.564169] kvm [1]: GIC system register CPU interface enabled
[    0.570073] kvm [1]: vgic interrupt IRQ1
[    0.574054] kvm [1]: Hyp mode initialized successfully
[    0.581948] Initialise system trusted keyrings
[    0.583683] workingset: timestamp_bits=3D44 max_order=3D19 bucket_order=
=3D0
[    0.595831] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.599436] NFS: Registering the id_resolver key type
[    0.603932] Key type id_resolver registered
[    0.608108] Key type id_legacy registered
[    0.612138] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.618870] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver
Registering...
[    0.626323] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=A9 2001-2006 Red Hat=
, Inc.
[    0.632803] 9p: Installing v9fs 9p2000 file system support
[    0.651737] Key type asymmetric registered
[    0.652990] Asymmetric key parser 'x509' registered
[    0.657911] Block layer SCSI generic (bsg) driver version 0.4 loaded
(major 244)
[    0.665324] io scheduler mq-deadline registered
[    0.669872] io scheduler kyber registered
[    0.678050] EINJ: ACPI disabled.
[    0.686745] imx-sdma 302c0000.dma-controller: Direct firmware load for
imx/sdma/sdma-imx7d.bin failed with error -2
[    0.694400] imx-sdma 302c0000.dma-controller: Falling back to sysfs
fallback for: imx/sdma/sdma-imx7d.bin
[    0.711570] mxs-dma 33000000.dma-controller: initialized
[    0.715066] Bus freq driver module loaded
[    0.723136] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.728520] 30890000.serial: ttymxc1 at MMIO 0x30890000 (irq =3D 34,
base_baud =3D 1500000) is a IMX
[    0.735469] printk: console [ttymxc1] enabled
[    0.735469] printk: console [ttymxc1] enabled
[    0.744116] printk: bootconsole [ec_imx6q0] disabled
[    0.744116] printk: bootconsole [ec_imx6q0] disabled
[    0.756050] imx-drm soc@0:bus@32c00000:display-subsystem: no available
port
[    0.774382] loop: module loaded
[    0.779429] imx ahci driver is registered.
[    0.786201] spi_imx 30830000.spi: probed
[    0.791041] spi-nor spi3.0: n25q256ax1 (32768 Kbytes)
[    0.796146] 7 fixed-partitions partitions found on MTD device
30bb0000.spi
[    0.803027] Creating 7 MTD partitions on "30bb0000.spi":
[    0.808347] 0x000000000000-0x000000200000 : "U-Boot"
[    0.817392] 0x000000200000-0x000000202000 : "U-Boot Env"
[    0.822719] mtd: partition "U-Boot Env" doesn't end on an erase/write
block -- force read-only
[    0.833337] 0x000000202000-0x000000204000 : "U-Boot Env 2"
[    0.838833] mtd: partition "U-Boot Env 2" doesn't start on an
erase/write block boundary -- force read-only
[    0.853342] 0x000000204000-0x000000205000 : "boot.scr"
[    0.858491] mtd: partition "boot.scr" doesn't start on an erase/write
block boundary -- force read-only
[    0.869325] 0x000000205000-0x000000210000 : "Device Tree Blob"
[    0.875169] mtd: partition "Device Tree Blob" doesn't start on an
erase/write block boundary -- force read-only
[    0.889335] 0x000000210000-0x000000e10000 : "Compressed Kernel"
[    0.897333] 0x000000e10000-0x000002000000 : "SquashFS"
[    0.906579] libphy: Fixed MDIO Bus: probed
[    0.911369] tun: Universal TUN/TAP device driver, 1.6
[    0.917120] thunder_xcv, ver 1.0
[    0.920379] thunder_bgx, ver 1.0
[    0.923645] nicpf, ver 1.0
[    0.927568] pps pps0: new PPS source ptp0
[    0.943981] libphy: fec_enet_mii_bus: probed
[    0.948772] fec 30be0000.ethernet eth0: registered PHC device 0
[    0.955242] Freescale FM module, FMD API version 21.1.0
[    0.960688] Freescale FM Ports module
[    0.964357] fsl_mac: fsl_mac: FSL FMan MAC API based driver
[    0.970062] fsl_dpa: FSL DPAA Ethernet driver
[    0.974514] fsl_advanced: FSL DPAA Advanced drivers:
[    0.979483] fsl_proxy: FSL DPAA Proxy initialization driver
[    0.985142] fsl_oh: FSL FMan Offline Parsing port driver
[    0.991222] hclge is initializing
[    0.994545] hns3: Hisilicon Ethernet Network Driver for Hip08 Family -
version
[    1.001770] hns3: Copyright (c) 2017 Huawei Corporation.
[    1.007125] e1000: Intel(R) PRO/1000 Network Driver - version
7.3.21-k8-NAPI
[    1.014177] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.019958] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    1.025795] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.031749] igb: Intel(R) Gigabit Ethernet Network Driver - version
5.6.0-k
[    1.038714] igb: Copyright (c) 2007-2014 Intel Corporation.
[    1.044318] igbvf: Intel(R) Gigabit Virtual Function Network Driver -
version 2.4.0-k
[    1.052151] igbvf: Copyright (c) 2009 - 2012 Intel Corporation.
[    1.058209] sky2: driver version 1.30
[    1.062731] VFIO - User Level meta-driver version: 0.3
[    1.069490] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.076027] ehci-pci: EHCI PCI platform driver
[    1.080544] ehci-platform: EHCI generic platform driver
[    1.085925] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.092128] ohci-pci: OHCI PCI platform driver
[    1.096606] ohci-platform: OHCI generic platform driver
[    1.102319] usbcore: registered new interface driver usb-storage
[    1.108398] usbcore: registered new interface driver usbserial_generic
[    1.114949] usbserial: USB Serial support registered for generic
[    1.120980] usbcore: registered new interface driver ftdi_sio
[    1.126742] usbserial: USB Serial support registered for FTDI USB Serial
Device
[    1.134076] usbcore: registered new interface driver usb_serial_simple
[    1.140618] usbserial: USB Serial support registered for carelink
[    1.146727] usbserial: USB Serial support registered for zio
[    1.152400] usbserial: USB Serial support registered for funsoft
[    1.158421] usbserial: USB Serial support registered for flashloader
[    1.164795] usbserial: USB Serial support registered for google
[    1.170734] usbserial: USB Serial support registered for libtransistor
[    1.177277] usbserial: USB Serial support registered for vivopay
[    1.183298] usbserial: USB Serial support registered for moto_modem
[    1.189581] usbserial: USB Serial support registered for motorola_tetra
[    1.196214] usbserial: USB Serial support registered for novatel_gps
[    1.202584] usbserial: USB Serial support registered for hp4x
[    1.208350] usbserial: USB Serial support registered for suunto
[    1.214287] usbserial: USB Serial support registered for siemens_mpi
[    1.223024] input: 30370000.snvs:snvs-powerkey as /devices/platform/soc@=
0
/soc@0:bus@30000000/30370000.snvs/30370000.snvs:snvs-powerkey/input/input0
[    1.238035] snvs_rtc 30370000.snvs:snvs-rtc-lp: registered as rtc0
[    1.244303] i2c /dev entries driver
[    1.252247] imx2-wdt 30280000.watchdog: timeout 60 sec (nowayout=3D0)
[    1.258789] Bluetooth: HCI UART driver ver 2.3
[    1.263246] Bluetooth: HCI UART protocol H4 registered
[    1.268391] Bluetooth: HCI UART protocol BCSP registered
[    1.273732] Bluetooth: HCI UART protocol LL registered
[    1.278876] Bluetooth: HCI UART protocol ATH3K registered
[    1.284292] Bluetooth: HCI UART protocol Three-wire (H5) registered
[    1.290639] Bluetooth: HCI UART protocol Broadcom registered
[    1.296318] Bluetooth: HCI UART protocol QCA registered
[    1.303291] sdhci: Secure Digital Host Controller Interface driver
[    1.309482] sdhci: Copyright(c) Pierre Ossman
[    1.314003] Synopsys Designware Multimedia Card Interface Driver
[    1.320520] sdhci-pltfm: SDHCI platform and OF driver helper
[    1.326929] mmc1: CQHCI version 5.10
[    1.331000] mmc2: CQHCI version 5.10
[    1.366873] mmc2: SDHCI controller on 30b60000.mmc [30b60000.mmc] using
ADMA
[    1.376151] ledtrig-cpu: registered to indicate activity on CPUs
[    1.383270] caam 30900000.crypto: device ID =3D 0x0a16040100000000 (Era =
9)
[    1.390042] caam 30900000.crypto: job rings =3D 3, qi =3D 0
[    1.405942] caam algorithms registered in /proc/crypto
[    1.411819] caam 30900000.crypto: caam pkc algorithms registered in
/proc/crypto
[    1.421344] caam_jr 30901000.jr: registering rng-caam
[    1.433702] caam-snvs 30370000.caam-snvs: can't get snvs clock
[    1.439583] caam-snvs 30370000.caam-snvs: violation handlers armed -
non-secure state
[    1.447997] usbcore: registered new interface driver usbhid
[    1.453577] usbhid: USB HID core driver
[    1.459387] No fsl,qman node
[    1.462287] Freescale USDPAA process driver
[    1.466475] fsl-usdpaa: no region found
[    1.470316] Freescale USDPAA process IRQ driver
[    1.478310] optee: probing for conduit method from DT.
[    1.483478] optee: revision 3.2 (6a22e6e8)
[    1.484788] optee: dynamic shared memory is enabled
[    1.494072] optee: initialized driver
[    1.499857] mmc2: Command Queue Engine enabled
[    1.501704] wm8524-codec audio-codec: Failed to get mute line: -517
[    1.504346] mmc2: new HS400 Enhanced strobe MMC card at address 0001
[    1.511056] OF: /sound-bt-sco/simple-audio-card,cpu: could not get
#sound-dai-cells for /soc@0/bus@30000000/sai@30020000
[    1.518006] mmcblk2: mmc2:0001 DG4016 7.49 GiB
[    1.527812] asoc-simple-card sound-bt-sco: parse error -22
[    1.527829] asoc-simple-card: probe of sound-bt-sco failed with error
-22
[    1.532474] mmcblk2boot0: mmc2:0001 DG4016 partition 1 4.00 MiB
[    1.550725] mmcblk2boot1: mmc2:0001 DG4016 partition 2 4.00 MiB
[    1.552076] pktgen: Packet Generator for packet performance testing.
Version: 2.75
[    1.556808] mmcblk2gp0: mmc2:0001 DG4016 partition 4 3.52 GiB
[    1.570357] NET: Registered protocol family 26
[    1.570759] mmcblk2rpmb: mmc2:0001 DG4016 partition 3 4.00 MiB, chardev
(237:0)
[    1.575300] NET: Registered protocol family 10
[    1.586931]  mmcblk2: p1 p2
[    1.587624] Segment Routing with IPv6
[    1.593504] NET: Registered protocol family 17
[    1.598166]  mmcblk2gp0: p1 p2
[    1.598390] Bluetooth: RFCOMM TTY layer initialized
[    1.606144] Bluetooth: RFCOMM socket layer initialized
[    1.611321] Bluetooth: RFCOMM ver 1.11
[    1.615088] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    1.620404] Bluetooth: BNEP filters: protocol multicast
[    1.625636] Bluetooth: BNEP socket layer initialized
[    1.630606] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    1.636532] Bluetooth: HIDP socket layer initialized
[    1.641540] 8021q: 802.1Q VLAN Support v1.8
[    1.645750] lib80211: common routines for IEEE802.11 drivers
[    1.651530] 9pnet: Installing 9P2000 support
[    1.655833] tsn generic netlink module v1 init...
[    1.660613] Key type dns_resolver registered
[    1.665652] registered taskstats version 1
[    1.669778] Loading compiled-in X.509 certificates
[    1.697518] usb_phy_generic usbphynop1: usbphynop1 supply vcc not found,
using dummy regulator
[    1.706299] usb_phy_generic usbphynop2: usbphynop2 supply vcc not found,
using dummy regulator
[    1.738543] random: fast init done
[    1.743680] LDO6: supplied by regulator-dummy
[    1.748187] i2c i2c-0: IMX I2C adapter registered
[    1.753876] i2c i2c-1: IMX I2C adapter registered
[    1.759408] i2c i2c-2: IMX I2C adapter registered
[    1.765205] i2c i2c-3: IMX I2C adapter registered
[    1.770237] imx-cpufreq-dt imx-cpufreq-dt: cpu speed grade 2 mkt segment
2 supported-hw 0x4 0x4
[    1.782784] mmc1: CQHCI version 5.10
[    1.786418] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
[    1.821457] mmc1: SDHCI controller on 30b50000.mmc [30b50000.mmc] using
ADMA
[    1.830140] imx8mm-pinctrl 30330000.pinctrl: pin MX8MM_IOMUXC_I2C4_SDA
already requested by 30a50000.i2c; cannot claim for audio-codec
[    1.842264] imx8mm-pinctrl 30330000.pinctrl: pin-140 (audio-codec)
status -22
[    1.849408] imx8mm-pinctrl 30330000.pinctrl: could not request pin 140
(MX8MM_IOMUXC_I2C4_SDA) from group gpiowlfgrp  on device 30330000.pinctrl
[    1.862367] wm8524-codec audio-codec: Error applying setting, reverse
things back
[    1.869868] wm8524-codec: probe of audio-codec failed with error -22
[    1.880540] input: bd718xx-pwrkey as /devices/platform/soc@0/soc@0
:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.1.auto/input/input1
[    1.894274] snvs_rtc 30370000.snvs:snvs-rtc-lp: setting system clock to
2021-05-14T14:03:42 UTC (1621001022)
[    1.904487] cfg80211: Loading compiled-in X.509 certificates for
regulatory database
[    1.916959] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
[    1.923554] platform regulatory.0: Direct firmware load for
regulatory.db failed with error -2
[    1.927624] ALSA device list:
[    1.932172] platform regulatory.0: Falling back to sysfs fallback for:
regulatory.db
[    1.942907]   No soundcards found.
[    1.956545] EXT4-fs (mmcblk2p2): mounted filesystem with ordered data
mode. Opts: (null)
[    1.964702] VFS: Mounted root (ext4 filesystem) readonly on device
179:2.
[    1.972100] devtmpfs: mounted
[    1.976098] Freeing unused kernel memory: 2880K
[    1.980716] Run /sbin/init as init process
[    2.060538] audit: type=3D1404 audit(1621001022.660:2): enforcing=3D1
old_enforcing=3D0 auid=3D4294967295 ses=3D4294967295 enabled=3D1 old-enable=
d=3D1
lsm=3Dselinux res=3D1
[    2.197726] SELinux:  Permission watch in class filesystem not defined
in policy.
[    2.205251] SELinux:  Permission watch in class file not defined in
policy.
[    2.212214] SELinux:  Permission watch_mount in class file not defined
in policy.
[    2.219712] SELinux:  Permission watch_sb in class file not defined in
policy.
[    2.226936] SELinux:  Permission watch_with_perm in class file not
defined in policy.
[    2.234775] SELinux:  Permission watch_reads in class file not defined
in policy.
[    2.242268] SELinux:  Permission watch in class dir not defined in
policy.
[    2.249153] SELinux:  Permission watch_mount in class dir not defined in
policy.
[    2.256550] SELinux:  Permission watch_sb in class dir not defined in
policy.
[    2.263695] SELinux:  Permission watch_with_perm in class dir not
defined in policy.
[    2.271439] SELinux:  Permission watch_reads in class dir not defined in
policy.
[    2.278853] SELinux:  Permission watch in class lnk_file not defined in
policy.
[    2.286164] SELinux:  Permission watch_mount in class lnk_file not
defined in policy.
[    2.294003] SELinux:  Permission watch_sb in class lnk_file not defined
in policy.
[    2.301582] SELinux:  Permission watch_with_perm in class lnk_file not
defined in policy.
[    2.309769] SELinux:  Permission watch_reads in class lnk_file not
defined in policy.
[    2.317607] SELinux:  Permission watch in class chr_file not defined in
policy.
[    2.324925] SELinux:  Permission watch_mount in class chr_file not
defined in policy.
[    2.332761] SELinux:  Permission watch_sb in class chr_file not defined
in policy.
[    2.340344] SELinux:  Permission watch_with_perm in class chr_file not
defined in policy.
[    2.348522] SELinux:  Permission watch_reads in class chr_file not
defined in policy.
[    2.356366] SELinux:  Permission watch in class blk_file not defined in
policy.
[    2.363677] SELinux:  Permission watch_mount in class blk_file not
defined in policy.
[    2.371516] SELinux:  Permission watch_sb in class blk_file not defined
in policy.
[    2.379086] SELinux:  Permission watch_with_perm in class blk_file not
defined in policy.
[    2.387272] SELinux:  Permission watch_reads in class blk_file not
defined in policy.
[    2.395110] SELinux:  Permission watch in class sock_file not defined in
policy.
[    2.402506] SELinux:  Permission watch_mount in class sock_file not
defined in policy.
[    2.410429] SELinux:  Permission watch_sb in class sock_file not defined
in policy.
[    2.418085] SELinux:  Permission watch_with_perm in class sock_file not
defined in policy.
[    2.426350] SELinux:  Permission watch_reads in class sock_file not
defined in policy.
[    2.434282] SELinux:  Permission watch in class fifo_file not defined in
policy.
[    2.441679] SELinux:  Permission watch_mount in class fifo_file not
defined in policy.
[    2.449605] SELinux:  Permission watch_sb in class fifo_file not defined
in policy.
[    2.457262] SELinux:  Permission watch_with_perm in class fifo_file not
defined in policy.
[    2.465535] SELinux:  Permission watch_reads in class fifo_file not
defined in policy.
[    2.473773] SELinux: the above unknown classes and permissions will be
allowed
[    2.481016] SELinux:  policy capability network_peer_controls=3D1
[    2.486938] SELinux:  policy capability open_perms=3D1
[    2.491912] SELinux:  policy capability extended_socket_class=3D1
[    2.497833] SELinux:  policy capability always_check_network=3D0
[    2.503675] SELinux:  policy capability cgroup_seclabel=3D1
[    2.509074] SELinux:  policy capability nnp_nosuid_transition=3D1
[    2.551979] audit: type=3D1403 audit(1621001023.152:3): auid=3D429496729=
5
ses=3D4294967295 lsm=3Dselinux res=3D1
[    2.558891] systemd[1]: Successfully loaded SELinux policy in 499.797ms.
[    2.663812] systemd[1]: Relabelled /dev, /dev/shm, /run, /sys/fs/cgroup
in 67.655ms.
[    2.682911] systemd[1]: systemd 244.5+ running in system mode. (+PAM
+AUDIT +SELINUX +IMA -APPARMOR -SMACK +SYSVINIT +UTMP -LIBCRYPTSETUP
-GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN
-PCRE2 default-hierarchy=3Dhybrid)
[    2.704939] systemd[1]: Detected architecture arm64.

Welcome to Poky (Yocto Project Reference Distro) 3.1.7 (dunfell)!

[    2.761410] systemd[1]: Set hostname to <imx8mmevk>.
[    2.963225] random: systemd: uninitialized urandom read (16 bytes read)
[    2.970024] systemd[1]: system-getty.slice: unit configures an IP
firewall, but the local system does not support BPF/cgroup firewalling.
[    2.982383] systemd[1]: (This warning is only shown for the first unit
using IP firewalling.)
[    2.993074] systemd[1]: Created slice system-getty.slice.
[  OK  ] Created slice system-getty.slice.
[    3.013209] random: systemd: uninitialized urandom read (16 bytes read)
[    3.021079] systemd[1]: Created slice system-serial\x2dgetty.slice.
[  OK  ] Created slice system-serial\x2dgetty.slice.
[    3.040889] random: systemd: uninitialized urandom read (16 bytes read)
[    3.049063] systemd[1]: Created slice User and Session Slice.
[  OK  ] Created slice User and Session Slice.
[    3.073555] systemd[1]: Started Dispatch Password Requests to Console
Directory Watch.
[  OK  ] Started Dispatch Password =EF=BF=BD=E2=80=A6ts to Console Director=
y Watch.
[    3.097478] systemd[1]: Started Forward Password Requests to Wall
Directory Watch.
[  OK  ] Started Forward Password R=EF=BF=BD=EF=BF=BD=E2=80=A6uests to Wall=
 Directory Watch.
[    3.120999] systemd[1]: Reached target Paths.
[  OK  ] Reached target Paths.
[    3.140900] systemd[1]: Reached target Remote File Systems.
[  OK  ] Reached target Remote File Systems.
[    3.165590] systemd[1]: Reached target Slices.
[  OK  ] Reached target Slices.
[    3.185866] systemd[1]: Reached target Swap.
[  OK  ] Reached target Swap.
[    3.210920] systemd[1]: Listening on RPCbind Server Activation Socket.
[  OK  ] Listening on RPCbind Server Activation Socket.
[    3.232948] systemd[1]: Reached target RPC Port Mapper.
[  OK  ] Reached target RPC Port Mapper.
[    3.257214] systemd[1]: Listening on Syslog Socket.
[  OK  ] Listening on Syslog Socket.
[    3.277824] systemd[1]: Listening on initctl Compatibility Named Pipe.
[  OK  ] Listening on initctl Compatibility Named Pipe.
[    3.303340] systemd[1]: systemd-journald-audit.socket: Failed to create
listening socket (audit 1): Operation not permitted
[    3.303603] audit: type=3D1400 audit(1621001023.904:4): avc:  denied  {
audit_read } for  pid=3D1 comm=3D"systemd" capability=3D37
 scontext=3Dsystem_u:system_r:kernel_t:s0
tcontext=3Dsystem_u:system_r:kernel_t:s0 tclass=3Dcapability2 permissive=3D=
0
[    3.314517] systemd[1]: systemd-journald-audit.socket: Failed to listen
on sockets: Operation not permitted
[    3.314663] systemd[1]: systemd-journald-audit.socket: Failed with
result 'resources'.
[    3.353186] systemd[1]: Failed to listen on Journal Audit Socket.
[FAILED] Failed to listen on Journal Audit Socket.
See 'systemctl status systemd-journald-audit.socket' for details.
[    3.389680] systemd[1]: Listening on Journal Socket (/dev/log).
[  OK  ] Listening on Journal Socket (/dev/log).
[    3.414416] systemd[1]: Listening on Journal Socket.
[  OK  ] Listening on Journal Socket.
[    3.434353] systemd[1]: Listening on Network Service Netlink Socket.
[  OK  ] Listening on Network Service Netlink Socket.
[    3.459379] systemd[1]: Listening on udev Control Socket.
[  OK  ] Listening on udev Control Socket.
[    3.481748] systemd[1]: Listening on udev Kernel Socket.
[  OK  ] Listening on udev Kernel Socket.
[    3.509857] systemd[1]: Mounting Huge Pages File System...
        Mounting Huge Pages File System...
[    3.533188] systemd[1]: Mounting POSIX Message Queue File System...
        Mounting POSIX Message Queue File System...
[    3.557152] systemd[1]: Mounting Kernel Debug File System...
        Mounting Kernel Debug File System...
[    3.581924] systemd[1]: Mounting Temporary Directory (/tmp)...
        Mounting Temporary Directory (/tmp)...
[    3.605283] systemd[1]: Starting Create list of static device nodes for
the current kernel...
        Starting Create list of st=EF=BF=BD=EF=BF=BD=E2=80=A6odes for the c=
urrent kernel...
[    3.636385] systemd[1]: Starting Start psplash boot splash screen...
        Starting Start psplash boot splash screen...
[    3.660189] systemd[1]: Starting RPC Bind...
        Starting RPC Bind...
[    3.684232] systemd[1]: Starting SELinux autorelabel service loading...
        Starting SELinux autorelabel service loading...
[    3.708354] systemd[1]: Starting SELinux init for /dev service
loading...
        Starting SELinux init for /dev service loading...
[    3.740312] systemd[1]: Starting File System Check on Root Device...
        Starting File System Check on Root Device...
[    3.770209] systemd[1]: Starting Journal Service...
        Starting Journal Servi[    3.777145] systemd[1]: Condition check
resulted in Load Kernel Modules being skipped.
ce...
[    3.787527] systemd[1]: Condition check resulted in FUSE Control File
System being skipped.
[    3.801674] systemd[1]: Mounting Kernel Configuration File System...
        Mounting Kernel Configuration File System...
[    3.813958] systemd[1]: Starting Apply Kernel Variables...
        Starting Apply Kernel Variables...
[    3.824163] systemd[1]: Starting udev Coldplug all Devices...
        Starting udev Coldplug all Devices...
[    3.842788] systemd[1]: Started RPC Bind.
[  OK  ] [    3.848205] systemd[1]: Mounted Huge Pages File System.
Started RPC Bind.
[    3.855211] systemd[1]: Started Journal Service.
[  OK  ] Mounted Huge Pages File System.
[  OK  ] Started Journal Service.
[  OK  ] Mounted POSIX Message Queue File System.
[  OK  ] Mounted Kernel Debug File System.
[  OK  ] Mounted Temporary Directory (/tmp).
[  OK  ] Started Create list of sta=EF=BF=BD=EF=BF=BD=E2=80=A6 nodes for th=
e current kernel.
[FAILED] Failed to start Start psplash boot splash screen.
See 'systemctl status psplash-start.service' for details.
[DEPEND] Dependency failed for Star=EF=BF=BD=EF=BF=BD=E2=80=A6progress comm=
unication helper.
[  OK  ] Started SELinux autorelabel service loading.
[  OK  ] Started SELinux init for /dev service loading.
[  OK  ] Started File System Check on Root Device.
[  OK  ] Mounted Kernel Configuration File System.
[  OK  ] Started Apply Kernel Variables.
        Starting Remount Root and Kernel File Systems...
[    4.135040] EXT4-fs (mmcblk2p2): re-mounted. Opts: (null)
[  OK  ] Started Remount Root and Kernel File Systems.
        Starting Flush Journal to Persistent Storage...
[    4.176222] systemd-journald[287]: Received client request to flush
runtime journal.
        Starting Create Static Device Nodes in /dev...
[  OK  ] Started Flush Journal to Persistent Storage.
[  OK  ] Started Create Static Device Nodes in /dev.
[  OK  ] Reached target Local File Systems (Pre).
        Mounting /var/volatile...
        Starting udev Kernel Device Manager...
[  OK  ] Mounted /var/volatile.
[  OK  ] Started udev Coldplug all Devices.
        Starting Load/Save Random Seed...
[  OK  ] Reached target Local File Systems.
        Starting SELinux init service loading...
        Starting Create Volatile Files and Directories...
[  OK  ] Started udev Kernel Device Manager.
[  OK  ] Started SELinux init service loading.
        Starting Network Service...
[  OK  ] Started Create Volatile Files and Directories.
        Starting Network Time Synchronization...
        Starting Update UTMP about System Boot/Shutdown...
[  OK  ] Started Network Service.
        Starting Network Name Resolution...
[  OK  ] Started Update UTMP about System Boot/Shutdown.
[  OK  ] Started Network Time Synchronization.
[  OK  ] Reached target System Initialization.
[  OK  ] Started Daily Cleanup of Temporary Directories.
[  OK  ] Reached target System Time Set.
[  OK  ] Reached target System Time Synchronized.
[  OK  ] Reached target Timers.
[  OK  ] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.
[  OK  ] Listening on D-Bus System Message Bus Socket.
[  OK  ] Reached target Sockets.
[  OK  ] Reached target Basic System.
[  OK  ] Started Kernel Logging Service.
[  OK  ] Started System Logging Service.
[  OK  ] Started D-Bus System Message Bus.
[    4.923342] audit: type=3D1400 audit(1621001025.524:5): avc:  denied  {
module_load } for  pid=3D312 comm=3D"systemd-udevd"
path=3D"/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/crct10d=
if-ce.ko"
dev=3D"mmcblk2p2" ino=3D577 scontext=3Dsystem_u:system_r:0
[    4.960809] audit: type=3D1400 audit(1621001025.524:6): avc:  denied  {
module_load } for  pid=3D307 comm=3D"systemd-udevd"
path=3D"/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/crct10d=
if-ce.ko"
dev=3D"mmcblk2p2" ino=3D577 scontext=3Dsystem_u:system_r:0
        Starting Telephony service...
[    4.996048] audit: type=3D1400 audit(1621001025.524:7): avc:  denied  {
module_load } for  pid=3D318 comm=3D"systemd-udevd"
path=3D"/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/crct10d=
if-ce.ko"
dev=3D"mmcblk2p2" ino=3D577 scontext=3Dsystem_u:system_r:0
[    5.032350] audit: type=3D1400 audit(1621001025.524:8): avc:  denied  {
module_load } for  pid=3D319 comm=3D"systemd-udevd"
path=3D"/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/crct10d=
if-ce.ko"
dev=3D"mmcblk2p2" ino=3D577 scontext=3Dsystem_u:system_r:0
        Starting Login Service...
[    5.072228] Generic PHY fixed-0:00: attached PHY driver [Generic PHY]
(mii_bus:phy_addr=3Dfixed-0:00, irq=3DPOLL)
[    5.088344] fec 30be0000.ethernet eth0: Link is Up - 1Gbps/Full - flow
control off
[  OK  ] Started Network Name Resolution.
[    5.109578] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[  OK  ] Started Telephony service.
[  OK  ] Started Login Service.
[  OK  ] Reached target Network.
[  OK  ] Reached target Host and Network Name Lookups.
        Starting Avahi mDNS/DNS-SD Stack...
        Starting Hostname Service...
        Starting Permit User Sessions...
[  OK  ] Started Avahi mDNS/DNS-SD Stack.
[  OK  ] Started Permit User Sessions.
[  OK  ] Started Getty on tty1.
[  OK  ] Started Serial Getty on ttymxc1.
[  OK  ] Reached target Login Prompts.
[  OK  ] Reached target Multi-User System.
        Starting Update UTMP about System Runlevel Changes...
[  OK  ] Started Hostname Service.
[    5.644863] audit: type=3D1107 audit(1621001026.231:9): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 msg=
=3D'avc:
 denied  { status } for auid=3Dn/a uid=3D0 gid=3D0
path=3D"/lib/systemd/system/graphical.target" cmdline=3D"" scontext=3Ds0
[    5.644863]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'
[FAILED] Failed to start Update UTM=EF=BF=BD=E2=80=A6about System Runlevel =
Changes.
See 'systemctl status systemd-update-utmp-runlevel.service' for details.

Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1

imx8mmevk login: [   13.913709] random: crng init done
[   13.917116] random: 7 urandom warning(s) missed due to ratelimiting
[   34.240165] WLAN_EN: disabling
[   34.243228] VSD_3V3: disabling
[   62.907654] cfg80211: failed to load regulatory.db
[   62.907942] imx-sdma 302c0000.dma-controller: external firmware not
found, using ROM firmware
[   62.910414] imx-sdma 302b0000.dma-controller: external firmware not
found, using ROM firmware
[   62.933352] imx-sdma 30bd0000.dma-controller: loaded firmware 4.5

imx8mmevk login: root
[   84.724596] audit: type=3D1107 audit(1621001104.928:10): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 msg=
=3D'avc:
 denied  { start } for auid=3Dn/a uid=3D0 gid=3D0
path=3D"/lib/systemd/system/user@.service"
cmdline=3D"/lib/systemd/sy0
[   84.724596]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'
Cannot execute /bin/sh: No such f[   84.764677] audit: type=3D1107
audit(1621001104.932:11): pid=3D1 uid=3D0 auid=3D4294967295 ses=3D429496729=
5
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D'avc:  denied  { start } for
auid=3Dn/a uid=3D0 gid=3D0 path=3D"/run/systemd/transient/ses0
[   84.764677]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'
[   84.808459] audit: type=3D1400 audit(1621001104.932:12): avc:  denied  {
transition } for  pid=3D374 comm=3D"login" path=3D"/usr/lib/busybox/bin/sh"
dev=3D"mmcblk2p2" ino=3D1921 scontext=3Dsystem_u:system_r:kernel_t:s0
tcontext=3Droot:sysadm_r:sysadm_t:s0 tclass=3Dproce0

Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1

imx8mmevk login: [   94.988451] audit: type=3D1107 audit(1621001115.197:13)=
:
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D'avc:  denied  { stop } for auid=
=3Dn/a
uid=3D0 gid=3D0 path=3D"/lib/systemd/system/user@.service" cmdline=3D0
[   94.988451]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'

imx8mmevk login: root
Last login: Fri May 14 14:05:04 UTC 2021 on ttymxc1
[  102.258579] audit: type=3D1107 audit(1621001122.465:14): pid=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 msg=
=3D'avc:
 denied  { start } for auid=3Dn/a uid=3D0 gid=3D0
path=3D"/lib/systemd/system/user@.service"
cmdline=3D"/lib/systemd/sy0
[  102.258579]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'
Cannot execute /bin/sh: No such f[  102.298664] audit: type=3D1107
audit(1621001122.481:15): pid=3D1 uid=3D0 auid=3D4294967295 ses=3D429496729=
5
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D'avc:  denied  { start } for
auid=3Dn/a uid=3D0 gid=3D0 path=3D"/run/systemd/transient/ses0
[  102.298664]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'
[  102.342430] audit: type=3D1400 audit(1621001122.485:16): avc:  denied  {
transition } for  pid=3D379 comm=3D"login" path=3D"/usr/lib/busybox/bin/sh"
dev=3D"mmcblk2p2" ino=3D1921 scontext=3Dsystem_u:system_r:kernel_t:s0
tcontext=3Droot:sysadm_r:sysadm_t:s0 tclass=3Dproce0

Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1

imx8mmevk login: [  112.488345] audit: type=3D1107 audit(1621001132.697:17)=
:
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D'avc:  denied  { stop } for auid=
=3Dn/a
uid=3D0 gid=3D0 path=3D"/lib/systemd/system/user@.service" cmdline=3D0
[  112.488345]  exe=3D"/lib/systemd/systemd" sauid=3D0 hostname=3D? addr=3D=
?
terminal=3D?'

imx8mmevk login:

--00000000000045fcff05c2690f6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 14, 2021 at 12:35 AM Yi Z=
hao &lt;<a href=3D"mailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">

 =20
  <div>
    <p><br>
    </p>
    <div>On 5/14/21 9:40 AM, Brian Hutchinson
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi,</div>
        <div><br>
        </div>
        <div>Pretty new to selinux.=C2=A0 I&#39;ve worked through a lot of =
issues
          to get this far but am stumped at the moment so any pointers,
          clues are appreciated.</div>
        <div><br>
        </div>
        <div>I&#39;m trying to add selinux to my custom image.=C2=A0 After
          running into problems, I decided it was best to start with
          building core-image-selinux for my NXP imx8mm-evk board as a
          reference for getting my custom image to work.</div>
        <div><br>
        </div>
        <div>I&#39;m using fscl-community-bsp meta-freescale Dunfell releas=
e
          which is building a 5.4.114 kernel. <br>
        </div>
        <div><br>
        </div>
        <div>My first issues were getting kernel config options right
          (.config attached).=C2=A0 I kept booting my rootfs and sestatus
          would result in selinux not being enabled.</div>
        <div><br>
        </div>
        <div>After getting kernel config somewhat worked out, then I
          started getting either boot loops or locked out.<br>
        </div>
        <div><br>
        </div>
        <div>I&#39;ll stay focused on my core-image-selinux image as
          hopefully if I can get it working it will help me get my
          custom image working too.</div>
        <div><br>
        </div>
        <div>Here is my last iteration of my local.conf that results in
          me not being able to log in.=C2=A0 With core-image-selinux image,
          it freezes before it gets to login prompt.=C2=A0 On my custom
          image, I get log in prompt but when I try to log in a root I
          get audit messages and dropped back to login prompt.</div>
        <div><br>
        </div>
        <div>local.conf for core-image-selinux:</div>
        <div><br>
        </div>
        <div><span style=3D"font-family:monospace"><span style=3D"font-fami=
ly:monospace"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,=
255)">MACHINE
                ??=3D &#39;imx8mmevk&#39;
              </span><br>
              DISTRO ?=3D &#39;poky&#39;
              <br>
              PACKAGE_CLASSES ?=3D &#39;package_rpm&#39;
              <br>
              EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;
              <br>
              DISTRO_FEATURES_remove =3D &quot; sysvinit&quot;
              <br>
              DISTRO_FEATURES_append +=3D &quot; acl xattr pam selinux syst=
emd&quot;
              <br>
              VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;
              <br>
              DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;&quot;
              <br>
              PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpolicy-mls=
&quot;
              <br>
            </span></span></div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>You can try refpolicy-mcs or refpolicy-targeted. The mls policy
      doesn&#39;t work for systemed on dunfell.<br>
      <br>
    </p>
    <p>//Yi<br>
    </p></div></blockquote><div>=C2=A0<font size=3D"-1"><div>Thank you very=
 much for that!=C2=A0 I made that change=20
to my core-image-selinux build and it worked!=C2=A0 When it booted I saw a=
=20
systemd process take a while to finish, I assume that was the relable=20
process.=C2=A0 And when I logged in as root, there is a significant delay=
=20
before being logged in, not sure what is going on there.</div><div><br></di=
v><div>When
 I made the same change to my imx8mm-evk core-image-base image with=20
selinux added, I saw the same systemd process run but it didn&#39;t take=20
quite as long and it made the system reboot.=C2=A0 Once it rebooted I did g=
et
 a login prompt but it won&#39;t let me login as root.=C2=A0 So something i=
s=20
still miss-configured and still at a loss as to what to look at next.</div>=
<div><br></div><div>Will provide the startup logs below:</div><div><br></di=
v><div><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0=
);background-color:rgb(255,255,255)">First, my local.conf:</span></span></d=
iv><div><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,=
0);background-color:rgb(255,255,255)"><br></span></span></div><div><span st=
yle=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0);background-co=
lor:rgb(255,255,255)">MACHINE ??=3D &#39;imx8mmevk&#39;
</span><br>DISTRO ?=3D &#39;poky&#39;
<br>PACKAGE_CLASSES ?=3D &#39;package_rpm&#39;
<br>EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;
<br>DISTRO_FEATURES_remove =3D &quot; sysvinit&quot;
<br>DISTRO_FEATURES_append +=3D &quot; acl xattr pam selinux systemd&quot;
<br>#PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpolicy-minimum&quot=
;
<br>PREFERRED_PROVIDER_virtual/refpolicy ?=3D &quot;refpolicy-mcs&quot;
<br>VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;
<br>#DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D &quot;sysvinit&quot;
<br>DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;&quot;
<br>#VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;
<br>USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&quot;
<br>#IMAGE_INSTALL_append =3D &quot; packagegroup-core-selinux&quot;
<br>CORE_IMAGE_EXTRA_INSTALL +=3D &quot; packagegroup-core-selinux&quot;
<br>IMAGE_FSTYPES +=3D &quot; tar.bz2 ext4 wic.bz2 wic.bmap&quot;
<br>PATCHRESOLVE =3D &quot;noop&quot;
<br>BB_DISKMON_DIRS ??=3D &quot;\
<br> =C2=A0=C2=A0=C2=A0STOPTASKS,${TMPDIR},1G,100K \
<br> =C2=A0=C2=A0=C2=A0STOPTASKS,${DL_DIR},1G,100K \
<br> =C2=A0=C2=A0=C2=A0STOPTASKS,${SSTATE_DIR},1G,100K \
<br> =C2=A0=C2=A0=C2=A0STOPTASKS,/tmp,100M,100K \
<br> =C2=A0=C2=A0=C2=A0ABORT,${TMPDIR},100M,1K \
<br> =C2=A0=C2=A0=C2=A0ABORT,${DL_DIR},100M,1K \
<br> =C2=A0=C2=A0=C2=A0ABORT,${SSTATE_DIR},100M,1K \
<br> =C2=A0=C2=A0=C2=A0ABORT,/tmp,10M,1K&quot;
<br>PACKAGECONFIG_append_pn-qemu-system-native =3D &quot; sdl&quot;
<br>CONF_VERSION =3D &quot;1&quot;
<br>
<br>DL_DIR ?=3D &quot;${BSPDIR}/downloads/&quot;
<br>ACCEPT_FSL_EULA =3D &quot;1&quot;<br></span></div><div><br></div><div>T=
his is first boot of my core-image-base build that rebooted:</div><div><br>=
</div><div><span style=3D"font-family:monospace"><span style=3D"color:rgb(0=
,0,0);background-color:rgb(255,255,255)">[ =C2=A0=C2=A0=C2=A01.202737] usbs=
erial: USB Serial support registered for hp4x
</span><br>[ =C2=A0=C2=A0=C2=A01.208499] usbserial: USB Serial support regi=
stered for suunto
<br>[ =C2=A0=C2=A0=C2=A01.214436] usbserial: USB Serial support registered =
for siemens_mpi
<br>[ =C2=A0=C2=A0=C2=A01.223136] input: 30370000.snvs:snvs-powerkey as /de=
vices/platform/soc@0/soc@0:bus@30000000/30370000.snvs/30370000.snvs:snvs-po=
werkey/input/input0
<br>[ =C2=A0=C2=A0=C2=A01.238115] snvs_rtc 30370000.snvs:snvs-rtc-lp: regis=
tered as rtc0
<br>[ =C2=A0=C2=A0=C2=A01.244381] i2c /dev entries driver
<br>[ =C2=A0=C2=A0=C2=A01.252319] imx2-wdt 30280000.watchdog: timeout 60 se=
c (nowayout=3D0)
<br>[ =C2=A0=C2=A0=C2=A01.258858] Bluetooth: HCI UART driver ver 2.3
<br>[ =C2=A0=C2=A0=C2=A01.263316] Bluetooth: HCI UART protocol H4 registere=
d
<br>[ =C2=A0=C2=A0=C2=A01.268461] Bluetooth: HCI UART protocol BCSP registe=
red
<br>[ =C2=A0=C2=A0=C2=A01.273797] Bluetooth: HCI UART protocol LL registere=
d
<br>[ =C2=A0=C2=A0=C2=A01.278941] Bluetooth: HCI UART protocol ATH3K regist=
ered
<br>[ =C2=A0=C2=A0=C2=A01.284357] Bluetooth: HCI UART protocol Three-wire (=
H5) registered
<br>[ =C2=A0=C2=A0=C2=A01.290707] Bluetooth: HCI UART protocol Broadcom reg=
istered
<br>[ =C2=A0=C2=A0=C2=A01.296391] Bluetooth: HCI UART protocol QCA register=
ed
<br>[ =C2=A0=C2=A0=C2=A01.303363] sdhci: Secure Digital Host Controller Int=
erface driver
<br>[ =C2=A0=C2=A0=C2=A01.309555] sdhci: Copyright(c) Pierre Ossman
<br>[ =C2=A0=C2=A0=C2=A01.314079] Synopsys Designware Multimedia Card Inter=
face Driver
<br>[ =C2=A0=C2=A0=C2=A01.320593] sdhci-pltfm: SDHCI platform and OF driver=
 helper
<br>[ =C2=A0=C2=A0=C2=A01.326995] mmc1: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.331061] mmc2: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.366826] mmc2: SDHCI controller on 30b60000.mmc [3=
0b60000.mmc] using ADMA
<br>[ =C2=A0=C2=A0=C2=A01.376124] ledtrig-cpu: registered to indicate activ=
ity on CPUs
<br>[ =C2=A0=C2=A0=C2=A01.383257] caam 30900000.crypto: device ID =3D 0x0a1=
6040100000000 (Era 9)
<br>[ =C2=A0=C2=A0=C2=A01.390030] caam 30900000.crypto: job rings =3D 3, qi=
 =3D 0
<br>[ =C2=A0=C2=A0=C2=A01.404678] caam algorithms registered in /proc/crypt=
o
<br>[ =C2=A0=C2=A0=C2=A01.410573] caam 30900000.crypto: caam pkc algorithms=
 registered in /proc/crypto
<br>[ =C2=A0=C2=A0=C2=A01.420094] caam_jr 30901000.jr: registering rng-caam
<br>[ =C2=A0=C2=A0=C2=A01.430401] caam-snvs 30370000.caam-snvs: can&#39;t g=
et snvs clock
<br>[ =C2=A0=C2=A0=C2=A01.436287] caam-snvs 30370000.caam-snvs: violation h=
andlers armed - non-secure state
<br>[ =C2=A0=C2=A0=C2=A01.444721] usbcore: registered new interface driver =
usbhid
<br>[ =C2=A0=C2=A0=C2=A01.450298] usbhid: USB HID core driver
<br>[ =C2=A0=C2=A0=C2=A01.456169] No fsl,qman node
<br>[ =C2=A0=C2=A0=C2=A01.459065] Freescale USDPAA process driver
<br>[ =C2=A0=C2=A0=C2=A01.463252] fsl-usdpaa: no region found
<br>[ =C2=A0=C2=A0=C2=A01.467091] Freescale USDPAA process IRQ driver
<br>[ =C2=A0=C2=A0=C2=A01.475141] optee: probing for conduit method from DT=
.
<br>[ =C2=A0=C2=A0=C2=A01.480307] optee: revision 3.2 (6a22e6e8)
<br>[ =C2=A0=C2=A0=C2=A01.481414] optee: dynamic shared memory is enabled
<br>[ =C2=A0=C2=A0=C2=A01.490624] optee: initialized driver
<br>[ =C2=A0=C2=A0=C2=A01.496444] mmc2: Command Queue Engine enabled
<br>[ =C2=A0=C2=A0=C2=A01.497954] wm8524-codec audio-codec: Failed to get m=
ute line: -517
<br>[ =C2=A0=C2=A0=C2=A01.500937] mmc2: new HS400 Enhanced strobe MMC card =
at address 0001
<br>[ =C2=A0=C2=A0=C2=A01.507662] OF: /sound-bt-sco/simple-audio-card,cpu: =
could not get #sound-dai-cells for /soc@0/bus@30000000/sai@30020000
<br>[ =C2=A0=C2=A0=C2=A01.514447] mmcblk2: mmc2:0001 DG4016 7.49 GiB =C2=A0=
<br>[ =C2=A0=C2=A0=C2=A01.524427] asoc-simple-card sound-bt-sco: parse erro=
r -22
<br>[ =C2=A0=C2=A0=C2=A01.529081] mmcblk2boot0: mmc2:0001 DG4016 partition =
1 4.00 MiB
<br>[ =C2=A0=C2=A0=C2=A01.534459] asoc-simple-card: probe of sound-bt-sco f=
ailed with error -22
<br>[ =C2=A0=C2=A0=C2=A01.540491] mmcblk2boot1: mmc2:0001 DG4016 partition =
2 4.00 MiB
<br>[ =C2=A0=C2=A0=C2=A01.553232] mmcblk2gp0: mmc2:0001 DG4016 partition 4 =
3.52 GiB
<br>[ =C2=A0=C2=A0=C2=A01.559457] mmcblk2rpmb: mmc2:0001 DG4016 partition 3=
 4.00 MiB, chardev (237:0)
<br>[ =C2=A0=C2=A0=C2=A01.561232] pktgen: Packet Generator for packet perfo=
rmance testing. Version: 2.75
<br>[ =C2=A0=C2=A0=C2=A01.568692] =C2=A0mmcblk2: p1 p2
<br>[ =C2=A0=C2=A0=C2=A01.578981] NET: Registered protocol family 26
<br>[ =C2=A0=C2=A0=C2=A01.580349] =C2=A0mmcblk2gp0: p1 p2
<br>[ =C2=A0=C2=A0=C2=A01.583939] NET: Registered protocol family 10
<br>[ =C2=A0=C2=A0=C2=A01.592304] Segment Routing with IPv6
<br>[ =C2=A0=C2=A0=C2=A01.596030] NET: Registered protocol family 17
<br>[ =C2=A0=C2=A0=C2=A01.601163] Bluetooth: RFCOMM TTY layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.606055] Bluetooth: RFCOMM socket layer initialize=
d
<br>[ =C2=A0=C2=A0=C2=A01.611235] Bluetooth: RFCOMM ver 1.11
<br>[ =C2=A0=C2=A0=C2=A01.614998] Bluetooth: BNEP (Ethernet Emulation) ver =
1.3
<br>[ =C2=A0=C2=A0=C2=A01.620315] Bluetooth: BNEP filters: protocol multica=
st
<br>[ =C2=A0=C2=A0=C2=A01.625547] Bluetooth: BNEP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.630517] Bluetooth: HIDP (Human Interface Emulatio=
n) ver 1.2
<br>[ =C2=A0=C2=A0=C2=A01.636443] Bluetooth: HIDP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.641440] 8021q: 802.1Q VLAN Support v1.8
<br>[ =C2=A0=C2=A0=C2=A01.645644] lib80211: common routines for IEEE802.11 =
drivers
<br>[ =C2=A0=C2=A0=C2=A01.651428] 9pnet: Installing 9P2000 support
<br>[ =C2=A0=C2=A0=C2=A01.655735] tsn generic netlink module v1 init...
<br>[ =C2=A0=C2=A0=C2=A01.660501] Key type dns_resolver registered
<br>[ =C2=A0=C2=A0=C2=A01.665522] registered taskstats version 1
<br>[ =C2=A0=C2=A0=C2=A01.669630] Loading compiled-in X.509 certificates
<br>[ =C2=A0=C2=A0=C2=A01.698859] usb_phy_generic usbphynop1: usbphynop1 su=
pply vcc not found, using dummy regulator
<br>[ =C2=A0=C2=A0=C2=A01.707660] usb_phy_generic usbphynop2: usbphynop2 su=
pply vcc not found, using dummy regulator
<br>[ =C2=A0=C2=A0=C2=A01.780652] random: fast init done
<br>[ =C2=A0=C2=A0=C2=A01.788737] LDO6: supplied by regulator-dummy
<br>[ =C2=A0=C2=A0=C2=A01.793242] i2c i2c-0: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.799240] i2c i2c-1: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.805114] i2c i2c-2: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.810936] i2c i2c-3: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.815964] imx-cpufreq-dt imx-cpufreq-dt: cpu speed =
grade 2 mkt segment 2 supported-hw 0x4 0x4
<br>[ =C2=A0=C2=A0=C2=A01.828449] mmc1: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.832108] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
<br>[ =C2=A0=C2=A0=C2=A01.869469] mmc1: SDHCI controller on 30b50000.mmc [3=
0b50000.mmc] using ADMA
<br>[ =C2=A0=C2=A0=C2=A01.878135] imx8mm-pinctrl 30330000.pinctrl: pin
MX8MM_IOMUXC_I2C4_SDA already requested by 30a50000.i2c; cannot claim
for audio-codec
<br>[ =C2=A0=C2=A0=C2=A01.890254] imx8mm-pinctrl 30330000.pinctrl: pin-140 =
(audio-codec) status -22
<br>[ =C2=A0=C2=A0=C2=A01.897398] imx8mm-pinctrl 30330000.pinctrl: could no=
t request
pin 140 (MX8MM_IOMUXC_I2C4_SDA) from group gpiowlfgrp =C2=A0on device
30330000.pinctrl
<br>[ =C2=A0=C2=A0=C2=A01.910356] wm8524-codec audio-codec: Error applying =
setting, reverse things back
<br>[ =C2=A0=C2=A0=C2=A01.917856] wm8524-codec: probe of audio-codec failed=
 with error -22
<br>[ =C2=A0=C2=A0=C2=A01.932525] input: bd718xx-pwrkey as /devices/platfor=
m/soc@0/soc@0:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.1.auto/input=
/input1
<br>[ =C2=A0=C2=A0=C2=A01.946584] snvs_rtc 30370000.snvs:snvs-rtc-lp: setti=
ng system clock to 1970-01-01T01:19:14 UTC (4754)
<br>[ =C2=A0=C2=A0=C2=A01.956250] cfg80211: Loading compiled-in X.509 certi=
ficates for regulatory database
<br>[ =C2=A0=C2=A0=C2=A01.967556] cfg80211: Loaded X.509 cert &#39;sforshee=
: 00b28ddf47aef9cea7&#39;
<br>[ =C2=A0=C2=A0=C2=A01.974159] platform regulatory.0: Direct firmware lo=
ad for regulatory.db failed with error -2
<br>[ =C2=A0=C2=A0=C2=A01.979590] ALSA device list:
<br>[ =C2=A0=C2=A0=C2=A01.982781] platform regulatory.0: Falling back to sy=
sfs fallback for: regulatory.db
<br>[ =C2=A0=C2=A0=C2=A01.985744] =C2=A0=C2=A0No soundcards found.
<br>[ =C2=A0=C2=A0=C2=A02.004502] EXT4-fs (mmcblk2p2): mounted filesystem w=
ith ordered data mode. Opts: (null)
<br>[ =C2=A0=C2=A0=C2=A02.012659] VFS: Mounted root (ext4 filesystem) reado=
nly on device 179:2.
<br>[ =C2=A0=C2=A0=C2=A02.019978] devtmpfs: mounted
<br>[ =C2=A0=C2=A0=C2=A02.023749] Freeing unused kernel memory: 2880K
<br>[ =C2=A0=C2=A0=C2=A02.040759] Run /sbin/init as init process
<br>[ =C2=A0=C2=A0=C2=A02.114222] audit: type=3D1404 audit(4754.664:2): enf=
orcing=3D1
old_enforcing=3D0 auid=3D4294967295 ses=3D4294967295 enabled=3D1 old-enable=
d=3D1
lsm=3Dselinux res=3D1
<br>[ =C2=A0=C2=A0=C2=A02.252102] SELinux: =C2=A0Permission watch in class =
filesystem not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.259701] SELinux: =C2=A0Permission watch in class =
file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.266668] SELinux: =C2=A0Permission watch_mount in =
class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.274162] SELinux: =C2=A0Permission watch_sb in cla=
ss file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.281386] SELinux: =C2=A0Permission watch_with_perm=
 in class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.289225] SELinux: =C2=A0Permission watch_reads in =
class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.296721] SELinux: =C2=A0Permission watch in class =
dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.303606] SELinux: =C2=A0Permission watch_mount in =
class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.311013] SELinux: =C2=A0Permission watch_sb in cla=
ss dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.318158] SELinux: =C2=A0Permission watch_with_perm=
 in class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.325902] SELinux: =C2=A0Permission watch_reads in =
class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.333318] SELinux: =C2=A0Permission watch in class =
lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.340628] SELinux: =C2=A0Permission watch_mount in =
class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.348467] SELinux: =C2=A0Permission watch_sb in cla=
ss lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.356038] SELinux: =C2=A0Permission watch_with_perm=
 in class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.364224] SELinux: =C2=A0Permission watch_reads in =
class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.372061] SELinux: =C2=A0Permission watch in class =
chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.379380] SELinux: =C2=A0Permission watch_mount in =
class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.387211] SELinux: =C2=A0Permission watch_sb in cla=
ss chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.394790] SELinux: =C2=A0Permission watch_with_perm=
 in class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.402968] SELinux: =C2=A0Permission watch_reads in =
class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.410806] SELinux: =C2=A0Permission watch in class =
blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.418122] SELinux: =C2=A0Permission watch_mount in =
class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.425962] SELinux: =C2=A0Permission watch_sb in cla=
ss blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.433532] SELinux: =C2=A0Permission watch_with_perm=
 in class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.441718] SELinux: =C2=A0Permission watch_reads in =
class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.449558] SELinux: =C2=A0Permission watch in class =
sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.456964] SELinux: =C2=A0Permission watch_mount in =
class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.464881] SELinux: =C2=A0Permission watch_sb in cla=
ss sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.472547] SELinux: =C2=A0Permission watch_with_perm=
 in class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.480811] SELinux: =C2=A0Permission watch_reads in =
class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.488743] SELinux: =C2=A0Permission watch in class =
fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.496140] SELinux: =C2=A0Permission watch_mount in =
class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.504066] SELinux: =C2=A0Permission watch_sb in cla=
ss fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.511724] SELinux: =C2=A0Permission watch_with_perm=
 in class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.519987] SELinux: =C2=A0Permission watch_reads in =
class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.528238] SELinux: the above unknown classes and pe=
rmissions will be allowed
<br>[ =C2=A0=C2=A0=C2=A02.535473] SELinux: =C2=A0policy capability network_=
peer_controls=3D1
<br>[ =C2=A0=C2=A0=C2=A02.541403] SELinux: =C2=A0policy capability open_per=
ms=3D1
<br>[ =C2=A0=C2=A0=C2=A02.546368] SELinux: =C2=A0policy capability extended=
_socket_class=3D1
<br>[ =C2=A0=C2=A0=C2=A02.552297] SELinux: =C2=A0policy capability always_c=
heck_network=3D0
<br>[ =C2=A0=C2=A0=C2=A02.558132] SELinux: =C2=A0policy capability cgroup_s=
eclabel=3D1
<br>[ =C2=A0=C2=A0=C2=A02.563539] SELinux: =C2=A0policy capability nnp_nosu=
id_transition=3D1
<br>[ =C2=A0=C2=A0=C2=A02.611027] audit: type=3D1403 audit(4755.160:3): aui=
d=3D4294967295 ses=3D4294967295 lsm=3Dselinux res=3D1
<br>[ =C2=A0=C2=A0=C2=A02.618342] systemd[1]: Successfully loaded SELinux p=
olicy in 506.080ms.
<br>[ =C2=A0=C2=A0=C2=A02.644224] systemd[1]: System time before build time=
, advancing clock.
<br>[ =C2=A0=C2=A0=C2=A02.729021] systemd[1]: Relabelled /dev, /dev/shm, /r=
un, /sys/fs/cgroup in 67.016ms.
<br>[ =C2=A0=C2=A0=C2=A02.748329] systemd[1]: systemd 244.5+ running in sys=
tem mode.
(+PAM +AUDIT +SELINUX +IMA -APPARMOR -SMACK +SYSVINIT +UTMP
-LIBCRYPTSETUP -GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS
+KMOD -IDN2 -IDN -PCRE2 default-hierarchy=3Dhybrid)
<br>[ =C2=A0=C2=A0=C2=A02.770341] systemd[1]: Detected architecture arm64.
<br>
<br>Welcome to <span style=3D"font-weight:bold;color:rgb(0,0,0);background-=
color:rgb(255,255,255)">Poky (Yocto Project Reference Distro) 3.1.7 (dunfel=
l)</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>!
</span><br>
<br>[ =C2=A0=C2=A0=C2=A02.818431] systemd[1]: Set hostname to &lt;imx8mmevk=
&gt;.
<br>[ =C2=A0=C2=A0=C2=A02.826687] random: systemd: uninitialized urandom re=
ad (16 bytes read)
<br>[ =C2=A0=C2=A0=C2=A02.833351] systemd[1]: Initializing machine ID from =
random generator.
<br>[ =C2=A0=C2=A0=C2=A02.840377] systemd[1]: Installed transient /etc/mach=
ine-id file.
<br>[ =C2=A0=C2=A0=C2=A03.043231] random: systemd: uninitialized urandom re=
ad (16 bytes read)
<br>[ =C2=A0=C2=A0=C2=A03.050040] systemd[1]: system-getty.slice: unit conf=
igures an IP
firewall, but the local system does not support BPF/cgroup firewalling.
<br>[ =C2=A0=C2=A0=C2=A03.062433] systemd[1]: (This warning is only shown f=
or the first unit using IP firewalling.)
<br>[ =C2=A0=C2=A0=C2=A03.073214] systemd[1]: Created slice system-getty.sl=
ice.
<br>[ =C2=A0OK =C2=A0] Created slice <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">system-getty.slice</span><spa=
n style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.092834] random: systemd: uninitialized ura=
ndom read (16 bytes read)
<br>[ =C2=A0=C2=A0=C2=A03.101077] systemd[1]: Created slice system-serial\x=
2dgetty.slice.
<br>[ =C2=A0OK =C2=A0] Created slice <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">system-serial\x2dgetty.slice<=
/span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.121748] systemd[1]: Created slice User and=
 Session Slice.
<br>[ =C2=A0OK =C2=A0] Created slice <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">User and Session Slice</span>=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.142242] systemd[1]: Started Dispatch Passw=
ord Requests to Console Directory Watch.
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Dispatch Password =EF=BF=BD=EF=BF=
=BD=E2=80=A6ts to Console Directory Watch</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.169455] systemd[1]: Started Forward Passwo=
rd Requests to Wall Directory Watch.
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Forward Password R=EF=BF=BD=EF=BF=
=BD=E2=80=A6uests to Wall Directory Watch</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.192930] systemd[1]: Reached target Paths.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Paths</span><span style=3D"c=
olor:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.213846] systemd[1]: Reached target Remote =
File Systems.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Remote File Systems</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.232996] systemd[1]: Reached target Slices.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Slices</span><span style=3D"=
color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.252886] systemd[1]: Reached target Swap.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Swap</span><span style=3D"co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.277486] systemd[1]: Listening on RPCbind S=
erver Activation Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">RPCbind Server Activation Sock=
et</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>[ =C2=A0=C2=A0=C2=A03.300937] systemd[1]: Reached target RPC Por=
t Mapper.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">RPC Port Mapper</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.323791] systemd[1]: Listening on Syslog So=
cket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Syslog Socket</span><span styl=
e=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.345949] systemd[1]: Listening on initctl C=
ompatibility Named Pipe.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">initctl Compatibility Named Pi=
pe</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>[ =C2=A0=C2=A0=C2=A03.370655] systemd[1]: systemd-journald-audit=
.socket: Failed to create listening socket (audit 1): Operation not permitt=
ed
<br>[ =C2=A0=C2=A0=C2=A03.370910] audit: type=3D1400 audit(1600598638.724:4=
): avc:
=C2=A0denied =C2=A0{ audit_read } for =C2=A0pid=3D1 comm=3D&quot;systemd&qu=
ot; capability=3D37
=C2=A0scontext=3Dsystem_u:system_r:kernel_t:s0 tcontext=3Dsystem_u:system_r=
:kernel_t:s0 tclass=3Dcapability2 permissive=3D0
<br>[ =C2=A0=C2=A0=C2=A03.381893] systemd[1]: systemd-journald-audit.socket=
: Failed to listen on sockets: Operation not permitted
<br>[ =C2=A0=C2=A0=C2=A03.412415] systemd[1]: systemd-journald-audit.socket=
: Failed with result &#39;resources&#39;.
<br>[ =C2=A0=C2=A0=C2=A03.420654] systemd[1]: Failed to listen on Journal A=
udit Socket.
<br>[<span style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(=
255,255,255)">FAILED</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">] Failed to listen on </span><span style=3D"font-weight:=
bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Journal Audit Sock=
et</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>See &#39;systemctl status systemd-journald-audit.socket&#39; for=
 details.
<br>[ =C2=A0=C2=A0=C2=A03.457659] systemd[1]: Listening on Journal Socket (=
/dev/log).
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Journal Socket (/dev/log)</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.481864] systemd[1]: Listening on Journal S=
ocket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Journal Socket</span><span sty=
le=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.501997] systemd[1]: Listening on Network S=
ervice Netlink Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Network Service Netlink Socket=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.527382] systemd[1]: Listening on udev Cont=
rol Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">udev Control Socket</span><spa=
n style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.549791] systemd[1]: Listening on udev Kern=
el Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">udev Kernel Socket</span><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.573120] systemd[1]: Mounting Huge Pages Fi=
le System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Hu=
ge Pages File System</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.596907] systemd[1]: Mounting POSIX Message=
 Queue File System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">PO=
SIX Message Queue File System</span><span style=3D"color:rgb(0,0,0);backgro=
und-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.621131] systemd[1]: Mounting Kernel Debug =
File System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ke=
rnel Debug File System</span><span style=3D"color:rgb(0,0,0);background-col=
or:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.646188] systemd[1]: Mounting Temporary Dir=
ectory (/tmp)...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Te=
mporary Directory (/tmp)</span><span style=3D"color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.669201] systemd[1]: Starting Create list o=
f static device nodes for the current kernel...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Cr=
eate list of st=EF=BF=BD=EF=BF=BD=E2=80=A6odes for the current kernel</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.696449] systemd[1]: Starting Start psplash=
 boot splash screen...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">St=
art psplash boot splash screen</span><span style=3D"color:rgb(0,0,0);backgr=
ound-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.728875] systemd[1]: Starting RPC Bind...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">RP=
C Bind</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.752279] systemd[1]: Starting SELinux autor=
elabel service loading...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">SE=
Linux autorelabel service loading</span><span style=3D"color:rgb(0,0,0);bac=
kground-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.766897] audit: type=3D1404 audit(160059863=
9.120:5):
enforcing=3D0 old_enforcing=3D1 auid=3D4294967295 ses=3D4294967295 enabled=
=3D1
old-enabled=3D1 lsm=3Dselinux res=3D1
<br>[ =C2=A0=C2=A0=C2=A03.788003] systemd[1]: Starting SELinux init for /de=
v service loading...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">SE=
Linux init for /dev service loading</span><span style=3D"color:rgb(0,0,0);b=
ackground-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.812966] systemd[1]: Starting File System C=
heck on Root Device...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Fi=
le System Check on Root Device</span><span style=3D"color:rgb(0,0,0);backgr=
ound-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.838411] systemd[1]: Starting Journal Servi=
ce...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Jo=
urnal Servi[ =C2=A0=C2=A0=C2=A03.845479] systemd[1]: Condition check result=
ed in Load Kernel Modules being skipped.</span><span style=3D"color:rgb(0,0=
,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"font-weight:bold;color:rgb(0,0,0);background-colo=
r:rgb(255,255,255)">ce</span><span style=3D"color:rgb(0,0,0);background-col=
or:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.856066] systemd[1]: Condition check result=
ed in FUSE Control File System being skipped.
<br>[ =C2=A0=C2=A0=C2=A03.871557] systemd[1]: Mounting Kernel Configuration=
 File System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ke=
rnel Configuration File System</span><span style=3D"color:rgb(0,0,0);backgr=
ound-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.889392] systemd[1]: Starting Apply Kernel =
Variables...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ap=
ply Kernel Variables</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.900053] systemd[1]: Starting udev Coldplug=
 all Devices...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">ud=
ev Coldplug all Devices</span><span style=3D"color:rgb(0,0,0);background-co=
lor:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.911256] systemd[1]: Started RPC Bind.
<br>[ =C2=A0OK =C2=A0] Started =C2=A0=C2=A0=C2=A0=C2=A03.916791] systemd[1]=
: Mounted Huge Pages File System.
<br>;39mRPC Bind.
<br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Huge Pages File System</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.953835] systemd[1]: Started Journal Servic=
e.
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Journal Service</span><span style=
=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">POSIX Message Queue File Sys=
tem</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Kernel Debug File System</sp=
an><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Temporary Directory (/tmp)</=
span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create list of sta=EF=BF=BD=
=EF=BF=BD=E2=80=A6 nodes for the current kernel</span><span style=3D"color:=
rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[<span style=3D"font-weight:bold;color:rgb(0,0,0);background-col=
or:rgb(255,255,255)">FAILED</span><span style=3D"color:rgb(0,0,0);backgroun=
d-color:rgb(255,255,255)">] Failed to start </span><span style=3D"font-weig=
ht:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Start psplash b=
oot splash screen</span><span style=3D"color:rgb(0,0,0);background-color:rg=
b(255,255,255)">.
</span><br>See &#39;systemctl status psplash-start.service&#39; for details=
.
<br>[<span style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(=
255,255,255)">DEPEND</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">] Dependency failed for </span><span style=3D"font-weigh=
t:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Star=EF=BF=BD=EF=
=BF=BD=E2=80=A6progress communication helper</span><span style=3D"color:rgb=
(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">SELinux init for /dev servic=
e loading</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">File System Check on Root De=
vice</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Kernel Configuration File Sy=
stem</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Apply Kernel Variables</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Remount Root and Kernel File Systems</span><span style=3D"color:rgb(0,0,=
0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A04.193492] EXT4-fs (mmcblk2p2): re-mounted. O=
pts: (null)
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Remount Root and Kernel File System=
s</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">=
.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Flush Journal to Persistent Storage</span><span style=3D"color:rgb(0,0,0=
);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A04.243991] systemd-journald[321]: Received cl=
ient request to flush runtime journal.
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Cr=
eate System Users</span><span style=3D"color:rgb(0,0,0);background-color:rg=
b(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Flush Journal to Persistent =
Storage</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,=
255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create System Users</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Create Static Device Nodes in /dev</span><span style=3D"color:rgb(0,0,0)=
;background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create Static Device Nodes i=
n /dev</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Local File Systems (P=
re)</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">/var/volatile</span><span style=3D"color:rgb(0,0,0);background-color:rgb=
(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">udev Kernel Device Manager</span><span style=3D"color:rgb(0,0,0);backgro=
und-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">udev Coldplug all Devices</s=
pan><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">/var/volatile</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Load/Save Random Seed</span><span style=3D"color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Local File Systems</s=
pan><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Rebuild Dynamic Linker Cache</span><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">SELinux init service loading</span><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Commit a transient machine-id on disk</span><span style=3D"color:rgb(0,0=
,0);background-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Create Volatile Files and Directories</span><span style=3D"color:rgb(0,0=
,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">udev Kernel Device Manager</=
span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">SELinux init service loading=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Commit a transient machine-i=
d on disk</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Rebuild Dynamic Linker Cache=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Service</span><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create Volatile Files and Di=
rectories</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Run pending postinsts</span><span style=3D"color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Rebuild Journal Catalog</span><span style=3D"color:rgb(0,0,0);background=
-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Time Synchronization</span><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Update UTMP about System Boot/Shutdown</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Service</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Rebuild Journal Catalog</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Update UTMP about System Boo=
t/Shutdown</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,2=
55,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Run pending postinsts</span>=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Name Resolution</span><span style=3D"color:rgb(0,0,0);background=
-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Update is Completed</span><span style=3D"color:rgb(0,0,0);background-col=
or:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Update is Completed</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Time Synchronization=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Time Set</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Time Synchroni=
zed</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Name Resolution</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Network</span><span s=
tyle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Host and Network Name=
 Lookups</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.399674] audit: type=3D1400 audit(160059864=
0.748:6): avc:
=C2=A0denied =C2=A0{ module_load } for =C2=A0pid=3D648 comm=3D&quot;systemd=
-udevd&quot;
path=3D&quot;/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/cr=
ct10dif-ce.ko&quot; dev=3D&quot;mmcblk2p2&quot; ino=3D577 scontext=3Dsystem=
_u:system_r:1
<br>[ =C2=A0=C2=A0=C2=A05.446185] Generic PHY fixed-0:00: attached PHY driv=
er [Generic PHY] (mii_bus:phy_addr=3Dfixed-0:00, irq=3DPOLL)
<br>[ =C2=A0=C2=A0=C2=A05.461534] fec 30be0000.ethernet eth0: Link is Up - =
1Gbps/Full - flow control off
<br>[ =C2=A0=C2=A0=C2=A05.474253] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link=
 becomes ready
<br>[ =C2=A0=C2=A0=C2=A09.012772] random: crng init done
<br>[ =C2=A0=C2=A0=C2=A09.016184] random: 7 urandom warning(s) missed due t=
o ratelimiting
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Load/Save Random Seed</span><span s=
tyle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0*<span style=3D"font-weight:bold;color:rgb(0,0,0);=
background-color:rgb(255,255,255)">*</span><span style=3D"color:rgb(0,0,0);=
background-color:rgb(255,255,255)">*] A start job is running for SELinux =
=EF=BF=BD=EF=BF=BD=E2=80=A6l service loading (27s / no limit)
</span><br>[ =C2=A0=C2=A030.793551] audit: type=3D1107 audit(1621001013.725=
:7):
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ s=
tart } for auid=3Dn/a uid=3D0 gid=3D0 path=3D&quot;/lib/systemd/system/rebo=
ot.target&quot; cmdline=3D&quot;&quot; scontext=3Dsyste1
<br>[ =C2=A0=C2=A030.793551] =C2=A0exe=3D&quot;/lib/systemd/systemd&quot; s=
auid=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>[ =C2=A0=C2=A030.831206] audit: type=3D1107 audit(1621001013.741:8): pi=
d=3D1 uid=3D0
auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_t:s0 msg=
=3D&#39;avc: =C2=A0denied =C2=A0{ status } for auid=3Dn/a uid=3D0 gid=3D0 p=
ath=3D&quot;/lib/systemd/system/reboot.target&quot; cmdline=3D&quot;&quot; =
scontext=3Dsyst1
<br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Host and Network Name Lookup=
s</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">=
.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">RPC Port Mapper</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Time Synchroni=
zed</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Time Set</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Stopping <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Load/Save Random Seed</span><span style=3D"color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Removed slice <span style=3D"font-weight:bold=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">system-getty.slice</sp=
an><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Removed slice <span style=3D"font-weight:bold=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">system-serial\x2dgetty=
.slice</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Network</span><span s=
tyle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Paths</span><span sty=
le=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Dispatch Password =EF=BF=BD=
=EF=BF=BD=E2=80=A6ts to Console Directory Watch</span><span style=3D"color:=
rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Forward Password R=EF=BF=BD=
=EF=BF=BD=E2=80=A6uests to Wall Directory Watch</span><span style=3D"color:=
rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Remote File Systems</=
span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Slices</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Removed slice <span style=3D"font-weight:bold=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">User and Session Slice=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Closed <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">Syslog Socket</span><span sty=
le=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Commit a transient machine-i=
d on disk</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Stopping <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Name Resolution</span><span style=3D"color:rgb(0,0,0);background=
-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Stopping <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Time Synchronization</span><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Update is Completed</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Rebuild Dynamic Linker Cache=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Rebuild Journal Catalog</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Stopping <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Update UTMP about System Boot/Shutdown</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Time Synchronization=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Name Resolution</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Load/Save Random Seed</span>=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">SELinux autorelabel service =
loading</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,=
255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Update UTMP about System Boo=
t/Shutdown</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,2=
55,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Stopping <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Service</span><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create Volatile Files and Di=
rectories</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Local File Systems</s=
pan><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Unmounting <spa=
n style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">Temporary Directory (/tmp)</span><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Unmounting <spa=
n style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">/var/volatile</span><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Service</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Unmounted <span style=3D"font-weight:bold;col=
or:rgb(0,0,0);background-color:rgb(255,255,255)">Temporary Directory (/tmp)=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Unmounted <span style=3D"font-weight:bold;col=
or:rgb(0,0,0);background-color:rgb(255,255,255)">/var/volatile</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Local File Systems (P=
re)</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br>[ =C2=A0OK =C2=A0] Stopped target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Swap</span><span styl=
e=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Unmount All Filesyste=
ms</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Apply Kernel Variables</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create Static Device Nodes i=
n /dev</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create System Users</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Remount Root and Kernel File=
 Systems</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">.
</span><br>[ =C2=A0OK =C2=A0] Stopped <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">File System Check on Root De=
vice</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Shutdown</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Final Step</span><spa=
n style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Reboot</span><span style=3D"=
color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Reboot</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A031.749936] watchdog: watchdog0: watchdog did not s=
top!
<br>[ =C2=A0=C2=A031.772995] systemd-shutdown[1]: Syncing filesystems and b=
lock devices.
<br>[ =C2=A0=C2=A031.779924] systemd-shutdown[1]: Sending SIGTERM to remain=
ing processes...
<br>[ =C2=A0=C2=A031.794460] systemd-journald[321]: Received SIGTERM from P=
ID 1 (systemd-shutdow).
<br>[ =C2=A0=C2=A031.815284] systemd-shutdown[1]: Sending SIGKILL to remain=
ing processes...
<br>[ =C2=A0=C2=A031.828512] systemd-shutdown[1]: Hardware watchdog &#39;im=
x2+ watchdog&#39;, version 0
<br>[ =C2=A0=C2=A031.837401] systemd-shutdown[1]: Unmounting file systems.
<br>[ =C2=A0=C2=A031.844851] [872]: Remounting &#39;/&#39; read-only in wit=
h options &#39;seclabel&#39;.
<br>[ =C2=A0=C2=A031.861839] EXT4-fs (mmcblk2p2): re-mounted. Opts: =C2=A0<=
br>[ =C2=A0=C2=A031.869728] systemd-shutdown[1]: All filesystems unmounted.
<br>[ =C2=A0=C2=A031.875392] systemd-shutdown[1]: Deactivating swaps.
<br>[ =C2=A0=C2=A031.880533] systemd-shutdown[1]: All swaps deactivated.
<br>[ =C2=A0=C2=A031.885835] systemd-shutdown[1]: Detaching loop devices.
<br>[ =C2=A0=C2=A031.893753] systemd-shutdown[1]: All loop devices detached=
.
<br>[ =C2=A0=C2=A031.899354] systemd-shutdown[1]: Detaching DM devices.
<br>[ =C2=A0=C2=A031.904814] systemd-shutdown[1]: All DM devices detached.
<br>[ =C2=A0=C2=A031.910272] systemd-shutdown[1]: All filesystems, swaps, l=
oop devices and DM devices detached.
<br>[ =C2=A0=C2=A031.924538] systemd-shutdown[1]: Syncing filesystems and b=
lock devices.
<br>[ =C2=A0=C2=A031.931348] systemd-shutdown[1]: Rebooting.
<br>[ =C2=A0=C2=A031.935672] imx-sdma 302b0000.dma-controller: external fir=
mware not found, using ROM firmware
<br>[ =C2=A0=C2=A031.935695] imx-sdma 30bd0000.dma-controller: external fir=
mware not found, using ROM firmware
<br>[ =C2=A0=C2=A031.937033] kvm: exiting hardware virtualization
<br>[ =C2=A0=C2=A031.944226] cfg80211: failed to load regulatory.db
<br>[ =C2=A0=C2=A031.958656] imx-sdma 302c0000.dma-controller: loaded firmw=
are 4.5
<br>[ =C2=A0=C2=A032.009904] imx2-wdt 30280000.watchdog: Device shutdown: E=
xpect reboot!
<br>[ =C2=A0=C2=A032.017454] reboot: Restarting system</span></div><div><sp=
an style=3D"font-family:monospace"><br></span></div><div><span style=3D"fon=
t-family:monospace"><br></span></div><div><span style=3D"font-family:monosp=
ace">This is after the reboot.=C2=A0=C2=A0 I make it to login prompt but ca=
n&#39;t log in:</span></div><div><span style=3D"font-family:monospace"><br>=
</span></div><div><span style=3D"font-family:monospace">Thanks for any poin=
ters as to what to look into next ... in the meantime I&#39;m continuing to=
 dig.</span></div><div><span style=3D"font-family:monospace"><br></span></d=
iv><div><span style=3D"font-family:monospace"><span style=3D"font-family:mo=
nospace"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>Starting kernel ...
</span><br>
<br>[ =C2=A0=C2=A0=C2=A00.000000] Booting Linux on physical CPU 0x000000000=
0 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.000000] Linux version 5.4.114+gf9a9b58ef7cc (oe-u=
ser@oe-host)
 (gcc version 9.3.0 (GCC)) #1 SMP PREEMPT Thu Apr 22 11:48:16 UTC 2021
<br>[ =C2=A0=C2=A0=C2=A00.000000] Machine model: FSL i.MX8MM EVK board
<br>[ =C2=A0=C2=A0=C2=A00.000000] earlycon: ec_imx6q0 at MMIO 0x00000000308=
90000 (options &#39;115200&#39;)
<br>[ =C2=A0=C2=A0=C2=A00.000000] printk: bootconsole [ec_imx6q0] enabled
<br>[ =C2=A0=C2=A0=C2=A00.000000] efi: Getting EFI parameters from FDT:
<br>[ =C2=A0=C2=A0=C2=A00.000000] efi: UEFI not found.
<br>[ =C2=A0=C2=A0=C2=A00.000000] Reserved memory: created CMA memory pool =
at 0x0000000078000000, size 640 MiB
<br>[ =C2=A0=C2=A0=C2=A00.000000] OF: reserved mem: initialized node linux,=
cma, compatible id shared-dma-pool
<br>[ =C2=A0=C2=A0=C2=A00.000000] NUMA: No NUMA configuration found
<br>[ =C2=A0=C2=A0=C2=A00.000000] NUMA: Faking a node at [mem 0x00000000400=
00000-0x00000000bdffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] NUMA: NODE_DATA [mem 0xbdbe0500-0xbdbe1ff=
f]
<br>[ =C2=A0=C2=A0=C2=A00.000000] Zone ranges:
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0DMA32 =C2=A0=C2=A0=C2=A0[mem =
0x0000000040000000-0x00000000bdffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0Normal =C2=A0=C2=A0empty
<br>[ =C2=A0=C2=A0=C2=A00.000000] Movable zone start for each node
<br>[ =C2=A0=C2=A0=C2=A00.000000] Early memory node ranges
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0node =C2=A0=C2=A00: [mem 0x00=
00000040000000-0x00000000b7ffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0node =C2=A0=C2=A00: [mem 0x00=
000000b8000000-0x00000000b83fffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0=C2=A0node =C2=A0=C2=A00: [mem 0x00=
000000b8400000-0x00000000bdffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] Initmem setup node 0 [mem 0x0000000040000=
000-0x00000000bdffffff]
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: probing for conduit method from DT.
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: PSCIv1.1 detected in firmware.
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: Using standard PSCI v0.2 function I=
Ds
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: Trusted OS migration not required
<br>[ =C2=A0=C2=A0=C2=A00.000000] psci: SMC Calling Convention v1.1
<br>[ =C2=A0=C2=A0=C2=A00.000000] percpu: Embedded 24 pages/cpu s58904 r819=
2 d31208 u98304
<br>[ =C2=A0=C2=A0=C2=A00.000000] Detected VIPT I-cache on CPU0
<br>[ =C2=A0=C2=A0=C2=A00.000000] CPU features: detected: ARM erratum 84571=
9
<br>[ =C2=A0=C2=A0=C2=A00.000000] CPU features: detected: GIC system regist=
er CPU interface
<br>[ =C2=A0=C2=A0=C2=A00.000000] Speculative Store Bypass Disable mitigati=
on not required
<br>[ =C2=A0=C2=A0=C2=A00.000000] Built 1 zonelists, mobility grouping on.=
=C2=A0 Total pages: 508032
<br>[ =C2=A0=C2=A0=C2=A00.000000] Policy zone: DMA32
<br>[ =C2=A0=C2=A0=C2=A00.000000] Kernel command line: console=3Dttymxc1,11=
5200 earlycon=3Dec_imx6q,0x30890000,115200 rootwait ro root=3D/dev/mmcblk2p=
2 rauc.slot=3DB
<br>[ =C2=A0=C2=A0=C2=A00.000000] Dentry cache hash table entries: 262144 (=
order: 9, 2097152 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.000000] Inode-cache hash table entries: 131072 (o=
rder: 8, 1048576 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.000000] mem auto-init: stack:off, heap alloc:off,=
 heap free:off
<br>[ =C2=A0=C2=A0=C2=A00.000000] Memory: 1336216K/2064384K available (1650=
8K kernel=20
code, 1234K rwdata, 6480K rodata, 2880K init, 1038K bss, 72808K=20
reserved, 655360K cma-reserved)
<br>[ =C2=A0=C2=A0=C2=A00.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjec=
ts=3D0, CPUs=3D4, Nodes=3D1
<br>[ =C2=A0=C2=A0=C2=A00.000000] rcu: Preemptible hierarchical RCU impleme=
ntation.
<br>[ =C2=A0=C2=A0=C2=A00.000000] rcu: =C2=A0=C2=A0=C2=A0=C2=A0RCU restrict=
ing CPUs from NR_CPUS=3D256 to nr_cpu_ids=3D4.
<br>[ =C2=A0=C2=A0=C2=A00.000000] =C2=A0Tasks RCU enabled.
<br>[ =C2=A0=C2=A0=C2=A00.000000] rcu: RCU calculated value of scheduler-en=
listment delay is 25 jiffies.
<br>[ =C2=A0=C2=A0=C2=A00.000000] rcu: Adjusting geometry for rcu_fanout_le=
af=3D16, nr_cpu_ids=3D4
<br>[ =C2=A0=C2=A0=C2=A00.000000] NR_IRQS: 64, nr_irqs: 64, preallocated ir=
qs: 0
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: GIC: Using split EOI/Deactivate mo=
de
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: 128 SPIs implemented
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: 0 Extended SPIs implemented
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: Distributor has no Range Selector =
support
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: 16 PPIs implemented
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: no VLPI support, no direct LPI sup=
port
<br>[ =C2=A0=C2=A0=C2=A00.000000] GICv3: CPU0: found redistributor 0 region=
 0:0x0000000038880000
<br>[ =C2=A0=C2=A0=C2=A00.000000] ITS: No ITS available, not enabling LPIs
<br>[ =C2=A0=C2=A0=C2=A00.000000] random: get_random_bytes called from star=
t_kernel+0x2b8/0x43c with crng_init=3D0
<br>[ =C2=A0=C2=A0=C2=A00.000000] arch_timer: cp15 timer(s) running at 8.00=
MHz (phys).
<br>[ =C2=A0=C2=A0=C2=A00.000000] clocksource: arch_sys_counter: mask: 0xff=
ffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
<br>[ =C2=A0=C2=A0=C2=A00.000003] sched_clock: 56 bits at 8MHz, resolution =
125ns, wraps every 2199023255500ns
<br>[ =C2=A0=C2=A0=C2=A00.008456] Console: colour dummy device 80x25
<br>[ =C2=A0=C2=A0=C2=A00.012579] Calibrating delay loop (skipped), value c=
alculated using timer frequency.. 16.00 BogoMIPS (lpj=3D32000)
<br>[ =C2=A0=C2=A0=C2=A00.022844] pid_max: default: 32768 minimum: 301
<br>[ =C2=A0=C2=A0=C2=A00.027543] LSM: Security Framework initializing
<br>[ =C2=A0=C2=A0=C2=A00.032140] SELinux: =C2=A0Initializing.
<br>[ =C2=A0=C2=A0=C2=A00.035680] Mount-cache hash table entries: 4096 (ord=
er: 3, 32768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.043062] Mountpoint-cache hash table entries: 4096=
 (order: 3, 32768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.052066] ASID allocator initialised with 32768 ent=
ries
<br>[ =C2=A0=C2=A0=C2=A00.056439] rcu: Hierarchical SRCU implementation.
<br>[ =C2=A0=C2=A0=C2=A00.062122] EFI services will not be available.
<br>[ =C2=A0=C2=A0=C2=A00.065890] smp: Bringing up secondary CPUs ...
<br>[ =C2=A0=C2=A0=C2=A00.070649] Detected VIPT I-cache on CPU1
<br>[ =C2=A0=C2=A0=C2=A00.070673] GICv3: CPU1: found redistributor 1 region=
 0:0x00000000388a0000
<br>[ =C2=A0=C2=A0=C2=A00.070704] CPU1: Booted secondary processor 0x000000=
0001 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.071100] Detected VIPT I-cache on CPU2
<br>[ =C2=A0=C2=A0=C2=A00.071116] GICv3: CPU2: found redistributor 2 region=
 0:0x00000000388c0000
<br>[ =C2=A0=C2=A0=C2=A00.071134] CPU2: Booted secondary processor 0x000000=
0002 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.071499] Detected VIPT I-cache on CPU3
<br>[ =C2=A0=C2=A0=C2=A00.071514] GICv3: CPU3: found redistributor 3 region=
 0:0x00000000388e0000
<br>[ =C2=A0=C2=A0=C2=A00.071530] CPU3: Booted secondary processor 0x000000=
0003 [0x410fd034]
<br>[ =C2=A0=C2=A0=C2=A00.071581] smp: Brought up 1 node, 4 CPUs
<br>[ =C2=A0=C2=A0=C2=A00.126889] SMP: Total of 4 processors activated.
<br>[ =C2=A0=C2=A0=C2=A00.131607] CPU features: detected: 32-bit EL0 Suppor=
t
<br>[ =C2=A0=C2=A0=C2=A00.136780] CPU features: detected: CRC32 instruction=
s
<br>[ =C2=A0=C2=A0=C2=A00.148802] CPU: All CPU(s) started at EL2
<br>[ =C2=A0=C2=A0=C2=A00.150074] alternatives: patching kernel code
<br>[ =C2=A0=C2=A0=C2=A00.155989] devtmpfs: initialized
<br>[ =C2=A0=C2=A0=C2=A00.163606] clocksource: jiffies: mask: 0xffffffff ma=
x_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
<br>[ =C2=A0=C2=A0=C2=A00.170559] futex hash table entries: 1024 (order: 4,=
 65536 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.194288] pinctrl core: initialized pinctrl subsyst=
em
<br>[ =C2=A0=C2=A0=C2=A00.197376] DMI not present or invalid.
<br>[ =C2=A0=C2=A0=C2=A00.200809] NET: Registered protocol family 16
<br>[ =C2=A0=C2=A0=C2=A00.212008] DMA: preallocated 256 KiB pool for atomic=
 allocations
<br>[ =C2=A0=C2=A0=C2=A00.215305] audit: initializing netlink subsys (disab=
led)
<br>[ =C2=A0=C2=A0=C2=A00.220944] audit: type=3D2000 audit(0.160:1): state=
=3Dinitialized audit_enabled=3D0 res=3D1
<br>[ =C2=A0=C2=A0=C2=A00.228511] cpuidle: using governor menu
<br>[ =C2=A0=C2=A0=C2=A00.232941] hw-breakpoint: found 6 breakpoint and 4 w=
atchpoint registers.
<br>[ =C2=A0=C2=A0=C2=A00.240026] Serial: AMBA PL011 UART driver
<br>[ =C2=A0=C2=A0=C2=A00.243412] imx mu driver is registered.
<br>[ =C2=A0=C2=A0=C2=A00.247304] imx rpmsg driver is registered.
<br>[ =C2=A0=C2=A0=C2=A00.256464] imx8mm-pinctrl 30330000.pinctrl: initiali=
zed IMX pinctrl driver
<br>[ =C2=A0=C2=A0=C2=A00.277600] HugeTLB registered 1.00 GiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.281486] HugeTLB registered 32.0 MiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.288213] HugeTLB registered 2.00 MiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.294951] HugeTLB registered 64.0 KiB page size, pr=
e-allocated 0 pages
<br>[ =C2=A0=C2=A0=C2=A00.302495] cryptd: max_cpu_qlen set to 1000
<br>[ =C2=A0=C2=A0=C2=A00.308932] ACPI: Interpreter disabled.
<br>[ =C2=A0=C2=A0=C2=A00.310658] iommu: Default domain type: Translated =
=C2=A0<br>[ =C2=A0=C2=A0=C2=A00.314960] vgaarb: loaded
<br>[ =C2=A0=C2=A0=C2=A00.317804] SCSI subsystem initialized
<br>[ =C2=A0=C2=A0=C2=A00.321602] usbcore: registered new interface driver =
usbfs
<br>[ =C2=A0=C2=A0=C2=A00.326845] usbcore: registered new interface driver =
hub
<br>[ =C2=A0=C2=A0=C2=A00.332164] usbcore: registered new device driver usb
<br>[ =C2=A0=C2=A0=C2=A00.338385] mc: Linux media interface: v0.10
<br>[ =C2=A0=C2=A0=C2=A00.341527] videodev: Linux video capture interface: =
v2.00
<br>[ =C2=A0=C2=A0=C2=A00.347076] pps_core: LinuxPPS API ver. 1 registered
<br>[ =C2=A0=C2=A0=C2=A00.352005] pps_core: Software ver. 5.3.6 - Copyright=
 2005-2007 Rodolfo Giometti &lt;<a href=3D"mailto:giometti@linux.it" target=
=3D"_blank">giometti@linux.it</a>&gt;
<br>[ =C2=A0=C2=A0=C2=A00.361200] PTP clock support registered
<br>[ =C2=A0=C2=A0=C2=A00.365247] EDAC MC: Ver: 3.0.0
<br>[ =C2=A0=C2=A0=C2=A00.368995] No BMan portals available!
<br>[ =C2=A0=C2=A0=C2=A00.372270] QMan: Allocated lookup table at (____ptrv=
al____), entry count 65537
<br>[ =C2=A0=C2=A0=C2=A00.379649] No QMan portals available!
<br>[ =C2=A0=C2=A0=C2=A00.383534] No USDPAA memory, no &#39;fsl,usdpaa-mem&=
#39; in device-tree
<br>[ =C2=A0=C2=A0=C2=A00.389567] FPGA manager framework
<br>[ =C2=A0=C2=A0=C2=A00.392686] Advanced Linux Sound Architecture Driver =
Initialized.
<br>[ =C2=A0=C2=A0=C2=A00.399111] Bluetooth: Core ver 2.22
<br>[ =C2=A0=C2=A0=C2=A00.402332] NET: Registered protocol family 31
<br>[ =C2=A0=C2=A0=C2=A00.406784] Bluetooth: HCI device and connection mana=
ger initialized
<br>[ =C2=A0=C2=A0=C2=A00.413175] Bluetooth: HCI socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A00.418071] Bluetooth: L2CAP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A00.423152] Bluetooth: SCO socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A00.428742] clocksource: Switched to clocksource arch=
_sys_counter
<br>[ =C2=A0=C2=A0=C2=A00.434312] VFS: Disk quotas dquot_6.6.0
<br>[ =C2=A0=C2=A0=C2=A00.438149] VFS: Dquot-cache hash table entries: 512 =
(order 0, 4096 bytes)
<br>[ =C2=A0=C2=A0=C2=A00.445171] pnp: PnP ACPI: disabled
<br>[ =C2=A0=C2=A0=C2=A00.454139] thermal_sys: Registered thermal governor =
&#39;step_wise&#39;
<br>[ =C2=A0=C2=A0=C2=A00.454143] thermal_sys: Registered thermal governor =
&#39;power_allocator&#39;
<br>[ =C2=A0=C2=A0=C2=A00.457634] NET: Registered protocol family 2
<br>[ =C2=A0=C2=A0=C2=A00.468576] tcp_listen_portaddr_hash hash table entri=
es: 1024 (order: 2, 16384 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.476866] TCP established hash table entries: 16384=
 (order: 5, 131072 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.484900] TCP bind hash table entries: 16384 (order=
: 6, 262144 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.492368] TCP: Hash tables configured (established =
16384 bind 16384)
<br>[ =C2=A0=C2=A0=C2=A00.498788] UDP hash table entries: 1024 (order: 3, 3=
2768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.505483] UDP-Lite hash table entries: 1024 (order:=
 3, 32768 bytes, linear)
<br>[ =C2=A0=C2=A0=C2=A00.512778] NET: Registered protocol family 1
<br>[ =C2=A0=C2=A0=C2=A00.517326] RPC: Registered named UNIX socket transpo=
rt module.
<br>[ =C2=A0=C2=A0=C2=A00.522951] RPC: Registered udp transport module.
<br>[ =C2=A0=C2=A0=C2=A00.527670] RPC: Registered tcp transport module.
<br>[ =C2=A0=C2=A0=C2=A00.532392] RPC: Registered tcp NFSv4.1 backchannel t=
ransport module.
<br>[ =C2=A0=C2=A0=C2=A00.539245] PCI: CLS 0 bytes, default 64
<br>[ =C2=A0=C2=A0=C2=A00.543524] hw perfevents: enabled with armv8_pmuv3 P=
MU driver, 7 counters available
<br>[ =C2=A0=C2=A0=C2=A00.550924] kvm [1]: IPA Size Limit: 40 bits
<br>[ =C2=A0=C2=A0=C2=A00.555485] kvm [1]: GICv3: no GICV resource entry
<br>[ =C2=A0=C2=A0=C2=A00.559695] kvm [1]: disabling GICv2 emulation
<br>[ =C2=A0=C2=A0=C2=A00.564169] kvm [1]: GIC system register CPU interfac=
e enabled
<br>[ =C2=A0=C2=A0=C2=A00.570073] kvm [1]: vgic interrupt IRQ1
<br>[ =C2=A0=C2=A0=C2=A00.574054] kvm [1]: Hyp mode initialized successfull=
y
<br>[ =C2=A0=C2=A0=C2=A00.581948] Initialise system trusted keyrings
<br>[ =C2=A0=C2=A0=C2=A00.583683] workingset: timestamp_bits=3D44 max_order=
=3D19 bucket_order=3D0
<br>[ =C2=A0=C2=A0=C2=A00.595831] squashfs: version 4.0 (2009/01/31) Philli=
p Lougher
<br>[ =C2=A0=C2=A0=C2=A00.599436] NFS: Registering the id_resolver key type
<br>[ =C2=A0=C2=A0=C2=A00.603932] Key type id_resolver registered
<br>[ =C2=A0=C2=A0=C2=A00.608108] Key type id_legacy registered
<br>[ =C2=A0=C2=A0=C2=A00.612138] nfs4filelayout_init: NFSv4 File Layout Dr=
iver Registering...
<br>[ =C2=A0=C2=A0=C2=A00.618870] nfs4flexfilelayout_init: NFSv4 Flexfile L=
ayout Driver Registering...
<br>[ =C2=A0=C2=A0=C2=A00.626323] jffs2: version 2.2. (NAND) =EF=BF=BD=C2=
=A9 2001-2006 Red Hat, Inc.
<br>[ =C2=A0=C2=A0=C2=A00.632803] 9p: Installing v9fs 9p2000 file system su=
pport
<br>[ =C2=A0=C2=A0=C2=A00.651737] Key type asymmetric registered
<br>[ =C2=A0=C2=A0=C2=A00.652990] Asymmetric key parser &#39;x509&#39; regi=
stered
<br>[ =C2=A0=C2=A0=C2=A00.657911] Block layer SCSI generic (bsg) driver ver=
sion 0.4 loaded (major 244)
<br>[ =C2=A0=C2=A0=C2=A00.665324] io scheduler mq-deadline registered
<br>[ =C2=A0=C2=A0=C2=A00.669872] io scheduler kyber registered
<br>[ =C2=A0=C2=A0=C2=A00.678050] EINJ: ACPI disabled.
<br>[ =C2=A0=C2=A0=C2=A00.686745] imx-sdma 302c0000.dma-controller: Direct =
firmware load for imx/sdma/sdma-imx7d.bin failed with error -2
<br>[ =C2=A0=C2=A0=C2=A00.694400] imx-sdma 302c0000.dma-controller: Falling=
 back to sysfs fallback for: imx/sdma/sdma-imx7d.bin
<br>[ =C2=A0=C2=A0=C2=A00.711570] mxs-dma 33000000.dma-controller: initiali=
zed
<br>[ =C2=A0=C2=A0=C2=A00.715066] Bus freq driver module loaded
<br>[ =C2=A0=C2=A0=C2=A00.723136] Serial: 8250/16550 driver, 4 ports, IRQ s=
haring enabled
<br>[ =C2=A0=C2=A0=C2=A00.728520] 30890000.serial: ttymxc1 at MMIO 0x308900=
00 (irq =3D 34, base_baud =3D 1500000) is a IMX
<br>[ =C2=A0=C2=A0=C2=A00.735469] printk: console [ttymxc1] enabled
<br>[ =C2=A0=C2=A0=C2=A00.735469] printk: console [ttymxc1] enabled
<br>[ =C2=A0=C2=A0=C2=A00.744116] printk: bootconsole [ec_imx6q0] disabled
<br>[ =C2=A0=C2=A0=C2=A00.744116] printk: bootconsole [ec_imx6q0] disabled
<br>[ =C2=A0=C2=A0=C2=A00.756050] imx-drm soc@0:bus@32c00000:display-subsys=
tem: no available port
<br>[ =C2=A0=C2=A0=C2=A00.774382] loop: module loaded
<br>[ =C2=A0=C2=A0=C2=A00.779429] imx ahci driver is registered.
<br>[ =C2=A0=C2=A0=C2=A00.786201] spi_imx 30830000.spi: probed
<br>[ =C2=A0=C2=A0=C2=A00.791041] spi-nor spi3.0: n25q256ax1 (32768 Kbytes)
<br>[ =C2=A0=C2=A0=C2=A00.796146] 7 fixed-partitions partitions found on MT=
D device 30bb0000.spi
<br>[ =C2=A0=C2=A0=C2=A00.803027] Creating 7 MTD partitions on &quot;30bb00=
00.spi&quot;:
<br>[ =C2=A0=C2=A0=C2=A00.808347] 0x000000000000-0x000000200000 : &quot;U-B=
oot&quot;
<br>[ =C2=A0=C2=A0=C2=A00.817392] 0x000000200000-0x000000202000 : &quot;U-B=
oot Env&quot;
<br>[ =C2=A0=C2=A0=C2=A00.822719] mtd: partition &quot;U-Boot Env&quot; doe=
sn&#39;t end on an erase/write block -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.833337] 0x000000202000-0x000000204000 : &quot;U-B=
oot Env 2&quot;
<br>[ =C2=A0=C2=A0=C2=A00.838833] mtd: partition &quot;U-Boot Env 2&quot; d=
oesn&#39;t start on an erase/write block boundary -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.853342] 0x000000204000-0x000000205000 : &quot;boo=
t.scr&quot;
<br>[ =C2=A0=C2=A0=C2=A00.858491] mtd: partition &quot;boot.scr&quot; doesn=
&#39;t start on an erase/write block boundary -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.869325] 0x000000205000-0x000000210000 : &quot;Dev=
ice Tree Blob&quot;
<br>[ =C2=A0=C2=A0=C2=A00.875169] mtd: partition &quot;Device Tree Blob&quo=
t; doesn&#39;t start on an erase/write block boundary -- force read-only
<br>[ =C2=A0=C2=A0=C2=A00.889335] 0x000000210000-0x000000e10000 : &quot;Com=
pressed Kernel&quot;
<br>[ =C2=A0=C2=A0=C2=A00.897333] 0x000000e10000-0x000002000000 : &quot;Squ=
ashFS&quot;
<br>[ =C2=A0=C2=A0=C2=A00.906579] libphy: Fixed MDIO Bus: probed
<br>[ =C2=A0=C2=A0=C2=A00.911369] tun: Universal TUN/TAP device driver, 1.6
<br>[ =C2=A0=C2=A0=C2=A00.917120] thunder_xcv, ver 1.0
<br>[ =C2=A0=C2=A0=C2=A00.920379] thunder_bgx, ver 1.0
<br>[ =C2=A0=C2=A0=C2=A00.923645] nicpf, ver 1.0
<br>[ =C2=A0=C2=A0=C2=A00.927568] pps pps0: new PPS source ptp0
<br>[ =C2=A0=C2=A0=C2=A00.943981] libphy: fec_enet_mii_bus: probed
<br>[ =C2=A0=C2=A0=C2=A00.948772] fec 30be0000.ethernet eth0: registered PH=
C device 0
<br>[ =C2=A0=C2=A0=C2=A00.955242] Freescale FM module, FMD API version 21.1=
.0
<br>[ =C2=A0=C2=A0=C2=A00.960688] Freescale FM Ports module
<br>[ =C2=A0=C2=A0=C2=A00.964357] fsl_mac: fsl_mac: FSL FMan MAC API based =
driver
<br>[ =C2=A0=C2=A0=C2=A00.970062] fsl_dpa: FSL DPAA Ethernet driver
<br>[ =C2=A0=C2=A0=C2=A00.974514] fsl_advanced: FSL DPAA Advanced drivers:
<br>[ =C2=A0=C2=A0=C2=A00.979483] fsl_proxy: FSL DPAA Proxy initialization =
driver
<br>[ =C2=A0=C2=A0=C2=A00.985142] fsl_oh: FSL FMan Offline Parsing port dri=
ver
<br>[ =C2=A0=C2=A0=C2=A00.991222] hclge is initializing
<br>[ =C2=A0=C2=A0=C2=A00.994545] hns3: Hisilicon Ethernet Network Driver f=
or Hip08 Family - version
<br>[ =C2=A0=C2=A0=C2=A01.001770] hns3: Copyright (c) 2017 Huawei Corporati=
on.
<br>[ =C2=A0=C2=A0=C2=A01.007125] e1000: Intel(R) PRO/1000 Network Driver -=
 version 7.3.21-k8-NAPI
<br>[ =C2=A0=C2=A0=C2=A01.014177] e1000: Copyright (c) 1999-2006 Intel Corp=
oration.
<br>[ =C2=A0=C2=A0=C2=A01.019958] e1000e: Intel(R) PRO/1000 Network Driver =
- 3.2.6-k
<br>[ =C2=A0=C2=A0=C2=A01.025795] e1000e: Copyright(c) 1999 - 2015 Intel Co=
rporation.
<br>[ =C2=A0=C2=A0=C2=A01.031749] igb: Intel(R) Gigabit Ethernet Network Dr=
iver - version 5.6.0-k
<br>[ =C2=A0=C2=A0=C2=A01.038714] igb: Copyright (c) 2007-2014 Intel Corpor=
ation.
<br>[ =C2=A0=C2=A0=C2=A01.044318] igbvf: Intel(R) Gigabit Virtual Function =
Network Driver - version 2.4.0-k
<br>[ =C2=A0=C2=A0=C2=A01.052151] igbvf: Copyright (c) 2009 - 2012 Intel Co=
rporation.
<br>[ =C2=A0=C2=A0=C2=A01.058209] sky2: driver version 1.30
<br>[ =C2=A0=C2=A0=C2=A01.062731] VFIO - User Level meta-driver version: 0.=
3
<br>[ =C2=A0=C2=A0=C2=A01.069490] ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host=
 Controller (EHCI) Driver
<br>[ =C2=A0=C2=A0=C2=A01.076027] ehci-pci: EHCI PCI platform driver
<br>[ =C2=A0=C2=A0=C2=A01.080544] ehci-platform: EHCI generic platform driv=
er
<br>[ =C2=A0=C2=A0=C2=A01.085925] ohci_hcd: USB 1.1 &#39;Open&#39; Host Con=
troller (OHCI) Driver
<br>[ =C2=A0=C2=A0=C2=A01.092128] ohci-pci: OHCI PCI platform driver
<br>[ =C2=A0=C2=A0=C2=A01.096606] ohci-platform: OHCI generic platform driv=
er
<br>[ =C2=A0=C2=A0=C2=A01.102319] usbcore: registered new interface driver =
usb-storage
<br>[ =C2=A0=C2=A0=C2=A01.108398] usbcore: registered new interface driver =
usbserial_generic
<br>[ =C2=A0=C2=A0=C2=A01.114949] usbserial: USB Serial support registered =
for generic
<br>[ =C2=A0=C2=A0=C2=A01.120980] usbcore: registered new interface driver =
ftdi_sio
<br>[ =C2=A0=C2=A0=C2=A01.126742] usbserial: USB Serial support registered =
for FTDI USB Serial Device
<br>[ =C2=A0=C2=A0=C2=A01.134076] usbcore: registered new interface driver =
usb_serial_simple
<br>[ =C2=A0=C2=A0=C2=A01.140618] usbserial: USB Serial support registered =
for carelink
<br>[ =C2=A0=C2=A0=C2=A01.146727] usbserial: USB Serial support registered =
for zio
<br>[ =C2=A0=C2=A0=C2=A01.152400] usbserial: USB Serial support registered =
for funsoft
<br>[ =C2=A0=C2=A0=C2=A01.158421] usbserial: USB Serial support registered =
for flashloader
<br>[ =C2=A0=C2=A0=C2=A01.164795] usbserial: USB Serial support registered =
for google
<br>[ =C2=A0=C2=A0=C2=A01.170734] usbserial: USB Serial support registered =
for libtransistor
<br>[ =C2=A0=C2=A0=C2=A01.177277] usbserial: USB Serial support registered =
for vivopay
<br>[ =C2=A0=C2=A0=C2=A01.183298] usbserial: USB Serial support registered =
for moto_modem
<br>[ =C2=A0=C2=A0=C2=A01.189581] usbserial: USB Serial support registered =
for motorola_tetra
<br>[ =C2=A0=C2=A0=C2=A01.196214] usbserial: USB Serial support registered =
for novatel_gps
<br>[ =C2=A0=C2=A0=C2=A01.202584] usbserial: USB Serial support registered =
for hp4x
<br>[ =C2=A0=C2=A0=C2=A01.208350] usbserial: USB Serial support registered =
for suunto
<br>[ =C2=A0=C2=A0=C2=A01.214287] usbserial: USB Serial support registered =
for siemens_mpi
<br>[ =C2=A0=C2=A0=C2=A01.223024] input: 30370000.snvs:snvs-powerkey as /de=
vices/platform/soc@0/soc@0:bus@30000000/30370000.snvs/30370000.snvs:snvs-po=
werkey/input/input0
<br>[ =C2=A0=C2=A0=C2=A01.238035] snvs_rtc 30370000.snvs:snvs-rtc-lp: regis=
tered as rtc0
<br>[ =C2=A0=C2=A0=C2=A01.244303] i2c /dev entries driver
<br>[ =C2=A0=C2=A0=C2=A01.252247] imx2-wdt 30280000.watchdog: timeout 60 se=
c (nowayout=3D0)
<br>[ =C2=A0=C2=A0=C2=A01.258789] Bluetooth: HCI UART driver ver 2.3
<br>[ =C2=A0=C2=A0=C2=A01.263246] Bluetooth: HCI UART protocol H4 registere=
d
<br>[ =C2=A0=C2=A0=C2=A01.268391] Bluetooth: HCI UART protocol BCSP registe=
red
<br>[ =C2=A0=C2=A0=C2=A01.273732] Bluetooth: HCI UART protocol LL registere=
d
<br>[ =C2=A0=C2=A0=C2=A01.278876] Bluetooth: HCI UART protocol ATH3K regist=
ered
<br>[ =C2=A0=C2=A0=C2=A01.284292] Bluetooth: HCI UART protocol Three-wire (=
H5) registered
<br>[ =C2=A0=C2=A0=C2=A01.290639] Bluetooth: HCI UART protocol Broadcom reg=
istered
<br>[ =C2=A0=C2=A0=C2=A01.296318] Bluetooth: HCI UART protocol QCA register=
ed
<br>[ =C2=A0=C2=A0=C2=A01.303291] sdhci: Secure Digital Host Controller Int=
erface driver
<br>[ =C2=A0=C2=A0=C2=A01.309482] sdhci: Copyright(c) Pierre Ossman
<br>[ =C2=A0=C2=A0=C2=A01.314003] Synopsys Designware Multimedia Card Inter=
face Driver
<br>[ =C2=A0=C2=A0=C2=A01.320520] sdhci-pltfm: SDHCI platform and OF driver=
 helper
<br>[ =C2=A0=C2=A0=C2=A01.326929] mmc1: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.331000] mmc2: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.366873] mmc2: SDHCI controller on 30b60000.mmc [3=
0b60000.mmc] using ADMA
<br>[ =C2=A0=C2=A0=C2=A01.376151] ledtrig-cpu: registered to indicate activ=
ity on CPUs
<br>[ =C2=A0=C2=A0=C2=A01.383270] caam 30900000.crypto: device ID =3D 0x0a1=
6040100000000 (Era 9)
<br>[ =C2=A0=C2=A0=C2=A01.390042] caam 30900000.crypto: job rings =3D 3, qi=
 =3D 0
<br>[ =C2=A0=C2=A0=C2=A01.405942] caam algorithms registered in /proc/crypt=
o
<br>[ =C2=A0=C2=A0=C2=A01.411819] caam 30900000.crypto: caam pkc algorithms=
 registered in /proc/crypto
<br>[ =C2=A0=C2=A0=C2=A01.421344] caam_jr 30901000.jr: registering rng-caam
<br>[ =C2=A0=C2=A0=C2=A01.433702] caam-snvs 30370000.caam-snvs: can&#39;t g=
et snvs clock
<br>[ =C2=A0=C2=A0=C2=A01.439583] caam-snvs 30370000.caam-snvs: violation h=
andlers armed - non-secure state
<br>[ =C2=A0=C2=A0=C2=A01.447997] usbcore: registered new interface driver =
usbhid
<br>[ =C2=A0=C2=A0=C2=A01.453577] usbhid: USB HID core driver
<br>[ =C2=A0=C2=A0=C2=A01.459387] No fsl,qman node
<br>[ =C2=A0=C2=A0=C2=A01.462287] Freescale USDPAA process driver
<br>[ =C2=A0=C2=A0=C2=A01.466475] fsl-usdpaa: no region found
<br>[ =C2=A0=C2=A0=C2=A01.470316] Freescale USDPAA process IRQ driver
<br>[ =C2=A0=C2=A0=C2=A01.478310] optee: probing for conduit method from DT=
.
<br>[ =C2=A0=C2=A0=C2=A01.483478] optee: revision 3.2 (6a22e6e8)
<br>[ =C2=A0=C2=A0=C2=A01.484788] optee: dynamic shared memory is enabled
<br>[ =C2=A0=C2=A0=C2=A01.494072] optee: initialized driver
<br>[ =C2=A0=C2=A0=C2=A01.499857] mmc2: Command Queue Engine enabled
<br>[ =C2=A0=C2=A0=C2=A01.501704] wm8524-codec audio-codec: Failed to get m=
ute line: -517
<br>[ =C2=A0=C2=A0=C2=A01.504346] mmc2: new HS400 Enhanced strobe MMC card =
at address 0001
<br>[ =C2=A0=C2=A0=C2=A01.511056] OF: /sound-bt-sco/simple-audio-card,cpu: =
could not get #sound-dai-cells for /soc@0/bus@30000000/sai@30020000
<br>[ =C2=A0=C2=A0=C2=A01.518006] mmcblk2: mmc2:0001 DG4016 7.49 GiB =C2=A0=
<br>[ =C2=A0=C2=A0=C2=A01.527812] asoc-simple-card sound-bt-sco: parse erro=
r -22
<br>[ =C2=A0=C2=A0=C2=A01.527829] asoc-simple-card: probe of sound-bt-sco f=
ailed with error -22
<br>[ =C2=A0=C2=A0=C2=A01.532474] mmcblk2boot0: mmc2:0001 DG4016 partition =
1 4.00 MiB
<br>[ =C2=A0=C2=A0=C2=A01.550725] mmcblk2boot1: mmc2:0001 DG4016 partition =
2 4.00 MiB
<br>[ =C2=A0=C2=A0=C2=A01.552076] pktgen: Packet Generator for packet perfo=
rmance testing. Version: 2.75
<br>[ =C2=A0=C2=A0=C2=A01.556808] mmcblk2gp0: mmc2:0001 DG4016 partition 4 =
3.52 GiB
<br>[ =C2=A0=C2=A0=C2=A01.570357] NET: Registered protocol family 26
<br>[ =C2=A0=C2=A0=C2=A01.570759] mmcblk2rpmb: mmc2:0001 DG4016 partition 3=
 4.00 MiB, chardev (237:0)
<br>[ =C2=A0=C2=A0=C2=A01.575300] NET: Registered protocol family 10
<br>[ =C2=A0=C2=A0=C2=A01.586931] =C2=A0mmcblk2: p1 p2
<br>[ =C2=A0=C2=A0=C2=A01.587624] Segment Routing with IPv6
<br>[ =C2=A0=C2=A0=C2=A01.593504] NET: Registered protocol family 17
<br>[ =C2=A0=C2=A0=C2=A01.598166] =C2=A0mmcblk2gp0: p1 p2
<br>[ =C2=A0=C2=A0=C2=A01.598390] Bluetooth: RFCOMM TTY layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.606144] Bluetooth: RFCOMM socket layer initialize=
d
<br>[ =C2=A0=C2=A0=C2=A01.611321] Bluetooth: RFCOMM ver 1.11
<br>[ =C2=A0=C2=A0=C2=A01.615088] Bluetooth: BNEP (Ethernet Emulation) ver =
1.3
<br>[ =C2=A0=C2=A0=C2=A01.620404] Bluetooth: BNEP filters: protocol multica=
st
<br>[ =C2=A0=C2=A0=C2=A01.625636] Bluetooth: BNEP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.630606] Bluetooth: HIDP (Human Interface Emulatio=
n) ver 1.2
<br>[ =C2=A0=C2=A0=C2=A01.636532] Bluetooth: HIDP socket layer initialized
<br>[ =C2=A0=C2=A0=C2=A01.641540] 8021q: 802.1Q VLAN Support v1.8
<br>[ =C2=A0=C2=A0=C2=A01.645750] lib80211: common routines for IEEE802.11 =
drivers
<br>[ =C2=A0=C2=A0=C2=A01.651530] 9pnet: Installing 9P2000 support
<br>[ =C2=A0=C2=A0=C2=A01.655833] tsn generic netlink module v1 init...
<br>[ =C2=A0=C2=A0=C2=A01.660613] Key type dns_resolver registered
<br>[ =C2=A0=C2=A0=C2=A01.665652] registered taskstats version 1
<br>[ =C2=A0=C2=A0=C2=A01.669778] Loading compiled-in X.509 certificates
<br>[ =C2=A0=C2=A0=C2=A01.697518] usb_phy_generic usbphynop1: usbphynop1 su=
pply vcc not found, using dummy regulator
<br>[ =C2=A0=C2=A0=C2=A01.706299] usb_phy_generic usbphynop2: usbphynop2 su=
pply vcc not found, using dummy regulator
<br>[ =C2=A0=C2=A0=C2=A01.738543] random: fast init done
<br>[ =C2=A0=C2=A0=C2=A01.743680] LDO6: supplied by regulator-dummy
<br>[ =C2=A0=C2=A0=C2=A01.748187] i2c i2c-0: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.753876] i2c i2c-1: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.759408] i2c i2c-2: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.765205] i2c i2c-3: IMX I2C adapter registered
<br>[ =C2=A0=C2=A0=C2=A01.770237] imx-cpufreq-dt imx-cpufreq-dt: cpu speed =
grade 2 mkt segment 2 supported-hw 0x4 0x4
<br>[ =C2=A0=C2=A0=C2=A01.782784] mmc1: CQHCI version 5.10
<br>[ =C2=A0=C2=A0=C2=A01.786418] sdhci-esdhc-imx 30b50000.mmc: Got CD GPIO
<br>[ =C2=A0=C2=A0=C2=A01.821457] mmc1: SDHCI controller on 30b50000.mmc [3=
0b50000.mmc] using ADMA
<br>[ =C2=A0=C2=A0=C2=A01.830140] imx8mm-pinctrl 30330000.pinctrl: pin=20
MX8MM_IOMUXC_I2C4_SDA already requested by 30a50000.i2c; cannot claim=20
for audio-codec
<br>[ =C2=A0=C2=A0=C2=A01.842264] imx8mm-pinctrl 30330000.pinctrl: pin-140 =
(audio-codec) status -22
<br>[ =C2=A0=C2=A0=C2=A01.849408] imx8mm-pinctrl 30330000.pinctrl: could no=
t request=20
pin 140 (MX8MM_IOMUXC_I2C4_SDA) from group gpiowlfgrp =C2=A0on device=20
30330000.pinctrl
<br>[ =C2=A0=C2=A0=C2=A01.862367] wm8524-codec audio-codec: Error applying =
setting, reverse things back
<br>[ =C2=A0=C2=A0=C2=A01.869868] wm8524-codec: probe of audio-codec failed=
 with error -22
<br>[ =C2=A0=C2=A0=C2=A01.880540] input: bd718xx-pwrkey as /devices/platfor=
m/soc@0/soc@0:bus@30800000/30a20000.i2c/i2c-0/0-004b/gpio-keys.1.auto/input=
/input1
<br>[ =C2=A0=C2=A0=C2=A01.894274] snvs_rtc 30370000.snvs:snvs-rtc-lp: setti=
ng system clock to 2021-05-14T14:03:42 UTC (1621001022)
<br>[ =C2=A0=C2=A0=C2=A01.904487] cfg80211: Loading compiled-in X.509 certi=
ficates for regulatory database
<br>[ =C2=A0=C2=A0=C2=A01.916959] cfg80211: Loaded X.509 cert &#39;sforshee=
: 00b28ddf47aef9cea7&#39;
<br>[ =C2=A0=C2=A0=C2=A01.923554] platform regulatory.0: Direct firmware lo=
ad for regulatory.db failed with error -2
<br>[ =C2=A0=C2=A0=C2=A01.927624] ALSA device list:
<br>[ =C2=A0=C2=A0=C2=A01.932172] platform regulatory.0: Falling back to sy=
sfs fallback for: regulatory.db
<br>[ =C2=A0=C2=A0=C2=A01.942907] =C2=A0=C2=A0No soundcards found.
<br>[ =C2=A0=C2=A0=C2=A01.956545] EXT4-fs (mmcblk2p2): mounted filesystem w=
ith ordered data mode. Opts: (null)
<br>[ =C2=A0=C2=A0=C2=A01.964702] VFS: Mounted root (ext4 filesystem) reado=
nly on device 179:2.
<br>[ =C2=A0=C2=A0=C2=A01.972100] devtmpfs: mounted
<br>[ =C2=A0=C2=A0=C2=A01.976098] Freeing unused kernel memory: 2880K
<br>[ =C2=A0=C2=A0=C2=A01.980716] Run /sbin/init as init process
<br>[ =C2=A0=C2=A0=C2=A02.060538] audit: type=3D1404 audit(1621001022.660:2=
): enforcing=3D1
 old_enforcing=3D0 auid=3D4294967295 ses=3D4294967295 enabled=3D1 old-enabl=
ed=3D1=20
lsm=3Dselinux res=3D1
<br>[ =C2=A0=C2=A0=C2=A02.197726] SELinux: =C2=A0Permission watch in class =
filesystem not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.205251] SELinux: =C2=A0Permission watch in class =
file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.212214] SELinux: =C2=A0Permission watch_mount in =
class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.219712] SELinux: =C2=A0Permission watch_sb in cla=
ss file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.226936] SELinux: =C2=A0Permission watch_with_perm=
 in class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.234775] SELinux: =C2=A0Permission watch_reads in =
class file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.242268] SELinux: =C2=A0Permission watch in class =
dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.249153] SELinux: =C2=A0Permission watch_mount in =
class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.256550] SELinux: =C2=A0Permission watch_sb in cla=
ss dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.263695] SELinux: =C2=A0Permission watch_with_perm=
 in class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.271439] SELinux: =C2=A0Permission watch_reads in =
class dir not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.278853] SELinux: =C2=A0Permission watch in class =
lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.286164] SELinux: =C2=A0Permission watch_mount in =
class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.294003] SELinux: =C2=A0Permission watch_sb in cla=
ss lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.301582] SELinux: =C2=A0Permission watch_with_perm=
 in class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.309769] SELinux: =C2=A0Permission watch_reads in =
class lnk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.317607] SELinux: =C2=A0Permission watch in class =
chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.324925] SELinux: =C2=A0Permission watch_mount in =
class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.332761] SELinux: =C2=A0Permission watch_sb in cla=
ss chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.340344] SELinux: =C2=A0Permission watch_with_perm=
 in class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.348522] SELinux: =C2=A0Permission watch_reads in =
class chr_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.356366] SELinux: =C2=A0Permission watch in class =
blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.363677] SELinux: =C2=A0Permission watch_mount in =
class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.371516] SELinux: =C2=A0Permission watch_sb in cla=
ss blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.379086] SELinux: =C2=A0Permission watch_with_perm=
 in class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.387272] SELinux: =C2=A0Permission watch_reads in =
class blk_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.395110] SELinux: =C2=A0Permission watch in class =
sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.402506] SELinux: =C2=A0Permission watch_mount in =
class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.410429] SELinux: =C2=A0Permission watch_sb in cla=
ss sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.418085] SELinux: =C2=A0Permission watch_with_perm=
 in class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.426350] SELinux: =C2=A0Permission watch_reads in =
class sock_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.434282] SELinux: =C2=A0Permission watch in class =
fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.441679] SELinux: =C2=A0Permission watch_mount in =
class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.449605] SELinux: =C2=A0Permission watch_sb in cla=
ss fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.457262] SELinux: =C2=A0Permission watch_with_perm=
 in class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.465535] SELinux: =C2=A0Permission watch_reads in =
class fifo_file not defined in policy.
<br>[ =C2=A0=C2=A0=C2=A02.473773] SELinux: the above unknown classes and pe=
rmissions will be allowed
<br>[ =C2=A0=C2=A0=C2=A02.481016] SELinux: =C2=A0policy capability network_=
peer_controls=3D1
<br>[ =C2=A0=C2=A0=C2=A02.486938] SELinux: =C2=A0policy capability open_per=
ms=3D1
<br>[ =C2=A0=C2=A0=C2=A02.491912] SELinux: =C2=A0policy capability extended=
_socket_class=3D1
<br>[ =C2=A0=C2=A0=C2=A02.497833] SELinux: =C2=A0policy capability always_c=
heck_network=3D0
<br>[ =C2=A0=C2=A0=C2=A02.503675] SELinux: =C2=A0policy capability cgroup_s=
eclabel=3D1
<br>[ =C2=A0=C2=A0=C2=A02.509074] SELinux: =C2=A0policy capability nnp_nosu=
id_transition=3D1
<br>[ =C2=A0=C2=A0=C2=A02.551979] audit: type=3D1403 audit(1621001023.152:3=
): auid=3D4294967295 ses=3D4294967295 lsm=3Dselinux res=3D1
<br>[ =C2=A0=C2=A0=C2=A02.558891] systemd[1]: Successfully loaded SELinux p=
olicy in 499.797ms.
<br>[ =C2=A0=C2=A0=C2=A02.663812] systemd[1]: Relabelled /dev, /dev/shm, /r=
un, /sys/fs/cgroup in 67.655ms.
<br>[ =C2=A0=C2=A0=C2=A02.682911] systemd[1]: systemd 244.5+ running in sys=
tem mode.=20
(+PAM +AUDIT +SELINUX +IMA -APPARMOR -SMACK +SYSVINIT +UTMP=20
-LIBCRYPTSETUP -GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS=20
+KMOD -IDN2 -IDN -PCRE2 default-hierarchy=3Dhybrid)
<br>[ =C2=A0=C2=A0=C2=A02.704939] systemd[1]: Detected architecture arm64.
<br>
<br>Welcome to <span style=3D"font-weight:bold;color:rgb(0,0,0);background-=
color:rgb(255,255,255)">Poky (Yocto Project Reference Distro) 3.1.7 (dunfel=
l)</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>!
</span><br>
<br>[ =C2=A0=C2=A0=C2=A02.761410] systemd[1]: Set hostname to &lt;imx8mmevk=
&gt;.
<br>[ =C2=A0=C2=A0=C2=A02.963225] random: systemd: uninitialized urandom re=
ad (16 bytes read)
<br>[ =C2=A0=C2=A0=C2=A02.970024] systemd[1]: system-getty.slice: unit conf=
igures an IP
 firewall, but the local system does not support BPF/cgroup firewalling.
<br>[ =C2=A0=C2=A0=C2=A02.982383] systemd[1]: (This warning is only shown f=
or the first unit using IP firewalling.)
<br>[ =C2=A0=C2=A0=C2=A02.993074] systemd[1]: Created slice system-getty.sl=
ice.
<br>[ =C2=A0OK =C2=A0] Created slice <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">system-getty.slice</span><spa=
n style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.013209] random: systemd: uninitialized ura=
ndom read (16 bytes read)
<br>[ =C2=A0=C2=A0=C2=A03.021079] systemd[1]: Created slice system-serial\x=
2dgetty.slice.
<br>[ =C2=A0OK =C2=A0] Created slice <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">system-serial\x2dgetty.slice<=
/span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.040889] random: systemd: uninitialized ura=
ndom read (16 bytes read)
<br>[ =C2=A0=C2=A0=C2=A03.049063] systemd[1]: Created slice User and Sessio=
n Slice.
<br>[ =C2=A0OK =C2=A0] Created slice <span style=3D"font-weight:bold;color:=
rgb(0,0,0);background-color:rgb(255,255,255)">User and Session Slice</span>=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.073555] systemd[1]: Started Dispatch Passw=
ord Requests to Console Directory Watch.
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Dispatch Password =EF=BF=BD=E2=80=
=A6ts to Console Directory Watch</span><span style=3D"color:rgb(0,0,0);back=
ground-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.097478] systemd[1]: Started Forward Passwo=
rd Requests to Wall Directory Watch.
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Forward Password R=EF=BF=BD=EF=BF=
=BD=E2=80=A6uests to Wall Directory Watch</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.120999] systemd[1]: Reached target Paths.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Paths</span><span style=3D"c=
olor:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.140900] systemd[1]: Reached target Remote =
File Systems.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Remote File Systems</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.165590] systemd[1]: Reached target Slices.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Slices</span><span style=3D"=
color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.185866] systemd[1]: Reached target Swap.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Swap</span><span style=3D"co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.210920] systemd[1]: Listening on RPCbind S=
erver Activation Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">RPCbind Server Activation Sock=
et</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>[ =C2=A0=C2=A0=C2=A03.232948] systemd[1]: Reached target RPC Por=
t Mapper.
<br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">RPC Port Mapper</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.257214] systemd[1]: Listening on Syslog So=
cket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Syslog Socket</span><span styl=
e=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.277824] systemd[1]: Listening on initctl C=
ompatibility Named Pipe.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">initctl Compatibility Named Pi=
pe</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>[ =C2=A0=C2=A0=C2=A03.303340] systemd[1]: systemd-journald-audit=
.socket: Failed to create listening socket (audit 1): Operation not permitt=
ed
<br>[ =C2=A0=C2=A0=C2=A03.303603] audit: type=3D1400 audit(1621001023.904:4=
): avc:=20
=C2=A0denied =C2=A0{ audit_read } for =C2=A0pid=3D1 comm=3D&quot;systemd&qu=
ot; capability=3D37=20
=C2=A0scontext=3Dsystem_u:system_r:kernel_t:s0 tcontext=3Dsystem_u:system_r=
:kernel_t:s0 tclass=3Dcapability2 permissive=3D0
<br>[ =C2=A0=C2=A0=C2=A03.314517] systemd[1]: systemd-journald-audit.socket=
: Failed to listen on sockets: Operation not permitted
<br>[ =C2=A0=C2=A0=C2=A03.314663] systemd[1]: systemd-journald-audit.socket=
: Failed with result &#39;resources&#39;.
<br>[ =C2=A0=C2=A0=C2=A03.353186] systemd[1]: Failed to listen on Journal A=
udit Socket.
<br>[<span style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(=
255,255,255)">FAILED</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">] Failed to listen on </span><span style=3D"font-weight:=
bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Journal Audit Sock=
et</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"=
>.
</span><br>See &#39;systemctl status systemd-journald-audit.socket&#39; for=
 details.
<br>[ =C2=A0=C2=A0=C2=A03.389680] systemd[1]: Listening on Journal Socket (=
/dev/log).
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Journal Socket (/dev/log)</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.414416] systemd[1]: Listening on Journal S=
ocket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Journal Socket</span><span sty=
le=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.434353] systemd[1]: Listening on Network S=
ervice Netlink Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">Network Service Netlink Socket=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.459379] systemd[1]: Listening on udev Cont=
rol Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">udev Control Socket</span><spa=
n style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.481748] systemd[1]: Listening on udev Kern=
el Socket.
<br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;color:r=
gb(0,0,0);background-color:rgb(255,255,255)">udev Kernel Socket</span><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.509857] systemd[1]: Mounting Huge Pages Fi=
le System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Hu=
ge Pages File System</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.533188] systemd[1]: Mounting POSIX Message=
 Queue File System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">PO=
SIX Message Queue File System</span><span style=3D"color:rgb(0,0,0);backgro=
und-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.557152] systemd[1]: Mounting Kernel Debug =
File System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ke=
rnel Debug File System</span><span style=3D"color:rgb(0,0,0);background-col=
or:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.581924] systemd[1]: Mounting Temporary Dir=
ectory (/tmp)...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Te=
mporary Directory (/tmp)</span><span style=3D"color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.605283] systemd[1]: Starting Create list o=
f static device nodes for the current kernel...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Cr=
eate list of st=EF=BF=BD=EF=BF=BD=E2=80=A6odes for the current kernel</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.636385] systemd[1]: Starting Start psplash=
 boot splash screen...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">St=
art psplash boot splash screen</span><span style=3D"color:rgb(0,0,0);backgr=
ound-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.660189] systemd[1]: Starting RPC Bind...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">RP=
C Bind</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.684232] systemd[1]: Starting SELinux autor=
elabel service loading...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">SE=
Linux autorelabel service loading</span><span style=3D"color:rgb(0,0,0);bac=
kground-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.708354] systemd[1]: Starting SELinux init =
for /dev service loading...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">SE=
Linux init for /dev service loading</span><span style=3D"color:rgb(0,0,0);b=
ackground-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.740312] systemd[1]: Starting File System C=
heck on Root Device...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Fi=
le System Check on Root Device</span><span style=3D"color:rgb(0,0,0);backgr=
ound-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.770209] systemd[1]: Starting Journal Servi=
ce...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Jo=
urnal Servi[ =C2=A0=C2=A0=C2=A03.777145] systemd[1]: Condition check result=
ed in Load Kernel Modules being skipped.</span><span style=3D"color:rgb(0,0=
,0);background-color:rgb(255,255,255)">
</span><br><span style=3D"font-weight:bold;color:rgb(0,0,0);background-colo=
r:rgb(255,255,255)">ce</span><span style=3D"color:rgb(0,0,0);background-col=
or:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.787527] systemd[1]: Condition check result=
ed in FUSE Control File System being skipped.
<br>[ =C2=A0=C2=A0=C2=A03.801674] systemd[1]: Mounting Kernel Configuration=
 File System...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ke=
rnel Configuration File System</span><span style=3D"color:rgb(0,0,0);backgr=
ound-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.813958] systemd[1]: Starting Apply Kernel =
Variables...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Ap=
ply Kernel Variables</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.824163] systemd[1]: Starting udev Coldplug=
 all Devices...
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">ud=
ev Coldplug all Devices</span><span style=3D"color:rgb(0,0,0);background-co=
lor:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A03.842788] systemd[1]: Started RPC Bind.
<br>[ =C2=A0OK =C2=A0] [ =C2=A0=C2=A0=C2=A03.848205] systemd[1]: Mounted Hu=
ge Pages File System.
<br>Started <span style=3D"font-weight:bold;color:rgb(0,0,0);background-col=
or:rgb(255,255,255)">RPC Bind</span><span style=3D"color:rgb(0,0,0);backgro=
und-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A03.855211] systemd[1]: Started Journal Servic=
e.
<br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Huge Pages File System</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Journal Service</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">POSIX Message Queue File Sys=
tem</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Kernel Debug File System</sp=
an><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Temporary Directory (/tmp)</=
span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create list of sta=EF=BF=BD=
=EF=BF=BD=E2=80=A6 nodes for the current kernel</span><span style=3D"color:=
rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[<span style=3D"font-weight:bold;color:rgb(0,0,0);background-col=
or:rgb(255,255,255)">FAILED</span><span style=3D"color:rgb(0,0,0);backgroun=
d-color:rgb(255,255,255)">] Failed to start </span><span style=3D"font-weig=
ht:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Start psplash b=
oot splash screen</span><span style=3D"color:rgb(0,0,0);background-color:rg=
b(255,255,255)">.
</span><br>See &#39;systemctl status psplash-start.service&#39; for details=
.
<br>[<span style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(=
255,255,255)">DEPEND</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">] Dependency failed for </span><span style=3D"font-weigh=
t:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Star=EF=BF=BD=EF=
=BF=BD=E2=80=A6progress communication helper</span><span style=3D"color:rgb=
(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">SELinux autorelabel service =
loading</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,=
255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">SELinux init for /dev servic=
e loading</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">File System Check on Root De=
vice</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)">.
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Kernel Configuration File Sy=
stem</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255=
)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Apply Kernel Variables</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Remount Root and Kernel File Systems</span><span style=3D"color:rgb(0,0,=
0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A04.135040] EXT4-fs (mmcblk2p2): re-mounted. O=
pts: (null)
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Remount Root and Kernel File System=
s</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">=
.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Flush Journal to Persistent Storage</span><span style=3D"color:rgb(0,0,0=
);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A04.176222] systemd-journald[287]: Received cl=
ient request to flush runtime journal.
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Cr=
eate Static Device Nodes in /dev</span><span style=3D"color:rgb(0,0,0);back=
ground-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Flush Journal to Persistent =
Storage</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,=
255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create Static Device Nodes i=
n /dev</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Local File Systems (P=
re)</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Mounting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">/var/volatile</span><span style=3D"color:rgb(0,0,0);background-color:rgb=
(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">udev Kernel Device Manager</span><span style=3D"color:rgb(0,0,0);backgro=
und-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Mounted <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">/var/volatile</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">udev Coldplug all Devices</s=
pan><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Load/Save Random Seed</span><span style=3D"color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Local File Systems</s=
pan><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">SELinux init service loading</span><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Create Volatile Files and Directories</span><span style=3D"color:rgb(0,0=
,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">udev Kernel Device Manager</=
span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">SELinux init service loading=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Service</span><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Create Volatile Files and Di=
rectories</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Time Synchronization</span><span style=3D"color:rgb(0,0,0);backg=
round-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Update UTMP about System Boot/Shutdown</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Service</span><span =
style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Network Name Resolution</span><span style=3D"color:rgb(0,0,0);background=
-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Update UTMP about System Boo=
t/Shutdown</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,2=
55,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Network Time Synchronization=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Initialization=
</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Daily Cleanup of Temporary D=
irectories</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,2=
55,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Time Set</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">System Time Synchroni=
zed</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Timers</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;=
color:rgb(0,0,0);background-color:rgb(255,255,255)">Avahi mDNS/DNS-SD Stack=
 Activation Socket</span><span style=3D"color:rgb(0,0,0);background-color:r=
gb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Listening on <span style=3D"font-weight:bold;=
color:rgb(0,0,0);background-color:rgb(255,255,255)">D-Bus System Message Bu=
s Socket</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Sockets</span><span s=
tyle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Basic System</span><s=
pan style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Kernel Logging Service</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">System Logging Service</span=
><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">D-Bus System Message Bus</sp=
an><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A04.923342] audit: type=3D1400 audit(162100102=
5.524:5): avc:
 =C2=A0denied =C2=A0{ module_load } for =C2=A0pid=3D312 comm=3D&quot;system=
d-udevd&quot;=20
path=3D&quot;/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/cr=
ct10dif-ce.ko&quot; dev=3D&quot;mmcblk2p2&quot; ino=3D577 scontext=3Dsystem=
_u:system_r:0
<br>[ =C2=A0=C2=A0=C2=A04.960809] audit: type=3D1400 audit(1621001025.524:6=
): avc:=20
=C2=A0denied =C2=A0{ module_load } for =C2=A0pid=3D307 comm=3D&quot;systemd=
-udevd&quot;=20
path=3D&quot;/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/cr=
ct10dif-ce.ko&quot; dev=3D&quot;mmcblk2p2&quot; ino=3D577 scontext=3Dsystem=
_u:system_r:0
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Te=
lephony service</span><span style=3D"color:rgb(0,0,0);background-color:rgb(=
255,255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A04.996048] audit: type=3D1400 audit(162100102=
5.524:7): avc:
 =C2=A0denied =C2=A0{ module_load } for =C2=A0pid=3D318 comm=3D&quot;system=
d-udevd&quot;=20
path=3D&quot;/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/cr=
ct10dif-ce.ko&quot; dev=3D&quot;mmcblk2p2&quot; ino=3D577 scontext=3Dsystem=
_u:system_r:0
<br>[ =C2=A0=C2=A0=C2=A05.032350] audit: type=3D1400 audit(1621001025.524:8=
): avc:=20
=C2=A0denied =C2=A0{ module_load } for =C2=A0pid=3D319 comm=3D&quot;systemd=
-udevd&quot;=20
path=3D&quot;/lib/modules/5.4.114+gf9a9b58ef7cc/kernel/arch/arm64/crypto/cr=
ct10dif-ce.ko&quot; dev=3D&quot;mmcblk2p2&quot; ino=3D577 scontext=3Dsystem=
_u:system_r:0
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span style=
=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255)">Lo=
gin Service</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,=
255,255)">...
</span><br>[ =C2=A0=C2=A0=C2=A05.072228] Generic PHY fixed-0:00: attached P=
HY driver [Generic PHY] (mii_bus:phy_addr=3Dfixed-0:00, irq=3DPOLL)
<br>[ =C2=A0=C2=A0=C2=A05.088344] fec 30be0000.ethernet eth0: Link is Up - =
1Gbps/Full - flow control off
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Network Name Resolution</span><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.109578] IPv6: ADDRCONF(NETDEV_CHANGE): eth=
0: link becomes ready
<br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color:rgb(0,=
0,0);background-color:rgb(255,255,255)">Telephony service</span><span style=
=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Login Service</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Network</span><span s=
tyle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Host and Network Name=
 Lookups</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Avahi mDNS/DNS-SD Stack</span><span style=3D"color:rgb(0,0,0);background=
-color:rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Hostname Service</span><span style=3D"color:rgb(0,0,0);background-color:=
rgb(255,255,255)">...
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Permit User Sessions</span><span style=3D"color:rgb(0,0,0);background-co=
lor:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Avahi mDNS/DNS-SD Stack</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Permit User Sessions</span><=
span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Getty on tty1</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Serial Getty on ttymxc1</spa=
n><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Login Prompts</span><=
span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0OK =C2=A0] Reached target <span style=3D"font-weight:bol=
d;color:rgb(0,0,0);background-color:rgb(255,255,255)">Multi-User System</sp=
an><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Starting <span =
style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(255,255,255=
)">Update UTMP about System Runlevel Changes</span><span style=3D"color:rgb=
(0,0,0);background-color:rgb(255,255,255)">...
</span><br>[ =C2=A0OK =C2=A0] Started <span style=3D"font-weight:bold;color=
:rgb(0,0,0);background-color:rgb(255,255,255)">Hostname Service</span><span=
 style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">.
</span><br>[ =C2=A0=C2=A0=C2=A05.644863] audit: type=3D1107 audit(162100102=
6.231:9):=20
pid=3D1 uid=3D0 auid=3D4294967295 ses=3D4294967295=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ s=
tatus } for auid=3Dn/a uid=3D0 gid=3D0 path=3D&quot;/lib/systemd/system/gra=
phical.target&quot; cmdline=3D&quot;&quot; scontext=3Ds0
<br>[ =C2=A0=C2=A0=C2=A05.644863] =C2=A0exe=3D&quot;/lib/systemd/systemd&qu=
ot; sauid=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>[<span style=3D"font-weight:bold;color:rgb(0,0,0);background-color:rgb(=
255,255,255)">FAILED</span><span style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,255)">] Failed to start </span><span style=3D"font-weight:bold=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">Update UTM=EF=BF=BD=E2=
=80=A6about System Runlevel Changes</span><span style=3D"color:rgb(0,0,0);b=
ackground-color:rgb(255,255,255)">.
</span><br>See &#39;systemctl status systemd-update-utmp-runlevel.service&#=
39; for details.
<br>
<br>Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1
<br>
<br>imx8mmevk login: [ =C2=A0=C2=A013.913709] random: crng init done
<br>[ =C2=A0=C2=A013.917116] random: 7 urandom warning(s) missed due to rat=
elimiting
<br>[ =C2=A0=C2=A034.240165] WLAN_EN: disabling
<br>[ =C2=A0=C2=A034.243228] VSD_3V3: disabling
<br>[ =C2=A0=C2=A062.907654] cfg80211: failed to load regulatory.db
<br>[ =C2=A0=C2=A062.907942] imx-sdma 302c0000.dma-controller: external fir=
mware not found, using ROM firmware
<br>[ =C2=A0=C2=A062.910414] imx-sdma 302b0000.dma-controller: external fir=
mware not found, using ROM firmware
<br>[ =C2=A0=C2=A062.933352] imx-sdma 30bd0000.dma-controller: loaded firmw=
are 4.5
<br>
<br>imx8mmevk login: root
<br>[ =C2=A0=C2=A084.724596] audit: type=3D1107 audit(1621001104.928:10): p=
id=3D1=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ start } for auid=3Dn/a uid=3D0 gi=
d=3D0 path=3D&quot;/lib/systemd/system/user@.service&quot; cmdline=3D&quot;=
/lib/systemd/sy0
<br>[ =C2=A0=C2=A084.724596] =C2=A0exe=3D&quot;/lib/systemd/systemd&quot; s=
auid=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>Cannot execute /bin/sh: No such f[ =C2=A0=C2=A084.764677] audit: type=
=3D1107=20
audit(1621001104.932:11): pid=3D1 uid=3D0 auid=3D4294967295 ses=3D429496729=
5=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ s=
tart } for auid=3Dn/a uid=3D0 gid=3D0 path=3D&quot;/run/systemd/transient/s=
es0
<br>[ =C2=A0=C2=A084.764677] =C2=A0exe=3D&quot;/lib/systemd/systemd&quot; s=
auid=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>[ =C2=A0=C2=A084.808459] audit: type=3D1400 audit(1621001104.932:12): a=
vc:=20
=C2=A0denied =C2=A0{ transition } for =C2=A0pid=3D374 comm=3D&quot;login&qu=
ot;=20
path=3D&quot;/usr/lib/busybox/bin/sh&quot; dev=3D&quot;mmcblk2p2&quot; ino=
=3D1921=20
scontext=3Dsystem_u:system_r:kernel_t:s0 tcontext=3Droot:sysadm_r:sysadm_t:=
s0 tclass=3Dproce0
<br>
<br>Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1
<br>
<br>imx8mmevk login: [ =C2=A0=C2=A094.988451] audit: type=3D1107=20
audit(1621001115.197:13): pid=3D1 uid=3D0 auid=3D4294967295 ses=3D429496729=
5=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ s=
top } for auid=3Dn/a uid=3D0 gid=3D0 path=3D&quot;/lib/systemd/system/user@=
.service&quot; cmdline=3D0
<br>[ =C2=A0=C2=A094.988451] =C2=A0exe=3D&quot;/lib/systemd/systemd&quot; s=
auid=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>
<br>imx8mmevk login: root
<br>Last login: Fri May 14 14:05:04 UTC 2021 on ttymxc1
<br>[ =C2=A0102.258579] audit: type=3D1107 audit(1621001122.465:14): pid=3D=
1=20
uid=3D0 auid=3D4294967295 ses=3D4294967295 subj=3Dsystem_u:system_r:kernel_=
t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ start } for auid=3Dn/a uid=3D0 gi=
d=3D0 path=3D&quot;/lib/systemd/system/user@.service&quot; cmdline=3D&quot;=
/lib/systemd/sy0
<br>[ =C2=A0102.258579] =C2=A0exe=3D&quot;/lib/systemd/systemd&quot; sauid=
=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>Cannot execute /bin/sh: No such f[ =C2=A0102.298664] audit: type=3D1107=
=20
audit(1621001122.481:15): pid=3D1 uid=3D0 auid=3D4294967295 ses=3D429496729=
5=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ s=
tart } for auid=3Dn/a uid=3D0 gid=3D0 path=3D&quot;/run/systemd/transient/s=
es0
<br>[ =C2=A0102.298664] =C2=A0exe=3D&quot;/lib/systemd/systemd&quot; sauid=
=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>[ =C2=A0102.342430] audit: type=3D1400 audit(1621001122.485:16): avc:=
=20
=C2=A0denied =C2=A0{ transition } for =C2=A0pid=3D379 comm=3D&quot;login&qu=
ot;=20
path=3D&quot;/usr/lib/busybox/bin/sh&quot; dev=3D&quot;mmcblk2p2&quot; ino=
=3D1921=20
scontext=3Dsystem_u:system_r:kernel_t:s0 tcontext=3Droot:sysadm_r:sysadm_t:=
s0 tclass=3Dproce0
<br>
<br>Poky (Yocto Project Reference Distro) 3.1.7 imx8mmevk ttymxc1
<br>
<br>imx8mmevk login: [ =C2=A0112.488345] audit: type=3D1107=20
audit(1621001132.697:17): pid=3D1 uid=3D0 auid=3D4294967295 ses=3D429496729=
5=20
subj=3Dsystem_u:system_r:kernel_t:s0 msg=3D&#39;avc: =C2=A0denied =C2=A0{ s=
top } for auid=3Dn/a uid=3D0 gid=3D0 path=3D&quot;/lib/systemd/system/user@=
.service&quot; cmdline=3D0
<br>[ =C2=A0112.488345] =C2=A0exe=3D&quot;/lib/systemd/systemd&quot; sauid=
=3D0 hostname=3D? addr=3D? terminal=3D?&#39;
<br>
<br>imx8mmevk login:<br></span></span></div><div><br></div><div> </div></fo=
nt></div></div></div>

--00000000000045fcff05c2690f6b--
