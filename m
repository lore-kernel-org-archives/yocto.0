Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 850FCE002F9; Fri, 20 Feb 2015 09:49:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDE10E00289
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 09:49:31 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Simple recipe quit working in dizzy
Thread-Index: AdBLt6+7luzrg/VxQdSZuQrlFAPr+ABdbo0AAAGs7bA=
Date: Fri, 20 Feb 2015 17:49:28 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E3D4E6@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0C0108E3D34E@reactor.sldomain.com>,
	<1674116.AmgqaYKJqr@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1674116.AmgqaYKJqr@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.200.21]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Simple recipe quit working in dizzy
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
X-List-Received-Date: Fri, 20 Feb 2015 17:49:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,=0A=
=0A=
Thank you for taking an interest in this.=0A=
=0A=
I looked at the log.do_rootfs, and didn't see anything that was immediately=
 suspicious.=0A=
I have inlined the log at the end of my reply, here.=0A=
=0A=
I don't see how such a simple recipe could be broken by a Yocto bug, and no=
t have the =0A=
whole thing be massively broken.   =0A=
=0A=
-Jim- =0A=
=0A=
cat ./core-image-full-cmdline/1.0-r0/temp/log.do_rootfs=0A=
DEBUG: Executing python function rootfs_process_ignore=0A=
DEBUG: Python function rootfs_process_ignore finished=0A=
DEBUG: Executing python function rootfs_runtime_mapping=0A=
DEBUG: Python function rootfs_runtime_mapping finished=0A=
DEBUG: Executing python function do_rootfs=0A=
NOTE: configuring RPM platform settings=0A=
NOTE: configuring RPM system provides=0A=
NOTE: configuring RPM DB settings=0A=
NOTE: configuring Smart settings=0A=
NOTE: Note: adding Smart channel spectra_ls (35)=0A=
NOTE: Note: adding Smart channel i586 (30)=0A=
NOTE: Note: adding Smart channel all (25)=0A=
NOTE: adding Smart RPM DB channel=0A=
NOTE: Note: configuring RPM cross-install scriptlet_wrapper=0A=
NOTE: ###### Generate rootfs #######=0A=
NOTE: Executing '/home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-linu=
x/usr/bin/createrepo --update -q /home/jimr/tera/yocto/dizzy/build/tmp/depl=
oy/rpm/i586' ...=0A=
NOTE: Installing the following packages: libgcc1 parted grub dosfstools psp=
lash vim udev-extraconf rsyslog libsoci nss rpm unzip zip spectra-postbuild=
 smartpm e2fsprogs-tune2fs packagegroup-core-eclipse-debug poco libstdc++6 =
sqlite3 e2fsprogs-e2fsck openssl-staticdev boost packagegroup-core-ssh-open=
ssh packagegroup-core-boot packagegroup-core-full-cmdline rpmresolve ntp e2=
fsprogs-mke2fs util-linux packagegroup-core-tools-debug openssl e2fsprogs s=
ys-freedos e2fsprogs-badblocks locale-base-en-us locale-base-en-gb=0A=
NOTE: to be installed: libgcc1@i586 parted@i586 grub@i586 dosfstools@i586 p=
splash@i586 vim@i586 udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@i586=
 rpm@i586 unzip@i586 zip@i586 spectra-postbuild@i586 smartpm@i586 e2fsprogs=
-tune2fs@i586 packagegroup-core-eclipse-debug@all poco@i586 libstdc++6@i586=
 sqlite3@i586 e2fsprogs-e2fsck@i586 openssl-staticdev@i586 boost@i586 packa=
gegroup-core-ssh-openssh@all packagegroup-core-boot@spectra_ls packagegroup=
-core-full-cmdline@all rpmresolve@i586 ntp@i586 e2fsprogs-mke2fs@i586 util-=
linux@i586 packagegroup-core-tools-debug@all openssl@i586 e2fsprogs@i586 sy=
s-freedos@i586 e2fsprogs-badblocks@i586 locale-base-en-us@i586 locale-base-=
en-gb@i586=0A=
NOTE: /home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-linux/usr/bin/s=
mart --quiet --data-dir=3D/home/jimr/tera/yocto/dizzy/build/tmp/work/spectr=
a_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/var/lib/smart install=
 -y libgcc1@i586 parted@i586 grub@i586 dosfstools@i586 psplash@i586 vim@i58=
6 udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@i586 rpm@i586 unzip@i58=
6 zip@i586 spectra-postbuild@i586 smartpm@i586 e2fsprogs-tune2fs@i586 packa=
gegroup-core-eclipse-debug@all poco@i586 libstdc++6@i586 sqlite3@i586 e2fsp=
rogs-e2fsck@i586 openssl-staticdev@i586 boost@i586 packagegroup-core-ssh-op=
enssh@all packagegroup-core-boot@spectra_ls packagegroup-core-full-cmdline@=
all rpmresolve@i586 ntp@i586 e2fsprogs-mke2fs@i586 util-linux@i586 packageg=
roup-core-tools-debug@all openssl@i586 e2fsprogs@i586 sys-freedos@i586 e2fs=
progs-badblocks@i586 locale-base-en-us@i586 locale-base-en-gb@i586=0A=
NOTE: Output from bash-4.3-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sh to /bin/ba=
sh=0A=
Output from busybox-1.22.1-r32@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ar to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gunzip to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/zcat to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bunzip2 t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bzcat to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cpio to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gzip to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/tar to /bin/b=
usybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unzip to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/date to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/groups to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/id to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/touch to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/users to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/who to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/awk to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cmp to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/diff to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/patch to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sed to /bin/b=
usybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/vi to /bin/bu=
sybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/find to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/grep to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/egrep to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/fgrep to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/xargs to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/halt to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/poweroff to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/reboot to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/rfkill t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/depmod to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/insmod to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/lsmod to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modprobe to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rmmod to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ash to /bin/b=
usybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sh to /bin/ba=
sh=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fstrim to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[ to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[[ to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/addgroup=
 to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/adduser =
to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/basename =
to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cat to /bin/b=
usybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chattr to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chgrp to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chmod to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chown to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chroot t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chvt to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/clear to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cp to /bin/bu=
sybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cut to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dc to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dd to /bin/bu=
sybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/deallocvt=
 to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/delgroup=
 to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/deluser =
to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/df to /bin/bu=
sybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dirname t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dmesg to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dnsdomainname=
 to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/du to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dumpkmap to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dumplease=
s to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/echo to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/env to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expr to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/false to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/fbset to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fdisk to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/flock to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/free to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fsck to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fuser to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/getty to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/head to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hexdump t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/hostname to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/hwclock to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifconfig to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifdown to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifup to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ip to /bin/b=
usybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/killall t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/klogd to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/less to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ln to /bin/bu=
sybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/loadfont=
 to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/loadkmap to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logger to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logname t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/logread to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/losetup to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ls to /bin/bu=
sybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/md5sum to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/microcom =
to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mkdir to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mkfifo to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mknod to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkswap to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/more to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mount to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mv to /bin/bu=
sybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nc to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/netstat to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nohup to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nslookup =
to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/od to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/openvt to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pidof to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/pivot_root t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/printf to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ps to /bin/bu=
sybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pwd to /bin/b=
usybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/rdate to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/readlink =
to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/realpath =
to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/renice to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/reset to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rm to /bin/bu=
sybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rmdir to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/route to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/run-parts to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/seq to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/setconsole t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha3sum t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sleep to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sort to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/start-stop-d=
aemon to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stat to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/strings t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stty to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sulogin to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapoff to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapon to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/switch_root =
to /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sync to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sysctl to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/syslogd to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tail to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tee to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/telnet to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/test to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tftp to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/time to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/top to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tr to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/true to /bin/=
busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tty to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/udhcpc to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/udhcpd t=
o /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/umount to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/uname to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uniq to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptime to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/usleep to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/watch to /bin=
/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wc to /bi=
n/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wget to /=
bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/which to =
/bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/whoami to=
 /bin/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/yes to /b=
in/busybox.nosuid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping to /bin/=
busybox.suid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping6 to /bin=
/busybox.suid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/login to /bin=
/busybox.suid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/passwd to=
 /bin/busybox.suid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/su to /bin/bu=
sybox.suid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tracerout=
e to /bin/busybox.suid=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/vlock to =
/bin/busybox.suid=0A=
Output from init-ifupdown-1.0-r7@i586:=0A=
 Removing any system startup links for networking ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/networkin=
g.=0A=
Output from initscripts-functions-1.0-r155@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/functi=
ons to /etc/init.d/functions.initscripts=0A=
Output from run-postinsts-1.0-r9@all:=0A=
 Removing any system startup links for run-postinsts ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/run-posti=
nsts.=0A=
Output from modutils-initscripts-1.0-r7@i586:=0A=
 Removing any system startup links for modutils.sh ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/modutils.=
sh.=0A=
Output from udev-cache-182-r9@i586:=0A=
 Removing any system startup links for udev-cache ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/udev-cach=
e.=0A=
Output from busybox-hwclock-1.22.1-r32@i586:=0A=
 Removing any system startup links for hwclock.sh ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/hwclock.s=
h.=0A=
Output from kernel-image-3.10.62-ltsi-yocto-standard-3.10.62+git0+f4ab00d96=
a_b2ac933df1-r0.1@spectra_ls:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//boot/bzImage to /=
boot/bzImage-3.10.62-ltsi-yocto-standard=0A=
Output from busybox-syslog-1.22.1-r32@i586:=0A=
 Removing any system startup links for syslog ...=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog.conf t=
o /etc/syslog.conf.busybox=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/syslog=
 to /etc/init.d/syslog.busybox=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog-startu=
p.conf to /etc/syslog-startup.conf.busybox=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/syslog.=
=0A=
Output from util-linux-losetup-2.24.2-r1@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/losetup to /=
sbin/losetup.util-linux=0A=
Output from killall-22.21-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/killall t=
o /usr/bin/killall.psmisc=0A=
Output from shadow-4.2.1-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/passwd to=
 /usr/bin/passwd.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chfn to /=
usr/bin/chfn.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/newgrp to=
 /usr/bin/newgrp.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chsh to /=
usr/bin/chsh.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/groups to=
 /usr/bin/groups.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chpasswd=
 to /usr/sbin/chpasswd.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/login to /bin=
/login.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/vipw to /sbi=
n/vipw.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/vigr to /sbi=
n/vigr.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/su to /bin/su=
.shadow=0A=
Output from kbd-2.0.2-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chvt to /=
usr/bin/chvt.kbd=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/deallocvt=
 to /usr/bin/deallocvt.kbd=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fgconsole=
 to /usr/bin/fgconsole.kbd=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/openvt to=
 /usr/bin/openvt.kbd=0A=
Output from openssh-scp-6.6p1-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/scp to /u=
sr/bin/scp.openssh=0A=
Output from grep-2.19-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/grep to /bin/=
grep.grep=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/egrep to /bin=
/egrep.grep=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/fgrep to /bin=
/fgrep.grep=0A=
Output from net-tools-1.60+25-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/arp to /sbin=
/arp.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifconfig to =
/sbin/ifconfig.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ipmaddr to /=
sbin/ipmaddr.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/iptunnel to =
/sbin/iptunnel.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mii-tool to =
/sbin/mii-tool.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/nameif to /s=
bin/nameif.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/plipconfig t=
o /sbin/plipconfig.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rarp to /sbi=
n/rarp.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/route to /sb=
in/route.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/slattach to =
/sbin/slattach.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dnsdomainname=
 to /bin/dnsdomainname.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/domainname to=
 /bin/domainname.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/hostname to /=
bin/hostname.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/netstat to /b=
in/netstat.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/nisdomainname=
 to /bin/nisdomainname.net-tools=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ypdomainname =
to /bin/ypdomainname.net-tools=0A=
Output from sysklogd-1.5-r7@i586:=0A=
update-rc.d: /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-lin=
ux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/syslog exists during rc=
.d purge (continuing)=0A=
 Removing any system startup links for syslog ...=0A=
  /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-ima=
ge-full-cmdline/1.0-r0/rootfs/etc/rc0.d/K20syslog=0A=
  /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-ima=
ge-full-cmdline/1.0-r0/rootfs/etc/rc1.d/K20syslog=0A=
  /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-ima=
ge-full-cmdline/1.0-r0/rootfs/etc/rc2.d/S20syslog=0A=
  /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-ima=
ge-full-cmdline/1.0-r0/rootfs/etc/rc3.d/S20syslog=0A=
  /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-ima=
ge-full-cmdline/1.0-r0/rootfs/etc/rc4.d/S20syslog=0A=
  /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-ima=
ge-full-cmdline/1.0-r0/rootfs/etc/rc5.d/S20syslog=0A=
  /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-ima=
ge-full-cmdline/1.0-r0/rootfs/etc/rc6.d/K20syslog=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/syslogd to /=
sbin/syslogd.sysklogd=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/klogd to /sb=
in/klogd.sysklogd=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/syslog=
 to /etc/init.d/syslog.sysklogd=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog.conf t=
o /etc/syslog.conf.sysklogd=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/syslog.=
=0A=
Output from bc-1.06-r2@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dc to /us=
r/bin/dc.bc=0A=
Output from fuser-22.21-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fuser to =
/usr/bin/fuser.psmisc=0A=
Output from sed-4.2.2-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sed to /bin/s=
ed.sed=0A=
Output from gawk-4.1.1-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/awk to /u=
sr/bin/gawk=0A=
Output from diffutils-3.3-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/diff to /=
usr/bin/diff.diffutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cmp to /u=
sr/bin/cmp.diffutils=0A=
Output from tar-1.27.1-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/tar to /bin/t=
ar.tar=0A=
Output from cpio-2.11-r5@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cpio to /bin/=
cpio.cpio=0A=
Output from sysvinit-pidof-2.88dsf-r14@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pidof to /bin=
/pidof.sysvinit=0A=
Output from findutils-4.4.2-r6@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/find to /=
usr/bin/find.findutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/xargs to =
/usr/bin/xargs.findutils=0A=
Output from psplash-0.1+git0+afd4e228c6-r15@i586:=0A=
 Removing any system startup links for psplash.sh ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/psplash.s=
h.=0A=
Output from time-1.7-r2@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/time to /=
usr/bin/time.time=0A=
Output from mktemp-1.7-r3@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to /bi=
n/mktemp.mktemp=0A=
Output from gzip-1.6-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gunzip to /bi=
n/gunzip.gzip=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gzip to /bin/=
gzip.gzip=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/zcat to /bin/=
zcat.gzip=0A=
Output from iproute2-3.16.0-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ip to /sbin/=
ip.iproute2=0A=
Output from util-linux-readprofile-2.24.2-r1@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/readprofile =
to /sbin/readprofile.util-linux=0A=
Output from less-466-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/less to /=
usr/bin/less.less=0A=
Output from cronie-1.4.11-r0@i586:=0A=
 Removing any system startup links for crond ...=0A=
Running groupadd commands...=0A=
NOTE: Performing groupadd with [--root /home/jimr/tera/yocto/dizzy/build/tm=
p/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --system=
 crontab] and 10 times of retry=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/crond.=0A=
Output from keymaps-1.0-r31@spectra_ls:=0A=
 Removing any system startup links for keymap.sh ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/keymap.sh=
.=0A=
Output from patch-2.7.1-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/patch to =
/usr/bin/patch.patch=0A=
Output from kmod-18+git0+ae58de0fcb-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/insmod to /s=
bin/insmod.kmod=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modprobe to =
/sbin/modprobe.kmod=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rmmod to /sb=
in/rmmod.kmod=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modinfo to /=
sbin/modinfo.kmod=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/lsmod to /bin=
/lsmod.kmod=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/lsmod to /bi=
n/lsmod.kmod=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/depmod to /s=
bin/depmod.kmod=0A=
Output from openssh-ssh-6.6p1-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ssh to /u=
sr/bin/ssh.openssh=0A=
Output from sysvinit-2.88dsf-r14@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/init to /sbi=
n/init.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mountpoint to=
 /bin/mountpoint.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/halt to /sbi=
n/halt.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/reboot to /s=
bin/reboot.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/runlevel to =
/sbin/runlevel.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/shutdown to =
/sbin/shutdown.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/poweroff to =
/sbin/poweroff.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/last to /=
usr/bin/last.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mesg to /=
usr/bin/mesg.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/utmpdump =
to /usr/bin/utmpdump.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wall to /=
usr/bin/wall.sysvinit=0A=
Output from psplash-default-0.1+git0+afd4e228c6-r15@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/psplash t=
o /usr/bin/psplash-default=0A=
Output from ntp-4.2.6p3-r5@i586:=0A=
 Removing any system startup links for ntpd ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ntpd.=0A=
Output from coreutils-8.22-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[ to /usr=
/bin/lbracket.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/arch to /=
usr/bin/arch.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/basename =
to /usr/bin/basename.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chcon to =
/usr/bin/chcon.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cksum to =
/usr/bin/cksum.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/comm to /=
usr/bin/comm.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/csplit to=
 /usr/bin/csplit.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cut to /u=
sr/bin/cut.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dir to /u=
sr/bin/dir.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dircolors=
 to /usr/bin/dircolors.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dirname t=
o /usr/bin/dirname.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/du to /us=
r/bin/du.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/env to /u=
sr/bin/env.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expand to=
 /usr/bin/expand.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expr to /=
usr/bin/expr.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/factor to=
 /usr/bin/factor.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fmt to /u=
sr/bin/fmt.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fold to /=
usr/bin/fold.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/groups to=
 /usr/bin/groups.shadow=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/head to /=
usr/bin/head.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hostid to=
 /usr/bin/hostid.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/id to /us=
r/bin/id.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/install t=
o /usr/bin/install.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/join to /=
usr/bin/join.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/link to /=
usr/bin/link.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logname t=
o /usr/bin/logname.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/md5sum to=
 /usr/bin/md5sum.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mkfifo to=
 /usr/bin/mkfifo.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nice to /=
usr/bin/nice.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nl to /us=
r/bin/nl.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nohup to =
/usr/bin/nohup.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nproc to =
/usr/bin/nproc.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/od to /us=
r/bin/od.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/paste to =
/usr/bin/paste.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pathchk t=
o /usr/bin/pathchk.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pinky to =
/usr/bin/pinky.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pr to /us=
r/bin/pr.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/printenv =
to /usr/bin/printenv.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/printf to=
 /usr/bin/printf.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ptx to /u=
sr/bin/ptx.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/readlink =
to /usr/bin/readlink.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/realpath =
to /usr/bin/realpath.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/runcon to=
 /usr/bin/runcon.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/seq to /u=
sr/bin/seq.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha1sum t=
o /usr/bin/sha1sum.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha224sum=
 to /usr/bin/sha224sum.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha256sum=
 to /usr/bin/sha256sum.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha384sum=
 to /usr/bin/sha384sum.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha512sum=
 to /usr/bin/sha512sum.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/shred to =
/usr/bin/shred.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/shuf to /=
usr/bin/shuf.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sort to /=
usr/bin/sort.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/split to =
/usr/bin/split.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/stdbuf to=
 /usr/bin/stdbuf.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sum to /u=
sr/bin/sum.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tac to /u=
sr/bin/tac.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tail to /=
usr/bin/tail.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tee to /u=
sr/bin/tee.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/test to /=
usr/bin/test.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/timeout t=
o /usr/bin/timeout.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tr to /us=
r/bin/tr.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/truncate =
to /usr/bin/truncate.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tsort to =
/usr/bin/tsort.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tty to /u=
sr/bin/tty.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unexpand =
to /usr/bin/unexpand.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uniq to /=
usr/bin/uniq.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unlink to=
 /usr/bin/unlink.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptime to=
 /usr/bin/uptime.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/users to =
/usr/bin/users.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/vdir to /=
usr/bin/vdir.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wc to /us=
r/bin/wc.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/who to /u=
sr/bin/who.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/whoami to=
 /usr/bin/whoami.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/yes to /u=
sr/bin/yes.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cat to /bin/c=
at.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chgrp to /bin=
/chgrp.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chmod to /bin=
/chmod.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chown to /bin=
/chown.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cp to /bin/cp=
.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/date to /bin/=
date.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dd to /bin/dd=
.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/echo to /bin/=
echo.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/false to /bin=
/false.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /bin/=
kill.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ln to /bin/ln=
.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ls to /bin/ls=
.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mkdir to /bin=
/mkdir.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mknod to /bin=
/mknod.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mv to /bin/mv=
.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pwd to /bin/p=
wd.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rm to /bin/rm=
.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rmdir to /bin=
/rmdir.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sleep to /bin=
/sleep.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stty to /bin/=
stty.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sync to /bin/=
sync.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/touch to /bin=
/touch.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/true to /bin/=
true.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/uname to /bin=
/uname.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stat to /bin/=
stat.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chroot t=
o /usr/sbin/chroot.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/base64 to /us=
r/bin/base64.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to /us=
r/bin/mktemp.coreutils=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/df to /usr/bi=
n/df.coreutils=0A=
Output from iputils-ping-s20121221-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping to /bin/=
ping.iputils=0A=
Output from rsyslog-7.4.4-r0@i586:=0A=
 Removing any system startup links for rsyslogd ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/rsyslogd.=
=0A=
Output from rpcbind-0.2.1-r0@i586:=0A=
 Removing any system startup links for rpcbind ...=0A=
Running useradd commands...=0A=
NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/tmp=
/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --system =
--no-create-home --home-dir /                        --shell /bin/false --u=
ser-group rpc] and 10 times of retry=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/rpcbind.=
=0A=
Output from bzip2-1.0.6-r5@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bunzip2 t=
o /usr/bin/bunzip2.bzip2=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bzcat to =
/usr/bin/bzcat.bzip2=0A=
Output from procps-3.2.8-r12@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/top to /u=
sr/bin/top.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptime to=
 /usr/bin/uptime.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/free to /=
usr/bin/free.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pkill to =
/usr/bin/pkill.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pmap to /=
usr/bin/pmap.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /bin/=
kill.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sysctl to /s=
bin/sysctl.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ps to /bin/ps=
.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pgrep to =
/usr/bin/pgrep.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pwdx to /=
usr/bin/pwdx.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/watch to /usr=
/bin/watch.procps=0A=
Output from lighttpd-1.4.35-r1@i586:=0A=
 Removing any system startup links for lighttpd ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/lighttpd.=
=0A=
Output from tcf-agent-0.4.0+git0+4ef94ecb92-r2@i586:=0A=
 Removing any system startup links for tcf-agent ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/tcf-agent=
.=0A=
Output from openssh-sshd-6.6p1-r0@i586:=0A=
 Removing any system startup links for sshd ...=0A=
Running useradd commands...=0A=
NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/tmp=
/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --system =
--no-create-home --home-dir /var/run/sshd --shell /bin/false --user-group s=
shd] and 10 times of retry=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/sshd.=0A=
Output from udev-182-r9@i586:=0A=
 Removing any system startup links for udev ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/udev.=0A=
Output from util-linux-fdisk-2.24.2-r1@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fdisk to /sb=
in/fdisk.util-linux=0A=
Output from at-3.1.15-r0@i586:=0A=
 Removing any system startup links for atd ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/atd.=0A=
Output from dbus-1-1.8.2-r0@i586:=0A=
 Removing any system startup links for dbus-1 ...=0A=
Running groupadd commands...=0A=
NOTE: Performing groupadd with [--root /home/jimr/tera/yocto/dizzy/build/tm=
p/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs -r netde=
v] and 10 times of retry=0A=
Running useradd commands...=0A=
NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/tmp=
/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --system =
--home /var/lib/dbus                        --no-create-home --shell /bin/f=
alse                        --user-group messagebus] and 10 times of retry=
=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/dbus-1.=
=0A=
Output from util-linux-umount-2.24.2-r1@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/umount to /bi=
n/umount.util-linux=0A=
Output from util-linux-mount-2.24.2-r1@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mount to /bin=
/mount.util-linux=0A=
Output from util-linux-swaponoff-2.24.2-r1@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapoff to /=
sbin/swapoff.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapon to /s=
bin/swapon.util-linux=0A=
Output from nfs-utils-client-1.3.0-r0@i586:=0A=
 Removing any system startup links for nfscommon ...=0A=
Running useradd commands...=0A=
NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/tmp=
/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --system =
 --home-dir /var/lib/nfs 			      --shell /bin/false --user-group rpcuser] =
and 10 times of retry=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/nfscommon=
.=0A=
Output from iputils-ping6-s20121221-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping6 to /bin=
/ping6.iputils=0A=
Output from e2fsprogs-1.42.9-r0@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chattr to /bi=
n/chattr.e2fsprogs=0A=
Output from util-linux-2.24.2-r1@i586:=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dmesg to /bin=
/dmesg.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /bin/=
kill.procps=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/more to /bin/=
more.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkswap to /s=
bin/mkswap.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/blockdev to =
/sbin/blockdev.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/pivot_root t=
o /sbin/pivot_root.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/switch_root =
to /sbin/switch_root.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkfs.minix t=
o /sbin/mkfs.minix.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hexdump t=
o /usr/bin/hexdump.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/last to /=
usr/bin/last.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logger to=
 /usr/bin/logger.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mesg to /=
usr/bin/mesg.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/renice to=
 /usr/bin/renice.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wall to /=
usr/bin/wall.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/setsid to=
 /usr/bin/setsid.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chrt to /=
usr/bin/chrt.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/flock to =
/usr/bin/flock.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/utmpdump =
to /usr/bin/utmpdump.sysvinit=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/eject to =
/usr/bin/eject.util-linux=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/getopt to /us=
r/bin/getopt=0A=
update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sulogin to /=
sbin/sulogin.util-linux=0A=
Output from nfs-utils-1.3.0-r0@i586:=0A=
 Removing any system startup links for nfsserver ...=0A=
 Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/spect=
ra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/nfsserver=
.=0A=
=0A=
=0A=
NOTE: Installing the following packages: =0A=
NOTE: Installing complementary packages ...=0A=
NOTE: Installing the following packages: mc-locale-en-gb glibc-locale-en-gb=
 libglib-2.0-locale-en-gb=0A=
NOTE: installing attempt only packages...=0A=
NOTE: Attempting mc-locale-en-gb@i586 glibc-locale-en-gb@i586 libglib-2.0-l=
ocale-en-gb@i586=0A=
NOTE: =0A=
=0A=
NOTE: Running intercept scripts:=0A=
NOTE: Executing write_package_manifest ...=0A=
DEBUG: Executing python function write_package_manifest=0A=
DEBUG: Python function write_package_manifest finished=0A=
NOTE: Executing license_create_manifest ...=0A=
DEBUG: Executing shell function license_create_manifest=0A=
WARNING: The license listed GPLv2 was not in the licenses collected for gli=
bc-locale=0A=
WARNING: The license listed LGPLv2.1 was not in the licenses collected for =
glibc-locale=0A=
WARNING: The license listed GPLv2 was not in the licenses collected for gli=
bc-locale=0A=
WARNING: The license listed LGPLv2.1 was not in the licenses collected for =
glibc-locale=0A=
WARNING: The license listed GPLv2 was not in the licenses collected for gli=
bc-locale=0A=
WARNING: The license listed LGPLv2.1 was not in the licenses collected for =
glibc-locale=0A=
WARNING: The license listed GPLv2 was not in the licenses collected for gli=
bc-mtrace=0A=
WARNING: The license listed LGPLv2.1 was not in the licenses collected for =
glibc-mtrace=0A=
WARNING: The license listed CLOSED was not in the licenses collected for li=
bsoci=0A=
WARNING: The license listed GPLv2 was not in the licenses collected for gli=
bc-locale=0A=
WARNING: The license listed LGPLv2.1 was not in the licenses collected for =
glibc-locale=0A=
WARNING: The license listed GPLv2 was not in the licenses collected for gli=
bc-locale=0A=
WARNING: The license listed LGPLv2.1 was not in the licenses collected for =
glibc-locale=0A=
WARNING: The license listed ntp was not in the licenses collected for ntp=
=0A=
WARNING: The license listed ntp was not in the licenses collected for ntp=
=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-boot=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-eclipse-debug=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-full-cmdline=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-full-cmdline=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-full-cmdline=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-full-cmdline=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-full-cmdline=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-full-cmdline=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-full-cmdline=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-full-cmdline=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-ssh-openssh=0A=
WARNING: The license listed MIT was not in the licenses collected for packa=
gegroup-core-tools-debug=0A=
WARNING: The license listed vim was not in the licenses collected for vim=
=0A=
DEBUG: Shell function license_create_manifest finished=0A=
NOTE: Executing write_image_manifest ...=0A=
DEBUG: Executing python function write_image_manifest=0A=
DEBUG: Python function write_image_manifest finished=0A=
NOTE: Executing ssh_allow_empty_password ...=0A=
DEBUG: Executing shell function ssh_allow_empty_password=0A=
sed: warning: failed to get security context of /home/jimr/tera/yocto/dizzy=
/build/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs=
/etc/ssh/sshd_config: No data availablesed: warning: failed to get security=
 context of /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linu=
x/core-image-full-cmdline/1.0-r0/rootfs/etc/ssh/sshd_config: No data availa=
bleDEBUG: Shell function ssh_allow_empty_password finished=0A=
NOTE: Executing postinst_enable_logging ...=0A=
DEBUG: Executing shell function postinst_enable_logging=0A=
DEBUG: Shell function postinst_enable_logging finished=0A=
NOTE: Executing rootfs_update_timestamp ...=0A=
DEBUG: Executing shell function rootfs_update_timestamp=0A=
DEBUG: Shell function rootfs_update_timestamp finished=0A=
NOTE: Executing: ldconfig -r/home/jimr/tera/yocto/dizzy/build/tmp/work/spec=
tra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs-c new -v=0A=
NOTE: ###### Generate images #######=0A=
NOTE: Executing mklibs_optimize_image ...=0A=
DEBUG: Executing shell function mklibs_optimize_image=0A=
DEBUG: Shell function mklibs_optimize_image finished=0A=
NOTE: Executing prelink_image ...=0A=
DEBUG: Executing shell function prelink_image=0A=
Size before prelinking 210672.=0A=
Size after prelinking 212588.=0A=
DEBUG: Shell function prelink_image finished=0A=
NOTE: The image creation groups are: [['ext3', 'cpio']]=0A=
NOTE: Running image creation script for cpio: /home/jimr/tera/yocto/dizzy/b=
uild/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/temp/cre=
ate_image.cpio ...=0A=
NOTE: Creating symlinks for ext3 image ...=0A=
NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.ext3 -> core-ima=
ge-full-cmdline-spectra-ls-20150220171753.rootfs.ext3=0A=
NOTE: Creating symlinks for cpio image ...=0A=
NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.cpio.gz -> core-=
image-full-cmdline-spectra-ls-20150220171753.rootfs.cpio.gz=0A=
DEBUG: Python function do_rootfs finished=0A=
[jimr@krusty spectra_ls-poky-linux]$ =0A=
=0A=
=0A=
=0A=
________________________________________=0A=
From: Paul Eggleton [paul.eggleton@linux.intel.com]=0A=
Sent: Friday, February 20, 2015 2:51 AM=0A=
To: Jim Rafert=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Simple recipe quit working in dizzy=0A=
=0A=
Hi Jim,=0A=
=0A=
On Wednesday 18 February 2015 20:33:43 Jim Rafert wrote:=0A=
> The following recipe, spectra-postbuild_0.1.bb, quit working when I porte=
d=0A=
> from 1.6 daisy to 1.7.1 dizzy.  I include the recipe in my image by addin=
g=0A=
> it at the end of of the IMAGE_INSTALL_append variable in my local.conf=0A=
> file.  The purpose of the recipe is simply to lay down some files that wi=
ll=0A=
> later be used by an installer script.  Two if the files are deposited in=
=0A=
> the root directory, and the rest are placed in the /install/spectra=0A=
> directory, which is created by the recipe.  Nothing is compiled or=0A=
> transformed in any way.=0A=
>=0A=
> When I bitbake the recipe, then bitbake core-image-full-cmdline, both=0A=
> complete without errors. When I look at the contents of the rpm file=0A=
> produced by the recipe, all the files and directories are listed. However=
,=0A=
> when I examine the file system images created, only the two files that I=
=0A=
> place in the root directory (/) are there, and the entire /install=0A=
> directory hierarchy is missing. If I modify the recipe such that the=0A=
> missing files are placed in a directory that is already created by other=
=0A=
> recipes (/home/root), all the files are deposited as expected.=0A=
>=0A=
> I have looked at section 5.6 of the Yocto reference manual, "Moving to th=
e=0A=
> Yocto Project 1.7 Release", but did not see anything that was obviously=
=0A=
> relevant.=0A=
>=0A=
> Can someone tell me how to fix this for dizzy?=0A=
>=0A=
> ######################################################=0A=
> # spectra-postbuild_0.1.bb=0A=
> ######################################################=0A=
>=0A=
> SUMMARY =3D "Post processing of configuration files for SpectraOS"=0A=
> SECTION =3D "base"=0A=
> LICENSE =3D "GPLv2"=0A=
> LIC_FILES_CHKSUM =3D=0A=
> "file://${WORKDIR}/COPYRIGHT;md5=3D349c872e0066155e1818b786938876a4"=0A=
> PR =3D "r0"=0A=
>=0A=
> SRC_URI =3D "file://inittab \=0A=
>        file://fstab \=0A=
>        file://rsyslog.conf \=0A=
>            file://profile \=0A=
>        file://grub.cfg \=0A=
>        file://mount.sh \=0A=
>        file://RELEASE-NOTES.txt \=0A=
>        file://Spectra-OS-Version \=0A=
>        file://initializeCustomKernelModules \=0A=
>        file://firewall \=0A=
>        file://sysctl.conf \=0A=
>            file://InstallOS.sh \=0A=
>        file://COPYRIGHT \=0A=
>            file://WinCE_LCM.tar.bz \=0A=
>        "=0A=
>=0A=
> FILES_${PN} =3D  "/RELEASE-NOTES.txt \=0A=
>                 /Spectra-OS-Version \=0A=
>                 /install \=0A=
>                 /install/spectra \=0A=
>                 /install/spectra/InstallOS.sh \=0A=
>                 /install/spectra/fstab \=0A=
>                 /install/spectra/mount.sh \=0A=
>                 /install/spectra/grub.cfg \=0A=
>                 /install/spectra/rsyslog.conf \=0A=
>                 /install/spectra/profile \=0A=
>                 /install/spectra/inittab \=0A=
>                 /install/spectra/WinCE_LCM.tar.bz \=0A=
>                 /install/spectra/sysctl.conf \=0A=
>                 /install/spectra/init.d \=0A=
>                 /install/spectra/rc5.d \=0A=
>                 /install/spectra/init.d/initializeCustomKernelModules \=
=0A=
>                 /install/spectra/init.d/firewall \=0A=
>                 "=0A=
>=0A=
> do_install () {=0A=
>     install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}=0A=
>     install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}=0A=
>         install -d ${D}/install=0A=
>         install -d ${D}/install/spectra=0A=
>         install -m 544 ${WORKDIR}/inittab ${D}/install/spectra=0A=
>         install -m 755 ${WORKDIR}/fstab ${D}/install/spectra=0A=
>         install -m 755 ${WORKDIR}/rsyslog.conf ${D}/install/spectra=0A=
>         install -m 755 ${WORKDIR}/profile ${D}/install/spectra=0A=
>         install -m 755 ${WORKDIR}/grub.cfg ${D}/install/spectra=0A=
>         install -m 755 ${WORKDIR}/mount.sh ${D}/install/spectra=0A=
>         install -m 755 ${WORKDIR}/InstallOS.sh ${D}/install/spectra=0A=
>         install -m 755 ${WORKDIR}/sysctl.conf ${D}/install/spectra=0A=
>         install -m 644 ${WORKDIR}/WinCE_LCM.tar.bz ${D}/install/spectra=
=0A=
>         install -m 755 ${WORKDIR}/firewall ${D}/install/spectra=0A=
>         install -m 755 ${WORKDIR}/initializeCustomKernelModules=0A=
> ${D}/install/spectra=0A=
>=0A=
> }=0A=
=0A=
Hmm, so I can't see anything immediately wrong with the recipe that would l=
ead=0A=
to a problem such as what you describe, so rather than something expected=
=0A=
change between releases this looks more like a bug. Is there anything in th=
e=0A=
log.do_rootfs for the image that might indicate something going wrong? Perh=
aps=0A=
an uncaught error?=0A=
=0A=
Cheers,=0A=
Paul=0A=
=0A=
--=0A=
=0A=
Paul Eggleton=0A=
Intel Open Source Technology Centre=0A=

