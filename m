Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48A41E00C46
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 01:03:05 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id m15so542344wgh.15
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 01:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=NX70+EFbh5JdCefvcOiZg0FFbJb9xgHs++YIZCOzzMo=;
	b=f2wSeyG7Y/FgmKXSeoXC9V263Y2bIOoe2m+6eEflUuFUc6roDbJGyQJzzTLAB7599i
	KAkyDO7dlbdcvgDQ2brGYrlwpJY1uLcFVoNyp5bG3svu0sLqwYgI8DlxliRVO+XTI7A2
	7erOVb1fnMxqjUnuVhS2XQX3i/dG2Cv1U7qCxwKjTaJzLHDwxgAxeCVVxt1ce77jONLs
	Hvdy/ykTjKpCb8XfaBTbmyRX5E5wCxv1ZU6UYjBR+Mz9MrrqIn9OjCK0/DkmUJhbILU1
	b/6P2Adgq6s8N9Bzu2o57OBQrjdPxHSXKqoWzLzH5fWx1vT7JHy4MiBgN3+sC4ZZ7wui
	ojaw==
X-Gm-Message-State: ALoCoQn2IliFsLy1sebBFgRMIKz5dU+uGnKrjmzhu4+kLIL/559Awclfu9C0DSCUoemcYpMeTCMd
X-Received: by 10.180.98.1 with SMTP id ee1mr30764430wib.10.1396944183869;
	Tue, 08 Apr 2014 01:03:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 8 Apr 2014 01:02:43 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <5343A81F.2040907@reliableembeddedsystems.com>
References: <CAD78y+7r_2_nyzizGccLkyFj1PL2q3TBn4czTGsJr5dp6vos5Q@mail.gmail.com>
	<5343A81F.2040907@reliableembeddedsystems.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 8 Apr 2014 11:02:43 +0300
Message-ID: <CAK18fxEjk5934KybvYCZ_akKL4iwFTdwFU+X+ZcD7pFGn6FO1w@mail.gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Problem building core-image-sato-sdk
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
X-List-Received-Date: Tue, 08 Apr 2014 08:03:08 -0000
Content-Type: multipart/alternative; boundary=f46d041824f8d9d71904f683696e

--f46d041824f8d9d71904f683696e
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 8, 2014 at 10:41 AM, Robert Berger <
gmane@reliableembeddedsystems.com> wrote:

> On 03/09/2014 02:08 PM, Federico Vitali wrote:
> > Hi everyone,
> >
> > I've succesfully build core-image-sato for raspberry pi, but when I try
> > to build the sdk version I obtain the following error:
> >
>
> BTW I get the error also with core-image-sato:
>
> builder@ubuntu-srvr-lv:~/rpi/poky/raspberrypi/conf$ bitbake
> core-image-sato
> Loading cache: 100%
>
> |#####################################################################################################################################|
> ETA:  00:00:00
> Loaded 1215 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.20.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.5.1"
> TUNE_FEATURES     = "armv6 vfp"
> TARGET_FPU        = "vfp"
> meta
> meta-yocto
> meta-yocto-bsp    = "dora:98bd952a5b72c584fc1094e4a61eb9e2a24cc97b"
> meta-raspberrypi  = "master:fbc0947e96e8989d46b1570619554cb916e24049"
>
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Recipe mesa-gl is trying to create package libegl-mesa which was
> already written by recipe mesa. This will cause corruption, please
> resolve this and only provide the package from one recipe or the other
> or only build one of the recipes.
> ERROR: Function failed: read_subpackage_metadata
> ERROR: Logfile of failure stored in:
>
> /home/builder/rpi/poky/raspberrypi/tmp/work/armv6-vfp-poky-linux-gnueabi/mesa-gl/2_9.1.6-r0/temp/log.do_package_write_ipk.9838
> ERROR: Task 2436
> (/home/builder/rpi/poky/meta/recipes-graphics/mesa/mesa-gl_9.1.6.bb,
> do_package_write_ipk) failed with exit code '1'
>
>
Will try to take a look on this this weekend. If anybody finds the root of
the problem please submit a patch.
Thanks,

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--f46d041824f8d9d71904f683696e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Apr 8, 2014 at 10:41 AM, Robert Berger <span dir=3D"ltr">&l=
t;<a href=3D"mailto:gmane@reliableembeddedsystems.com" target=3D"_blank">gm=
ane@reliableembeddedsystems.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 03/09/2014 02:08 PM, Fede=
rico Vitali wrote:<br>
</div><div class=3D"">&gt; Hi everyone,<br>
&gt;<br>
&gt; I&#39;ve succesfully build core-image-sato for raspberry pi, but when =
I try<br>
&gt; to build the sdk version I obtain the following error:<br>
&gt;<br>
<br>
</div>BTW I get the error also with core-image-sato:<br>
<br>
builder@ubuntu-srvr-lv:~/rpi/poky/raspberrypi/conf$ bitbake core-image-sato=
<br>
Loading cache: 100%<br>
|##########################################################################=
###########################################################|<br>
ETA: =A000:00:00<br>
Loaded 1215 entries from dependency cache.<br>
NOTE: Resolving any missing task queue dependencies<br>
<br>
Build Configuration:<br>
BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.20.0&quot;<br>
BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING =A0 =3D &quot;Ubuntu-12.04&quot;<br>
TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;raspberrypi&quot;<br>
DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
DISTRO_VERSION =A0 =A0=3D &quot;1.5.1&quot;<br>
TUNE_FEATURES =A0 =A0 =3D &quot;armv6 vfp&quot;<br>
TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp =A0 =A0=3D &quot;dora:98bd952a5b72c584fc1094e4a61eb9e2a24cc9=
7b&quot;<br>
meta-raspberrypi =A0=3D &quot;master:fbc0947e96e8989d46b1570619554cb916e240=
49&quot;<br>
<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: Recipe mesa-gl is trying to create package libegl-mesa which was<br>
already written by recipe mesa. This will cause corruption, please<br>
resolve this and only provide the package from one recipe or the other<br>
or only build one of the recipes.<br>
ERROR: Function failed: read_subpackage_metadata<br>
ERROR: Logfile of failure stored in:<br>
/home/builder/rpi/poky/raspberrypi/tmp/work/armv6-vfp-poky-linux-gnueabi/me=
sa-gl/2_9.1.6-r0/temp/log.do_package_write_ipk.9838<br>
ERROR: Task 2436<br>
(/home/builder/rpi/poky/meta/recipes-graphics/mesa/<a href=3D"http://mesa-g=
l_9.1.6.bb" target=3D"_blank">mesa-gl_9.1.6.bb</a>,<br>
do_package_write_ipk) failed with exit code &#39;1&#39;<br>
<br></blockquote><div><br></div><div>Will try to take a look on this this w=
eekend. If anybody finds the root of the problem please submit a patch.=A0<=
/div><div>Thanks,</div><div>=A0</div></div>-- <br><div dir=3D"ltr"><div sty=
le=3D"text-align:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,5=
1,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</=
b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--f46d041824f8d9d71904f683696e--
