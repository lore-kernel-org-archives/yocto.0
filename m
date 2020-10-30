Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web12.10372.1604044706894236117
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Oct 2020 00:58:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=daeY0xJi;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.170, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f170.google.com with SMTP id t13so5855231ljk.12
        for <yocto@lists.yoctoproject.org>; Fri, 30 Oct 2020 00:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Q++CcPwDmHIKroPRKMrmKg8604AiBpPNvGov8IXVZFM=;
        b=daeY0xJimeNcO8awr3PwmE940NMJZtdUwYMyE0gJ2BKyZOq3j1eOrdSGcvKN248Qn6
         kqRpMv1K5ilQdBHgKNiHIVwfDXgQojZbv5wVIiOESAp/x5DHvw5AE1q9I1w4JL/xvrSG
         gdb/BaivSFod9TqOQSpdbM9l9qfGamJctQ+uPDvCppB+qPaDKYr2Oq0sjskjaIgQtpJ4
         F6VmkGpnKQ9+MGJyDuiOsvXBY2opRXWpI/iMAAw7rtaPUyOkCS68QV8zJL7aKqSGkfLl
         Y6NN/KGjUdJTbaCh0FXkcBYvd8Yh7su3e9LCG5BRVz6t2/r2yAVkFZIj/jKgxNxWkFQb
         6TLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Q++CcPwDmHIKroPRKMrmKg8604AiBpPNvGov8IXVZFM=;
        b=lIqywuEkiqsSiPD0VVTLOwaP/EV/HRmfSc+YtN4M0zHMyoChGoZ4hzk+ClGRJhTR67
         ONtqneeduI0GOaIeRAmuobLTA7iLjAf72GBTi8uLJfTYZ7LImbbUN1F2kMgLmkSjubZl
         AuuY9ovIR9L2sJcpJgr3UhT2l5qsqyz5ZPQJrPFvIEGc0gsZKj9gui3oFnTGsLYH0Xt+
         xaYelowGDpGgenC+GgpT/wZ+PJBqog3PiCAjCyY5Ys4z6HWtbzsmy0JnGz7q6mZGli1y
         ViFtT3ZbWj7EHLWn5+CTnIBLegkp2pnX/cD/rKQYG89u86oqo4h2hA1zjrJjw+6+QLh2
         2RFQ==
X-Gm-Message-State: AOAM530b7gwv3GFKOpA+X2JLs+FfGj1WRQNcmQ2TlWK29pnmPkw+naIZ
	sUSwOxQxwcFFyLdPHHv29QF79x65G97gwyTaFA8Guw==
X-Google-Smtp-Source: ABdhPJx/3gRfM7/nbhX2ydHmIb18wn22Xo5+Ty5VmTgJBTPQg47xgn/eEvYO4qSrmCj2P789I0FCtw5xWx02220lxmw=
X-Received: by 2002:a2e:9652:: with SMTP id z18mr490410ljh.410.1604044705028;
 Fri, 30 Oct 2020 00:58:25 -0700 (PDT)
MIME-Version: 1.0
References: <i2fG.1604043790197452631.RWTF@lists.yoctoproject.org>
In-Reply-To: <i2fG.1604043790197452631.RWTF@lists.yoctoproject.org>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Fri, 30 Oct 2020 08:57:58 +0100
Message-ID: <CAEt6NwoxfxmB=Qhq+UuVRhfCL1nho61-+n72VrdwQK9Q4qc+xg@mail.gmail.com>
Subject: Re: [yocto] Yocto OS Creation on Linux Ubuntu 16.04 LTS #yocto #yocto
To: katakam.sujan@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just given the links a quick try here, it seems like your build is
having connectivity issues. Please check you uplink, or if it is
somehow filtered/proxied.

Greetz

Am Fr., 30. Okt. 2020 um 08:43 Uhr schrieb <katakam.sujan@gmail.com>:
>
> We are facing issue in yocto OS creation due to time out issue and unabl=
e to create the image.
>
> The log for this is as below,
> WARNING: xf86-video-intel-2_2.99.917-r0 do_fetch: Failed to fetch URL gi=
t://anongit.freedesktop.org/xorg/driver/xf86-video-intel;branch=3Dmaster, a=
ttempting MIRRORS if available
> WARNING: xf86-video-ast-2_1.1.5-r0 do_fetch: Failed to fetch URL http://=
xorg.freedesktop.org/releases/individual/driver/xf86-video-ast-1.1.5.tar.bz=
2, attempting MIRRORS if available
> WARNING: xinit-1_1.4.1-r0 do_fetch: Failed to fetch URL http://xorg.free=
desktop.org/releases/individual/app/xinit-1.4.1.tar.bz2, attempting MIRRORS=
 if available
> WARNING: cwautomacros-native-20110201-r0 do_fetch: Failed to fetch URL h=
ttps://downloads.sourceforge.net/cwautomacros.berlios/cwautomacros-20110201=
.tar.bz2, attempting MIRRORS if available
> WARNING: intel-microcode-20190618-r0 do_fetch: Failed to fetch URL git:/=
/github.com/intel/Intel-Linux-Processor-Microcode-Data-Files.git;protocol=
=3Dhttps, attempting MIRRORS if available
> WARNING: lvm2-2.03.02-r0 do_fetch: Failed to fetch URL ftp://sources.red=
hat.com/pub/lvm2/releases/LVM2.2.03.02.tgz, attempting MIRRORS if available
> WARNING: xdpyinfo-1_1.3.2-r0 do_fetch: Failed to fetch URL http://xorg.f=
reedesktop.org/releases/individual/app/xdpyinfo-1.3.2.tar.bz2, attempting M=
IRRORS if available
> WARNING: xhost-1_1.0.8-r0 do_fetch: Failed to fetch URL http://xorg.free=
desktop.org/releases/individual/app/xhost-1.0.8.tar.bz2, attempting MIRRORS=
 if available
> WARNING: linux-firmware-1_0.0+gitAUTOINC+711d3297ba-r0 do_fetch: Failed =
to fetch URL git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-f=
irmware.git, attempting MIRRORS if available
> WARNING: dpkg-1.19.4-r0 do_fetch: Failed to fetch URL http://ftp.debian.=
org/debian/pool/main/d/dpkg/dpkg_1.19.4.tar.xz, attempting MIRRORS if avail=
able
> WARNING: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Failed to fetch=
 URL git://git.kernel.org/pub/scm/network/iproute2/iproute2.git, attempting=
 MIRRORS if available
> ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetcher failure: =
Fetch command export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAME;=
 export DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-owimWyNVWV"; =
export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export PATH=3D"/home/u=
ser/pdl/yocto_build/scripts:/home/user/pdl/yocto_build/build/tmp-glibc/work=
/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-na=
tive/usr/bin/x86_64-oe-linux:/home/user/pdl/yocto_build/build/tmp-glibc/wor=
k/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot/u=
sr/bin/crossscripts:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-=
64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/usr=
/sbin:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/ip=
route2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/usr/bin:/home/use=
r/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitA=
UTOINC+97864a5af3-r0/recipe-sysroot-native/sbin:/home/user/pdl/yocto_build/=
build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-=
r0/recipe-sysroot-native/bin:/home/user/pdl/yocto_build/bitbake/bin:/home/u=
ser/pdl/yocto_build/build/tmp-glibc/hosttools"; export HOME=3D"/home/user";=
 LANG=3DC git -c core.fsyncobjectfiles=3D0 clone --bare --mirror git://git.=
kernel.org/pub/scm/network/iproute2/iproute2.git /home/user/pdl/yocto_build=
/build/downloads/git2/git.kernel.org.pub.scm.network.iproute2.iproute2.git =
--progress failed with exit code 128, output:
> Cloning into bare repository '/home/user/pdl/yocto_build/build/downloads=
/git2/git.kernel.org.pub.scm.network.iproute2.iproute2.git'...
> fatal: unable to connect to git.kernel.org:
> git.kernel.org[0: 147.75.46.191]: errno=3DConnection timed out
> git.kernel.org[1: 2604:1380:4080:c00::1]: errno=3DNetwork is unreachable=
ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetcher failure for =
URL: 'git://git.kernel.org/pub/scm/network/iproute2/iproute2.git'. Unable t=
o fetch URL from any source.
> ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch:
> ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Function failed: =
base_do_fetch
> ERROR: Logfile of failure stored in: /home/user/pdl/yocto_build/build/tm=
p-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/temp/=
log.do_fetch.25170
> ERROR: Task (/home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectiv=
ity/iproute2/iproute2_git.bb:do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3220 tasks of which 0 didn't need to be r=
erun and 1 failed.Summary: 1 task failed:
>   /home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectivity/iproute=
2/iproute2_git.bb:do_fetch
> Summary: There were 38 WARNING messages shown.
> Summary: There were 4 ERROR messages shown, returning a non-zero exit co=
de.
>
> Anyone faced similar issue, please help us resolving this issue.
>
>=20
>
