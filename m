Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web12.10543.1604046046056472578
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Oct 2020 01:20:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=oxTzhbNI;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.175, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f175.google.com with SMTP id t13so5910162ljk.12
        for <yocto@lists.yoctoproject.org>; Fri, 30 Oct 2020 01:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DK6P4bRMxVV0bIAFcr5eefVNGIJ+apnZVoqZ41yzzQ4=;
        b=oxTzhbNIAPN4fko7qGQ2qBMI1Qa7tWhHlXP5NlYy1leh4sEBF/5Nhg5BMVmq2s4xUH
         VCb+vpRoO5hRYj38Kfb9DXSDnvyBfH6lxM2npBhN0PjWFRTlssDvVk9wluH6r7HbM5kb
         m0z5oFCBB5wA9fJJqS94Q5c/b7BYXBPkukxkbNZITgl3NfJ63ztmQq39OhgX+sNGS9DC
         gYmY5vC5H7JBqXfB9B1TH9YnKUrQ7LHifURR9DsqbQhKrgtq77BT7hlDq0nu/ivkX241
         CXmVlQOjuXfC8xk+iFgwTtE4hoFRcP8tTC7CIe3PQ6iBxd714c1vfOnQ/7ZXUjefEECM
         RTEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DK6P4bRMxVV0bIAFcr5eefVNGIJ+apnZVoqZ41yzzQ4=;
        b=W9Iiru7OUljuCNHB2iws75FfNtwIeduEoAYBY6cStY9KsGcD49dvfHAauz8p+iRHeO
         ae96U6RWJWAK/XXeVZQKox1V7DL6MQK8K80QgS7UkGeg7ZCrmZkZ01hXF/E5bCASBouc
         upWizYHavH7QwCFLu9jV8pCceotZ9/yc1ngN3U5mm6YwMFmRevjPCRvH48dllwsg1B1X
         8rB/otH+omNQziDTRPNhO4TvFUWMySiJJFdPN+Zm/baqfQei/znC9YF0rVZyN5yypg0Z
         dLwcqYECCxvxhhX+QHfjXlwv0MsDzc6d981QV9R7vWfSJGDOyfUrmR7OATsAPArtfVjB
         yZXA==
X-Gm-Message-State: AOAM531YugMPBEb3WRsWFoZ96OiP8CG28vE3p7q+JU1AWorl516z+iYl
	i9PUEEYpOlCwZVbtmprJKlHZXv0g/uq/sBUi8WvdnQ==
X-Google-Smtp-Source: ABdhPJyT6fGtqtFOGkYzxcofMiwHHdiytsu1Wz4BDfp5M+GSchpJup+VYk+znHehn4Iiffq4lnV1kLRBoHWIp6h3EmE=
X-Received: by 2002:a2e:8ec8:: with SMTP id e8mr513479ljl.140.1604046043857;
 Fri, 30 Oct 2020 01:20:43 -0700 (PDT)
MIME-Version: 1.0
References: <i2fG.1604043790197452631.RWTF@lists.yoctoproject.org>
 <CAEt6NwoxfxmB=Qhq+UuVRhfCL1nho61-+n72VrdwQK9Q4qc+xg@mail.gmail.com> <CAHWyh-WmhaJ93XXvbPtfkOGgtmrxT5sr6x09N3+M_pS+hfC8xA@mail.gmail.com>
In-Reply-To: <CAHWyh-WmhaJ93XXvbPtfkOGgtmrxT5sr6x09N3+M_pS+hfC8xA@mail.gmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Fri, 30 Oct 2020 09:20:17 +0100
Message-ID: <CAEt6Nwo+AAXhm8kVudjSC3MKxxtymCtZT1YgPj4VRmQoafyxuw@mail.gmail.com>
Subject: Re: [yocto] Yocto OS Creation on Linux Ubuntu 16.04 LTS #yocto #yocto
To: Sujan KS <katakam.sujan@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For one thing, please keep the list on CC.

Am Fr., 30. Okt. 2020 um 09:11 Uhr schrieb Sujan KS <katakam.sujan@gmail.c=
om>:
>
> Hi
>
> We tried all that. There are no n/w issues.
> We found some of the files needed are not available in github.
> Actually we use git commands to get the source code, which failed during=
 the build process and resulted in time out issue.

Second, I have just verified that the URL
git://git.kernel.org/pub/scm/network/iproute2/iproute2.git perfectly
clones here. So it might be a problem with your provider or some
national firewall - another hint is:

git.kernel.org[0: 147.75.46.191]: errno=3DConnection timed out
git.kernel.org[1: 2604:1380:4080:c00::1]: errno=3DNetwork is unreachable

But there's really nothing that we can do about it, sorry. It *IS* a
network issue somewhere between you and the source repository.

Greetz.
>
> Please let us know how to proceed.
>
> Regards
> Sujan
>
>
> On Fri, Oct 30, 2020 at 1:28 PM Josef Holzmayr <jester@theyoctojester.in=
fo> wrote:
>>
>> Just given the links a quick try here, it seems like your build is
>> having connectivity issues. Please check you uplink, or if it is
>> somehow filtered/proxied.
>>
>> Greetz
>>
>> Am Fr., 30. Okt. 2020 um 08:43 Uhr schrieb <katakam.sujan@gmail.com>:
>> >
>> > We are facing issue in yocto OS creation due to time out issue and un=
able to create the image.
>> >
>> > The log for this is as below,
>> > WARNING: xf86-video-intel-2_2.99.917-r0 do_fetch: Failed to fetch URL=
 git://anongit.freedesktop.org/xorg/driver/xf86-video-intel;branch=3Dmaster=
, attempting MIRRORS if available
>> > WARNING: xf86-video-ast-2_1.1.5-r0 do_fetch: Failed to fetch URL http=
://xorg.freedesktop.org/releases/individual/driver/xf86-video-ast-1.1.5.tar=
.bz2, attempting MIRRORS if available
>> > WARNING: xinit-1_1.4.1-r0 do_fetch: Failed to fetch URL http://xorg.f=
reedesktop.org/releases/individual/app/xinit-1.4.1.tar.bz2, attempting MIRR=
ORS if available
>> > WARNING: cwautomacros-native-20110201-r0 do_fetch: Failed to fetch UR=
L https://downloads.sourceforge.net/cwautomacros.berlios/cwautomacros-20110=
201.tar.bz2, attempting MIRRORS if available
>> > WARNING: intel-microcode-20190618-r0 do_fetch: Failed to fetch URL gi=
t://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files.git;protoco=
l=3Dhttps, attempting MIRRORS if available
>> > WARNING: lvm2-2.03.02-r0 do_fetch: Failed to fetch URL ftp://sources.=
redhat.com/pub/lvm2/releases/LVM2.2.03.02.tgz, attempting MIRRORS if availa=
ble
>> > WARNING: xdpyinfo-1_1.3.2-r0 do_fetch: Failed to fetch URL http://xor=
g.freedesktop.org/releases/individual/app/xdpyinfo-1.3.2.tar.bz2, attemptin=
g MIRRORS if available
>> > WARNING: xhost-1_1.0.8-r0 do_fetch: Failed to fetch URL http://xorg.f=
reedesktop.org/releases/individual/app/xhost-1.0.8.tar.bz2, attempting MIRR=
ORS if available
>> > WARNING: linux-firmware-1_0.0+gitAUTOINC+711d3297ba-r0 do_fetch: Fail=
ed to fetch URL git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linu=
x-firmware.git, attempting MIRRORS if available
>> > WARNING: dpkg-1.19.4-r0 do_fetch: Failed to fetch URL http://ftp.debi=
an.org/debian/pool/main/d/dpkg/dpkg_1.19.4.tar.xz, attempting MIRRORS if av=
ailable
>> > WARNING: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Failed to fe=
tch URL git://git.kernel.org/pub/scm/network/iproute2/iproute2.git, attempt=
ing MIRRORS if available
>> > ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetcher failur=
e: Fetch command export PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NA=
ME; export DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-owimWyNVWV=
"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export PATH=3D"/hom=
e/user/pdl/yocto_build/scripts:/home/user/pdl/yocto_build/build/tmp-glibc/w=
ork/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot=
-native/usr/bin/x86_64-oe-linux:/home/user/pdl/yocto_build/build/tmp-glibc/=
work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroo=
t/usr/bin/crossscripts:/home/user/pdl/yocto_build/build/tmp-glibc/work/core=
i7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/=
usr/sbin:/home/user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux=
/iproute2/1.0-gitAUTOINC+97864a5af3-r0/recipe-sysroot-native/usr/bin:/home/=
user/pdl/yocto_build/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-g=
itAUTOINC+97864a5af3-r0/recipe-sysroot-native/sbin:/home/user/pdl/yocto_bui=
ld/build/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5a=
f3-r0/recipe-sysroot-native/bin:/home/user/pdl/yocto_build/bitbake/bin:/hom=
e/user/pdl/yocto_build/build/tmp-glibc/hosttools"; export HOME=3D"/home/use=
r"; LANG=3DC git -c core.fsyncobjectfiles=3D0 clone --bare --mirror git://g=
it.kernel.org/pub/scm/network/iproute2/iproute2.git /home/user/pdl/yocto_bu=
ild/build/downloads/git2/git.kernel.org.pub.scm.network.iproute2.iproute2.g=
it --progress failed with exit code 128, output:
>> > Cloning into bare repository '/home/user/pdl/yocto_build/build/downlo=
ads/git2/git.kernel.org.pub.scm.network.iproute2.iproute2.git'...
>> > fatal: unable to connect to git.kernel.org:
>> > git.kernel.org[0: 147.75.46.191]: errno=3DConnection timed out
>> > git.kernel.org[1: 2604:1380:4080:c00::1]: errno=3DNetwork is unreacha=
bleERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Fetcher failure f=
or URL: 'git://git.kernel.org/pub/scm/network/iproute2/iproute2.git'. Unabl=
e to fetch URL from any source.
>> > ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch:
>> > ERROR: iproute2-1.0-gitAUTOINC+97864a5af3-r0 do_fetch: Function faile=
d: base_do_fetch
>> > ERROR: Logfile of failure stored in: /home/user/pdl/yocto_build/build=
/tmp-glibc/work/corei7-64-oe-linux/iproute2/1.0-gitAUTOINC+97864a5af3-r0/te=
mp/log.do_fetch.25170
>> > ERROR: Task (/home/user/pdl/yocto_build/meta-intel-tsn/recipes-connec=
tivity/iproute2/iproute2_git.bb:do_fetch) failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 3220 tasks of which 0 didn't need to b=
e rerun and 1 failed.Summary: 1 task failed:
>> >   /home/user/pdl/yocto_build/meta-intel-tsn/recipes-connectivity/ipro=
ute2/iproute2_git.bb:do_fetch
>> > Summary: There were 38 WARNING messages shown.
>> > Summary: There were 4 ERROR messages shown, returning a non-zero exit=
 code.
>> >
>> > Anyone faced similar issue, please help us resolving this issue.
>> >
>> >=20
>> >
