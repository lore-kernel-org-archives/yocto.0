Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C87DAE00953; Tue, 14 Apr 2015 02:20:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1114CE00932
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 02:20:47 -0700 (PDT)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by mail.invecas.com
	(10.0.30.131) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Tue, 14 Apr 2015 14:50:47 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Tue, 14 Apr 2015 14:50:39 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::b45c:f5fd:ad11:51c2%17]) with mapi id 15.00.0995.028;
	Tue, 14 Apr 2015 14:50:38 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: yocto Digest, Vol 53, Issue 97
Thread-Index: AQHQUjVtDZ6BfRWHeEuV2Il1CsS/YZ1Mg6k2
Date: Tue, 14 Apr 2015 09:20:38 +0000
Message-ID: <1429003199394.19509@inedasystems.com>
References: <mailman.904.1424471311.2787.yocto@yoctoproject.org>
In-Reply-To: <mailman.904.1424471311.2787.yocto@yoctoproject.org>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
MIME-Version: 1.0
Subject: Re: yocto Digest, Vol 53, Issue 97
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
X-List-Received-Date: Tue, 14 Apr 2015 09:20:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,=0A=
=0A=
When I take kernel from the SVN I got the validation error that SRCREV is n=
ot proper.=0A=
=0A=
Could you please help me in resolving this issue.=0A=
=0A=
Thanks in advance.=0A=
=0A=
Regards,=0A=
Raghavendra. =0A=
=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of yocto-request@yoctoproject.org <yocto-request@yoctoproject.org>=0A=
Sent: Saturday, February 21, 2015 4:04 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: yocto Digest, Vol 53, Issue 97=0A=
=0A=
Send yocto mailing list submissions to=0A=
        yocto@yoctoproject.org=0A=
=0A=
To subscribe or unsubscribe via the World Wide Web, visit=0A=
        https://lists.yoctoproject.org/listinfo/yocto=0A=
or, via email, send a message with subject or body 'help' to=0A=
        yocto-request@yoctoproject.org=0A=
=0A=
You can reach the person managing the list at=0A=
        yocto-owner@yoctoproject.org=0A=
=0A=
When replying, please edit your Subject line so it is more specific=0A=
than "Re: Contents of yocto digest..."=0A=
=0A=
=0A=
Today's Topics:=0A=
=0A=
   1. Re: Simple recipe quit working in dizzy (akuster)=0A=
=0A=
=0A=
----------------------------------------------------------------------=0A=
=0A=
Message: 1=0A=
Date: Fri, 20 Feb 2015 14:28:10 -0800=0A=
From: akuster <akuster@mvista.com>=0A=
To: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Simple recipe quit working in dizzy=0A=
Message-ID: <54E7B4FA.502@mvista.com>=0A=
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed=0A=
=0A=
=0A=
=0A=
On 02/20/2015 09:49 AM, Jim Rafert wrote:=0A=
> Hi Paul,=0A=
>=0A=
> Thank you for taking an interest in this.=0A=
>=0A=
> I looked at the log.do_rootfs, and didn't see anything that was immediate=
ly suspicious.=0A=
> I have inlined the log at the end of my reply, here.=0A=
>=0A=
> I don't see how such a simple recipe could be broken by a Yocto bug, and =
not have the=0A=
> whole thing be massively broken.=0A=
=0A=
Is it possible for you to try your recipe on 'master'? that might tell=0A=
use if something is missing in dizzy.=0A=
=0A=
=0A=
- Armin=0A=
>=0A=
> -Jim-=0A=
>=0A=
> cat ./core-image-full-cmdline/1.0-r0/temp/log.do_rootfs=0A=
> DEBUG: Executing python function rootfs_process_ignore=0A=
> DEBUG: Python function rootfs_process_ignore finished=0A=
> DEBUG: Executing python function rootfs_runtime_mapping=0A=
> DEBUG: Python function rootfs_runtime_mapping finished=0A=
> DEBUG: Executing python function do_rootfs=0A=
> NOTE: configuring RPM platform settings=0A=
> NOTE: configuring RPM system provides=0A=
> NOTE: configuring RPM DB settings=0A=
> NOTE: configuring Smart settings=0A=
> NOTE: Note: adding Smart channel spectra_ls (35)=0A=
> NOTE: Note: adding Smart channel i586 (30)=0A=
> NOTE: Note: adding Smart channel all (25)=0A=
> NOTE: adding Smart RPM DB channel=0A=
> NOTE: Note: configuring RPM cross-install scriptlet_wrapper=0A=
> NOTE: ###### Generate rootfs #######=0A=
> NOTE: Executing '/home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-li=
nux/usr/bin/createrepo --update -q /home/jimr/tera/yocto/dizzy/build/tmp/de=
ploy/rpm/i586' ...=0A=
> NOTE: Installing the following packages: libgcc1 parted grub dosfstools p=
splash vim udev-extraconf rsyslog libsoci nss rpm unzip zip spectra-postbui=
ld smartpm e2fsprogs-tune2fs packagegroup-core-eclipse-debug poco libstdc++=
6 sqlite3 e2fsprogs-e2fsck openssl-staticdev boost packagegroup-core-ssh-op=
enssh packagegroup-core-boot packagegroup-core-full-cmdline rpmresolve ntp =
e2fsprogs-mke2fs util-linux packagegroup-core-tools-debug openssl e2fsprogs=
 sys-freedos e2fsprogs-badblocks locale-base-en-us locale-base-en-gb=0A=
> NOTE: to be installed: libgcc1@i586 parted@i586 grub@i586 dosfstools@i586=
 psplash@i586 vim@i586 udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@i5=
86 rpm@i586 unzip@i586 zip@i586 spectra-postbuild@i586 smartpm@i586 e2fspro=
gs-tune2fs@i586 packagegroup-core-eclipse-debug@all poco@i586 libstdc++6@i5=
86 sqlite3@i586 e2fsprogs-e2fsck@i586 openssl-staticdev@i586 boost@i586 pac=
kagegroup-core-ssh-openssh@all packagegroup-core-boot@spectra_ls packagegro=
up-core-full-cmdline@all rpmresolve@i586 ntp@i586 e2fsprogs-mke2fs@i586 uti=
l-linux@i586 packagegroup-core-tools-debug@all openssl@i586 e2fsprogs@i586 =
sys-freedos@i586 e2fsprogs-badblocks@i586 locale-base-en-us@i586 locale-bas=
e-en-gb@i586=0A=
> NOTE: /home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-linux/usr/bin=
/smart --quiet --data-dir=3D/home/jimr/tera/yocto/dizzy/build/tmp/work/spec=
tra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/var/lib/smart insta=
ll -y libgcc1@i586 parted@i586 grub@i586 dosfstools@i586 psplash@i586 vim@i=
586 udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@i586 rpm@i586 unzip@i=
586 zip@i586 spectra-postbuild@i586 smartpm@i586 e2fsprogs-tune2fs@i586 pac=
kagegroup-core-eclipse-debug@all poco@i586 libstdc++6@i586 sqlite3@i586 e2f=
sprogs-e2fsck@i586 openssl-staticdev@i586 boost@i586 packagegroup-core-ssh-=
openssh@all packagegroup-core-boot@spectra_ls packagegroup-core-full-cmdlin=
e@all rpmresolve@i586 ntp@i586 e2fsprogs-mke2fs@i586 util-linux@i586 packag=
egroup-core-tools-debug@all openssl@i586 e2fsprogs@i586 sys-freedos@i586 e2=
fsprogs-badblocks@i586 locale-base-en-us@i586 locale-base-en-gb@i586=0A=
> NOTE: Output from bash-4.3-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sh to /bin/=
bash=0A=
> Output from busybox-1.22.1-r32@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ar to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gunzip to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/zcat to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bunzip2=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bzcat t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cpio to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gzip to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/tar to /bin=
/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unzip t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/date to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/groups =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/id to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/touch to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/users t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/who to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/awk to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cmp to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/diff to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/patch t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sed to /bin=
/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/vi to /bin/=
busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/find to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/grep to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/egrep to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/fgrep to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/xargs t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/halt to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/poweroff t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/reboot to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/rfkill=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/depmod to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/insmod to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/lsmod to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modprobe t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rmmod to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ash to /bin=
/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sh to /bin/=
bash=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fstrim to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[ to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[[ to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/addgro=
up to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/adduse=
r to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/basenam=
e to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cat to /bin=
/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chattr to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chgrp to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chmod to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chown to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chroot=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chvt to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/clear t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cp to /bin/=
busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cut to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dc to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dd to /bin/=
busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dealloc=
vt to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/delgro=
up to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/deluse=
r to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/df to /bin/=
busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dirname=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dmesg to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dnsdomainna=
me to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/du to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dumpkmap to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dumplea=
ses to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/echo to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/env to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expr to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/false to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/fbset =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fdisk to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/flock t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/free to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fsck to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fuser t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/getty to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/head to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hexdump=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/hostname to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/hwclock to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifconfig t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifdown to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifup to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ip to /bin=
/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/killall=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/klogd to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/less to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ln to /bin/=
busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/loadfo=
nt to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/loadkmap t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logger =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logname=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/logread to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/losetup to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ls to /bin/=
busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/md5sum =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/microco=
m to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mkdir to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mkfifo =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mknod to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkswap to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/more to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mount to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mv to /bin/=
busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nc to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/netstat to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nohup t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nslooku=
p to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/od to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/openvt =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pidof to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/pivot_root=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/printf =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ps to /bin/=
busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pwd to /bin=
/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/rdate =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/readlin=
k to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/realpat=
h to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/renice =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/reset t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rm to /bin/=
busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rmdir to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/route to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/run-parts t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/seq to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/setconsole=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha3sum=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sleep to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sort to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/start-stop=
-daemon to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stat to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/strings=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stty to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sulogin to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapoff to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapon to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/switch_roo=
t to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sync to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sysctl to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/syslogd to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tail to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tee to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/telnet =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/test to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tftp to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/time to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/top to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tr to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/true to /bi=
n/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tty to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/udhcpc to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/udhcpd=
 to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/umount to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/uname to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uniq to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptime =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/usleep to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/watch to /b=
in/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wc to /=
bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wget to=
 /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/which t=
o /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/whoami =
to /bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/yes to =
/bin/busybox.nosuid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping to /bi=
n/busybox.suid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping6 to /b=
in/busybox.suid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/login to /b=
in/busybox.suid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/passwd =
to /bin/busybox.suid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/su to /bin/=
busybox.suid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tracero=
ute to /bin/busybox.suid=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/vlock t=
o /bin/busybox.suid=0A=
> Output from init-ifupdown-1.0-r7@i586:=0A=
>   Removing any system startup links for networking ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/networ=
king.=0A=
> Output from initscripts-functions-1.0-r155@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/func=
tions to /etc/init.d/functions.initscripts=0A=
> Output from run-postinsts-1.0-r9@all:=0A=
>   Removing any system startup links for run-postinsts ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/run-po=
stinsts.=0A=
> Output from modutils-initscripts-1.0-r7@i586:=0A=
>   Removing any system startup links for modutils.sh ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/moduti=
ls.sh.=0A=
> Output from udev-cache-182-r9@i586:=0A=
>   Removing any system startup links for udev-cache ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/udev-c=
ache.=0A=
> Output from busybox-hwclock-1.22.1-r32@i586:=0A=
>   Removing any system startup links for hwclock.sh ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/hwcloc=
k.sh.=0A=
> Output from kernel-image-3.10.62-ltsi-yocto-standard-3.10.62+git0+f4ab00d=
96a_b2ac933df1-r0.1@spectra_ls:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//boot/bzImage to=
 /boot/bzImage-3.10.62-ltsi-yocto-standard=0A=
> Output from busybox-syslog-1.22.1-r32@i586:=0A=
>   Removing any system startup links for syslog ...=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog.conf=
 to /etc/syslog.conf.busybox=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/sysl=
og to /etc/init.d/syslog.busybox=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog-star=
tup.conf to /etc/syslog-startup.conf.busybox=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/syslog=
.=0A=
> Output from util-linux-losetup-2.24.2-r1@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/losetup to=
 /sbin/losetup.util-linux=0A=
> Output from killall-22.21-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/killall=
 to /usr/bin/killall.psmisc=0A=
> Output from shadow-4.2.1-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/passwd =
to /usr/bin/passwd.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chfn to=
 /usr/bin/chfn.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/newgrp =
to /usr/bin/newgrp.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chsh to=
 /usr/bin/chsh.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/groups =
to /usr/bin/groups.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chpass=
wd to /usr/sbin/chpasswd.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/login to /b=
in/login.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/vipw to /s=
bin/vipw.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/vigr to /s=
bin/vigr.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/su to /bin/=
su.shadow=0A=
> Output from kbd-2.0.2-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chvt to=
 /usr/bin/chvt.kbd=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dealloc=
vt to /usr/bin/deallocvt.kbd=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fgconso=
le to /usr/bin/fgconsole.kbd=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/openvt =
to /usr/bin/openvt.kbd=0A=
> Output from openssh-scp-6.6p1-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/scp to =
/usr/bin/scp.openssh=0A=
> Output from grep-2.19-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/grep to /bi=
n/grep.grep=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/egrep to /b=
in/egrep.grep=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/fgrep to /b=
in/fgrep.grep=0A=
> Output from net-tools-1.60+25-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/arp to /sb=
in/arp.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifconfig t=
o /sbin/ifconfig.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ipmaddr to=
 /sbin/ipmaddr.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/iptunnel t=
o /sbin/iptunnel.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mii-tool t=
o /sbin/mii-tool.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/nameif to =
/sbin/nameif.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/plipconfig=
 to /sbin/plipconfig.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rarp to /s=
bin/rarp.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/route to /=
sbin/route.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/slattach t=
o /sbin/slattach.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dnsdomainna=
me to /bin/dnsdomainname.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/domainname =
to /bin/domainname.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/hostname to=
 /bin/hostname.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/netstat to =
/bin/netstat.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/nisdomainna=
me to /bin/nisdomainname.net-tools=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ypdomainnam=
e to /bin/ypdomainname.net-tools=0A=
> Output from sysklogd-1.5-r7@i586:=0A=
> update-rc.d: /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-l=
inux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/syslog exists during =
rc.d purge (continuing)=0A=
>   Removing any system startup links for syslog ...=0A=
>    /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-=
image-full-cmdline/1.0-r0/rootfs/etc/rc0.d/K20syslog=0A=
>    /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-=
image-full-cmdline/1.0-r0/rootfs/etc/rc1.d/K20syslog=0A=
>    /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-=
image-full-cmdline/1.0-r0/rootfs/etc/rc2.d/S20syslog=0A=
>    /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-=
image-full-cmdline/1.0-r0/rootfs/etc/rc3.d/S20syslog=0A=
>    /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-=
image-full-cmdline/1.0-r0/rootfs/etc/rc4.d/S20syslog=0A=
>    /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-=
image-full-cmdline/1.0-r0/rootfs/etc/rc5.d/S20syslog=0A=
>    /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-=
image-full-cmdline/1.0-r0/rootfs/etc/rc6.d/K20syslog=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/syslogd to=
 /sbin/syslogd.sysklogd=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/klogd to /=
sbin/klogd.sysklogd=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/sysl=
og to /etc/init.d/syslog.sysklogd=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog.conf=
 to /etc/syslog.conf.sysklogd=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/syslog=
.=0A=
> Output from bc-1.06-r2@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dc to /=
usr/bin/dc.bc=0A=
> Output from fuser-22.21-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fuser t=
o /usr/bin/fuser.psmisc=0A=
> Output from sed-4.2.2-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sed to /bin=
/sed.sed=0A=
> Output from gawk-4.1.1-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/awk to =
/usr/bin/gawk=0A=
> Output from diffutils-3.3-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/diff to=
 /usr/bin/diff.diffutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cmp to =
/usr/bin/cmp.diffutils=0A=
> Output from tar-1.27.1-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/tar to /bin=
/tar.tar=0A=
> Output from cpio-2.11-r5@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cpio to /bi=
n/cpio.cpio=0A=
> Output from sysvinit-pidof-2.88dsf-r14@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pidof to /b=
in/pidof.sysvinit=0A=
> Output from findutils-4.4.2-r6@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/find to=
 /usr/bin/find.findutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/xargs t=
o /usr/bin/xargs.findutils=0A=
> Output from psplash-0.1+git0+afd4e228c6-r15@i586:=0A=
>   Removing any system startup links for psplash.sh ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/psplas=
h.sh.=0A=
> Output from time-1.7-r2@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/time to=
 /usr/bin/time.time=0A=
> Output from mktemp-1.7-r3@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to /=
bin/mktemp.mktemp=0A=
> Output from gzip-1.6-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gunzip to /=
bin/gunzip.gzip=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gzip to /bi=
n/gzip.gzip=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/zcat to /bi=
n/zcat.gzip=0A=
> Output from iproute2-3.16.0-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ip to /sbi=
n/ip.iproute2=0A=
> Output from util-linux-readprofile-2.24.2-r1@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/readprofil=
e to /sbin/readprofile.util-linux=0A=
> Output from less-466-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/less to=
 /usr/bin/less.less=0A=
> Output from cronie-1.4.11-r0@i586:=0A=
>   Removing any system startup links for crond ...=0A=
> Running groupadd commands...=0A=
> NOTE: Performing groupadd with [--root /home/jimr/tera/yocto/dizzy/build/=
tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --syst=
em crontab] and 10 times of retry=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/crond.=
=0A=
> Output from keymaps-1.0-r31@spectra_ls:=0A=
>   Removing any system startup links for keymap.sh ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/keymap=
.sh.=0A=
> Output from patch-2.7.1-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/patch t=
o /usr/bin/patch.patch=0A=
> Output from kmod-18+git0+ae58de0fcb-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/insmod to =
/sbin/insmod.kmod=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modprobe t=
o /sbin/modprobe.kmod=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rmmod to /=
sbin/rmmod.kmod=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modinfo to=
 /sbin/modinfo.kmod=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/lsmod to /b=
in/lsmod.kmod=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/lsmod to /=
bin/lsmod.kmod=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/depmod to =
/sbin/depmod.kmod=0A=
> Output from openssh-ssh-6.6p1-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ssh to =
/usr/bin/ssh.openssh=0A=
> Output from sysvinit-2.88dsf-r14@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/init to /s=
bin/init.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mountpoint =
to /bin/mountpoint.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/halt to /s=
bin/halt.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/reboot to =
/sbin/reboot.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/runlevel t=
o /sbin/runlevel.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/shutdown t=
o /sbin/shutdown.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/poweroff t=
o /sbin/poweroff.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/last to=
 /usr/bin/last.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mesg to=
 /usr/bin/mesg.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/utmpdum=
p to /usr/bin/utmpdump.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wall to=
 /usr/bin/wall.sysvinit=0A=
> Output from psplash-default-0.1+git0+afd4e228c6-r15@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/psplash=
 to /usr/bin/psplash-default=0A=
> Output from ntp-4.2.6p3-r5@i586:=0A=
>   Removing any system startup links for ntpd ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ntpd.=
=0A=
> Output from coreutils-8.22-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[ to /u=
sr/bin/lbracket.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/arch to=
 /usr/bin/arch.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/basenam=
e to /usr/bin/basename.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chcon t=
o /usr/bin/chcon.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cksum t=
o /usr/bin/cksum.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/comm to=
 /usr/bin/comm.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/csplit =
to /usr/bin/csplit.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cut to =
/usr/bin/cut.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dir to =
/usr/bin/dir.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dircolo=
rs to /usr/bin/dircolors.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dirname=
 to /usr/bin/dirname.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/du to /=
usr/bin/du.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/env to =
/usr/bin/env.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expand =
to /usr/bin/expand.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expr to=
 /usr/bin/expr.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/factor =
to /usr/bin/factor.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fmt to =
/usr/bin/fmt.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fold to=
 /usr/bin/fold.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/groups =
to /usr/bin/groups.shadow=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/head to=
 /usr/bin/head.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hostid =
to /usr/bin/hostid.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/id to /=
usr/bin/id.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/install=
 to /usr/bin/install.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/join to=
 /usr/bin/join.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/link to=
 /usr/bin/link.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logname=
 to /usr/bin/logname.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/md5sum =
to /usr/bin/md5sum.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mkfifo =
to /usr/bin/mkfifo.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nice to=
 /usr/bin/nice.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nl to /=
usr/bin/nl.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nohup t=
o /usr/bin/nohup.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nproc t=
o /usr/bin/nproc.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/od to /=
usr/bin/od.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/paste t=
o /usr/bin/paste.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pathchk=
 to /usr/bin/pathchk.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pinky t=
o /usr/bin/pinky.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pr to /=
usr/bin/pr.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/printen=
v to /usr/bin/printenv.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/printf =
to /usr/bin/printf.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ptx to =
/usr/bin/ptx.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/readlin=
k to /usr/bin/readlink.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/realpat=
h to /usr/bin/realpath.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/runcon =
to /usr/bin/runcon.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/seq to =
/usr/bin/seq.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha1sum=
 to /usr/bin/sha1sum.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha224s=
um to /usr/bin/sha224sum.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha256s=
um to /usr/bin/sha256sum.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha384s=
um to /usr/bin/sha384sum.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha512s=
um to /usr/bin/sha512sum.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/shred t=
o /usr/bin/shred.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/shuf to=
 /usr/bin/shuf.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sort to=
 /usr/bin/sort.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/split t=
o /usr/bin/split.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/stdbuf =
to /usr/bin/stdbuf.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sum to =
/usr/bin/sum.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tac to =
/usr/bin/tac.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tail to=
 /usr/bin/tail.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tee to =
/usr/bin/tee.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/test to=
 /usr/bin/test.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/timeout=
 to /usr/bin/timeout.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tr to /=
usr/bin/tr.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/truncat=
e to /usr/bin/truncate.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tsort t=
o /usr/bin/tsort.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tty to =
/usr/bin/tty.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unexpan=
d to /usr/bin/unexpand.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uniq to=
 /usr/bin/uniq.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unlink =
to /usr/bin/unlink.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptime =
to /usr/bin/uptime.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/users t=
o /usr/bin/users.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/vdir to=
 /usr/bin/vdir.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wc to /=
usr/bin/wc.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/who to =
/usr/bin/who.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/whoami =
to /usr/bin/whoami.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/yes to =
/usr/bin/yes.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cat to /bin=
/cat.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chgrp to /b=
in/chgrp.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chmod to /b=
in/chmod.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chown to /b=
in/chown.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cp to /bin/=
cp.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/date to /bi=
n/date.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dd to /bin/=
dd.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/echo to /bi=
n/echo.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/false to /b=
in/false.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /bi=
n/kill.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ln to /bin/=
ln.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ls to /bin/=
ls.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mkdir to /b=
in/mkdir.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mknod to /b=
in/mknod.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mv to /bin/=
mv.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pwd to /bin=
/pwd.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rm to /bin/=
rm.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rmdir to /b=
in/rmdir.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sleep to /b=
in/sleep.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stty to /bi=
n/stty.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sync to /bi=
n/sync.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/touch to /b=
in/touch.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/true to /bi=
n/true.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/uname to /b=
in/uname.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stat to /bi=
n/stat.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chroot=
 to /usr/sbin/chroot.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/base64 to /=
usr/bin/base64.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to /=
usr/bin/mktemp.coreutils=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/df to /usr/=
bin/df.coreutils=0A=
> Output from iputils-ping-s20121221-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping to /bi=
n/ping.iputils=0A=
> Output from rsyslog-7.4.4-r0@i586:=0A=
>   Removing any system startup links for rsyslogd ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/rsyslo=
gd.=0A=
> Output from rpcbind-0.2.1-r0@i586:=0A=
>   Removing any system startup links for rpcbind ...=0A=
> Running useradd commands...=0A=
> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/t=
mp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --syste=
m --no-create-home --home-dir /                        --shell /bin/false -=
-user-group rpc] and 10 times of retry=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/rpcbin=
d.=0A=
> Output from bzip2-1.0.6-r5@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bunzip2=
 to /usr/bin/bunzip2.bzip2=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bzcat t=
o /usr/bin/bzcat.bzip2=0A=
> Output from procps-3.2.8-r12@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/top to =
/usr/bin/top.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptime =
to /usr/bin/uptime.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/free to=
 /usr/bin/free.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pkill t=
o /usr/bin/pkill.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pmap to=
 /usr/bin/pmap.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /bi=
n/kill.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sysctl to =
/sbin/sysctl.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ps to /bin/=
ps.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pgrep t=
o /usr/bin/pgrep.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pwdx to=
 /usr/bin/pwdx.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/watch to /u=
sr/bin/watch.procps=0A=
> Output from lighttpd-1.4.35-r1@i586:=0A=
>   Removing any system startup links for lighttpd ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/lightt=
pd.=0A=
> Output from tcf-agent-0.4.0+git0+4ef94ecb92-r2@i586:=0A=
>   Removing any system startup links for tcf-agent ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/tcf-ag=
ent.=0A=
> Output from openssh-sshd-6.6p1-r0@i586:=0A=
>   Removing any system startup links for sshd ...=0A=
> Running useradd commands...=0A=
> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/t=
mp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --syste=
m --no-create-home --home-dir /var/run/sshd --shell /bin/false --user-group=
 sshd] and 10 times of retry=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/sshd.=
=0A=
> Output from udev-182-r9@i586:=0A=
>   Removing any system startup links for udev ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/udev.=
=0A=
> Output from util-linux-fdisk-2.24.2-r1@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fdisk to /=
sbin/fdisk.util-linux=0A=
> Output from at-3.1.15-r0@i586:=0A=
>   Removing any system startup links for atd ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/atd.=
=0A=
> Output from dbus-1-1.8.2-r0@i586:=0A=
>   Removing any system startup links for dbus-1 ...=0A=
> Running groupadd commands...=0A=
> NOTE: Performing groupadd with [--root /home/jimr/tera/yocto/dizzy/build/=
tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs -r net=
dev] and 10 times of retry=0A=
> Running useradd commands...=0A=
> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/t=
mp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --syste=
m --home /var/lib/dbus                        --no-create-home --shell /bin=
/false                        --user-group messagebus] and 10 times of retr=
y=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/dbus-1=
.=0A=
> Output from util-linux-umount-2.24.2-r1@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/umount to /=
bin/umount.util-linux=0A=
> Output from util-linux-mount-2.24.2-r1@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mount to /b=
in/mount.util-linux=0A=
> Output from util-linux-swaponoff-2.24.2-r1@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapoff to=
 /sbin/swapoff.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapon to =
/sbin/swapon.util-linux=0A=
> Output from nfs-utils-client-1.3.0-r0@i586:=0A=
>   Removing any system startup links for nfscommon ...=0A=
> Running useradd commands...=0A=
> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/t=
mp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --syste=
m  --home-dir /var/lib/nfs                              --shell /bin/false =
--user-group rpcuser] and 10 times of retry=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/nfscom=
mon.=0A=
> Output from iputils-ping6-s20121221-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping6 to /b=
in/ping6.iputils=0A=
> Output from e2fsprogs-1.42.9-r0@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chattr to /=
bin/chattr.e2fsprogs=0A=
> Output from util-linux-2.24.2-r1@i586:=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dmesg to /b=
in/dmesg.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /bi=
n/kill.procps=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/more to /bi=
n/more.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkswap to =
/sbin/mkswap.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/blockdev t=
o /sbin/blockdev.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/pivot_root=
 to /sbin/pivot_root.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/switch_roo=
t to /sbin/switch_root.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkfs.minix=
 to /sbin/mkfs.minix.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hexdump=
 to /usr/bin/hexdump.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/last to=
 /usr/bin/last.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logger =
to /usr/bin/logger.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mesg to=
 /usr/bin/mesg.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/renice =
to /usr/bin/renice.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wall to=
 /usr/bin/wall.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/setsid =
to /usr/bin/setsid.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chrt to=
 /usr/bin/chrt.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/flock t=
o /usr/bin/flock.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/utmpdum=
p to /usr/bin/utmpdump.sysvinit=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/eject t=
o /usr/bin/eject.util-linux=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/getopt to /=
usr/bin/getopt=0A=
> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sulogin to=
 /sbin/sulogin.util-linux=0A=
> Output from nfs-utils-1.3.0-r0@i586:=0A=
>   Removing any system startup links for nfsserver ...=0A=
>   Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/nfsser=
ver.=0A=
>=0A=
>=0A=
> NOTE: Installing the following packages:=0A=
> NOTE: Installing complementary packages ...=0A=
> NOTE: Installing the following packages: mc-locale-en-gb glibc-locale-en-=
gb libglib-2.0-locale-en-gb=0A=
> NOTE: installing attempt only packages...=0A=
> NOTE: Attempting mc-locale-en-gb@i586 glibc-locale-en-gb@i586 libglib-2.0=
-locale-en-gb@i586=0A=
> NOTE:=0A=
>=0A=
> NOTE: Running intercept scripts:=0A=
> NOTE: Executing write_package_manifest ...=0A=
> DEBUG: Executing python function write_package_manifest=0A=
> DEBUG: Python function write_package_manifest finished=0A=
> NOTE: Executing license_create_manifest ...=0A=
> DEBUG: Executing shell function license_create_manifest=0A=
> WARNING: The license listed GPLv2 was not in the licenses collected for g=
libc-locale=0A=
> WARNING: The license listed LGPLv2.1 was not in the licenses collected fo=
r glibc-locale=0A=
> WARNING: The license listed GPLv2 was not in the licenses collected for g=
libc-locale=0A=
> WARNING: The license listed LGPLv2.1 was not in the licenses collected fo=
r glibc-locale=0A=
> WARNING: The license listed GPLv2 was not in the licenses collected for g=
libc-locale=0A=
> WARNING: The license listed LGPLv2.1 was not in the licenses collected fo=
r glibc-locale=0A=
> WARNING: The license listed GPLv2 was not in the licenses collected for g=
libc-mtrace=0A=
> WARNING: The license listed LGPLv2.1 was not in the licenses collected fo=
r glibc-mtrace=0A=
> WARNING: The license listed CLOSED was not in the licenses collected for =
libsoci=0A=
> WARNING: The license listed GPLv2 was not in the licenses collected for g=
libc-locale=0A=
> WARNING: The license listed LGPLv2.1 was not in the licenses collected fo=
r glibc-locale=0A=
> WARNING: The license listed GPLv2 was not in the licenses collected for g=
libc-locale=0A=
> WARNING: The license listed LGPLv2.1 was not in the licenses collected fo=
r glibc-locale=0A=
> WARNING: The license listed ntp was not in the licenses collected for ntp=
=0A=
> WARNING: The license listed ntp was not in the licenses collected for ntp=
=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-boot=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-eclipse-debug=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-full-cmdline=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-full-cmdline=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-full-cmdline=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-full-cmdline=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-full-cmdline=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-full-cmdline=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-full-cmdline=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-full-cmdline=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-ssh-openssh=0A=
> WARNING: The license listed MIT was not in the licenses collected for pac=
kagegroup-core-tools-debug=0A=
> WARNING: The license listed vim was not in the licenses collected for vim=
=0A=
> DEBUG: Shell function license_create_manifest finished=0A=
> NOTE: Executing write_image_manifest ...=0A=
> DEBUG: Executing python function write_image_manifest=0A=
> DEBUG: Python function write_image_manifest finished=0A=
> NOTE: Executing ssh_allow_empty_password ...=0A=
> DEBUG: Executing shell function ssh_allow_empty_password=0A=
> sed: warning: failed to get security context of /home/jimr/tera/yocto/diz=
zy/build/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/root=
fs/etc/ssh/sshd_config: No data availablesed: warning: failed to get securi=
ty context of /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-li=
nux/core-image-full-cmdline/1.0-r0/rootfs/etc/ssh/sshd_config: No data avai=
lableDEBUG: Shell function ssh_allow_empty_password finished=0A=
> NOTE: Executing postinst_enable_logging ...=0A=
> DEBUG: Executing shell function postinst_enable_logging=0A=
> DEBUG: Shell function postinst_enable_logging finished=0A=
> NOTE: Executing rootfs_update_timestamp ...=0A=
> DEBUG: Executing shell function rootfs_update_timestamp=0A=
> DEBUG: Shell function rootfs_update_timestamp finished=0A=
> NOTE: Executing: ldconfig -r/home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs-c new -v=0A=
> NOTE: ###### Generate images #######=0A=
> NOTE: Executing mklibs_optimize_image ...=0A=
> DEBUG: Executing shell function mklibs_optimize_image=0A=
> DEBUG: Shell function mklibs_optimize_image finished=0A=
> NOTE: Executing prelink_image ...=0A=
> DEBUG: Executing shell function prelink_image=0A=
> Size before prelinking 210672.=0A=
> Size after prelinking 212588.=0A=
> DEBUG: Shell function prelink_image finished=0A=
> NOTE: The image creation groups are: [['ext3', 'cpio']]=0A=
> NOTE: Running image creation script for cpio: /home/jimr/tera/yocto/dizzy=
/build/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/temp/c=
reate_image.cpio ...=0A=
> NOTE: Creating symlinks for ext3 image ...=0A=
> NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.ext3 -> core-i=
mage-full-cmdline-spectra-ls-20150220171753.rootfs.ext3=0A=
> NOTE: Creating symlinks for cpio image ...=0A=
> NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.cpio.gz -> cor=
e-image-full-cmdline-spectra-ls-20150220171753.rootfs.cpio.gz=0A=
> DEBUG: Python function do_rootfs finished=0A=
> [jimr@krusty spectra_ls-poky-linux]$=0A=
>=0A=
>=0A=
>=0A=
> ________________________________________=0A=
> From: Paul Eggleton [paul.eggleton@linux.intel.com]=0A=
> Sent: Friday, February 20, 2015 2:51 AM=0A=
> To: Jim Rafert=0A=
> Cc: yocto@yoctoproject.org=0A=
> Subject: Re: [yocto] Simple recipe quit working in dizzy=0A=
>=0A=
> Hi Jim,=0A=
>=0A=
> On Wednesday 18 February 2015 20:33:43 Jim Rafert wrote:=0A=
>> The following recipe, spectra-postbuild_0.1.bb, quit working when I port=
ed=0A=
>> from 1.6 daisy to 1.7.1 dizzy.  I include the recipe in my image by addi=
ng=0A=
>> it at the end of of the IMAGE_INSTALL_append variable in my local.conf=
=0A=
>> file.  The purpose of the recipe is simply to lay down some files that w=
ill=0A=
>> later be used by an installer script.  Two if the files are deposited in=
=0A=
>> the root directory, and the rest are placed in the /install/spectra=0A=
>> directory, which is created by the recipe.  Nothing is compiled or=0A=
>> transformed in any way.=0A=
>>=0A=
>> When I bitbake the recipe, then bitbake core-image-full-cmdline, both=0A=
>> complete without errors. When I look at the contents of the rpm file=0A=
>> produced by the recipe, all the files and directories are listed. Howeve=
r,=0A=
>> when I examine the file system images created, only the two files that I=
=0A=
>> place in the root directory (/) are there, and the entire /install=0A=
>> directory hierarchy is missing. If I modify the recipe such that the=0A=
>> missing files are placed in a directory that is already created by other=
=0A=
>> recipes (/home/root), all the files are deposited as expected.=0A=
>>=0A=
>> I have looked at section 5.6 of the Yocto reference manual, "Moving to t=
he=0A=
>> Yocto Project 1.7 Release", but did not see anything that was obviously=
=0A=
>> relevant.=0A=
>>=0A=
>> Can someone tell me how to fix this for dizzy?=0A=
>>=0A=
>> ######################################################=0A=
>> # spectra-postbuild_0.1.bb=0A=
>> ######################################################=0A=
>>=0A=
>> SUMMARY =3D "Post processing of configuration files for SpectraOS"=0A=
>> SECTION =3D "base"=0A=
>> LICENSE =3D "GPLv2"=0A=
>> LIC_FILES_CHKSUM =3D=0A=
>> "file://${WORKDIR}/COPYRIGHT;md5=3D349c872e0066155e1818b786938876a4"=0A=
>> PR =3D "r0"=0A=
>>=0A=
>> SRC_URI =3D "file://inittab \=0A=
>>         file://fstab \=0A=
>>         file://rsyslog.conf \=0A=
>>             file://profile \=0A=
>>         file://grub.cfg \=0A=
>>         file://mount.sh \=0A=
>>         file://RELEASE-NOTES.txt \=0A=
>>         file://Spectra-OS-Version \=0A=
>>         file://initializeCustomKernelModules \=0A=
>>         file://firewall \=0A=
>>         file://sysctl.conf \=0A=
>>             file://InstallOS.sh \=0A=
>>         file://COPYRIGHT \=0A=
>>             file://WinCE_LCM.tar.bz \=0A=
>>         "=0A=
>>=0A=
>> FILES_${PN} =3D  "/RELEASE-NOTES.txt \=0A=
>>                  /Spectra-OS-Version \=0A=
>>                  /install \=0A=
>>                  /install/spectra \=0A=
>>                  /install/spectra/InstallOS.sh \=0A=
>>                  /install/spectra/fstab \=0A=
>>                  /install/spectra/mount.sh \=0A=
>>                  /install/spectra/grub.cfg \=0A=
>>                  /install/spectra/rsyslog.conf \=0A=
>>                  /install/spectra/profile \=0A=
>>                  /install/spectra/inittab \=0A=
>>                  /install/spectra/WinCE_LCM.tar.bz \=0A=
>>                  /install/spectra/sysctl.conf \=0A=
>>                  /install/spectra/init.d \=0A=
>>                  /install/spectra/rc5.d \=0A=
>>                  /install/spectra/init.d/initializeCustomKernelModules \=
=0A=
>>                  /install/spectra/init.d/firewall \=0A=
>>                  "=0A=
>>=0A=
>> do_install () {=0A=
>>      install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}=0A=
>>      install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}=0A=
>>          install -d ${D}/install=0A=
>>          install -d ${D}/install/spectra=0A=
>>          install -m 544 ${WORKDIR}/inittab ${D}/install/spectra=0A=
>>          install -m 755 ${WORKDIR}/fstab ${D}/install/spectra=0A=
>>          install -m 755 ${WORKDIR}/rsyslog.conf ${D}/install/spectra=0A=
>>          install -m 755 ${WORKDIR}/profile ${D}/install/spectra=0A=
>>          install -m 755 ${WORKDIR}/grub.cfg ${D}/install/spectra=0A=
>>          install -m 755 ${WORKDIR}/mount.sh ${D}/install/spectra=0A=
>>          install -m 755 ${WORKDIR}/InstallOS.sh ${D}/install/spectra=0A=
>>          install -m 755 ${WORKDIR}/sysctl.conf ${D}/install/spectra=0A=
>>          install -m 644 ${WORKDIR}/WinCE_LCM.tar.bz ${D}/install/spectra=
=0A=
>>          install -m 755 ${WORKDIR}/firewall ${D}/install/spectra=0A=
>>          install -m 755 ${WORKDIR}/initializeCustomKernelModules=0A=
>> ${D}/install/spectra=0A=
>>=0A=
>> }=0A=
>=0A=
> Hmm, so I can't see anything immediately wrong with the recipe that would=
 lead=0A=
> to a problem such as what you describe, so rather than something expected=
=0A=
> change between releases this looks more like a bug. Is there anything in =
the=0A=
> log.do_rootfs for the image that might indicate something going wrong? Pe=
rhaps=0A=
> an uncaught error?=0A=
>=0A=
> Cheers,=0A=
> Paul=0A=
>=0A=
> --=0A=
>=0A=
> Paul Eggleton=0A=
> Intel Open Source Technology Centre=0A=
>=0A=
=0A=
=0A=
------------------------------=0A=
=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=
=0A=
=0A=
End of yocto Digest, Vol 53, Issue 97=0A=
*************************************=0A=
=0A=

