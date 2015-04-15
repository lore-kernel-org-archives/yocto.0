Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E270AE009B8; Tue, 14 Apr 2015 21:55:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41B21E0079F
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 21:55:19 -0700 (PDT)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by mail.invecas.com
	(10.0.30.131) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Wed, 15 Apr 2015 10:25:21 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Wed, 15 Apr 2015 10:25:12 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::b45c:f5fd:ad11:51c2%17]) with mapi id 15.00.0995.028;
	Wed, 15 Apr 2015 10:25:12 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] SRCREV Issue for custom linux kernel
Thread-Index: AQHQdqB+KHCiOibQ8E2+6f4p6IfbgZ1MDY2AgAF1ZDM=
Date: Wed, 15 Apr 2015 04:55:11 +0000
Message-ID: <1429073671526.21814@inedasystems.com>
References: <mailman.2398.1429003256.2787.yocto@yoctoproject.org>
	<1429008449674.58960@inedasystems.com>, <552D02E1.9020404@windriver.com>
In-Reply-To: <552D02E1.9020404@windriver.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
MIME-Version: 1.0
Subject: Re: SRCREV Issue for custom linux kernel
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
X-List-Received-Date: Wed, 15 Apr 2015 04:55:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,=0A=
=0A=
I downloaded the yocto from the following link:=0A=
=0A=
git clone -b dizzy git://git.yoctoproject.org/poky.git =0A=
=0A=
And added the my custom recipe for downloading our custom kernel from SVN. =
This gives the error.=0A=
=0A=
Regards,=0A=
=0A=
Raghavendra.=0A=
=0A=
    =0A=
________________________________________=0A=
From: Bruce Ashfield <bruce.ashfield@windriver.com>=0A=
Sent: Tuesday, April 14, 2015 5:36 PM=0A=
To: Raghavendra Kakarla; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] SRCREV Issue for custom linux kernel=0A=
=0A=
On 2015-04-14 6:48 AM, Raghavendra Kakarla wrote:=0A=
> Hi All,=0A=
>=0A=
> I got the an error while i am checking out the linux kernel from the SVN =
to build in the YOCTO project environment.=0A=
>=0A=
=0A=
What release is this ? master ? An older release ?=0A=
=0A=
And are you seeing this same error if you have a kernel recipe=0A=
that builds from git ? i.e. one of the Yocto reference boards=0A=
with a similar SRCREV ?=0A=
=0A=
The yocto kernel's expect to be able to validate the commits=0A=
and then modify the tree with additional git commands, so the=0A=
tree is either in git format, or is converted to a git format=0A=
(in the case of a tgz) .. so it could be that the SVN checkout=0A=
is preventing that conversion from happening.=0A=
=0A=
Bruce=0A=
=0A=
> Could please help me in resolving the Issue.=0A=
>=0A=
>=0A=
> Error log is:=0A=
> Log data follows:=0A=
> | DEBUG: Executing shell function do_validate_branches=0A=
> | NOTE: custom recipe is being built, forcing SRCREV to INVALID=0A=
> | NOTE: SRCREV validation skipped for AUTOREV or empty meta branch=0A=
> | fatal: ambiguous argument 'INVALID': unknown revision or path not in th=
e working tree.=0A=
> | Use '--' to separate paths from revisions=0A=
> | WARNING: exit code 128 from a shell command.=0A=
> | ERROR: Function failed: do_validate_branches (log file is located at /h=
ome/testuser/poky/build/tmp/work/dhruva-poky-linux/linux-yocto-custom/3.10.=
14-r0/temp/log.do_validate_branches.6852)=0A=
>=0A=
>=0A=
> Thanks in advance.=0A=
>=0A=
> Regards,=0A=
>=0A=
> Raghavendra K.=0A=
> ________________________________________=0A=
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on =
behalf of yocto-request@yoctoproject.org <yocto-request@yoctoproject.org>=
=0A=
> Sent: Tuesday, April 14, 2015 2:50 PM=0A=
> To: yocto@yoctoproject.org=0A=
> Subject: yocto Digest, Vol 55, Issue 46=0A=
>=0A=
> Send yocto mailing list submissions to=0A=
>          yocto@yoctoproject.org=0A=
>=0A=
> To subscribe or unsubscribe via the World Wide Web, visit=0A=
>          https://lists.yoctoproject.org/listinfo/yocto=0A=
> or, via email, send a message with subject or body 'help' to=0A=
>          yocto-request@yoctoproject.org=0A=
>=0A=
> You can reach the person managing the list at=0A=
>          yocto-owner@yoctoproject.org=0A=
>=0A=
> When replying, please edit your Subject line so it is more specific=0A=
> than "Re: Contents of yocto digest..."=0A=
>=0A=
>=0A=
> Today's Topics:=0A=
>=0A=
>     1. Re: yocto Digest, Vol 53, Issue 97 (Raghavendra Kakarla)=0A=
>=0A=
>=0A=
> ----------------------------------------------------------------------=0A=
>=0A=
> Message: 1=0A=
> Date: Tue, 14 Apr 2015 09:20:38 +0000=0A=
> From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>=0A=
> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>=0A=
> Subject: Re: [yocto] yocto Digest, Vol 53, Issue 97=0A=
> Message-ID: <1429003199394.19509@inedasystems.com>=0A=
> Content-Type: text/plain; charset=3D"iso-8859-1"=0A=
>=0A=
> Hi All,=0A=
>=0A=
> When I take kernel from the SVN I got the validation error that SRCREV is=
 not proper.=0A=
>=0A=
> Could you please help me in resolving this issue.=0A=
>=0A=
> Thanks in advance.=0A=
>=0A=
> Regards,=0A=
> Raghavendra.=0A=
>=0A=
>=0A=
> ________________________________________=0A=
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on =
behalf of yocto-request@yoctoproject.org <yocto-request@yoctoproject.org>=
=0A=
> Sent: Saturday, February 21, 2015 4:04 AM=0A=
> To: yocto@yoctoproject.org=0A=
> Subject: yocto Digest, Vol 53, Issue 97=0A=
>=0A=
> Send yocto mailing list submissions to=0A=
>          yocto@yoctoproject.org=0A=
>=0A=
> To subscribe or unsubscribe via the World Wide Web, visit=0A=
>          https://lists.yoctoproject.org/listinfo/yocto=0A=
> or, via email, send a message with subject or body 'help' to=0A=
>          yocto-request@yoctoproject.org=0A=
>=0A=
> You can reach the person managing the list at=0A=
>          yocto-owner@yoctoproject.org=0A=
>=0A=
> When replying, please edit your Subject line so it is more specific=0A=
> than "Re: Contents of yocto digest..."=0A=
>=0A=
>=0A=
> Today's Topics:=0A=
>=0A=
>     1. Re: Simple recipe quit working in dizzy (akuster)=0A=
>=0A=
>=0A=
> ----------------------------------------------------------------------=0A=
>=0A=
> Message: 1=0A=
> Date: Fri, 20 Feb 2015 14:28:10 -0800=0A=
> From: akuster <akuster@mvista.com>=0A=
> To: yocto@yoctoproject.org=0A=
> Subject: Re: [yocto] Simple recipe quit working in dizzy=0A=
> Message-ID: <54E7B4FA.502@mvista.com>=0A=
> Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed=0A=
>=0A=
>=0A=
>=0A=
> On 02/20/2015 09:49 AM, Jim Rafert wrote:=0A=
>> Hi Paul,=0A=
>>=0A=
>> Thank you for taking an interest in this.=0A=
>>=0A=
>> I looked at the log.do_rootfs, and didn't see anything that was immediat=
ely suspicious.=0A=
>> I have inlined the log at the end of my reply, here.=0A=
>>=0A=
>> I don't see how such a simple recipe could be broken by a Yocto bug, and=
 not have the=0A=
>> whole thing be massively broken.=0A=
>=0A=
> Is it possible for you to try your recipe on 'master'? that might tell=0A=
> use if something is missing in dizzy.=0A=
>=0A=
>=0A=
> - Armin=0A=
>>=0A=
>> -Jim-=0A=
>>=0A=
>> cat ./core-image-full-cmdline/1.0-r0/temp/log.do_rootfs=0A=
>> DEBUG: Executing python function rootfs_process_ignore=0A=
>> DEBUG: Python function rootfs_process_ignore finished=0A=
>> DEBUG: Executing python function rootfs_runtime_mapping=0A=
>> DEBUG: Python function rootfs_runtime_mapping finished=0A=
>> DEBUG: Executing python function do_rootfs=0A=
>> NOTE: configuring RPM platform settings=0A=
>> NOTE: configuring RPM system provides=0A=
>> NOTE: configuring RPM DB settings=0A=
>> NOTE: configuring Smart settings=0A=
>> NOTE: Note: adding Smart channel spectra_ls (35)=0A=
>> NOTE: Note: adding Smart channel i586 (30)=0A=
>> NOTE: Note: adding Smart channel all (25)=0A=
>> NOTE: adding Smart RPM DB channel=0A=
>> NOTE: Note: configuring RPM cross-install scriptlet_wrapper=0A=
>> NOTE: ###### Generate rootfs #######=0A=
>> NOTE: Executing '/home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-l=
inux/usr/bin/createrepo --update -q /home/jimr/tera/yocto/dizzy/build/tmp/d=
eploy/rpm/i586' ...=0A=
>> NOTE: Installing the following packages: libgcc1 parted grub dosfstools =
psplash vim udev-extraconf rsyslog libsoci nss rpm unzip zip spectra-postbu=
ild smartpm e2fsprogs-tune2fs packagegroup-core-eclipse-debug poco libstdc+=
+6 sqlite3 e2fsprogs-e2fsck openssl-staticdev boost packagegroup-core-ssh-o=
penssh packagegroup-core-boot packagegroup-core-full-cmdline rpmresolve ntp=
 e2fsprogs-mke2fs util-linux packagegroup-core-tools-debug openssl e2fsprog=
s sys-freedos e2fsprogs-badblocks locale-base-en-us locale-base-en-gb=0A=
>> NOTE: to be installed: libgcc1@i586 parted@i586 grub@i586 dosfstools@i58=
6 psplash@i586 vim@i586 udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@i=
586 rpm@i586 unzip@i586 zip@i586 spectra-postbuild@i586 smartpm@i586 e2fspr=
ogs-tune2fs@i586 packagegroup-core-eclipse-debug@all poco@i586 libstdc++6@i=
586 sqlite3@i586 e2fsprogs-e2fsck@i586 openssl-staticdev@i586 boost@i586 pa=
ckagegroup-core-ssh-openssh@all packagegroup-core-boot@spectra_ls packagegr=
oup-core-full-cmdline@all rpmresolve@i586 ntp@i586 e2fsprogs-mke2fs@i586 ut=
il-linux@i586 packagegroup-core-tools-debug@all openssl@i586 e2fsprogs@i586=
 sys-freedos@i586 e2fsprogs-badblocks@i586 locale-base-en-us@i586 locale-ba=
se-en-gb@i586=0A=
>> NOTE: /home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-linux/usr/bi=
n/smart --quiet --data-dir=3D/home/jimr/tera/yocto/dizzy/build/tmp/work/spe=
ctra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/var/lib/smart inst=
all -y libgcc1@i586 parted@i586 grub@i586 dosfstools@i586 psplash@i586 vim@=
i586 udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@i586 rpm@i586 unzip@=
i586 zip@i586 spectra-postbuild@i586 smartpm@i586 e2fsprogs-tune2fs@i586 pa=
ckagegroup-core-eclipse-debug@all poco@i586 libstdc++6@i586 sqlite3@i586 e2=
fsprogs-e2fsck@i586 openssl-staticdev@i586 boost@i586 packagegroup-core-ssh=
-openssh@all packagegroup-core-boot@spectra_ls packagegroup-core-full-cmdli=
ne@all rpmresolve@i586 ntp@i586 e2fsprogs-mke2fs@i586 util-linux@i586 packa=
gegroup-core-tools-debug@all openssl@i586 e2fsprogs@i586 sys-freedos@i586 e=
2fsprogs-badblocks@i586 locale-base-en-us@i586 locale-base-en-gb@i586=0A=
>> NOTE: Output from bash-4.3-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sh to /bin=
/bash=0A=
>> Output from busybox-1.22.1-r32@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ar to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gunzip to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/zcat to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bunzip=
2 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bzcat =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cpio to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gzip to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/tar to /bi=
n/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unzip =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/date to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/groups=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/id to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/touch to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/users =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/who to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/awk to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cmp to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/diff t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/patch =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sed to /bi=
n/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/vi to /bin=
/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/find t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/grep to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/egrep to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/fgrep to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/xargs =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/halt to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/poweroff =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/reboot to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/rfkil=
l to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/depmod to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/insmod to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/lsmod to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modprobe =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rmmod to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ash to /bi=
n/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sh to /bin=
/bash=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fstrim to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[ to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[[ to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/addgr=
oup to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/addus=
er to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/basena=
me to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cat to /bi=
n/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chattr to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chgrp to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chmod to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chown to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chroo=
t to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chvt t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/clear =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cp to /bin=
/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cut to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dc to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dd to /bin=
/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/deallo=
cvt to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/delgr=
oup to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/delus=
er to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/df to /bin=
/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dirnam=
e to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dmesg to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dnsdomainn=
ame to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/du to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dumpkmap t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dumple=
ases to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/echo to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/env to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expr t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/false to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/fbset=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fdisk to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/flock =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/free t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fsck to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fuser =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/getty to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/head t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hexdum=
p to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/hostname t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/hwclock t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifconfig =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifdown to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifup to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ip to /bi=
n/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/killal=
l to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/klogd to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/less t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ln to /bin=
/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/loadf=
ont to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/loadkmap =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logger=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/lognam=
e to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/logread t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/losetup t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ls to /bin=
/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/md5sum=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/microc=
om to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mkdir to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mkfifo=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mknod to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkswap to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/more to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mount to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mv to /bin=
/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nc to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/netstat to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nohup =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nslook=
up to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/od to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/openvt=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pidof to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/pivot_roo=
t to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/printf=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ps to /bin=
/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pwd to /bi=
n/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/rdate=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/readli=
nk to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/realpa=
th to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/renice=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/reset =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rm to /bin=
/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rmdir to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/route to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/run-parts =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/seq to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/setconsol=
e to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha3su=
m to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sleep to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sort t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/start-sto=
p-daemon to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stat to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/string=
s to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stty to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sulogin t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapoff t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapon to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/switch_ro=
ot to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sync to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sysctl to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/syslogd t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tail t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tee to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/telnet=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/test t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tftp t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/time t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/top to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tr to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/true to /b=
in/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tty to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/udhcpc to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/udhcp=
d to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/umount to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/uname to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uniq t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptime=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/usleep to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/watch to /=
bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wc to =
/bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wget t=
o /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/which =
to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/whoami=
 to /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/yes to=
 /bin/busybox.nosuid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping to /b=
in/busybox.suid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping6 to /=
bin/busybox.suid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/login to /=
bin/busybox.suid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/passwd=
 to /bin/busybox.suid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/su to /bin=
/busybox.suid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tracer=
oute to /bin/busybox.suid=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/vlock =
to /bin/busybox.suid=0A=
>> Output from init-ifupdown-1.0-r7@i586:=0A=
>>    Removing any system startup links for networking ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/netw=
orking.=0A=
>> Output from initscripts-functions-1.0-r155@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/fun=
ctions to /etc/init.d/functions.initscripts=0A=
>> Output from run-postinsts-1.0-r9@all:=0A=
>>    Removing any system startup links for run-postinsts ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/run-=
postinsts.=0A=
>> Output from modutils-initscripts-1.0-r7@i586:=0A=
>>    Removing any system startup links for modutils.sh ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/modu=
tils.sh.=0A=
>> Output from udev-cache-182-r9@i586:=0A=
>>    Removing any system startup links for udev-cache ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/udev=
-cache.=0A=
>> Output from busybox-hwclock-1.22.1-r32@i586:=0A=
>>    Removing any system startup links for hwclock.sh ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/hwcl=
ock.sh.=0A=
>> Output from kernel-image-3.10.62-ltsi-yocto-standard-3.10.62+git0+f4ab00=
d96a_b2ac933df1-r0.1@spectra_ls:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//boot/bzImage t=
o /boot/bzImage-3.10.62-ltsi-yocto-standard=0A=
>> Output from busybox-syslog-1.22.1-r32@i586:=0A=
>>    Removing any system startup links for syslog ...=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog.con=
f to /etc/syslog.conf.busybox=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/sys=
log to /etc/init.d/syslog.busybox=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog-sta=
rtup.conf to /etc/syslog-startup.conf.busybox=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/sysl=
og.=0A=
>> Output from util-linux-losetup-2.24.2-r1@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/losetup t=
o /sbin/losetup.util-linux=0A=
>> Output from killall-22.21-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/killal=
l to /usr/bin/killall.psmisc=0A=
>> Output from shadow-4.2.1-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/passwd=
 to /usr/bin/passwd.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chfn t=
o /usr/bin/chfn.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/newgrp=
 to /usr/bin/newgrp.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chsh t=
o /usr/bin/chsh.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/groups=
 to /usr/bin/groups.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chpas=
swd to /usr/sbin/chpasswd.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/login to /=
bin/login.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/vipw to /=
sbin/vipw.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/vigr to /=
sbin/vigr.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/su to /bin=
/su.shadow=0A=
>> Output from kbd-2.0.2-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chvt t=
o /usr/bin/chvt.kbd=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/deallo=
cvt to /usr/bin/deallocvt.kbd=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fgcons=
ole to /usr/bin/fgconsole.kbd=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/openvt=
 to /usr/bin/openvt.kbd=0A=
>> Output from openssh-scp-6.6p1-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/scp to=
 /usr/bin/scp.openssh=0A=
>> Output from grep-2.19-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/grep to /b=
in/grep.grep=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/egrep to /=
bin/egrep.grep=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/fgrep to /=
bin/fgrep.grep=0A=
>> Output from net-tools-1.60+25-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/arp to /s=
bin/arp.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifconfig =
to /sbin/ifconfig.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ipmaddr t=
o /sbin/ipmaddr.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/iptunnel =
to /sbin/iptunnel.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mii-tool =
to /sbin/mii-tool.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/nameif to=
 /sbin/nameif.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/plipconfi=
g to /sbin/plipconfig.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rarp to /=
sbin/rarp.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/route to =
/sbin/route.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/slattach =
to /sbin/slattach.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dnsdomainn=
ame to /bin/dnsdomainname.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/domainname=
 to /bin/domainname.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/hostname t=
o /bin/hostname.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/netstat to=
 /bin/netstat.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/nisdomainn=
ame to /bin/nisdomainname.net-tools=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ypdomainna=
me to /bin/ypdomainname.net-tools=0A=
>> Output from sysklogd-1.5-r7@i586:=0A=
>> update-rc.d: /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-=
linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/syslog exists during=
 rc.d purge (continuing)=0A=
>>    Removing any system startup links for syslog ...=0A=
>>     /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/cor=
e-image-full-cmdline/1.0-r0/rootfs/etc/rc0.d/K20syslog=0A=
>>     /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/cor=
e-image-full-cmdline/1.0-r0/rootfs/etc/rc1.d/K20syslog=0A=
>>     /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/cor=
e-image-full-cmdline/1.0-r0/rootfs/etc/rc2.d/S20syslog=0A=
>>     /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/cor=
e-image-full-cmdline/1.0-r0/rootfs/etc/rc3.d/S20syslog=0A=
>>     /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/cor=
e-image-full-cmdline/1.0-r0/rootfs/etc/rc4.d/S20syslog=0A=
>>     /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/cor=
e-image-full-cmdline/1.0-r0/rootfs/etc/rc5.d/S20syslog=0A=
>>     /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/cor=
e-image-full-cmdline/1.0-r0/rootfs/etc/rc6.d/K20syslog=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/syslogd t=
o /sbin/syslogd.sysklogd=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/klogd to =
/sbin/klogd.sysklogd=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/sys=
log to /etc/init.d/syslog.sysklogd=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog.con=
f to /etc/syslog.conf.sysklogd=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/sysl=
og.=0A=
>> Output from bc-1.06-r2@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dc to =
/usr/bin/dc.bc=0A=
>> Output from fuser-22.21-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fuser =
to /usr/bin/fuser.psmisc=0A=
>> Output from sed-4.2.2-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sed to /bi=
n/sed.sed=0A=
>> Output from gawk-4.1.1-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/awk to=
 /usr/bin/gawk=0A=
>> Output from diffutils-3.3-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/diff t=
o /usr/bin/diff.diffutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cmp to=
 /usr/bin/cmp.diffutils=0A=
>> Output from tar-1.27.1-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/tar to /bi=
n/tar.tar=0A=
>> Output from cpio-2.11-r5@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cpio to /b=
in/cpio.cpio=0A=
>> Output from sysvinit-pidof-2.88dsf-r14@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pidof to /=
bin/pidof.sysvinit=0A=
>> Output from findutils-4.4.2-r6@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/find t=
o /usr/bin/find.findutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/xargs =
to /usr/bin/xargs.findutils=0A=
>> Output from psplash-0.1+git0+afd4e228c6-r15@i586:=0A=
>>    Removing any system startup links for psplash.sh ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/pspl=
ash.sh.=0A=
>> Output from time-1.7-r2@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/time t=
o /usr/bin/time.time=0A=
>> Output from mktemp-1.7-r3@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to =
/bin/mktemp.mktemp=0A=
>> Output from gzip-1.6-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gunzip to =
/bin/gunzip.gzip=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gzip to /b=
in/gzip.gzip=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/zcat to /b=
in/zcat.gzip=0A=
>> Output from iproute2-3.16.0-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ip to /sb=
in/ip.iproute2=0A=
>> Output from util-linux-readprofile-2.24.2-r1@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/readprofi=
le to /sbin/readprofile.util-linux=0A=
>> Output from less-466-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/less t=
o /usr/bin/less.less=0A=
>> Output from cronie-1.4.11-r0@i586:=0A=
>>    Removing any system startup links for crond ...=0A=
>> Running groupadd commands...=0A=
>> NOTE: Performing groupadd with [--root /home/jimr/tera/yocto/dizzy/build=
/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --sys=
tem crontab] and 10 times of retry=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/cron=
d.=0A=
>> Output from keymaps-1.0-r31@spectra_ls:=0A=
>>    Removing any system startup links for keymap.sh ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/keym=
ap.sh.=0A=
>> Output from patch-2.7.1-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/patch =
to /usr/bin/patch.patch=0A=
>> Output from kmod-18+git0+ae58de0fcb-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/insmod to=
 /sbin/insmod.kmod=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modprobe =
to /sbin/modprobe.kmod=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rmmod to =
/sbin/rmmod.kmod=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modinfo t=
o /sbin/modinfo.kmod=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/lsmod to /=
bin/lsmod.kmod=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/lsmod to =
/bin/lsmod.kmod=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/depmod to=
 /sbin/depmod.kmod=0A=
>> Output from openssh-ssh-6.6p1-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ssh to=
 /usr/bin/ssh.openssh=0A=
>> Output from sysvinit-2.88dsf-r14@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/init to /=
sbin/init.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mountpoint=
 to /bin/mountpoint.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/halt to /=
sbin/halt.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/reboot to=
 /sbin/reboot.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/runlevel =
to /sbin/runlevel.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/shutdown =
to /sbin/shutdown.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/poweroff =
to /sbin/poweroff.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/last t=
o /usr/bin/last.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mesg t=
o /usr/bin/mesg.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/utmpdu=
mp to /usr/bin/utmpdump.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wall t=
o /usr/bin/wall.sysvinit=0A=
>> Output from psplash-default-0.1+git0+afd4e228c6-r15@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/psplas=
h to /usr/bin/psplash-default=0A=
>> Output from ntp-4.2.6p3-r5@i586:=0A=
>>    Removing any system startup links for ntpd ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ntpd=
.=0A=
>> Output from coreutils-8.22-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[ to /=
usr/bin/lbracket.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/arch t=
o /usr/bin/arch.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/basena=
me to /usr/bin/basename.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chcon =
to /usr/bin/chcon.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cksum =
to /usr/bin/cksum.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/comm t=
o /usr/bin/comm.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/csplit=
 to /usr/bin/csplit.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cut to=
 /usr/bin/cut.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dir to=
 /usr/bin/dir.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dircol=
ors to /usr/bin/dircolors.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dirnam=
e to /usr/bin/dirname.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/du to =
/usr/bin/du.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/env to=
 /usr/bin/env.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expand=
 to /usr/bin/expand.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expr t=
o /usr/bin/expr.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/factor=
 to /usr/bin/factor.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fmt to=
 /usr/bin/fmt.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fold t=
o /usr/bin/fold.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/groups=
 to /usr/bin/groups.shadow=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/head t=
o /usr/bin/head.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hostid=
 to /usr/bin/hostid.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/id to =
/usr/bin/id.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/instal=
l to /usr/bin/install.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/join t=
o /usr/bin/join.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/link t=
o /usr/bin/link.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/lognam=
e to /usr/bin/logname.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/md5sum=
 to /usr/bin/md5sum.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mkfifo=
 to /usr/bin/mkfifo.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nice t=
o /usr/bin/nice.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nl to =
/usr/bin/nl.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nohup =
to /usr/bin/nohup.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nproc =
to /usr/bin/nproc.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/od to =
/usr/bin/od.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/paste =
to /usr/bin/paste.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pathch=
k to /usr/bin/pathchk.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pinky =
to /usr/bin/pinky.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pr to =
/usr/bin/pr.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/printe=
nv to /usr/bin/printenv.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/printf=
 to /usr/bin/printf.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ptx to=
 /usr/bin/ptx.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/readli=
nk to /usr/bin/readlink.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/realpa=
th to /usr/bin/realpath.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/runcon=
 to /usr/bin/runcon.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/seq to=
 /usr/bin/seq.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha1su=
m to /usr/bin/sha1sum.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha224=
sum to /usr/bin/sha224sum.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha256=
sum to /usr/bin/sha256sum.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha384=
sum to /usr/bin/sha384sum.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha512=
sum to /usr/bin/sha512sum.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/shred =
to /usr/bin/shred.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/shuf t=
o /usr/bin/shuf.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sort t=
o /usr/bin/sort.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/split =
to /usr/bin/split.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/stdbuf=
 to /usr/bin/stdbuf.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sum to=
 /usr/bin/sum.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tac to=
 /usr/bin/tac.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tail t=
o /usr/bin/tail.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tee to=
 /usr/bin/tee.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/test t=
o /usr/bin/test.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/timeou=
t to /usr/bin/timeout.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tr to =
/usr/bin/tr.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/trunca=
te to /usr/bin/truncate.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tsort =
to /usr/bin/tsort.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tty to=
 /usr/bin/tty.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unexpa=
nd to /usr/bin/unexpand.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uniq t=
o /usr/bin/uniq.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unlink=
 to /usr/bin/unlink.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptime=
 to /usr/bin/uptime.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/users =
to /usr/bin/users.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/vdir t=
o /usr/bin/vdir.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wc to =
/usr/bin/wc.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/who to=
 /usr/bin/who.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/whoami=
 to /usr/bin/whoami.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/yes to=
 /usr/bin/yes.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cat to /bi=
n/cat.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chgrp to /=
bin/chgrp.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chmod to /=
bin/chmod.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chown to /=
bin/chown.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cp to /bin=
/cp.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/date to /b=
in/date.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dd to /bin=
/dd.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/echo to /b=
in/echo.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/false to /=
bin/false.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /b=
in/kill.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ln to /bin=
/ln.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ls to /bin=
/ls.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mkdir to /=
bin/mkdir.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mknod to /=
bin/mknod.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mv to /bin=
/mv.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pwd to /bi=
n/pwd.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rm to /bin=
/rm.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rmdir to /=
bin/rmdir.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sleep to /=
bin/sleep.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stty to /b=
in/stty.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sync to /b=
in/sync.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/touch to /=
bin/touch.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/true to /b=
in/true.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/uname to /=
bin/uname.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stat to /b=
in/stat.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chroo=
t to /usr/sbin/chroot.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/base64 to =
/usr/bin/base64.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to =
/usr/bin/mktemp.coreutils=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/df to /usr=
/bin/df.coreutils=0A=
>> Output from iputils-ping-s20121221-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping to /b=
in/ping.iputils=0A=
>> Output from rsyslog-7.4.4-r0@i586:=0A=
>>    Removing any system startup links for rsyslogd ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/rsys=
logd.=0A=
>> Output from rpcbind-0.2.1-r0@i586:=0A=
>>    Removing any system startup links for rpcbind ...=0A=
>> Running useradd commands...=0A=
>> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/=
tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --syst=
em --no-create-home --home-dir /                        --shell /bin/false =
--user-group rpc] and 10 times of retry=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/rpcb=
ind.=0A=
>> Output from bzip2-1.0.6-r5@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bunzip=
2 to /usr/bin/bunzip2.bzip2=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bzcat =
to /usr/bin/bzcat.bzip2=0A=
>> Output from procps-3.2.8-r12@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/top to=
 /usr/bin/top.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptime=
 to /usr/bin/uptime.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/free t=
o /usr/bin/free.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pkill =
to /usr/bin/pkill.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pmap t=
o /usr/bin/pmap.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /b=
in/kill.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sysctl to=
 /sbin/sysctl.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ps to /bin=
/ps.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pgrep =
to /usr/bin/pgrep.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pwdx t=
o /usr/bin/pwdx.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/watch to /=
usr/bin/watch.procps=0A=
>> Output from lighttpd-1.4.35-r1@i586:=0A=
>>    Removing any system startup links for lighttpd ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ligh=
ttpd.=0A=
>> Output from tcf-agent-0.4.0+git0+4ef94ecb92-r2@i586:=0A=
>>    Removing any system startup links for tcf-agent ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/tcf-=
agent.=0A=
>> Output from openssh-sshd-6.6p1-r0@i586:=0A=
>>    Removing any system startup links for sshd ...=0A=
>> Running useradd commands...=0A=
>> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/=
tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --syst=
em --no-create-home --home-dir /var/run/sshd --shell /bin/false --user-grou=
p sshd] and 10 times of retry=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/sshd=
.=0A=
>> Output from udev-182-r9@i586:=0A=
>>    Removing any system startup links for udev ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/udev=
.=0A=
>> Output from util-linux-fdisk-2.24.2-r1@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fdisk to =
/sbin/fdisk.util-linux=0A=
>> Output from at-3.1.15-r0@i586:=0A=
>>    Removing any system startup links for atd ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/atd.=
=0A=
>> Output from dbus-1-1.8.2-r0@i586:=0A=
>>    Removing any system startup links for dbus-1 ...=0A=
>> Running groupadd commands...=0A=
>> NOTE: Performing groupadd with [--root /home/jimr/tera/yocto/dizzy/build=
/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs -r ne=
tdev] and 10 times of retry=0A=
>> Running useradd commands...=0A=
>> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/=
tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --syst=
em --home /var/lib/dbus                        --no-create-home --shell /bi=
n/false                        --user-group messagebus] and 10 times of ret=
ry=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/dbus=
-1.=0A=
>> Output from util-linux-umount-2.24.2-r1@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/umount to =
/bin/umount.util-linux=0A=
>> Output from util-linux-mount-2.24.2-r1@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mount to /=
bin/mount.util-linux=0A=
>> Output from util-linux-swaponoff-2.24.2-r1@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapoff t=
o /sbin/swapoff.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapon to=
 /sbin/swapon.util-linux=0A=
>> Output from nfs-utils-client-1.3.0-r0@i586:=0A=
>>    Removing any system startup links for nfscommon ...=0A=
>> Running useradd commands...=0A=
>> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build/=
tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --syst=
em  --home-dir /var/lib/nfs                              --shell /bin/false=
 --user-group rpcuser] and 10 times of retry=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/nfsc=
ommon.=0A=
>> Output from iputils-ping6-s20121221-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping6 to /=
bin/ping6.iputils=0A=
>> Output from e2fsprogs-1.42.9-r0@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chattr to =
/bin/chattr.e2fsprogs=0A=
>> Output from util-linux-2.24.2-r1@i586:=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dmesg to /=
bin/dmesg.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /b=
in/kill.procps=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/more to /b=
in/more.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkswap to=
 /sbin/mkswap.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/blockdev =
to /sbin/blockdev.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/pivot_roo=
t to /sbin/pivot_root.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/switch_ro=
ot to /sbin/switch_root.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkfs.mini=
x to /sbin/mkfs.minix.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hexdum=
p to /usr/bin/hexdump.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/last t=
o /usr/bin/last.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logger=
 to /usr/bin/logger.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mesg t=
o /usr/bin/mesg.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/renice=
 to /usr/bin/renice.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wall t=
o /usr/bin/wall.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/setsid=
 to /usr/bin/setsid.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chrt t=
o /usr/bin/chrt.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/flock =
to /usr/bin/flock.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/utmpdu=
mp to /usr/bin/utmpdump.sysvinit=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/eject =
to /usr/bin/eject.util-linux=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/getopt to =
/usr/bin/getopt=0A=
>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sulogin t=
o /sbin/sulogin.util-linux=0A=
>> Output from nfs-utils-1.3.0-r0@i586:=0A=
>>    Removing any system startup links for nfsserver ...=0A=
>>    Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/nfss=
erver.=0A=
>>=0A=
>>=0A=
>> NOTE: Installing the following packages:=0A=
>> NOTE: Installing complementary packages ...=0A=
>> NOTE: Installing the following packages: mc-locale-en-gb glibc-locale-en=
-gb libglib-2.0-locale-en-gb=0A=
>> NOTE: installing attempt only packages...=0A=
>> NOTE: Attempting mc-locale-en-gb@i586 glibc-locale-en-gb@i586 libglib-2.=
0-locale-en-gb@i586=0A=
>> NOTE:=0A=
>>=0A=
>> NOTE: Running intercept scripts:=0A=
>> NOTE: Executing write_package_manifest ...=0A=
>> DEBUG: Executing python function write_package_manifest=0A=
>> DEBUG: Python function write_package_manifest finished=0A=
>> NOTE: Executing license_create_manifest ...=0A=
>> DEBUG: Executing shell function license_create_manifest=0A=
>> WARNING: The license listed GPLv2 was not in the licenses collected for =
glibc-locale=0A=
>> WARNING: The license listed LGPLv2.1 was not in the licenses collected f=
or glibc-locale=0A=
>> WARNING: The license listed GPLv2 was not in the licenses collected for =
glibc-locale=0A=
>> WARNING: The license listed LGPLv2.1 was not in the licenses collected f=
or glibc-locale=0A=
>> WARNING: The license listed GPLv2 was not in the licenses collected for =
glibc-locale=0A=
>> WARNING: The license listed LGPLv2.1 was not in the licenses collected f=
or glibc-locale=0A=
>> WARNING: The license listed GPLv2 was not in the licenses collected for =
glibc-mtrace=0A=
>> WARNING: The license listed LGPLv2.1 was not in the licenses collected f=
or glibc-mtrace=0A=
>> WARNING: The license listed CLOSED was not in the licenses collected for=
 libsoci=0A=
>> WARNING: The license listed GPLv2 was not in the licenses collected for =
glibc-locale=0A=
>> WARNING: The license listed LGPLv2.1 was not in the licenses collected f=
or glibc-locale=0A=
>> WARNING: The license listed GPLv2 was not in the licenses collected for =
glibc-locale=0A=
>> WARNING: The license listed LGPLv2.1 was not in the licenses collected f=
or glibc-locale=0A=
>> WARNING: The license listed ntp was not in the licenses collected for nt=
p=0A=
>> WARNING: The license listed ntp was not in the licenses collected for nt=
p=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-boot=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-eclipse-debug=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-full-cmdline=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-full-cmdline=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-full-cmdline=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-full-cmdline=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-full-cmdline=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-full-cmdline=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-full-cmdline=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-full-cmdline=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-ssh-openssh=0A=
>> WARNING: The license listed MIT was not in the licenses collected for pa=
ckagegroup-core-tools-debug=0A=
>> WARNING: The license listed vim was not in the licenses collected for vi=
m=0A=
>> DEBUG: Shell function license_create_manifest finished=0A=
>> NOTE: Executing write_image_manifest ...=0A=
>> DEBUG: Executing python function write_image_manifest=0A=
>> DEBUG: Python function write_image_manifest finished=0A=
>> NOTE: Executing ssh_allow_empty_password ...=0A=
>> DEBUG: Executing shell function ssh_allow_empty_password=0A=
>> sed: warning: failed to get security context of /home/jimr/tera/yocto/di=
zzy/build/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/roo=
tfs/etc/ssh/sshd_config: No data availablesed: warning: failed to get secur=
ity context of /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-l=
inux/core-image-full-cmdline/1.0-r0/rootfs/etc/ssh/sshd_config: No data ava=
ilableDEBUG: Shell function ssh_allow_empty_password finished=0A=
>> NOTE: Executing postinst_enable_logging ...=0A=
>> DEBUG: Executing shell function postinst_enable_logging=0A=
>> DEBUG: Shell function postinst_enable_logging finished=0A=
>> NOTE: Executing rootfs_update_timestamp ...=0A=
>> DEBUG: Executing shell function rootfs_update_timestamp=0A=
>> DEBUG: Shell function rootfs_update_timestamp finished=0A=
>> NOTE: Executing: ldconfig -r/home/jimr/tera/yocto/dizzy/build/tmp/work/s=
pectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs-c new -v=0A=
>> NOTE: ###### Generate images #######=0A=
>> NOTE: Executing mklibs_optimize_image ...=0A=
>> DEBUG: Executing shell function mklibs_optimize_image=0A=
>> DEBUG: Shell function mklibs_optimize_image finished=0A=
>> NOTE: Executing prelink_image ...=0A=
>> DEBUG: Executing shell function prelink_image=0A=
>> Size before prelinking 210672.=0A=
>> Size after prelinking 212588.=0A=
>> DEBUG: Shell function prelink_image finished=0A=
>> NOTE: The image creation groups are: [['ext3', 'cpio']]=0A=
>> NOTE: Running image creation script for cpio: /home/jimr/tera/yocto/dizz=
y/build/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/temp/=
create_image.cpio ...=0A=
>> NOTE: Creating symlinks for ext3 image ...=0A=
>> NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.ext3 -> core-=
image-full-cmdline-spectra-ls-20150220171753.rootfs.ext3=0A=
>> NOTE: Creating symlinks for cpio image ...=0A=
>> NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.cpio.gz -> co=
re-image-full-cmdline-spectra-ls-20150220171753.rootfs.cpio.gz=0A=
>> DEBUG: Python function do_rootfs finished=0A=
>> [jimr@krusty spectra_ls-poky-linux]$=0A=
>>=0A=
>>=0A=
>>=0A=
>> ________________________________________=0A=
>> From: Paul Eggleton [paul.eggleton@linux.intel.com]=0A=
>> Sent: Friday, February 20, 2015 2:51 AM=0A=
>> To: Jim Rafert=0A=
>> Cc: yocto@yoctoproject.org=0A=
>> Subject: Re: [yocto] Simple recipe quit working in dizzy=0A=
>>=0A=
>> Hi Jim,=0A=
>>=0A=
>> On Wednesday 18 February 2015 20:33:43 Jim Rafert wrote:=0A=
>>> The following recipe, spectra-postbuild_0.1.bb, quit working when I por=
ted=0A=
>>> from 1.6 daisy to 1.7.1 dizzy.  I include the recipe in my image by add=
ing=0A=
>>> it at the end of of the IMAGE_INSTALL_append variable in my local.conf=
=0A=
>>> file.  The purpose of the recipe is simply to lay down some files that =
will=0A=
>>> later be used by an installer script.  Two if the files are deposited i=
n=0A=
>>> the root directory, and the rest are placed in the /install/spectra=0A=
>>> directory, which is created by the recipe.  Nothing is compiled or=0A=
>>> transformed in any way.=0A=
>>>=0A=
>>> When I bitbake the recipe, then bitbake core-image-full-cmdline, both=
=0A=
>>> complete without errors. When I look at the contents of the rpm file=0A=
>>> produced by the recipe, all the files and directories are listed. Howev=
er,=0A=
>>> when I examine the file system images created, only the two files that =
I=0A=
>>> place in the root directory (/) are there, and the entire /install=0A=
>>> directory hierarchy is missing. If I modify the recipe such that the=0A=
>>> missing files are placed in a directory that is already created by othe=
r=0A=
>>> recipes (/home/root), all the files are deposited as expected.=0A=
>>>=0A=
>>> I have looked at section 5.6 of the Yocto reference manual, "Moving to =
the=0A=
>>> Yocto Project 1.7 Release", but did not see anything that was obviously=
=0A=
>>> relevant.=0A=
>>>=0A=
>>> Can someone tell me how to fix this for dizzy?=0A=
>>>=0A=
>>> ######################################################=0A=
>>> # spectra-postbuild_0.1.bb=0A=
>>> ######################################################=0A=
>>>=0A=
>>> SUMMARY =3D "Post processing of configuration files for SpectraOS"=0A=
>>> SECTION =3D "base"=0A=
>>> LICENSE =3D "GPLv2"=0A=
>>> LIC_FILES_CHKSUM =3D=0A=
>>> "file://${WORKDIR}/COPYRIGHT;md5=3D349c872e0066155e1818b786938876a4"=0A=
>>> PR =3D "r0"=0A=
>>>=0A=
>>> SRC_URI =3D "file://inittab \=0A=
>>>          file://fstab \=0A=
>>>          file://rsyslog.conf \=0A=
>>>              file://profile \=0A=
>>>          file://grub.cfg \=0A=
>>>          file://mount.sh \=0A=
>>>          file://RELEASE-NOTES.txt \=0A=
>>>          file://Spectra-OS-Version \=0A=
>>>          file://initializeCustomKernelModules \=0A=
>>>          file://firewall \=0A=
>>>          file://sysctl.conf \=0A=
>>>              file://InstallOS.sh \=0A=
>>>          file://COPYRIGHT \=0A=
>>>              file://WinCE_LCM.tar.bz \=0A=
>>>          "=0A=
>>>=0A=
>>> FILES_${PN} =3D  "/RELEASE-NOTES.txt \=0A=
>>>                   /Spectra-OS-Version \=0A=
>>>                   /install \=0A=
>>>                   /install/spectra \=0A=
>>>                   /install/spectra/InstallOS.sh \=0A=
>>>                   /install/spectra/fstab \=0A=
>>>                   /install/spectra/mount.sh \=0A=
>>>                   /install/spectra/grub.cfg \=0A=
>>>                   /install/spectra/rsyslog.conf \=0A=
>>>                   /install/spectra/profile \=0A=
>>>                   /install/spectra/inittab \=0A=
>>>                   /install/spectra/WinCE_LCM.tar.bz \=0A=
>>>                   /install/spectra/sysctl.conf \=0A=
>>>                   /install/spectra/init.d \=0A=
>>>                   /install/spectra/rc5.d \=0A=
>>>                   /install/spectra/init.d/initializeCustomKernelModules=
 \=0A=
>>>                   /install/spectra/init.d/firewall \=0A=
>>>                   "=0A=
>>>=0A=
>>> do_install () {=0A=
>>>       install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}=0A=
>>>       install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}=0A=
>>>           install -d ${D}/install=0A=
>>>           install -d ${D}/install/spectra=0A=
>>>           install -m 544 ${WORKDIR}/inittab ${D}/install/spectra=0A=
>>>           install -m 755 ${WORKDIR}/fstab ${D}/install/spectra=0A=
>>>           install -m 755 ${WORKDIR}/rsyslog.conf ${D}/install/spectra=
=0A=
>>>           install -m 755 ${WORKDIR}/profile ${D}/install/spectra=0A=
>>>           install -m 755 ${WORKDIR}/grub.cfg ${D}/install/spectra=0A=
>>>           install -m 755 ${WORKDIR}/mount.sh ${D}/install/spectra=0A=
>>>           install -m 755 ${WORKDIR}/InstallOS.sh ${D}/install/spectra=
=0A=
>>>           install -m 755 ${WORKDIR}/sysctl.conf ${D}/install/spectra=0A=
>>>           install -m 644 ${WORKDIR}/WinCE_LCM.tar.bz ${D}/install/spect=
ra=0A=
>>>           install -m 755 ${WORKDIR}/firewall ${D}/install/spectra=0A=
>>>           install -m 755 ${WORKDIR}/initializeCustomKernelModules=0A=
>>> ${D}/install/spectra=0A=
>>>=0A=
>>> }=0A=
>>=0A=
>> Hmm, so I can't see anything immediately wrong with the recipe that woul=
d lead=0A=
>> to a problem such as what you describe, so rather than something expecte=
d=0A=
>> change between releases this looks more like a bug. Is there anything in=
 the=0A=
>> log.do_rootfs for the image that might indicate something going wrong? P=
erhaps=0A=
>> an uncaught error?=0A=
>>=0A=
>> Cheers,=0A=
>> Paul=0A=
>>=0A=
>> --=0A=
>>=0A=
>> Paul Eggleton=0A=
>> Intel Open Source Technology Centre=0A=
>>=0A=
>=0A=
>=0A=
> ------------------------------=0A=
>=0A=
> --=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
>=0A=
>=0A=
> End of yocto Digest, Vol 53, Issue 97=0A=
> *************************************=0A=
>=0A=
>=0A=
>=0A=
> ------------------------------=0A=
>=0A=
> --=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
>=0A=
>=0A=
> End of yocto Digest, Vol 55, Issue 46=0A=
> *************************************=0A=
>=0A=
=0A=

