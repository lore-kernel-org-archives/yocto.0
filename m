Return-Path: <anayet.eu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 146A5E00E0D; Fri, 28 Oct 2016 04:50:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anayet.eu[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88673E00E0B
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 04:50:14 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id c203so7892637vke.1
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 04:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eYpudVCh0jhEWnOwO0xQ/5ROKbvXy1lHtbvXASb8J5Q=;
	b=rAzT9qB15XrKh7sPYaB1W25XKsxiWx6qIlQONBpEHCDAB66GjDSq7clLmKV5sk3lL5
	hANXdtk1x8RS5+kE9A/DosK2G3XfxjWmjNvEYZPnL0dL0BMyQV9tU+AmrnbwRi9Q41O+
	z7qKAOigjacr/Phtw/YPhN+gAbT9LdTA6OaCRufKqHwBhGQHg7YHK3jyNHpDo/VSkMx1
	VOJPubWF1+owNrgabHwK1E/VrYdwO3qVohZLq8Cr0RSm/KUY6eZ5UfXXGdn//xJOnl16
	Yqxvwpt3wm1f/Dry0vliEsylRMrd2/owgom8hmLgZgBChTatjl5rrHu5uSFzP9CFa/Vj
	MNXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eYpudVCh0jhEWnOwO0xQ/5ROKbvXy1lHtbvXASb8J5Q=;
	b=dAaUCIDbZoy9ASajS52AUtklkGMRv3cOrKaJEawtlAZqmQokIsHs0BFcSC1t2sYJ/I
	cLJvSye0z5ke9gcKoNbCf2EL+tE34YvituOtiGAaf0hFWDtwNukNaqJSvYYYtnYA0JFQ
	+vUptnLwkkOvBqCp0tOZEl4fQ0uaGbcBzvPdfzT43GfpWIyhYS9HrNUHjmhUOXVb3kSp
	+vVJGF6nmFylV4ZK2kikIFpk1VDQHzjHGJER43h30KO3UdzW+iWVPtAXMbw2Sc1YefTX
	74q673DD72JdJUL101Iv6BLSn3x/l/KSkqYrLgHcoH3mkwEZ0C2aCrf57MnlG9ir8toh
	/KJw==
X-Gm-Message-State: ABUngvezZG0rh47xpMuanCAKe+SzqstFa2lKzWXJ/O0iD+P07tb6ohIYQ4RyF734uqsdZNRlYEmo0ddp9Zpuxw==
X-Received: by 10.31.207.199 with SMTP id f190mr9296774vkg.32.1477655413739;
	Fri, 28 Oct 2016 04:50:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.45.15 with HTTP; Fri, 28 Oct 2016 04:50:13 -0700 (PDT)
In-Reply-To: <CAC+thW2a5t6j2qeESrzCcuoS8yhDOjN7mD8Biz4MLicpQL9=ag@mail.gmail.com>
References: <CALa0-x9ioSippF7nJiZv0o-bi_Y8Fr41ajSpradaCLSBZwHFuQ@mail.gmail.com>
	<CAC+thW2a5t6j2qeESrzCcuoS8yhDOjN7mD8Biz4MLicpQL9=ag@mail.gmail.com>
From: "S. M. Anayetullah" <anayet.eu@gmail.com>
Date: Fri, 28 Oct 2016 13:50:13 +0200
Message-ID: <CALa0-x8a4sjOVmG3LmRT1XHaNHvLajqB_p7TectXJbX4kSuZWw@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry pi (version 1) model B+
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
X-List-Received-Date: Fri, 28 Oct 2016 11:50:19 -0000
Content-Type: multipart/alternative; boundary=001a114f1de80956b6053feb76f4

--001a114f1de80956b6053feb76f4
Content-Type: text/plain; charset=UTF-8

Hi Andrea Galbusera,
Thank you very much for your reply. This time I have used the same branch
for all the layers. Yet I am getting errors. It seems like it cannot fetch
files from wiki.qemu-project.org/  because of the firewall policy of my
company. I have manually downloaded it (qemu-2.7.0.tar.bz2) and placed it
in "/poky/rpi-build/downloads/"  directory. I have changed the location in
the file "qemu_2.7.0.bb". Changed it from url "
http://wiki.qemu-project.org/download/${BP}.tar.bz2" to absolute location
"file://home/anayet/workspace/yocto_project/oct_new/poky/rpi-build/downloads/qemu-2.7.0.tar.bz2".
Also I have experimented(kept / comment out by # ) with following 2 lines.

SRC_URI[md5sum] = "08d4d06d1cb598efecd796137f4844ab"
SRC_URI[sha256sum] =
"326e739506ba690daf69fc17bd3913a6c313d9928d743bd8eddb82f403f81e53"

Running bitbake rpi-basic-image now gives me following error.

********************************************************************************************************************************************
Loading cache...done.
Loaded 2129 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi"
DISTRO            = "poky"
DISTRO_VERSION    = "2.2"
TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp    = "master:e5815d0b607ff262663864d51fe51fbb37172329"
meta-oe
meta-multimedia   = "master:7a491f384c277ee42ac895fec6fc2ef70f15df4d"
meta-raspberrypi  = "master:de016ceef63028f5578191785c50529695f76a1a"

Initialising tasks...done.
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 393 of 2019
(/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:
do_install)
NOTE: Running task 527 of 2019
(/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-core/readline/readline_6.3.bb:
do_configure)
NOTE: recipe gettext-0.19.8.1-r0: task do_install: Started
NOTE: Running task 667 of 2019
(virtual:native:/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-devtools/qemu/qemu_2.7.0.bb:
do_fetch)
NOTE: Running task 692 of 2019
(/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb:
do_package)
NOTE: recipe readline-6.3-r0: task do_configure: Started
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package:
Started
NOTE: recipe qemu-native-2.7.0-r1: task do_fetch: Started
WARNING: qemu-native-2.7.0-r1 do_fetch: Failed to fetch URL
file://home/anayet/workspace/yocto_project/oct_new/poky/rpi-build/downloads/qemu-2.7.0.tar.bz2,
attempting MIRRORS if available
NOTE: recipe qemu-native-2.7.0-r1: task do_fetch: Failed
NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package:
Succeeded
NOTE: recipe readline-6.3-r0: task do_configure: Succeeded
NOTE: recipe gettext-0.19.8.1-r0: task do_install: Succeeded
NOTE: Tasks Summary: Attempted 693 tasks of which 689 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

virtual:native:/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-devtools/qemu/qemu_2.7.0.bb:
do_fetch
Summary: There was 1 WARNING message shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.

**********************************************************************************************************************************************

I have checked that the compressed file (qemu-2.7.0.tar.bz2) is indeed in
the directory still I am getting this error. Please give me some idea what
am I missing or what could be wrong.

Thanks in advance.


On Thu, Oct 27, 2016 at 5:59 PM, Andrea Galbusera <gizero@gmail.com> wrote:

> Hi,
>
> On Thu, Oct 27, 2016 at 1:35 PM, S. M. Anayetullah <anayet.eu@gmail.com>
> wrote:
>
>> Dear Experts,
>> I got the error while running bitbake rpi-basic-image
>>
>> Loading cache...done.
>> Loaded 1361 entries from dependency cache.
>> NOTE: Resolving any missing task queue dependencies
>>
>> Build Configuration:
>> BB_VERSION        = "1.30.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "universal"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "raspberrypi"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "2.1.1"
>> TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
>> TARGET_FPU        = "hard"
>> meta
>> meta-poky
>> meta-yocto-bsp
>> meta-raspberrypi  = "krogoth:204b2bae4a5958735fdd19c63a69f4ed3780bba7"
>>
>
> Where di you get this layer from? The commit doesn't seems to belong to
> meta-raspberrypi repository.
>
>
>> meta-multimedia   = "fido:902964a4da26e46018d2a8d17dcdda1ac4627a39"
>>
>
> Mixing different main branches (krogoth and fido) might hit you with
> problems... Any reason for not using the same branch?
>
>
>>
>> NOTE: Preparing RunQueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> NOTE: Running task 2196 of 2202 (ID: 18, /home/anayet/workspace/yocto_p
>> roject/testProj/poky/meta-raspberrypi/recipes-core/images/rp
>> i-basic-image.bb, do_image_rpi_sdimg)
>> NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Started
>> Log data follows:
>> | DEBUG: Executing python function set_image_size
>> | DEBUG: Python function set_image_size finished
>> | DEBUG: Executing shell function do_image_rpi_sdimg
>> | Creating filesystem with Boot partition 40960 KiB and RootFS 90112 KiB
>> | dd: failed to open '/rpi-basic-image-raspberrypi-
>> 20161027061952.rootfs.rpi-sdimg': Permission denied
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_image_rpi_sdimg (log file is located at
>> /home/anayet/workspace/yocto_project/testProj/poky/build/tmp
>> /work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1.0-
>> r0/temp/log.do_image_rpi_sdimg.2917)
>> NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Failed
>> NOTE: Tasks Summary: Attempted 2198 tasks of which 2197 didn't need to be
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>   /home/anayet/workspace/yocto_project/testProj/poky/meta-rasp
>> berrypi/recipes-core/images/rpi-basic-image.bb, do_image_rpi_sdimg
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>>
>> Can anyone tell me what could be the reason?
>>
>> N.B- I just started learning Yocto.
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a114f1de80956b6053feb76f4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Andrea Galbusera, <br></div>Thank you ve=
ry much for your reply. This time I have used the same branch for all the l=
ayers. Yet I am getting errors. It seems like it cannot fetch files from <a=
 href=3D"http://wiki.qemu-project.org/">wiki.qemu-project.org/</a>=C2=A0 be=
cause of the firewall policy of my company. I have manually downloaded it (=
qemu-2.7.0.tar.bz2) and placed it in &quot;/poky/rpi-build/downloads/&quot;=
=C2=A0 directory. I have changed the location in the file &quot;<a href=3D"=
http://qemu_2.7.0.bb">qemu_2.7.0.bb</a>&quot;. Changed it from url &quot;<a=
 href=3D"http://wiki.qemu-project.org/download/${BP}.tar.bz2">http://wiki.q=
emu-project.org/download/${BP}.tar.bz2</a>&quot; to absolute location=C2=A0=
 &quot;file://home/anayet/workspace/yocto_project/oct_new/poky/rpi-build/do=
wnloads/qemu-2.7.0.tar.bz2&quot;. Also I have experimented(kept / comment o=
ut by # ) with following 2 lines. <br><br>SRC_URI[md5sum] =3D &quot;08d4d06=
d1cb598efecd796137f4844ab&quot;<br>SRC_URI[sha256sum] =3D &quot;326e739506b=
a690daf69fc17bd3913a6c313d9928d743bd8eddb82f403f81e53&quot; <br><br></div>R=
unning bitbake rpi-basic-image now gives me following error. <br><br>******=
***************************************************************************=
***********************************************************<br>Loading cach=
e...done.<br>Loaded 2129 entries from dependency cache.<br>NOTE: Resolving =
any missing task queue dependencies<br><br>Build Configuration:<br>BB_VERSI=
ON=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.32.0&quot;<br>BUIL=
D_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linu=
x&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;universal&quot;<br>TARGET_=
SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnue=
abi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;raspberrypi&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=
=C2=A0=C2=A0=C2=A0 =3D &quot;2.2&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;arm armv6=C2=A0 vfp arm1176jzfs callconvention-hard&quot;<=
br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;hard&quot=
;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
<br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;master:e5815d0b607ff26266386=
4d51fe51fbb37172329&quot;<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 <br>meta-multimedia=C2=A0=C2=A0 =3D &quot;master:7a49=
1f384c277ee42ac895fec6fc2ef70f15df4d&quot;<br>meta-raspberrypi=C2=A0 =3D &q=
uot;master:de016ceef63028f5578191785c50529695f76a1a&quot;<br><br>Initialisi=
ng tasks...done.<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQu=
eue Tasks<br>NOTE: Running task 393 of 2019 (/home/anayet/workspace/yocto_p=
roject/oct_new/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:do_instal=
l)<br>NOTE: Running task 527 of 2019 (/home/anayet/workspace/yocto_project/=
oct_new/poky/meta/recipes-core/readline/readline_6.3.bb:do_configure)<br>NO=
TE: recipe gettext-0.19.8.1-r0: task do_install: Started<br>NOTE: Running t=
ask 667 of 2019 (virtual:native:/home/anayet/workspace/yocto_project/oct_ne=
w/poky/meta/recipes-devtools/qemu/qemu_2.7.0.bb:do_fetch)<br>NOTE: Running =
task 692 of 2019 (/home/anayet/workspace/yocto_project/oct_new/poky/meta/re=
cipes-devtools/opkg-utils/opkg-utils_git.bb:do_package)<br>NOTE: recipe rea=
dline-6.3-r0: task do_configure: Started<br>NOTE: recipe opkg-utils-0.3.2+g=
itAUTOINC+3ffece9bf1-r0: task do_package: Started<br>NOTE: recipe qemu-nati=
ve-2.7.0-r1: task do_fetch: Started<br>WARNING: qemu-native-2.7.0-r1 do_fet=
ch: Failed to fetch URL file://home/anayet/workspace/yocto_project/oct_new/=
poky/rpi-build/downloads/qemu-2.7.0.tar.bz2, attempting MIRRORS if availabl=
e<br>NOTE: recipe qemu-native-2.7.0-r1: task do_fetch: Failed<br>NOTE: reci=
pe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package: Succeeded<br=
>NOTE: recipe readline-6.3-r0: task do_configure: Succeeded<br>NOTE: recipe=
 gettext-0.19.8.1-r0: task do_install: Succeeded<br>NOTE: Tasks Summary: At=
tempted 693 tasks of which 689 didn&#39;t need to be rerun and 1 failed.<br=
><br>Summary: 1 task failed:<br>=C2=A0 virtual:native:/home/anayet/workspac=
e/yocto_project/oct_new/poky/meta/recipes-devtools/qemu/qemu_2.7.0.bb:do_fe=
tch<br>Summary: There was 1 WARNING message shown.<br>Summary: There were 3=
 ERROR messages shown, returning a non-zero exit code.<br><br>*************=
***************************************************************************=
******************************************************<br>=C2=A0<br></div>I=
 have checked that the compressed file (qemu-2.7.0.tar.bz2) is indeed in th=
e directory still I am getting this error. Please give me some idea what am=
 I missing or what could be wrong. =C2=A0 <br><div><br></div><div>Thanks in=
 advance. <br></div><div><br></div></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Thu, Oct 27, 2016 at 5:59 PM, Andrea Galbusera <=
span dir=3D"ltr">&lt;<a href=3D"mailto:gizero@gmail.com" target=3D"_blank">=
gizero@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv dir=3D"ltr">Hi,<br><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote"><span class=3D"">On Thu, Oct 27, 2016 at 1:35 PM, S. M. Anayetullah <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:anayet.eu@gmail.com" target=3D"_blank=
">anayet.eu@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div><div><div>Dear Experts, <br></d=
iv>I got the error while running bitbake rpi-basic-image<br><br>Loading cac=
he...done.<br>Loaded 1361 entries from dependency cache.<br>NOTE: Resolving=
 any missing task queue dependencies<br><br>Build Configuration:<br>BB_VERS=
ION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.30.0&quot;<br>BUI=
LD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-lin=
ux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;universal&quot;<br>TARGET=
_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnu=
eabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;raspberrypi&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=
=C2=A0=C2=A0=C2=A0 =3D &quot;2.1.1&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;arm armv6=C2=A0 vfp arm1176jzfs callconvention-hard&quot;<=
br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;hard&quot=
;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
<br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 <br>meta-raspberrypi=C2=A0 =3D &quot;k=
rogoth:204b2bae4a5958735fdd1<wbr>9c63a69f4ed3780bba7&quot;<br></div></div><=
/div></blockquote><div><br></div></span><div>Where di you get this layer fr=
om? The commit doesn&#39;t seems to belong to meta-raspberrypi repository.<=
/div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div><div>meta-multimedia=C2=A0=C2=A0 =3D &quot;fido:902964a4=
da26e46018d2a8d1<wbr>7dcdda1ac4627a39&quot;<br></div></div></div></blockquo=
te><div><br></div><div>Mixing different main branches (krogoth and fido) mi=
ght hit you with problems... Any reason for not using the same branch?</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span c=
lass=3D""><div dir=3D"ltr"><div><div><br>NOTE: Preparing RunQueue<br>NOTE: =
Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>NOTE: Running=
 task 2196 of 2202 (ID: 18, /home/anayet/workspace/yocto_p<wbr>roject/testP=
roj/poky/meta-rasp<wbr>berrypi/recipes-core/images/<a href=3D"http://rpi-ba=
sic-image.bb" target=3D"_blank">rp<wbr>i-basic-image.bb</a>, do_image_rpi_s=
dimg)<br>NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Star=
ted<br>Log data follows:<br>| DEBUG: Executing python function set_image_si=
ze<br>| DEBUG: Python function set_image_size finished<br>| DEBUG: Executin=
g shell function do_image_rpi_sdimg<br>| Creating filesystem with Boot part=
ition 40960 KiB and RootFS 90112 KiB<br>| dd: failed to open &#39;/rpi-basi=
c-image-raspberrypi-<wbr>20161027061952.rootfs.rpi-sdim<wbr>g&#39;: Permiss=
ion denied<br>| WARNING: exit code 1 from a shell command.<br>| ERROR: Func=
tion failed: do_image_rpi_sdimg (log file is located at /home/anayet/worksp=
ace/yocto_p<wbr>roject/testProj/poky/build/tmp<wbr>/work/raspberrypi-poky-l=
inux-<wbr>gnueabi/rpi-basic-image/1.0-<wbr>r0/temp/log.do_image_rpi_sdimg<w=
br>.2917)<br>NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: =
Failed<br>NOTE: Tasks Summary: Attempted 2198 tasks of which 2197 didn&#39;=
t need to be rerun and 1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /=
home/anayet/workspace/yocto_p<wbr>roject/testProj/poky/meta-rasp<wbr>berryp=
i/recipes-core/images/<a href=3D"http://rpi-basic-image.bb" target=3D"_blan=
k">rp<wbr>i-basic-image.bb</a>, do_image_rpi_sdimg<br>Summary: There was 1 =
ERROR message shown, returning a non-zero exit code.<br><br><br></div>Can a=
nyone tell me what could be the reason? <br><br></div>N.B- I just started l=
earning Yocto.=C2=A0 <br></div>
<br></span><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div></div>
</blockquote></div><br></div>

--001a114f1de80956b6053feb76f4--
