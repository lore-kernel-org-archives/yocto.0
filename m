Return-Path: <pushpendrasingh1801@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2955E00C22; Tue, 20 Aug 2019 03:30:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pushpendrasingh1801[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f48.google.com (mail-yw1-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 052CAE00A49
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 03:30:01 -0700 (PDT)
Received: by mail-yw1-f48.google.com with SMTP id i138so2164866ywg.8
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 03:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=s4uj7BJZAiA3DXwzFnvJn5LOSenj0MpPimGinzMAjhw=;
	b=rFu0FwXytOHXkwPjHSTZ9vgZkfE7xe3+IoQaZbqS6xQLoBjmAHxWLXetSlDNGOqp5y
	/3rL5W53YRUsA/ItxJbn1N9wA2vjURezZY51/944YJhpUFF8zOBkarZ2ZwngCgBaCiBM
	Zm9eCH+nottl1vDzs/SSqwu7Gb6a28FWItn1OCV4qVMyp6O9xSA1etjMoE6N5G7V5XQ7
	QZm0gmKIi8+vr0LXULAdyJVgGcGoR62MSgdJng+3q2jUD5t//cZHEQbCk0VPDpocgUj8
	HVPrrqfudW9YUbY6A9fm8oSe0FhG0GyqDhdgP9+NchHdsIO9tr33OTeIrQ3c98ksy9Oi
	885w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=s4uj7BJZAiA3DXwzFnvJn5LOSenj0MpPimGinzMAjhw=;
	b=OxLvT8Cv/oyBsftE6vPhqm5yHmd9Lw6Tve8bQYHCnfxVbMcHy/DoC4ILTxB0lEK+VX
	JF7PjcFQqf/F84ttJrRgkTd1NM8LGRSSyoxZR4BFoAc/kmqevmJPFBJS4JGK4DKEbG7N
	5tNl/NSG0BZEdIh/Dao+tXlBr/yBURBn8iEYLbfBiimxAkUroM3aKZuhEmNziyOezXvO
	x6Ytbhfj6JqjEomTlfRBfQl9+piLhX+QfAGikT2OSwwrCKOQDwa9Gzol6ij4m9BOnzd+
	ezOi8BO90BQsGEuzneU/GQO1zIFxsen169ngoTxeuaFDrFwtnrMeEFQ87yK9aTeD7gGa
	AvWw==
X-Gm-Message-State: APjAAAUmMEVoyZJ2dlgIJ9uDYTm1nAi+1ydfz0vSqDcsRmD9I3mHjJj1
	16NMs9dOg/tN3tTJiHh3gpJnqBx6aFszu0YTD/hhZP4S
X-Google-Smtp-Source: APXvYqzCTz8qAF1FjtfPQ9/1cdgKNVKvkv8J13sSioRg+f+U+hALCbovRDv+aeqGfEqzrZJP9jygSfm6r7K0I+jNCOQ=
X-Received: by 2002:a0d:dd51:: with SMTP id g78mr18803358ywe.102.1566297000852;
	Tue, 20 Aug 2019 03:30:00 -0700 (PDT)
MIME-Version: 1.0
References: <CALqK1hxos-zw_cFOUFn+EVOVg=eYHQGvY3d1-y8qwUdeLWQTcw@mail.gmail.com>
	<CAMKF1sr7MZ=hbiJJiR70TT+UzhotOYu9WLWYBA6hYS7BRCgkEw@mail.gmail.com>
In-Reply-To: <CAMKF1sr7MZ=hbiJJiR70TT+UzhotOYu9WLWYBA6hYS7BRCgkEw@mail.gmail.com>
From: Pushpendra singh <pushpendrasingh1801@gmail.com>
Date: Tue, 20 Aug 2019 15:59:49 +0530
Message-ID: <CALqK1hxx3Pt2pEobDsaeb5-kJrxc9J6+yfsJPcf11irO81hyOA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailman-Approved-At: Mon, 02 Sep 2019 05:42:13 -0700
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: quilt-native-0.64-r0 do_install: oe_runmake failed
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
X-List-Received-Date: Tue, 20 Aug 2019 10:30:04 -0000
Content-Type: multipart/alternative; boundary="000000000000594169059089f01e"

--000000000000594169059089f01e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

Still facing issue but this time error is different

rm -rf
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compa=
t
| quilt/scripts/backup-files.in -> quilt/scripts/backup-files
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compa=
t
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/bin
| config/install-sh -c -m 755 bin/quilt bin/guards
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/bin/
| mkdir: cannot create directory
=E2=80=98/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/t=
mp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user=E2=80=99:
File exists
| config/install-sh -c -m 755 compat/sendmail                   \
|
 /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/=
x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra=
/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/comp=
at
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt
| config/install-sh -c -m 755 quilt/grep quilt/next quilt/upgrade
quilt/refresh quilt/fold quilt/revert quilt/header quilt/remove quilt/top
quilt/graph quilt/edit quilt/unapplied quilt/mail quilt/diff quilt/delete
quilt/annotate quilt/push quilt/pop quilt/import quilt/previous
quilt/applied quilt/new quilt/fork quilt/snapshot quilt/add quilt/files
quilt/setup quilt/rename quilt/patches quilt/series
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/scrip=
ts
| config/install-sh -c -m 755 quilt/scripts/inspect-wrapper
quilt/scripts/dependency-graph quilt/scripts/edmail
quilt/scripts/remove-trailing-ws quilt/scripts/backup-files             \
|
 /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/=
x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra=
/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/scri=
pts
| ln -sf /usr/bin/gawk  \
|
 /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/=
x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra=
/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/comp=
at/awk
| config/install-sh -c -m 644 quilt/scripts/patchfns quilt/scripts/utilfns
     \
|
 /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/=
x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra=
/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/scri=
pts
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/man/man1
| config/install-sh -c -m 644 doc/quilt.1 bin/guards.1
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/man/man1/
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/etc
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/etc/bash_completion.d
| config/install-sh -c -m 644 bash_completion                           \
|
 /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/=
x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra=
/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/etc/bash_completion.=
d/quilt
| config/install-sh -c -m 644 quilt.quiltrc
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/etc/
| config/install-sh -c -d
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/=
Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/emacs/site-=
lisp/
| mkdir: cannot create directory
=E2=80=98/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/t=
mp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pu=
shpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/em=
acs/site-lisp/=E2=80=99:
File exists
| Makefile:305: recipe for target 'install-main' failed
| make: *** [install-main] Error 1
| WARNING:
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/temp/run.do_install.10774:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_install (log file is located at
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x=
86_64-linux/quilt-native/0.64-r0/temp/log.do_install.10774)
ERROR: Task
(/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/sources/core/me=
ta/recipes-devtools/quilt/quilt-native_0.64.bb:do_install)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 16 tasks of which 11 didn't need to be rerun
and 1 failed.

On Tue, Aug 20, 2019 at 5:28 AM Khem Raj <raj.khem@gmail.com> wrote:

> error return code 126 means  Command invoked cannot execute so my
> guess is the script is not marked executable. so may be try something
> like
>
> do_install_prepend() {
>   chmod +x config/install-sh
> }
>
> On Mon, Aug 19, 2019 at 2:37 AM Pushpendra singh
> <pushpendrasingh1801@gmail.com> wrote:
> >
> > Hi,
> >
> > I am using Ubantu - 16.04 as an host machine
> >
> > Xilinx SDK Version : 2017.3
> >
> > Command : bitbake petalinux-image-minimal
> >
> > Getting below error
> >
> > Parsing recipes: 100%
> |########################################################################=
###########################################################################=
####|
> Time: 0:09:00
> > Parsing of 2463 .bb files complete (0 cached, 2463 parsed). 3256
> targets, 229 skipped, 0 masked, 0 errors.
> > NOTE: Resolving any missing task queue dependencies
> >
> > Build Configuration:
> > BB_VERSION =3D "1.32.0"
> > BUILD_SYS =3D "x86_64-linux"
> > NATIVELSBSTRING =3D "universal"
> > TARGET_SYS =3D "aarch64-poky-linux"
> > MACHINE =3D "zcu102-zynqmp"
> > DISTRO =3D "poky"
> > DISTRO_VERSION =3D "2.2.2"
> > TUNE_FEATURES =3D "aarch64"
> > TARGET_FPU =3D ""
> > meta
> > meta-poky =3D "rel-v2017.3:8506cec55de8950e89a4d3e786860f1086782587"
> > meta-perl
> > meta-systemd
> > meta-gpe
> > meta-python
> > meta-efl
> > meta-ruby
> > meta-filesystems
> > meta-gnome
> > meta-multimedia
> > meta-networking
> > meta-webserver
> > meta-xfce
> > meta-initramfs
> > meta-oe =3D "rel-v2017.3:a9887ac249b81fcac3007244d0c807c71b73acef"
> > meta-linaro-toolchain =3D
> "rel-v2017.3:39860f6c7af0858981cc004bbe4f4c421f6be607"
> > meta-qt5 =3D "rel-v2017.3:eec778bfb9a0b5494d593a2d7bb02c027b641835"
> > meta-xilinx =3D "rel-v2017.3:04a45809e0bc42b35c88f8a08305d82fd25e97cf"
> > meta-xilinx-tools =3D
> "rel-v2017.3:37eff634934efac72d3e2eabb7c4f8d0c8a36fbb"
> > meta-petalinux =3D "rel-v2017.3:d74ceaef26e606c2761edfc3446d0ad3c3cc8b8=
e"
> > meta-virtualization =3D
> "rel-v2017.3:cbfd4376d5e9d229f857151ffdfb57fbc6c0c40d"
> > meta-openamp =3D "rel-v2017.3:cfeca8988418e4967f0d6df828d23a1540ae25a0"
> >
> > Initialising tasks: 100%
> |########################################################################=
###########################################################################=
#|
> Time: 0:00:21
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: quilt-native-0.64-r0 do_install: oe_runmake failed
> > ERROR: quilt-native-0.64-r0 do_install: Function failed: do_install (lo=
g
> file is located at
> /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work=
/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836)
> > ERROR: Logfile of failure stored in:
> /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work=
/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836
> > Log data follows:
> > | DEBUG: Executing shell function do_install
> > | NOTE: make -j 2
> BUILD_ROOT=3D/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/b=
uild/tmp/work/x86_64-linux/quilt-native/0.64-r0/image
> install
> > | ERROR: oe_runmake failed
> > | config/install-sh -c -d
> /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work=
/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendr=
a/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/bin
> > | rm -rf
> /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work=
/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendr=
a/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/com=
pat
> > | /bin/bash: config/install-sh: Permission denied
> > | Makefile:305: recipe for target 'install-main' failed
> > | make: *** [install-main] Error 126
> > | make: *** Waiting for unfinished jobs....
> > | config/install-sh -c -d
> /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work=
/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendr=
a/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/com=
pat
> > | /bin/bash: config/install-sh: Permission denied
> > | Makefile:346: recipe for target 'install-compat1' failed
> > | make: *** [install-compat1] Error 126
> > | WARNING:
> /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work=
/x86_64-linux/quilt-native/0.64-r0/temp/run.do_install.15836:1
> exit 1 from 'exit 1'
> > | ERROR: Function failed: do_install (log file is located at
> /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work=
/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.15836)
> > ERROR: Task
> (/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/sources/core/=
meta/recipes-devtools/quilt/quilt-native_0.64.bb:do_install)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 15 tasks of which 13 didn't need to be
> rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >
> /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/sources/core/m=
eta/recipes-devtools/quilt/quilt-native_0.64.bb:
> do_install
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000594169059089f01e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem,<div><br></div><div>Still facing issue but this ti=
me error is different</div><div><br></div><div>rm -rf /home/pre-si-user/Des=
ktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-nat=
ive/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code=
/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat<br>| quilt/scripts/=
<a href=3D"http://backup-files.in">backup-files.in</a> -&gt; quilt/scripts/=
backup-files<br>| config/install-sh -c -d /home/pre-si-user/Desktop/Pushpen=
dra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/=
image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/s=
ysroots/x86_64-linux/usr/share/quilt/compat<br>| config/install-sh -c -d /h=
ome/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86=
_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xi=
lix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/bin<br>| config/ins=
tall-sh -c -m 755 bin/quilt bin/guards /home/pre-si-user/Desktop/Pushpendra=
/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/ima=
ge/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysr=
oots/x86_64-linux/usr/bin/<br>| mkdir: cannot create directory =E2=80=98/ho=
me/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_=
64-linux/quilt-native/0.64-r0/image/home/pre-si-user=E2=80=99: File exists<=
br>| config/install-sh -c -m 755 compat/sendmail =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/=
work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushp=
endra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt=
/compat<br>| config/install-sh -c -d /home/pre-si-user/Desktop/Pushpendra/X=
ilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image=
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroo=
ts/x86_64-linux/usr/share/quilt<br>| config/install-sh -c -m 755 quilt/grep=
 quilt/next quilt/upgrade quilt/refresh quilt/fold quilt/revert quilt/heade=
r quilt/remove quilt/top quilt/graph quilt/edit quilt/unapplied quilt/mail =
quilt/diff quilt/delete quilt/annotate quilt/push quilt/pop quilt/import qu=
ilt/previous quilt/applied quilt/new quilt/fork quilt/snapshot quilt/add qu=
ilt/files quilt/setup quilt/rename quilt/patches quilt/series /home/pre-si-=
user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/q=
uilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yo=
cto_Code/build/tmp/sysroots/x86_64-linux/usr/share/quilt/<br>| config/insta=
ll-sh -c -d /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/buil=
d/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop=
/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share=
/quilt/scripts<br>| config/install-sh -c -m 755 quilt/scripts/inspect-wrapp=
er quilt/scripts/dependency-graph quilt/scripts/edmail quilt/scripts/remove=
-trailing-ws quilt/scripts/backup-files =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/pre-si-user/Desktop/P=
ushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.=
64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build=
/tmp/sysroots/x86_64-linux/usr/share/quilt/scripts<br>| ln -sf /usr/bin/gaw=
k =C2=A0\<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/pre-si-user/Desktop/Pushpen=
dra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/=
image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/s=
ysroots/x86_64-linux/usr/share/quilt/compat/awk<br>| config/install-sh -c -=
m 644 quilt/scripts/patchfns quilt/scripts/utilfns =C2=A0 =C2=A0 =C2=A0\<br=
>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/pre-si-user/Desktop/Pushpendra/X=
ilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image=
/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroo=
ts/x86_64-linux/usr/share/quilt/scripts<br>| config/install-sh -c -d /home/=
pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-=
linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_=
Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/share/man/man1<br>| con=
fig/install-sh -c -m 644 doc/quilt.1 bin/guards.1 /home/pre-si-user/Desktop=
/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/=
0.64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/bui=
ld/tmp/sysroots/x86_64-linux/usr/share/man/man1/<br>| config/install-sh -c =
-d /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/wor=
k/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desktop/Pushpend=
ra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/etc<br>| config/in=
stall-sh -c -d /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/b=
uild/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Desk=
top/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/etc/ba=
sh_completion.d<br>| config/install-sh -c -m 644 bash_completion =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/pre-si-user/Desktop/P=
ushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.=
64-r0/image/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build=
/tmp/sysroots/x86_64-linux/etc/bash_completion.d/quilt<br>| config/install-=
sh -c -m 644 quilt.quiltrc /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/=
Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-=
si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-=
linux/etc/<br>| config/install-sh -c -d /home/pre-si-user/Desktop/Pushpendr=
a/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/im=
age/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sys=
roots/x86_64-linux/usr/share/emacs/site-lisp/<br>| mkdir: cannot create dir=
ectory =E2=80=98/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/=
build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Des=
ktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/s=
hare/emacs/site-lisp/=E2=80=99: File exists<br>| Makefile:305: recipe for t=
arget &#39;install-main&#39; failed<br>| make: *** [install-main] Error 1<b=
r>| WARNING: /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/bui=
ld/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/run.do_install.10774:1 e=
xit 1 from &#39;exit 1&#39;<br>| ERROR: Function failed: do_install (log fi=
le is located at /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code=
/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.10774=
)<br>ERROR: Task (/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Cod=
e/sources/core/meta/recipes-devtools/quilt/quilt-native_0.64.bb:do_install)=
 failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 16 tas=
ks of which 11 didn&#39;t need to be rerun and 1 failed.<br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, A=
ug 20, 2019 at 5:28 AM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">r=
aj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">error return code 126 means=C2=A0 Command invoked cannot e=
xecute so my<br>
guess is the script is not marked executable. so may be try something<br>
like<br>
<br>
do_install_prepend() {<br>
=C2=A0 chmod +x config/install-sh<br>
}<br>
<br>
On Mon, Aug 19, 2019 at 2:37 AM Pushpendra singh<br>
&lt;<a href=3D"mailto:pushpendrasingh1801@gmail.com" target=3D"_blank">push=
pendrasingh1801@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am using Ubantu - 16.04 as an host machine<br>
&gt;<br>
&gt; Xilinx SDK Version : 2017.3<br>
&gt;<br>
&gt; Command : bitbake petalinux-image-minimal<br>
&gt;<br>
&gt; Getting below error<br>
&gt;<br>
&gt; Parsing recipes: 100% |###############################################=
###########################################################################=
#############################| Time: 0:09:00<br>
&gt; Parsing of 2463 .bb files complete (0 cached, 2463 parsed). 3256 targe=
ts, 229 skipped, 0 masked, 0 errors.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =3D &quot;1.32.0&quot;<br>
&gt; BUILD_SYS =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =3D &quot;universal&quot;<br>
&gt; TARGET_SYS =3D &quot;aarch64-poky-linux&quot;<br>
&gt; MACHINE =3D &quot;zcu102-zynqmp&quot;<br>
&gt; DISTRO =3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =3D &quot;2.2.2&quot;<br>
&gt; TUNE_FEATURES =3D &quot;aarch64&quot;<br>
&gt; TARGET_FPU =3D &quot;&quot;<br>
&gt; meta<br>
&gt; meta-poky =3D &quot;rel-v2017.3:8506cec55de8950e89a4d3e786860f10867825=
87&quot;<br>
&gt; meta-perl<br>
&gt; meta-systemd<br>
&gt; meta-gpe<br>
&gt; meta-python<br>
&gt; meta-efl<br>
&gt; meta-ruby<br>
&gt; meta-filesystems<br>
&gt; meta-gnome<br>
&gt; meta-multimedia<br>
&gt; meta-networking<br>
&gt; meta-webserver<br>
&gt; meta-xfce<br>
&gt; meta-initramfs<br>
&gt; meta-oe =3D &quot;rel-v2017.3:a9887ac249b81fcac3007244d0c807c71b73acef=
&quot;<br>
&gt; meta-linaro-toolchain =3D &quot;rel-v2017.3:39860f6c7af0858981cc004bbe=
4f4c421f6be607&quot;<br>
&gt; meta-qt5 =3D &quot;rel-v2017.3:eec778bfb9a0b5494d593a2d7bb02c027b64183=
5&quot;<br>
&gt; meta-xilinx =3D &quot;rel-v2017.3:04a45809e0bc42b35c88f8a08305d82fd25e=
97cf&quot;<br>
&gt; meta-xilinx-tools =3D &quot;rel-v2017.3:37eff634934efac72d3e2eabb7c4f8=
d0c8a36fbb&quot;<br>
&gt; meta-petalinux =3D &quot;rel-v2017.3:d74ceaef26e606c2761edfc3446d0ad3c=
3cc8b8e&quot;<br>
&gt; meta-virtualization =3D &quot;rel-v2017.3:cbfd4376d5e9d229f857151ffdfb=
57fbc6c0c40d&quot;<br>
&gt; meta-openamp =3D &quot;rel-v2017.3:cfeca8988418e4967f0d6df828d23a1540a=
e25a0&quot;<br>
&gt;<br>
&gt; Initialising tasks: 100% |############################################=
###########################################################################=
#############################| Time: 0:00:21<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: quilt-native-0.64-r0 do_install: oe_runmake failed<br>
&gt; ERROR: quilt-native-0.64-r0 do_install: Function failed: do_install (l=
og file is located at /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto=
_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.do_install.=
15836)<br>
&gt; ERROR: Logfile of failure stored in: /home/pre-si-user/Desktop/Pushpen=
dra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/=
temp/log.do_install.15836<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_install<br>
&gt; | NOTE: make -j 2 BUILD_ROOT=3D/home/pre-si-user/Desktop/Pushpendra/Xi=
lix_Zync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image =
install<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | config/install-sh -c -d /home/pre-si-user/Desktop/Pushpendra/Xilix_Z=
ync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/=
pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86=
_64-linux/usr/bin<br>
&gt; | rm -rf /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/bu=
ild/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/pre-si-user/Deskt=
op/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86_64-linux/usr/sha=
re/quilt/compat<br>
&gt; | /bin/bash: config/install-sh: Permission denied<br>
&gt; | Makefile:305: recipe for target &#39;install-main&#39; failed<br>
&gt; | make: *** [install-main] Error 126<br>
&gt; | make: *** Waiting for unfinished jobs....<br>
&gt; | config/install-sh -c -d /home/pre-si-user/Desktop/Pushpendra/Xilix_Z=
ync/Yocto_Code/build/tmp/work/x86_64-linux/quilt-native/0.64-r0/image/home/=
pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/sysroots/x86=
_64-linux/usr/share/quilt/compat<br>
&gt; | /bin/bash: config/install-sh: Permission denied<br>
&gt; | Makefile:346: recipe for target &#39;install-compat1&#39; failed<br>
&gt; | make: *** [install-compat1] Error 126<br>
&gt; | WARNING: /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/=
build/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/run.do_install.15836:=
1 exit 1 from &#39;exit 1&#39;<br>
&gt; | ERROR: Function failed: do_install (log file is located at /home/pre=
-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/build/tmp/work/x86_64-lin=
ux/quilt-native/0.64-r0/temp/log.do_install.15836)<br>
&gt; ERROR: Task (/home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Cod=
e/sources/core/meta/recipes-devtools/quilt/quilt-native_0.64.bb:do_install)=
 failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 15 tasks of which 13 didn&#39;t need to=
 be rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt; /home/pre-si-user/Desktop/Pushpendra/Xilix_Zync/Yocto_Code/sources/cor=
e/meta/recipes-devtools/quilt/quilt-native_0.64.bb:do_install<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000594169059089f01e--
