Return-Path: <raj.khem@gmail.com>
Received: from mail-da0-f42.google.com (mail-da0-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D595DE0149D
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2013 00:04:48 -0700 (PDT)
Received: by mail-da0-f42.google.com with SMTP id n15so2545314dad.29
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2013 00:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=0WqLIHnvWEvpeFGOtTJFkdpYYQy1m35DK+xivBHUOCw=;
	b=pKRO86yU2u0LXub4z6Au1A6aR1oILtven1cudQiqIK8T9+AnaOB8VW67C5yhYxd2k+
	I6Dn157JiGV30U9jzSsK2TbZ6dDUPSyw831EEHkxUwCsYpx84Lh0A45vvPDMLzO+FvVT
	m/AxyBvcN5l1bRJofEl5K3XLeDMvgkSdei4p9OL2KGloe4dC+wfp2OLQ1orRQc7DI9qn
	E7Y4fXaSYkQXaFfbr+taDV8PggeXtKsY6wu+DEI0Y2wK+iXPqzm2Q5khfKw2bPIBQv+V
	vZn6o40wYcKZHA6SiwNn6eyhoQPHAPc+mgWczldZI+n0SpGDmxs4AM/Wer6ajRBj1Yvt
	Etlg==
X-Received: by 10.66.163.132 with SMTP id yi4mr7228143pab.104.1364022288657;
	Sat, 23 Mar 2013 00:04:48 -0700 (PDT)
Received: from vspringer-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id fk1sm5157625pbd.36.2013.03.23.00.04.47
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 23 Mar 2013 00:04:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACzyEJ9pcwrYKfJGqMux79sUmPnSOA_9LaLNcz5jWi4ZCanGHA@mail.gmail.com>
Date: Sat, 23 Mar 2013 00:04:46 -0700
Message-Id: <2E4EF49C-C7A5-425A-9328-AAF7763EDE82@gmail.com>
References: <CACzyEJ_vQfDNho=ZxGc1YwAsT5UqdX3dHpVFFBmaynK_CZ=mtQ@mail.gmail.com>
	<F8358AF0-D35A-496C-A53F-877F6280D19E@gmail.com>
	<CACzyEJ9pcwrYKfJGqMux79sUmPnSOA_9LaLNcz5jWi4ZCanGHA@mail.gmail.com>
To: Insop Song <insop.song@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: custom hddimg failure (mkdosfs: seek failed)
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
X-List-Received-Date: Sat, 23 Mar 2013 07:04:48 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Mar 22, 2013, at 11:53 PM, Insop Song <insop.song@gmail.com> wrote:

> Hi Khem,
>=20
> Thank you for the reply.
>=20
> I've tried and it worked only if I use "tools-sdk" like below:
>=20
> However, this image asks me the paaswrd, do you know?
>=20
> Thank you,
>=20
> Insop
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> DEPENDS =3D "linux-yocto"
>=20
> IMAGE_FEATURES +=3D "package-management ssh-server-dropbear"
> EXTRA_IMAGE_FEATURES =3D "tools-sdk tools-profile"

add 'debug-tweaks' also to EXTRA_IMAGE_FEATURES=20


>=20
> IMAGE_INSTALL =3D "\
> 	${CORE_IMAGE_BASE_INSTALL} \
> 	rt-app \
> 	schedtool-dl \
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>=20
>=20
> On Thu, Mar 21, 2013 at 10:58 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> EXTRA_IMAGE_FEATURES =3D  "tools-sdk"
>>=20
>> On Mar 21, 2013, at 1:44 AM, Insop Song <insop.song@gmail.com> wrote:
>>=20
>>> Hi,
>>>=20
>>> I am trying to add sdk (gcc ..) to meta-realtime
>>> (http://git.yoctoproject.org/cgit/cgit.cgi/meta-realtime/).
>>> Only difference between upstream meta-realtime is ""tools-sdk"
>>>=20
>>> -----
>>> require recipes-core/images/core-image-minimal-dev.bb
>>>=20
>>> DESCRIPTION =3D "Image with meta-realtime and sdk"
>>>=20
>>> DEPENDS =3D "linux-yocto"
>>>=20
>>> IMAGE_FEATURES +=3D "package-management ssh-server-dropbear"
>>> IMAGE_FEATURES +=3D "tools-sdk"
>>> EXTRA_IMAGE_FEATURES =3D "tools-debug debug-tweaks tools-profile =
dbg-pkgs"
>>>=20
>>> IMAGE_INSTALL =3D "\
>>>      ${CORE_IMAGE_BASE_INSTALL} \
>>>      rt-app \
>>>      schedtool-dl \
>>>      "
>>>=20
>>> ----
>>>=20
>>> I am keep getting hddimg failure with this message "mkdosfs: seek =
failed"
>>>=20
>>> I appreciate if anyone know on this issue.
>>>=20
>>> Thank you,
>>>=20
>>> Insop
>>>=20
>>> ---
>>> This is full output including error message.
>>>=20
>>> $ time bitbake core-image-realtime-sdk
>>> Pseudo is not present but is required, building this first before =
the main build
>>> Parsing recipes: 100%
>>> =
|#########################################################################=
###################|
>>> Time: 00:00:49
>>> Parsing of 834 .bb files complete (0 cached, 834 parsed). 1144
>>> targets, 29 skipped, 0 masked, 0 errors.
>>>=20
>>> Build Configuration:
>>> BB_VERSION        =3D "1.17.1"
>>> BUILD_SYS         =3D "i686-linux"
>>> NATIVELSBSTRING   =3D "Ubuntu-12.10"
>>> TARGET_SYS        =3D "i586-poky-linux"
>>> MACHINE           =3D "fri2"
>>> DISTRO            =3D "poky"
>>> DISTRO_VERSION    =3D "1.3+snapshot-20130321"
>>> TUNE_FEATURES     =3D "m32 core2"
>>> TARGET_FPU        =3D ""
>>> meta
>>> meta-yocto
>>> meta-yocto-bsp    =3D =
"master:9ffee9add2d0380f4025e7a678a166f25a7d659e"
>>> meta-intel
>>> meta-fri2         =3D =
"master:7a5e19e0c7d5967ef7b003ab775b7210c0ee16d7"
>>> meta-realtime     =3D =
"image-sdk:6825219a33a4b4d140a01cee5165d805951d1d75"
>>>=20
>>> NOTE: Resolving any missing task queue dependencies
>>> NOTE: Preparing runqueue
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> NOTE: Tasks Summary: Attempted 63 tasks of which 63 didn't need to =
be
>>> rerun and all succeeded.
>>> No currently running tasks (2 of 9)
>>> Loading cache: 100%
>>> =
|#########################################################################=
#####################|
>>> ETA:  00:00:00
>>> Loaded 1145 entries from dependency cache.
>>>=20
>>> Build Configuration:
>>> BB_VERSION        =3D "1.17.1"
>>> BUILD_SYS         =3D "i686-linux"
>>> NATIVELSBSTRING   =3D "Ubuntu-12.10"
>>> TARGET_SYS        =3D "i586-poky-linux"
>>> MACHINE           =3D "fri2"
>>> DISTRO            =3D "poky"
>>> DISTRO_VERSION    =3D "1.3+snapshot-20130321"
>>> TUNE_FEATURES     =3D "m32 core2"
>>> TARGET_FPU        =3D ""
>>> meta
>>> meta-yocto
>>> meta-yocto-bsp    =3D =
"master:9ffee9add2d0380f4025e7a678a166f25a7d659e"
>>> meta-intel
>>> meta-fri2         =3D =
"master:7a5e19e0c7d5967ef7b003ab775b7210c0ee16d7"
>>> meta-realtime     =3D =
"image-sdk:6825219a33a4b4d140a01cee5165d805951d1d75"
>>>=20
>>> NOTE: Resolving any missing task queue dependencies
>>> NOTE: Preparing runqueue
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> ERROR: Function failed: build_hddimg (see
>>> =
/home/insop/mybuilds/fri2-1.4/tmp/work/fri2-poky-linux/core-image-realtime=
-sdk/1.0-r0/temp/log.do_bootimg.21803
>>> for further information)
>>> ERROR: Logfile of failure stored in:
>>> =
/home/insop/mybuilds/fri2-1.4/tmp/work/fri2-poky-linux/core-image-realtime=
-sdk/1.0-r0/temp/log.do_bootimg.21803
>>> Log data follows:
>>> | DEBUG: Executing python function do_bootimg
>>> | DEBUG: Executing python function build_syslinux_cfg
>>> | DEBUG: Python function build_syslinux_cfg finished
>>> | DEBUG: Executing python function build_grub_cfg
>>> | DEBUG: Python function build_grub_cfg finished
>>> | DEBUG: Executing shell function build_hddimg
>>> | mkdosfs: seek failed
>>> | mkdosfs 2.11 (12 Mar 2005)
>>> | DEBUG: Python function do_bootimg finished
>>> | ERROR: Function failed: build_hddimg (see
>>> =
/home/insop/mybuilds/fri2-1.4/tmp/work/fri2-poky-linux/core-image-realtime=
-sdk/1.0-r0/temp/log.do_bootimg.21803
>>> for further information)
>>> ERROR: Task 8 =
(/home/insop/poky/meta-realtime/recipes-extended/images/core-image-realtim=
e-sdk.bb,
>>> do_bootimg) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 4522 tasks of which 3799 didn't need =
to
>>> be rerun and 1 failed.
>>> No currently running tasks (4522 of 4523)
>>>=20
>>> Summary: 1 task failed:
>>> =
/home/insop/poky/meta-realtime/recipes-extended/images/core-image-realtime=
-sdk.bb,
>>> do_bootimg
>>> Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.
>>>=20
>>> real  48m10.876s
>>> user  55m35.948s
>>> sys   9m36.128s
>>> insop@chai ~/mybuilds/fri2-1.4 $
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20


