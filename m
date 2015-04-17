Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D4A7E009C2; Thu, 16 Apr 2015 21:48:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCE7EE00965
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 21:48:41 -0700 (PDT)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by mail.invecas.com
	(10.0.30.131) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Fri, 17 Apr 2015 10:18:44 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Fri, 17 Apr 2015 10:18:34 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::b45c:f5fd:ad11:51c2%17]) with mapi id 15.00.0995.028;
	Fri, 17 Apr 2015 10:18:34 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] SRCREV Issue for custom linux kernel
Thread-Index: AQHQeMnBu9q1y4KS4kq13G+xYvvg3Q==
Date: Fri, 17 Apr 2015 04:48:33 +0000
Message-ID: <1429246111958.33227@inedasystems.com>
References: <mailman.2398.1429003256.2787.yocto@yoctoproject.org>
	<1429008449674.58960@inedasystems.com>, <552D02E1.9020404@windriver.com>
	<1429076250273.10555@inedasystems.com>, <55308D66.9060205@windriver.com>
In-Reply-To: <55308D66.9060205@windriver.com>
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
X-List-Received-Date: Fri, 17 Apr 2015 04:48:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,=0A=
=0A=
Thank you for your reply.=0A=
=0A=
I modified the do_validate_sources function in kernel_yocto.bbclasses and n=
ow it is working.=0A=
=0A=
This issue is resolved now.=0A=
=0A=
I have another issue with the package building. While I am trying to build =
a package which is not present in open embedded git source i got the oe_run=
make errors.=0A=
=0A=
I wrote a recipe for that package by following the commands given by the yo=
cto project manual.=0A=
=0A=
Could help me in resolving this.=0A=
=0A=
Thanks in advance.=0A=
=0A=
Regards,=0A=
Raghavendra K. =0A=
=0A=
________________________________________=0A=
From: Bruce Ashfield <bruce.ashfield@windriver.com>=0A=
Sent: Friday, April 17, 2015 10:04 AM=0A=
To: Raghavendra Kakarla; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] SRCREV Issue for custom linux kernel=0A=
=0A=
On 2015-04-15 1:38 AM, Raghavendra Kakarla wrote:=0A=
> Hi Bruce,=0A=
>=0A=
> My recipe is like following:=0A=
>=0A=
>=0A=
> #   oe-core kernel classes to apply a subset of yocto kernel=0A=
> #   management to git managed kernel repositories.=0A=
> #=0A=
> # Warning:=0A=
> #=0A=
> #   Building this kernel without providing a defconfig or BSP=0A=
> #   configuration will result in build or boot errors. This is not a=0A=
> #   bug.=0A=
> #=0A=
> # Notes:=0A=
> #=0A=
> #   patches: patches can be merged into to the source git tree itself,=0A=
> #            added via the SRC_URI, or controlled via a BSP=0A=
> #            configuration.=0A=
> #=0A=
> #   example configuration addition:=0A=
> #            SRC_URI +=3D "file://smp.cfg"=0A=
> #   example patch addition:=0A=
> #            SRC_URI +=3D "file://0001-linux-version-tweak.patch=0A=
> #   example feature addition:=0A=
> #            SRC_URI +=3D "file://feature.scc"=0A=
> #=0A=
>=0A=
> inherit kernel=0A=
> require recipes-kernel/linux/linux-yocto.inc=0A=
>=0A=
> SRC_URI =3D "svn://192.168.24.190:9090/svn/trunk/code/kernels;module=3Dli=
nux-3.10.14;protocol=3Dhttp;user=3Dadmin;pswd=3DWelcome123"=0A=
=0A=
I don't have a SVN server with the linux kernel handy, so I wasn't able=0A=
to test this exact same configuration. But I can say a similar git=0A=
configuration to kernel.org, or to a tgz worked when I tried a test=0A=
build.=0A=
=0A=
Looking through the code more .. this is simply a case that isn't common=0A=
or anticipated. The mixing of the SVN SRCREV and the linux-yocto-custom=0A=
means that the code that follows is looking to manipulate the tree as a=0A=
git repository.=0A=
=0A=
Can you look at your linux source directory in the build, and see if=0A=
the SVN checkout has been converted to a git repo ?=0A=
=0A=
If so, the workaround would be to set SRCREV_machine =3D "AUTOREV", and=0A=
that should short circuit the SRCREV validation that simply won't be=0A=
correct for a converted git tree.=0A=
=0A=
Alternatively, you can also create an override to do_validate_branches=0A=
and stub out the functionality completely.=0A=
=0A=
Bruce=0A=
=0A=
=0A=
> SRC_URI +=3D "file://defconfig"=0A=
>=0A=
> SRC_URI +=3D "file://arqlyn.scc \=0A=
>              file://arqlyn.cfg \=0A=
>              file://arqlyn-user-config.cfg \=0A=
>              file://arqlyn-user-patches.scc \=0A=
>             "=0A=
>=0A=
>=0A=
> LINUX_VERSION ?=3D "3.10.14"=0A=
> LINUX_VERSION_EXTENSION ?=3D "-custom"=0A=
> SRCREV =3D "94"=0A=
> PR =3D "r0"=0A=
> PV =3D "${LINUX_VERSION}"=0A=
> S =3D "${WORKDIR}/linux-3.10.14"=0A=
> COMPATIBLE_MACHINE_arqlyn =3D "arqlyn"=0A=
>=0A=
>=0A=
> Regards,=0A=
>=0A=
> Raghavendra=0A=
>=0A=
> ________________________________________=0A=
> From: Bruce Ashfield <bruce.ashfield@windriver.com>=0A=
> Sent: Tuesday, April 14, 2015 5:36 PM=0A=
> To: Raghavendra Kakarla; yocto@yoctoproject.org=0A=
> Subject: Re: [yocto] SRCREV Issue for custom linux kernel=0A=
>=0A=
> On 2015-04-14 6:48 AM, Raghavendra Kakarla wrote:=0A=
>> Hi All,=0A=
>>=0A=
>> I got the an error while i am checking out the linux kernel from the SVN=
 to build in the YOCTO project environment.=0A=
>>=0A=
>=0A=
> What release is this ? master ? An older release ?=0A=
>=0A=
> And are you seeing this same error if you have a kernel recipe=0A=
> that builds from git ? i.e. one of the Yocto reference boards=0A=
> with a similar SRCREV ?=0A=
>=0A=
> The yocto kernel's expect to be able to validate the commits=0A=
> and then modify the tree with additional git commands, so the=0A=
> tree is either in git format, or is converted to a git format=0A=
> (in the case of a tgz) .. so it could be that the SVN checkout=0A=
> is preventing that conversion from happening.=0A=
>=0A=
> Bruce=0A=
>=0A=
>> Could please help me in resolving the Issue.=0A=
>>=0A=
>>=0A=
>> Error log is:=0A=
>> Log data follows:=0A=
>> | DEBUG: Executing shell function do_validate_branches=0A=
>> | NOTE: custom recipe is being built, forcing SRCREV to INVALID=0A=
>> | NOTE: SRCREV validation skipped for AUTOREV or empty meta branch=0A=
>> | fatal: ambiguous argument 'INVALID': unknown revision or path not in t=
he working tree.=0A=
>> | Use '--' to separate paths from revisions=0A=
>> | WARNING: exit code 128 from a shell command.=0A=
>> | ERROR: Function failed: do_validate_branches (log file is located at /=
home/testuser/poky/build/tmp/work/dhruva-poky-linux/linux-yocto-custom/3.10=
.14-r0/temp/log.do_validate_branches.6852)=0A=
>>=0A=
>>=0A=
>> Thanks in advance.=0A=
>>=0A=
>> Regards,=0A=
>>=0A=
>> Raghavendra K.=0A=
>> ________________________________________=0A=
>> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on=
 behalf of yocto-request@yoctoproject.org <yocto-request@yoctoproject.org>=
=0A=
>> Sent: Tuesday, April 14, 2015 2:50 PM=0A=
>> To: yocto@yoctoproject.org=0A=
>> Subject: yocto Digest, Vol 55, Issue 46=0A=
>>=0A=
>> Send yocto mailing list submissions to=0A=
>>           yocto@yoctoproject.org=0A=
>>=0A=
>> To subscribe or unsubscribe via the World Wide Web, visit=0A=
>>           https://lists.yoctoproject.org/listinfo/yocto=0A=
>> or, via email, send a message with subject or body 'help' to=0A=
>>           yocto-request@yoctoproject.org=0A=
>>=0A=
>> You can reach the person managing the list at=0A=
>>           yocto-owner@yoctoproject.org=0A=
>>=0A=
>> When replying, please edit your Subject line so it is more specific=0A=
>> than "Re: Contents of yocto digest..."=0A=
>>=0A=
>>=0A=
>> Today's Topics:=0A=
>>=0A=
>>      1. Re: yocto Digest, Vol 53, Issue 97 (Raghavendra Kakarla)=0A=
>>=0A=
>>=0A=
>> ----------------------------------------------------------------------=
=0A=
>>=0A=
>> Message: 1=0A=
>> Date: Tue, 14 Apr 2015 09:20:38 +0000=0A=
>> From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>=0A=
>> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>=0A=
>> Subject: Re: [yocto] yocto Digest, Vol 53, Issue 97=0A=
>> Message-ID: <1429003199394.19509@inedasystems.com>=0A=
>> Content-Type: text/plain; charset=3D"iso-8859-1"=0A=
>>=0A=
>> Hi All,=0A=
>>=0A=
>> When I take kernel from the SVN I got the validation error that SRCREV i=
s not proper.=0A=
>>=0A=
>> Could you please help me in resolving this issue.=0A=
>>=0A=
>> Thanks in advance.=0A=
>>=0A=
>> Regards,=0A=
>> Raghavendra.=0A=
>>=0A=
>>=0A=
>> ________________________________________=0A=
>> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on=
 behalf of yocto-request@yoctoproject.org <yocto-request@yoctoproject.org>=
=0A=
>> Sent: Saturday, February 21, 2015 4:04 AM=0A=
>> To: yocto@yoctoproject.org=0A=
>> Subject: yocto Digest, Vol 53, Issue 97=0A=
>>=0A=
>> Send yocto mailing list submissions to=0A=
>>           yocto@yoctoproject.org=0A=
>>=0A=
>> To subscribe or unsubscribe via the World Wide Web, visit=0A=
>>           https://lists.yoctoproject.org/listinfo/yocto=0A=
>> or, via email, send a message with subject or body 'help' to=0A=
>>           yocto-request@yoctoproject.org=0A=
>>=0A=
>> You can reach the person managing the list at=0A=
>>           yocto-owner@yoctoproject.org=0A=
>>=0A=
>> When replying, please edit your Subject line so it is more specific=0A=
>> than "Re: Contents of yocto digest..."=0A=
>>=0A=
>>=0A=
>> Today's Topics:=0A=
>>=0A=
>>      1. Re: Simple recipe quit working in dizzy (akuster)=0A=
>>=0A=
>>=0A=
>> ----------------------------------------------------------------------=
=0A=
>>=0A=
>> Message: 1=0A=
>> Date: Fri, 20 Feb 2015 14:28:10 -0800=0A=
>> From: akuster <akuster@mvista.com>=0A=
>> To: yocto@yoctoproject.org=0A=
>> Subject: Re: [yocto] Simple recipe quit working in dizzy=0A=
>> Message-ID: <54E7B4FA.502@mvista.com>=0A=
>> Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed=0A=
>>=0A=
>>=0A=
>>=0A=
>> On 02/20/2015 09:49 AM, Jim Rafert wrote:=0A=
>>> Hi Paul,=0A=
>>>=0A=
>>> Thank you for taking an interest in this.=0A=
>>>=0A=
>>> I looked at the log.do_rootfs, and didn't see anything that was immedia=
tely suspicious.=0A=
>>> I have inlined the log at the end of my reply, here.=0A=
>>>=0A=
>>> I don't see how such a simple recipe could be broken by a Yocto bug, an=
d not have the=0A=
>>> whole thing be massively broken.=0A=
>>=0A=
>> Is it possible for you to try your recipe on 'master'? that might tell=
=0A=
>> use if something is missing in dizzy.=0A=
>>=0A=
>>=0A=
>> - Armin=0A=
>>>=0A=
>>> -Jim-=0A=
>>>=0A=
>>> cat ./core-image-full-cmdline/1.0-r0/temp/log.do_rootfs=0A=
>>> DEBUG: Executing python function rootfs_process_ignore=0A=
>>> DEBUG: Python function rootfs_process_ignore finished=0A=
>>> DEBUG: Executing python function rootfs_runtime_mapping=0A=
>>> DEBUG: Python function rootfs_runtime_mapping finished=0A=
>>> DEBUG: Executing python function do_rootfs=0A=
>>> NOTE: configuring RPM platform settings=0A=
>>> NOTE: configuring RPM system provides=0A=
>>> NOTE: configuring RPM DB settings=0A=
>>> NOTE: configuring Smart settings=0A=
>>> NOTE: Note: adding Smart channel spectra_ls (35)=0A=
>>> NOTE: Note: adding Smart channel i586 (30)=0A=
>>> NOTE: Note: adding Smart channel all (25)=0A=
>>> NOTE: adding Smart RPM DB channel=0A=
>>> NOTE: Note: configuring RPM cross-install scriptlet_wrapper=0A=
>>> NOTE: ###### Generate rootfs #######=0A=
>>> NOTE: Executing '/home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-=
linux/usr/bin/createrepo --update -q /home/jimr/tera/yocto/dizzy/build/tmp/=
deploy/rpm/i586' ...=0A=
>>> NOTE: Installing the following packages: libgcc1 parted grub dosfstools=
 psplash vim udev-extraconf rsyslog libsoci nss rpm unzip zip spectra-postb=
uild smartpm e2fsprogs-tune2fs packagegroup-core-eclipse-debug poco libstdc=
++6 sqlite3 e2fsprogs-e2fsck openssl-staticdev boost packagegroup-core-ssh-=
openssh packagegroup-core-boot packagegroup-core-full-cmdline rpmresolve nt=
p e2fsprogs-mke2fs util-linux packagegroup-core-tools-debug openssl e2fspro=
gs sys-freedos e2fsprogs-badblocks locale-base-en-us locale-base-en-gb=0A=
>>> NOTE: to be installed: libgcc1@i586 parted@i586 grub@i586 dosfstools@i5=
86 psplash@i586 vim@i586 udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@=
i586 rpm@i586 unzip@i586 zip@i586 spectra-postbuild@i586 smartpm@i586 e2fsp=
rogs-tune2fs@i586 packagegroup-core-eclipse-debug@all poco@i586 libstdc++6@=
i586 sqlite3@i586 e2fsprogs-e2fsck@i586 openssl-staticdev@i586 boost@i586 p=
ackagegroup-core-ssh-openssh@all packagegroup-core-boot@spectra_ls packageg=
roup-core-full-cmdline@all rpmresolve@i586 ntp@i586 e2fsprogs-mke2fs@i586 u=
til-linux@i586 packagegroup-core-tools-debug@all openssl@i586 e2fsprogs@i58=
6 sys-freedos@i586 e2fsprogs-badblocks@i586 locale-base-en-us@i586 locale-b=
ase-en-gb@i586=0A=
>>> NOTE: /home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-linux/usr/b=
in/smart --quiet --data-dir=3D/home/jimr/tera/yocto/dizzy/build/tmp/work/sp=
ectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/var/lib/smart ins=
tall -y libgcc1@i586 parted@i586 grub@i586 dosfstools@i586 psplash@i586 vim=
@i586 udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@i586 rpm@i586 unzip=
@i586 zip@i586 spectra-postbuild@i586 smartpm@i586 e2fsprogs-tune2fs@i586 p=
ackagegroup-core-eclipse-debug@all poco@i586 libstdc++6@i586 sqlite3@i586 e=
2fsprogs-e2fsck@i586 openssl-staticdev@i586 boost@i586 packagegroup-core-ss=
h-openssh@all packagegroup-core-boot@spectra_ls packagegroup-core-full-cmdl=
ine@all rpmresolve@i586 ntp@i586 e2fsprogs-mke2fs@i586 util-linux@i586 pack=
agegroup-core-tools-debug@all openssl@i586 e2fsprogs@i586 sys-freedos@i586 =
e2fsprogs-badblocks@i586 locale-base-en-us@i586 locale-base-en-gb@i586=0A=
>>> NOTE: Output from bash-4.3-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sh to /bi=
n/bash=0A=
>>> Output from busybox-1.22.1-r32@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ar to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gunzip to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/zcat to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bunzi=
p2 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bzcat=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cpio to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gzip to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/tar to /b=
in/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unzip=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/date to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/group=
s to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/id to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/touch to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/users=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/who t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/awk t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cmp t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/diff =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/patch=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sed to /b=
in/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/vi to /bi=
n/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/find =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/grep to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/egrep to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/fgrep to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/xargs=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/halt to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/poweroff=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/reboot t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/rfki=
ll to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/depmod t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/insmod t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/lsmod to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modprobe=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rmmod to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ash to /b=
in/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sh to /bi=
n/bash=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fstrim t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[ to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[[ to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/addg=
roup to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/addu=
ser to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/basen=
ame to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cat to /b=
in/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chattr to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chgrp to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chmod to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chown to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chro=
ot to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chvt =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/clear=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cp to /bi=
n/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cut t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dc to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dd to /bi=
n/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/deall=
ocvt to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/delg=
roup to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/delu=
ser to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/df to /bi=
n/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dirna=
me to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dmesg to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dnsdomain=
name to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/du to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dumpkmap =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dumpl=
eases to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/echo to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/env t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expr =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/false to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/fbse=
t to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fdisk to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/flock=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/free =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fsck to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fuser=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/getty to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/head =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hexdu=
mp to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/hostname =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/hwclock =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifconfig=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifdown t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifup to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ip to /b=
in/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/killa=
ll to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/klogd to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/less =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ln to /bi=
n/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/load=
font to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/loadkmap=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logge=
r to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logna=
me to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/logread =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/losetup =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ls to /bi=
n/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/md5su=
m to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/micro=
com to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mkdir to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mkfif=
o to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mknod to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkswap t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/more to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mount to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mv to /bi=
n/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nc to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/netstat t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nohup=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nsloo=
kup to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/od to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/openv=
t to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pidof to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/pivot_ro=
ot to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/print=
f to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ps to /bi=
n/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pwd to /b=
in/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/rdat=
e to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/readl=
ink to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/realp=
ath to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/renic=
e to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/reset=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rm to /bi=
n/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rmdir to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/route to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/run-parts=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/seq t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/setconso=
le to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha3s=
um to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sleep to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sort =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/start-st=
op-daemon to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stat to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/strin=
gs to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stty to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sulogin =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapoff =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapon t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/switch_r=
oot to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sync to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sysctl t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/syslogd =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tail =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tee t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/telne=
t to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/test =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tftp =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/time =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/top t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tr to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/true to /=
bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tty t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/udhcpc t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/udhc=
pd to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/umount to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/uname to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uniq =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptim=
e to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/usleep to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/watch to =
/bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wc to=
 /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wget =
to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/which=
 to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/whoam=
i to /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/yes t=
o /bin/busybox.nosuid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping to /=
bin/busybox.suid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping6 to =
/bin/busybox.suid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/login to =
/bin/busybox.suid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/passw=
d to /bin/busybox.suid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/su to /bi=
n/busybox.suid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/trace=
route to /bin/busybox.suid=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/vlock=
 to /bin/busybox.suid=0A=
>>> Output from init-ifupdown-1.0-r7@i586:=0A=
>>>     Removing any system startup links for networking ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ne=
tworking.=0A=
>>> Output from initscripts-functions-1.0-r155@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/fu=
nctions to /etc/init.d/functions.initscripts=0A=
>>> Output from run-postinsts-1.0-r9@all:=0A=
>>>     Removing any system startup links for run-postinsts ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ru=
n-postinsts.=0A=
>>> Output from modutils-initscripts-1.0-r7@i586:=0A=
>>>     Removing any system startup links for modutils.sh ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/mo=
dutils.sh.=0A=
>>> Output from udev-cache-182-r9@i586:=0A=
>>>     Removing any system startup links for udev-cache ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ud=
ev-cache.=0A=
>>> Output from busybox-hwclock-1.22.1-r32@i586:=0A=
>>>     Removing any system startup links for hwclock.sh ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/hw=
clock.sh.=0A=
>>> Output from kernel-image-3.10.62-ltsi-yocto-standard-3.10.62+git0+f4ab0=
0d96a_b2ac933df1-r0.1@spectra_ls:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//boot/bzImage =
to /boot/bzImage-3.10.62-ltsi-yocto-standard=0A=
>>> Output from busybox-syslog-1.22.1-r32@i586:=0A=
>>>     Removing any system startup links for syslog ...=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog.co=
nf to /etc/syslog.conf.busybox=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/sy=
slog to /etc/init.d/syslog.busybox=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog-st=
artup.conf to /etc/syslog-startup.conf.busybox=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/sy=
slog.=0A=
>>> Output from util-linux-losetup-2.24.2-r1@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/losetup =
to /sbin/losetup.util-linux=0A=
>>> Output from killall-22.21-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/killa=
ll to /usr/bin/killall.psmisc=0A=
>>> Output from shadow-4.2.1-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/passw=
d to /usr/bin/passwd.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chfn =
to /usr/bin/chfn.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/newgr=
p to /usr/bin/newgrp.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chsh =
to /usr/bin/chsh.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/group=
s to /usr/bin/groups.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chpa=
sswd to /usr/sbin/chpasswd.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/login to =
/bin/login.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/vipw to =
/sbin/vipw.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/vigr to =
/sbin/vigr.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/su to /bi=
n/su.shadow=0A=
>>> Output from kbd-2.0.2-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chvt =
to /usr/bin/chvt.kbd=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/deall=
ocvt to /usr/bin/deallocvt.kbd=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fgcon=
sole to /usr/bin/fgconsole.kbd=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/openv=
t to /usr/bin/openvt.kbd=0A=
>>> Output from openssh-scp-6.6p1-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/scp t=
o /usr/bin/scp.openssh=0A=
>>> Output from grep-2.19-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/grep to /=
bin/grep.grep=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/egrep to =
/bin/egrep.grep=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/fgrep to =
/bin/fgrep.grep=0A=
>>> Output from net-tools-1.60+25-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/arp to /=
sbin/arp.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ifconfig=
 to /sbin/ifconfig.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ipmaddr =
to /sbin/ipmaddr.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/iptunnel=
 to /sbin/iptunnel.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mii-tool=
 to /sbin/mii-tool.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/nameif t=
o /sbin/nameif.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/plipconf=
ig to /sbin/plipconfig.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rarp to =
/sbin/rarp.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/route to=
 /sbin/route.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/slattach=
 to /sbin/slattach.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dnsdomain=
name to /bin/dnsdomainname.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/domainnam=
e to /bin/domainname.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/hostname =
to /bin/hostname.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/netstat t=
o /bin/netstat.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/nisdomain=
name to /bin/nisdomainname.net-tools=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ypdomainn=
ame to /bin/ypdomainname.net-tools=0A=
>>> Output from sysklogd-1.5-r7@i586:=0A=
>>> update-rc.d: /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky=
-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/syslog exists durin=
g rc.d purge (continuing)=0A=
>>>     Removing any system startup links for syslog ...=0A=
>>>      /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/c=
ore-image-full-cmdline/1.0-r0/rootfs/etc/rc0.d/K20syslog=0A=
>>>      /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/c=
ore-image-full-cmdline/1.0-r0/rootfs/etc/rc1.d/K20syslog=0A=
>>>      /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/c=
ore-image-full-cmdline/1.0-r0/rootfs/etc/rc2.d/S20syslog=0A=
>>>      /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/c=
ore-image-full-cmdline/1.0-r0/rootfs/etc/rc3.d/S20syslog=0A=
>>>      /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/c=
ore-image-full-cmdline/1.0-r0/rootfs/etc/rc4.d/S20syslog=0A=
>>>      /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/c=
ore-image-full-cmdline/1.0-r0/rootfs/etc/rc5.d/S20syslog=0A=
>>>      /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/c=
ore-image-full-cmdline/1.0-r0/rootfs/etc/rc6.d/K20syslog=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/syslogd =
to /sbin/syslogd.sysklogd=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/klogd to=
 /sbin/klogd.sysklogd=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/init.d/sy=
slog to /etc/init.d/syslog.sysklogd=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//etc/syslog.co=
nf to /etc/syslog.conf.sysklogd=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/sy=
slog.=0A=
>>> Output from bc-1.06-r2@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dc to=
 /usr/bin/dc.bc=0A=
>>> Output from fuser-22.21-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fuser=
 to /usr/bin/fuser.psmisc=0A=
>>> Output from sed-4.2.2-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sed to /b=
in/sed.sed=0A=
>>> Output from gawk-4.1.1-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/awk t=
o /usr/bin/gawk=0A=
>>> Output from diffutils-3.3-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/diff =
to /usr/bin/diff.diffutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cmp t=
o /usr/bin/cmp.diffutils=0A=
>>> Output from tar-1.27.1-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/tar to /b=
in/tar.tar=0A=
>>> Output from cpio-2.11-r5@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cpio to /=
bin/cpio.cpio=0A=
>>> Output from sysvinit-pidof-2.88dsf-r14@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pidof to =
/bin/pidof.sysvinit=0A=
>>> Output from findutils-4.4.2-r6@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/find =
to /usr/bin/find.findutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/xargs=
 to /usr/bin/xargs.findutils=0A=
>>> Output from psplash-0.1+git0+afd4e228c6-r15@i586:=0A=
>>>     Removing any system startup links for psplash.sh ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ps=
plash.sh.=0A=
>>> Output from time-1.7-r2@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/time =
to /usr/bin/time.time=0A=
>>> Output from mktemp-1.7-r3@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to=
 /bin/mktemp.mktemp=0A=
>>> Output from gzip-1.6-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gunzip to=
 /bin/gunzip.gzip=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/gzip to /=
bin/gzip.gzip=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/zcat to /=
bin/zcat.gzip=0A=
>>> Output from iproute2-3.16.0-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/ip to /s=
bin/ip.iproute2=0A=
>>> Output from util-linux-readprofile-2.24.2-r1@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/readprof=
ile to /sbin/readprofile.util-linux=0A=
>>> Output from less-466-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/less =
to /usr/bin/less.less=0A=
>>> Output from cronie-1.4.11-r0@i586:=0A=
>>>     Removing any system startup links for crond ...=0A=
>>> Running groupadd commands...=0A=
>>> NOTE: Performing groupadd with [--root /home/jimr/tera/yocto/dizzy/buil=
d/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --sy=
stem crontab] and 10 times of retry=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/cr=
ond.=0A=
>>> Output from keymaps-1.0-r31@spectra_ls:=0A=
>>>     Removing any system startup links for keymap.sh ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ke=
ymap.sh.=0A=
>>> Output from patch-2.7.1-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/patch=
 to /usr/bin/patch.patch=0A=
>>> Output from kmod-18+git0+ae58de0fcb-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/insmod t=
o /sbin/insmod.kmod=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modprobe=
 to /sbin/modprobe.kmod=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/rmmod to=
 /sbin/rmmod.kmod=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/modinfo =
to /sbin/modinfo.kmod=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/lsmod to =
/bin/lsmod.kmod=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/lsmod to=
 /bin/lsmod.kmod=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/depmod t=
o /sbin/depmod.kmod=0A=
>>> Output from openssh-ssh-6.6p1-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ssh t=
o /usr/bin/ssh.openssh=0A=
>>> Output from sysvinit-2.88dsf-r14@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/init to =
/sbin/init.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mountpoin=
t to /bin/mountpoint.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/halt to =
/sbin/halt.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/reboot t=
o /sbin/reboot.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/runlevel=
 to /sbin/runlevel.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/shutdown=
 to /sbin/shutdown.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/poweroff=
 to /sbin/poweroff.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/last =
to /usr/bin/last.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mesg =
to /usr/bin/mesg.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/utmpd=
ump to /usr/bin/utmpdump.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wall =
to /usr/bin/wall.sysvinit=0A=
>>> Output from psplash-default-0.1+git0+afd4e228c6-r15@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pspla=
sh to /usr/bin/psplash-default=0A=
>>> Output from ntp-4.2.6p3-r5@i586:=0A=
>>>     Removing any system startup links for ntpd ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/nt=
pd.=0A=
>>> Output from coreutils-8.22-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/[ to =
/usr/bin/lbracket.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/arch =
to /usr/bin/arch.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/basen=
ame to /usr/bin/basename.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chcon=
 to /usr/bin/chcon.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cksum=
 to /usr/bin/cksum.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/comm =
to /usr/bin/comm.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cspli=
t to /usr/bin/csplit.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/cut t=
o /usr/bin/cut.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dir t=
o /usr/bin/dir.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dirco=
lors to /usr/bin/dircolors.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/dirna=
me to /usr/bin/dirname.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/du to=
 /usr/bin/du.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/env t=
o /usr/bin/env.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expan=
d to /usr/bin/expand.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/expr =
to /usr/bin/expr.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/facto=
r to /usr/bin/factor.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fmt t=
o /usr/bin/fmt.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/fold =
to /usr/bin/fold.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/group=
s to /usr/bin/groups.shadow=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/head =
to /usr/bin/head.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hosti=
d to /usr/bin/hostid.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/id to=
 /usr/bin/id.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/insta=
ll to /usr/bin/install.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/join =
to /usr/bin/join.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/link =
to /usr/bin/link.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logna=
me to /usr/bin/logname.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/md5su=
m to /usr/bin/md5sum.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mkfif=
o to /usr/bin/mkfifo.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nice =
to /usr/bin/nice.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nl to=
 /usr/bin/nl.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nohup=
 to /usr/bin/nohup.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/nproc=
 to /usr/bin/nproc.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/od to=
 /usr/bin/od.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/paste=
 to /usr/bin/paste.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pathc=
hk to /usr/bin/pathchk.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pinky=
 to /usr/bin/pinky.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pr to=
 /usr/bin/pr.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/print=
env to /usr/bin/printenv.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/print=
f to /usr/bin/printf.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/ptx t=
o /usr/bin/ptx.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/readl=
ink to /usr/bin/readlink.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/realp=
ath to /usr/bin/realpath.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/runco=
n to /usr/bin/runcon.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/seq t=
o /usr/bin/seq.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha1s=
um to /usr/bin/sha1sum.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha22=
4sum to /usr/bin/sha224sum.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha25=
6sum to /usr/bin/sha256sum.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha38=
4sum to /usr/bin/sha384sum.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sha51=
2sum to /usr/bin/sha512sum.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/shred=
 to /usr/bin/shred.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/shuf =
to /usr/bin/shuf.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sort =
to /usr/bin/sort.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/split=
 to /usr/bin/split.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/stdbu=
f to /usr/bin/stdbuf.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/sum t=
o /usr/bin/sum.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tac t=
o /usr/bin/tac.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tail =
to /usr/bin/tail.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tee t=
o /usr/bin/tee.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/test =
to /usr/bin/test.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/timeo=
ut to /usr/bin/timeout.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tr to=
 /usr/bin/tr.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/trunc=
ate to /usr/bin/truncate.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tsort=
 to /usr/bin/tsort.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/tty t=
o /usr/bin/tty.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unexp=
and to /usr/bin/unexpand.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uniq =
to /usr/bin/uniq.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/unlin=
k to /usr/bin/unlink.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptim=
e to /usr/bin/uptime.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/users=
 to /usr/bin/users.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/vdir =
to /usr/bin/vdir.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wc to=
 /usr/bin/wc.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/who t=
o /usr/bin/who.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/whoam=
i to /usr/bin/whoami.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/yes t=
o /usr/bin/yes.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cat to /b=
in/cat.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chgrp to =
/bin/chgrp.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chmod to =
/bin/chmod.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chown to =
/bin/chown.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/cp to /bi=
n/cp.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/date to /=
bin/date.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dd to /bi=
n/dd.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/echo to /=
bin/echo.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/false to =
/bin/false.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /=
bin/kill.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ln to /bi=
n/ln.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ls to /bi=
n/ls.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mkdir to =
/bin/mkdir.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mknod to =
/bin/mknod.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mv to /bi=
n/mv.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/pwd to /b=
in/pwd.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rm to /bi=
n/rm.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/rmdir to =
/bin/rmdir.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sleep to =
/bin/sleep.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stty to /=
bin/stty.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/sync to /=
bin/sync.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/touch to =
/bin/touch.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/true to /=
bin/true.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/uname to =
/bin/uname.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/stat to /=
bin/stat.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/sbin/chro=
ot to /usr/sbin/chroot.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/base64 to=
 /usr/bin/base64.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mktemp to=
 /usr/bin/mktemp.coreutils=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/df to /us=
r/bin/df.coreutils=0A=
>>> Output from iputils-ping-s20121221-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping to /=
bin/ping.iputils=0A=
>>> Output from rsyslog-7.4.4-r0@i586:=0A=
>>>     Removing any system startup links for rsyslogd ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/rs=
yslogd.=0A=
>>> Output from rpcbind-0.2.1-r0@i586:=0A=
>>>     Removing any system startup links for rpcbind ...=0A=
>>> Running useradd commands...=0A=
>>> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build=
/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --sys=
tem --no-create-home --home-dir /                        --shell /bin/false=
 --user-group rpc] and 10 times of retry=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/rp=
cbind.=0A=
>>> Output from bzip2-1.0.6-r5@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bunzi=
p2 to /usr/bin/bunzip2.bzip2=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/bzcat=
 to /usr/bin/bzcat.bzip2=0A=
>>> Output from procps-3.2.8-r12@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/top t=
o /usr/bin/top.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/uptim=
e to /usr/bin/uptime.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/free =
to /usr/bin/free.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pkill=
 to /usr/bin/pkill.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pmap =
to /usr/bin/pmap.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /=
bin/kill.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sysctl t=
o /sbin/sysctl.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ps to /bi=
n/ps.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pgrep=
 to /usr/bin/pgrep.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/pwdx =
to /usr/bin/pwdx.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/watch to =
/usr/bin/watch.procps=0A=
>>> Output from lighttpd-1.4.35-r1@i586:=0A=
>>>     Removing any system startup links for lighttpd ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/li=
ghttpd.=0A=
>>> Output from tcf-agent-0.4.0+git0+4ef94ecb92-r2@i586:=0A=
>>>     Removing any system startup links for tcf-agent ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/tc=
f-agent.=0A=
>>> Output from openssh-sshd-6.6p1-r0@i586:=0A=
>>>     Removing any system startup links for sshd ...=0A=
>>> Running useradd commands...=0A=
>>> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build=
/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --sys=
tem --no-create-home --home-dir /var/run/sshd --shell /bin/false --user-gro=
up sshd] and 10 times of retry=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ss=
hd.=0A=
>>> Output from udev-182-r9@i586:=0A=
>>>     Removing any system startup links for udev ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/ud=
ev.=0A=
>>> Output from util-linux-fdisk-2.24.2-r1@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/fdisk to=
 /sbin/fdisk.util-linux=0A=
>>> Output from at-3.1.15-r0@i586:=0A=
>>>     Removing any system startup links for atd ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/at=
d.=0A=
>>> Output from dbus-1-1.8.2-r0@i586:=0A=
>>>     Removing any system startup links for dbus-1 ...=0A=
>>> Running groupadd commands...=0A=
>>> NOTE: Performing groupadd with [--root /home/jimr/tera/yocto/dizzy/buil=
d/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs -r n=
etdev] and 10 times of retry=0A=
>>> Running useradd commands...=0A=
>>> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build=
/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --sys=
tem --home /var/lib/dbus                        --no-create-home --shell /b=
in/false                        --user-group messagebus] and 10 times of re=
try=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/db=
us-1.=0A=
>>> Output from util-linux-umount-2.24.2-r1@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/umount to=
 /bin/umount.util-linux=0A=
>>> Output from util-linux-mount-2.24.2-r1@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/mount to =
/bin/mount.util-linux=0A=
>>> Output from util-linux-swaponoff-2.24.2-r1@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapoff =
to /sbin/swapoff.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/swapon t=
o /sbin/swapon.util-linux=0A=
>>> Output from nfs-utils-client-1.3.0-r0@i586:=0A=
>>>     Removing any system startup links for nfscommon ...=0A=
>>> Running useradd commands...=0A=
>>> NOTE: Performing useradd with [--root /home/jimr/tera/yocto/dizzy/build=
/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs --sys=
tem  --home-dir /var/lib/nfs                              --shell /bin/fals=
e --user-group rpcuser] and 10 times of retry=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/nf=
scommon.=0A=
>>> Output from iputils-ping6-s20121221-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/ping6 to =
/bin/ping6.iputils=0A=
>>> Output from e2fsprogs-1.42.9-r0@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/chattr to=
 /bin/chattr.e2fsprogs=0A=
>>> Output from util-linux-2.24.2-r1@i586:=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/dmesg to =
/bin/dmesg.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/kill to /=
bin/kill.procps=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/more to /=
bin/more.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkswap t=
o /sbin/mkswap.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/blockdev=
 to /sbin/blockdev.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/pivot_ro=
ot to /sbin/pivot_root.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/switch_r=
oot to /sbin/switch_root.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/mkfs.min=
ix to /sbin/mkfs.minix.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/hexdu=
mp to /usr/bin/hexdump.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/last =
to /usr/bin/last.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/logge=
r to /usr/bin/logger.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/mesg =
to /usr/bin/mesg.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/renic=
e to /usr/bin/renice.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/wall =
to /usr/bin/wall.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/setsi=
d to /usr/bin/setsid.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/chrt =
to /usr/bin/chrt.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/flock=
 to /usr/bin/flock.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/utmpd=
ump to /usr/bin/utmpdump.sysvinit=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//usr/bin/eject=
 to /usr/bin/eject.util-linux=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//bin/getopt to=
 /usr/bin/getopt=0A=
>>> update-alternatives: Linking /home/jimr/tera/yocto/dizzy/build/tmp/work=
/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs//sbin/sulogin =
to /sbin/sulogin.util-linux=0A=
>>> Output from nfs-utils-1.3.0-r0@i586:=0A=
>>>     Removing any system startup links for nfsserver ...=0A=
>>>     Adding system startup for /home/jimr/tera/yocto/dizzy/build/tmp/wor=
k/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs/etc/init.d/nf=
sserver.=0A=
>>>=0A=
>>>=0A=
>>> NOTE: Installing the following packages:=0A=
>>> NOTE: Installing complementary packages ...=0A=
>>> NOTE: Installing the following packages: mc-locale-en-gb glibc-locale-e=
n-gb libglib-2.0-locale-en-gb=0A=
>>> NOTE: installing attempt only packages...=0A=
>>> NOTE: Attempting mc-locale-en-gb@i586 glibc-locale-en-gb@i586 libglib-2=
.0-locale-en-gb@i586=0A=
>>> NOTE:=0A=
>>>=0A=
>>> NOTE: Running intercept scripts:=0A=
>>> NOTE: Executing write_package_manifest ...=0A=
>>> DEBUG: Executing python function write_package_manifest=0A=
>>> DEBUG: Python function write_package_manifest finished=0A=
>>> NOTE: Executing license_create_manifest ...=0A=
>>> DEBUG: Executing shell function license_create_manifest=0A=
>>> WARNING: The license listed GPLv2 was not in the licenses collected for=
 glibc-locale=0A=
>>> WARNING: The license listed LGPLv2.1 was not in the licenses collected =
for glibc-locale=0A=
>>> WARNING: The license listed GPLv2 was not in the licenses collected for=
 glibc-locale=0A=
>>> WARNING: The license listed LGPLv2.1 was not in the licenses collected =
for glibc-locale=0A=
>>> WARNING: The license listed GPLv2 was not in the licenses collected for=
 glibc-locale=0A=
>>> WARNING: The license listed LGPLv2.1 was not in the licenses collected =
for glibc-locale=0A=
>>> WARNING: The license listed GPLv2 was not in the licenses collected for=
 glibc-mtrace=0A=
>>> WARNING: The license listed LGPLv2.1 was not in the licenses collected =
for glibc-mtrace=0A=
>>> WARNING: The license listed CLOSED was not in the licenses collected fo=
r libsoci=0A=
>>> WARNING: The license listed GPLv2 was not in the licenses collected for=
 glibc-locale=0A=
>>> WARNING: The license listed LGPLv2.1 was not in the licenses collected =
for glibc-locale=0A=
>>> WARNING: The license listed GPLv2 was not in the licenses collected for=
 glibc-locale=0A=
>>> WARNING: The license listed LGPLv2.1 was not in the licenses collected =
for glibc-locale=0A=
>>> WARNING: The license listed ntp was not in the licenses collected for n=
tp=0A=
>>> WARNING: The license listed ntp was not in the licenses collected for n=
tp=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-boot=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-eclipse-debug=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-full-cmdline=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-full-cmdline=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-full-cmdline=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-full-cmdline=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-full-cmdline=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-full-cmdline=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-full-cmdline=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-full-cmdline=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-ssh-openssh=0A=
>>> WARNING: The license listed MIT was not in the licenses collected for p=
ackagegroup-core-tools-debug=0A=
>>> WARNING: The license listed vim was not in the licenses collected for v=
im=0A=
>>> DEBUG: Shell function license_create_manifest finished=0A=
>>> NOTE: Executing write_image_manifest ...=0A=
>>> DEBUG: Executing python function write_image_manifest=0A=
>>> DEBUG: Python function write_image_manifest finished=0A=
>>> NOTE: Executing ssh_allow_empty_password ...=0A=
>>> DEBUG: Executing shell function ssh_allow_empty_password=0A=
>>> sed: warning: failed to get security context of /home/jimr/tera/yocto/d=
izzy/build/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/ro=
otfs/etc/ssh/sshd_config: No data availablesed: warning: failed to get secu=
rity context of /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-=
linux/core-image-full-cmdline/1.0-r0/rootfs/etc/ssh/sshd_config: No data av=
ailableDEBUG: Shell function ssh_allow_empty_password finished=0A=
>>> NOTE: Executing postinst_enable_logging ...=0A=
>>> DEBUG: Executing shell function postinst_enable_logging=0A=
>>> DEBUG: Shell function postinst_enable_logging finished=0A=
>>> NOTE: Executing rootfs_update_timestamp ...=0A=
>>> DEBUG: Executing shell function rootfs_update_timestamp=0A=
>>> DEBUG: Shell function rootfs_update_timestamp finished=0A=
>>> NOTE: Executing: ldconfig -r/home/jimr/tera/yocto/dizzy/build/tmp/work/=
spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/rootfs-c new -v=0A=
>>> NOTE: ###### Generate images #######=0A=
>>> NOTE: Executing mklibs_optimize_image ...=0A=
>>> DEBUG: Executing shell function mklibs_optimize_image=0A=
>>> DEBUG: Shell function mklibs_optimize_image finished=0A=
>>> NOTE: Executing prelink_image ...=0A=
>>> DEBUG: Executing shell function prelink_image=0A=
>>> Size before prelinking 210672.=0A=
>>> Size after prelinking 212588.=0A=
>>> DEBUG: Shell function prelink_image finished=0A=
>>> NOTE: The image creation groups are: [['ext3', 'cpio']]=0A=
>>> NOTE: Running image creation script for cpio: /home/jimr/tera/yocto/diz=
zy/build/tmp/work/spectra_ls-poky-linux/core-image-full-cmdline/1.0-r0/temp=
/create_image.cpio ...=0A=
>>> NOTE: Creating symlinks for ext3 image ...=0A=
>>> NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.ext3 -> core=
-image-full-cmdline-spectra-ls-20150220171753.rootfs.ext3=0A=
>>> NOTE: Creating symlinks for cpio image ...=0A=
>>> NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.cpio.gz -> c=
ore-image-full-cmdline-spectra-ls-20150220171753.rootfs.cpio.gz=0A=
>>> DEBUG: Python function do_rootfs finished=0A=
>>> [jimr@krusty spectra_ls-poky-linux]$=0A=
>>>=0A=
>>>=0A=
>>>=0A=
>>> ________________________________________=0A=
>>> From: Paul Eggleton [paul.eggleton@linux.intel.com]=0A=
>>> Sent: Friday, February 20, 2015 2:51 AM=0A=
>>> To: Jim Rafert=0A=
>>> Cc: yocto@yoctoproject.org=0A=
>>> Subject: Re: [yocto] Simple recipe quit working in dizzy=0A=
>>>=0A=
>>> Hi Jim,=0A=
>>>=0A=
>>> On Wednesday 18 February 2015 20:33:43 Jim Rafert wrote:=0A=
>>>> The following recipe, spectra-postbuild_0.1.bb, quit working when I po=
rted=0A=
>>>> from 1.6 daisy to 1.7.1 dizzy.  I include the recipe in my image by ad=
ding=0A=
>>>> it at the end of of the IMAGE_INSTALL_append variable in my local.conf=
=0A=
>>>> file.  The purpose of the recipe is simply to lay down some files that=
 will=0A=
>>>> later be used by an installer script.  Two if the files are deposited =
in=0A=
>>>> the root directory, and the rest are placed in the /install/spectra=0A=
>>>> directory, which is created by the recipe.  Nothing is compiled or=0A=
>>>> transformed in any way.=0A=
>>>>=0A=
>>>> When I bitbake the recipe, then bitbake core-image-full-cmdline, both=
=0A=
>>>> complete without errors. When I look at the contents of the rpm file=
=0A=
>>>> produced by the recipe, all the files and directories are listed. Howe=
ver,=0A=
>>>> when I examine the file system images created, only the two files that=
 I=0A=
>>>> place in the root directory (/) are there, and the entire /install=0A=
>>>> directory hierarchy is missing. If I modify the recipe such that the=
=0A=
>>>> missing files are placed in a directory that is already created by oth=
er=0A=
>>>> recipes (/home/root), all the files are deposited as expected.=0A=
>>>>=0A=
>>>> I have looked at section 5.6 of the Yocto reference manual, "Moving to=
 the=0A=
>>>> Yocto Project 1.7 Release", but did not see anything that was obviousl=
y=0A=
>>>> relevant.=0A=
>>>>=0A=
>>>> Can someone tell me how to fix this for dizzy?=0A=
>>>>=0A=
>>>> ######################################################=0A=
>>>> # spectra-postbuild_0.1.bb=0A=
>>>> ######################################################=0A=
>>>>=0A=
>>>> SUMMARY =3D "Post processing of configuration files for SpectraOS"=0A=
>>>> SECTION =3D "base"=0A=
>>>> LICENSE =3D "GPLv2"=0A=
>>>> LIC_FILES_CHKSUM =3D=0A=
>>>> "file://${WORKDIR}/COPYRIGHT;md5=3D349c872e0066155e1818b786938876a4"=
=0A=
>>>> PR =3D "r0"=0A=
>>>>=0A=
>>>> SRC_URI =3D "file://inittab \=0A=
>>>>           file://fstab \=0A=
>>>>           file://rsyslog.conf \=0A=
>>>>               file://profile \=0A=
>>>>           file://grub.cfg \=0A=
>>>>           file://mount.sh \=0A=
>>>>           file://RELEASE-NOTES.txt \=0A=
>>>>           file://Spectra-OS-Version \=0A=
>>>>           file://initializeCustomKernelModules \=0A=
>>>>           file://firewall \=0A=
>>>>           file://sysctl.conf \=0A=
>>>>               file://InstallOS.sh \=0A=
>>>>           file://COPYRIGHT \=0A=
>>>>               file://WinCE_LCM.tar.bz \=0A=
>>>>           "=0A=
>>>>=0A=
>>>> FILES_${PN} =3D  "/RELEASE-NOTES.txt \=0A=
>>>>                    /Spectra-OS-Version \=0A=
>>>>                    /install \=0A=
>>>>                    /install/spectra \=0A=
>>>>                    /install/spectra/InstallOS.sh \=0A=
>>>>                    /install/spectra/fstab \=0A=
>>>>                    /install/spectra/mount.sh \=0A=
>>>>                    /install/spectra/grub.cfg \=0A=
>>>>                    /install/spectra/rsyslog.conf \=0A=
>>>>                    /install/spectra/profile \=0A=
>>>>                    /install/spectra/inittab \=0A=
>>>>                    /install/spectra/WinCE_LCM.tar.bz \=0A=
>>>>                    /install/spectra/sysctl.conf \=0A=
>>>>                    /install/spectra/init.d \=0A=
>>>>                    /install/spectra/rc5.d \=0A=
>>>>                    /install/spectra/init.d/initializeCustomKernelModul=
es \=0A=
>>>>                    /install/spectra/init.d/firewall \=0A=
>>>>                    "=0A=
>>>>=0A=
>>>> do_install () {=0A=
>>>>        install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}=0A=
>>>>        install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}=0A=
>>>>            install -d ${D}/install=0A=
>>>>            install -d ${D}/install/spectra=0A=
>>>>            install -m 544 ${WORKDIR}/inittab ${D}/install/spectra=0A=
>>>>            install -m 755 ${WORKDIR}/fstab ${D}/install/spectra=0A=
>>>>            install -m 755 ${WORKDIR}/rsyslog.conf ${D}/install/spectra=
=0A=
>>>>            install -m 755 ${WORKDIR}/profile ${D}/install/spectra=0A=
>>>>            install -m 755 ${WORKDIR}/grub.cfg ${D}/install/spectra=0A=
>>>>            install -m 755 ${WORKDIR}/mount.sh ${D}/install/spectra=0A=
>>>>            install -m 755 ${WORKDIR}/InstallOS.sh ${D}/install/spectra=
=0A=
>>>>            install -m 755 ${WORKDIR}/sysctl.conf ${D}/install/spectra=
=0A=
>>>>            install -m 644 ${WORKDIR}/WinCE_LCM.tar.bz ${D}/install/spe=
ctra=0A=
>>>>            install -m 755 ${WORKDIR}/firewall ${D}/install/spectra=0A=
>>>>            install -m 755 ${WORKDIR}/initializeCustomKernelModules=0A=
>>>> ${D}/install/spectra=0A=
>>>>=0A=
>>>> }=0A=
>>>=0A=
>>> Hmm, so I can't see anything immediately wrong with the recipe that wou=
ld lead=0A=
>>> to a problem such as what you describe, so rather than something expect=
ed=0A=
>>> change between releases this looks more like a bug. Is there anything i=
n the=0A=
>>> log.do_rootfs for the image that might indicate something going wrong? =
Perhaps=0A=
>>> an uncaught error?=0A=
>>>=0A=
>>> Cheers,=0A=
>>> Paul=0A=
>>>=0A=
>>> --=0A=
>>>=0A=
>>> Paul Eggleton=0A=
>>> Intel Open Source Technology Centre=0A=
>>>=0A=
>>=0A=
>>=0A=
>> ------------------------------=0A=
>>=0A=
>> --=0A=
>> _______________________________________________=0A=
>> yocto mailing list=0A=
>> yocto@yoctoproject.org=0A=
>> https://lists.yoctoproject.org/listinfo/yocto=0A=
>>=0A=
>>=0A=
>> End of yocto Digest, Vol 53, Issue 97=0A=
>> *************************************=0A=
>>=0A=
>>=0A=
>>=0A=
>> ------------------------------=0A=
>>=0A=
>> --=0A=
>> _______________________________________________=0A=
>> yocto mailing list=0A=
>> yocto@yoctoproject.org=0A=
>> https://lists.yoctoproject.org/listinfo/yocto=0A=
>>=0A=
>>=0A=
>> End of yocto Digest, Vol 55, Issue 46=0A=
>> *************************************=0A=
>>=0A=
>=0A=
=0A=

