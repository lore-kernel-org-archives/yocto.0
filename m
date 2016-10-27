Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2B84E00720; Thu, 27 Oct 2016 08:59:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93041E00529
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 08:59:06 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id b80so42734195wme.1
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 08:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qYh4zJPzpXNdBFzI5z+4fDgYz1RrVc7STbPuFi/4wJ4=;
	b=zbStNEVsC1sHGvw3jxgPDH1PvrM4wgmVtJm0ZoeoeWq53TM2PdKC+2k6/hC/adv0aA
	HSQq6JUCr6QrTrhNY5RuVMYzcvNcoVFuBnGTQMIreB/WGcWxI594a16YlOrsXNJ9lp2I
	9I2N0uron8qSu3ky5qSOKFcUO/R0YMue4Szux63xVuP/0fygHjrQ43iyafAhyqaic0RI
	fWpue3blDPqLBKBKuiW9GeBMAjn03jhDH53mO+zoP6k96DiYVrPpSOPfw2BOgECazKrR
	avZ78Qf4CtQgGG9XdjDe1I+2KAuzGGs/UABF2aK3yO9rVO7dwShQQdowbQzctApp6kbG
	fXOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qYh4zJPzpXNdBFzI5z+4fDgYz1RrVc7STbPuFi/4wJ4=;
	b=etUNBFMzYKaZ2i4kZM0AZXTUSyjPugrc+zF5gH+bgaGzrAUiMBoafbCuvaOGfuRpeS
	+M/6IEMR8cG7exinDJYjqgr83XJ2nPcYnDXXMWIGhyiZYP0aHaF6bFpdDOkDrG+HmGZf
	qfnjw04j/Kkec/GRSOo5Bir50QpTPqUA4vi7NyRybrzDxp4vIo8gaEAU3IzGIQNZRUt+
	W+bcJZfQwOtBUs7RfJSEHU8TxJRvmfIo5PWdEUpruAKYRjG3I9UjYxk0nkcPYMVnHma5
	aBsUloEBicwja6CexSUc2FFVbuc9iJb/rDDSGcP61C2L15MX606fA+zmN5PEthCDJAQe
	NBTw==
X-Gm-Message-State: ABUngvc0NkPmr20YIG4HcfAoG9qNBnAjNrhtzz8hrpiuhyflpCodnUmubiUfO6qciTSDJMH/Z+Pbkxg6Az9sNw==
X-Received: by 10.28.113.18 with SMTP id m18mr13732568wmc.101.1477583944725;
	Thu, 27 Oct 2016 08:59:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.175.98 with HTTP; Thu, 27 Oct 2016 08:59:04 -0700 (PDT)
In-Reply-To: <CALa0-x9ioSippF7nJiZv0o-bi_Y8Fr41ajSpradaCLSBZwHFuQ@mail.gmail.com>
References: <CALa0-x9ioSippF7nJiZv0o-bi_Y8Fr41ajSpradaCLSBZwHFuQ@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 27 Oct 2016 17:59:04 +0200
Message-ID: <CAC+thW2a5t6j2qeESrzCcuoS8yhDOjN7mD8Biz4MLicpQL9=ag@mail.gmail.com>
To: "S. M. Anayetullah" <anayet.eu@gmail.com>
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
X-List-Received-Date: Thu, 27 Oct 2016 15:59:12 -0000
Content-Type: multipart/alternative; boundary=001a1147909026b9d9053fdad2a0

--001a1147909026b9d9053fdad2a0
Content-Type: text/plain; charset=UTF-8

Hi,

On Thu, Oct 27, 2016 at 1:35 PM, S. M. Anayetullah <anayet.eu@gmail.com>
wrote:

> Dear Experts,
> I got the error while running bitbake rpi-basic-image
>
> Loading cache...done.
> Loaded 1361 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.30.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.1.1"
> TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
> TARGET_FPU        = "hard"
> meta
> meta-poky
> meta-yocto-bsp
> meta-raspberrypi  = "krogoth:204b2bae4a5958735fdd19c63a69f4ed3780bba7"
>

Where di you get this layer from? The commit doesn't seems to belong to
meta-raspberrypi repository.


> meta-multimedia   = "fido:902964a4da26e46018d2a8d17dcdda1ac4627a39"
>

Mixing different main branches (krogoth and fido) might hit you with
problems... Any reason for not using the same branch?


>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 2196 of 2202 (ID: 18, /home/anayet/workspace/yocto_
> project/testProj/poky/meta-raspberrypi/recipes-core/images/
> rpi-basic-image.bb, do_image_rpi_sdimg)
> NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Started
> Log data follows:
> | DEBUG: Executing python function set_image_size
> | DEBUG: Python function set_image_size finished
> | DEBUG: Executing shell function do_image_rpi_sdimg
> | Creating filesystem with Boot partition 40960 KiB and RootFS 90112 KiB
> | dd: failed to open '/rpi-basic-image-raspberrypi-
> 20161027061952.rootfs.rpi-sdimg': Permission denied
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_image_rpi_sdimg (log file is located at
> /home/anayet/workspace/yocto_project/testProj/poky/build/
> tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/
> 1.0-r0/temp/log.do_image_rpi_sdimg.2917)
> NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Failed
> NOTE: Tasks Summary: Attempted 2198 tasks of which 2197 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/anayet/workspace/yocto_project/testProj/poky/meta-
> raspberrypi/recipes-core/images/rpi-basic-image.bb, do_image_rpi_sdimg
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Can anyone tell me what could be the reason?
>
> N.B- I just started learning Yocto.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1147909026b9d9053fdad2a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Thu, Oct 27, 2016 at 1:35 PM, S. M. Anayetullah <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:anayet.eu@gmail.com" target=3D"_blank">anayet.eu@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div><div><div>Dear Experts, <br></div>I got the er=
ror while running bitbake rpi-basic-image<br><br>Loading cache...done.<br>L=
oaded 1361 entries from dependency cache.<br>NOTE: Resolving any missing ta=
sk queue dependencies<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.30.0&quot;<br>BUILD_SYS=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NAT=
IVELSBSTRING=C2=A0=C2=A0 =3D &quot;universal&quot;<br>TARGET_SYS=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br=
>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &q=
uot;raspberrypi&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=
=C2=A0 =3D &quot;2.1.1&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &=
quot;arm armv6=C2=A0 vfp arm1176jzfs callconvention-hard&quot;<br>TARGET_FP=
U=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;hard&quot;<br>meta=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 <br>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yoc=
to-bsp=C2=A0=C2=A0=C2=A0 <br>meta-raspberrypi=C2=A0 =3D &quot;krogoth:<wbr>=
204b2bae4a5958735fdd19c63a69f4<wbr>ed3780bba7&quot;<br></div></div></div></=
blockquote><div><br></div><div>Where di you get this layer from? The commit=
 doesn&#39;t seems to belong to meta-raspberrypi repository.</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div><div>meta-multimedia=C2=A0=C2=A0 =3D &quot;fido:<wbr>902964a4da26e460=
18d2a8d17dcdda<wbr>1ac4627a39&quot;<br></div></div></div></blockquote><div>=
<br></div><div>Mixing different main branches (krogoth and fido) might hit =
you with problems... Any reason for not using the same branch?</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div><div><br>NOTE: Preparing RunQueue<br>NOTE: Executing SetScene Task=
s<br>NOTE: Executing RunQueue Tasks<br>NOTE: Running task 2196 of 2202 (ID:=
 18, /home/anayet/workspace/yocto_<wbr>project/testProj/poky/meta-<wbr>rasp=
berrypi/recipes-core/<wbr>images/<a href=3D"http://rpi-basic-image.bb" targ=
et=3D"_blank">rpi-basic-image.bb</a>, do_image_rpi_sdimg)<br>NOTE: recipe r=
pi-basic-image-1.0-r0: task do_image_rpi_sdimg: Started<br>Log data follows=
:<br>| DEBUG: Executing python function set_image_size<br>| DEBUG: Python f=
unction set_image_size finished<br>| DEBUG: Executing shell function do_ima=
ge_rpi_sdimg<br>| Creating filesystem with Boot partition 40960 KiB and Roo=
tFS 90112 KiB<br>| dd: failed to open &#39;/rpi-basic-image-raspberrypi-<wb=
r>20161027061952.rootfs.rpi-<wbr>sdimg&#39;: Permission denied<br>| WARNING=
: exit code 1 from a shell command.<br>| ERROR: Function failed: do_image_r=
pi_sdimg (log file is located at /home/anayet/workspace/yocto_<wbr>project/=
testProj/poky/build/<wbr>tmp/work/raspberrypi-poky-<wbr>linux-gnueabi/rpi-b=
asic-image/<wbr>1.0-r0/temp/log.do_image_rpi_<wbr>sdimg.2917)<br>NOTE: reci=
pe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Failed<br>NOTE: Tasks S=
ummary: Attempted 2198 tasks of which 2197 didn&#39;t need to be rerun and =
1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /home/anayet/workspace/y=
octo_<wbr>project/testProj/poky/meta-<wbr>raspberrypi/recipes-core/<wbr>ima=
ges/<a href=3D"http://rpi-basic-image.bb" target=3D"_blank">rpi-basic-image=
.bb</a>, do_image_rpi_sdimg<br>Summary: There was 1 ERROR message shown, re=
turning a non-zero exit code.<br><br><br></div>Can anyone tell me what coul=
d be the reason? <br><br></div>N.B- I just started learning Yocto.=C2=A0 <b=
r></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--001a1147909026b9d9053fdad2a0--
