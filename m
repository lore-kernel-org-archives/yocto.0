Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59383E006AD
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 14:44:40 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id 12so1975752wgh.1
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 14:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=VgUOLZjq4cr4oei85k72kSNCK25Sk/S3n5Kk7avv23Q=;
	b=fhErV3ngma4oh4BputgTP4Vw+eiWPxr8UdxFmDvqo4X+32C/fuaycIwIlt3bwKZSvr
	9dhOdCKEUOyGN3PrSPpGUNZ85gVm2ICX+OO/NQaqDf372p6O31ZXEInRYrn1lOKRQyun
	Jb4XO+tIGQgtwWDeXeZ/8KqDs4fpyblGvJz4aB/K8TPRCJk3XLS/rcJzmMEx9Tr49pmm
	63m/6/TG0dd2D2iVuQtP8EllfGIUgoIQyCTgCiLsaVyZ1hY1VSp/sDr/nUpKP+2E3+Yv
	w/On8TdlpJh3Bmh7eowG3fdxwOhujPu3YhLmzgNAF4F7s1cN1r0uRO+njfCur8S9Cu8T
	glFQ==
MIME-Version: 1.0
X-Received: by 10.194.21.233 with SMTP id y9mr13479370wje.47.1363556679332;
	Sun, 17 Mar 2013 14:44:39 -0700 (PDT)
Received: by 10.194.89.106 with HTTP; Sun, 17 Mar 2013 14:44:39 -0700 (PDT)
In-Reply-To: <CAHUNapQOknbQKfj+m6OaONATjhb4Sg9JqX1Vkd-qUV+jj+tM_A@mail.gmail.com>
References: <CAHUNapQOknbQKfj+m6OaONATjhb4Sg9JqX1Vkd-qUV+jj+tM_A@mail.gmail.com>
Date: Sun, 17 Mar 2013 22:44:39 +0100
Message-ID: <CA+chaQfQSwRUH8jpKLRJ_391RtN6_myfGe-Kgb9_=Z27JtedTw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problems building 'neard'
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
X-List-Received-Date: Sun, 17 Mar 2013 21:44:40 -0000
Content-Type: multipart/alternative; boundary=047d7b5d277480bc0404d825c77d

--047d7b5d277480bc0404d825c77d
Content-Type: text/plain; charset=UTF-8

Update your oe-core to include
http://git.openembedded.org/openembedded-core/commit/?id=0f8447a7d99d2645b932eac1c24149f0c2d3791e


On Sun, Mar 17, 2013 at 10:37 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> I'm not sure if this is specific to my host, but:
>
> Build Configuration:
> BB_VERSION        = "1.17.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "openSUSE-project-12.3"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20130317"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "master:1ceb13dda11645229053fc4840954333f8910ba4"
>
> ERROR: Function failed: BUILDSPEC (see
> /home/trevor/devel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728
> for further information)
> ERROR: Logfile of failure stored in:
> /home/trevor/devel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728
> Log data follows:
> | DEBUG: Executing python function sstate_task_prefunc
> | DEBUG: Python function sstate_task_prefunc finished
> | DEBUG: Executing python function do_package_write_rpm
> | DEBUG: Executing python function read_subpackage_metadata
> | DEBUG: Python function read_subpackage_metadata finished
> | DEBUG: Executing python function do_package_rpm
> | DEBUG: Executing python function write_specfile
> | NOTE: Not creating empty RPM package for neard-tests
> | NOTE: Creating RPM package for neard-dbg
> | NOTE: Not creating empty RPM package for neard-staticdev
> | NOTE: Creating RPM package for neard-dev
> | NOTE: Not creating empty RPM package for neard-doc
> | NOTE: Not creating empty RPM package for neard-locale
> | NOTE: Creating RPM package for neard
> | NOTE: Creating RPM package for neard
> | DEBUG: Python function write_specfile finished
> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
> | DEBUG: Executing shell function BUILDSPEC
> | error: line 152: Illegal char '-' in EVR: Suggests: neard =
> 0.9-git0+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1
> | error: Package has no %description: neard-dbg.i586
> | Building target platforms: i586-poky-linux
> | DEBUG: Python function do_package_rpm finished
> | DEBUG: Python function do_package_write_rpm finished
> | ERROR: Function failed: BUILDSPEC (see
> /home/trevor/devel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728
> for further information)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b5d277480bc0404d825c77d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Update your oe-core to include=C2=A0<a href=3D"http://git.=
openembedded.org/openembedded-core/commit/?id=3D0f8447a7d99d2645b932eac1c24=
149f0c2d3791e">http://git.openembedded.org/openembedded-core/commit/?id=3D0=
f8447a7d99d2645b932eac1c24149f0c2d3791e</a></div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sun, Mar 1=
7, 2013 at 10:37 PM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"mailto=
:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</span> wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I&#39;m not sure if this is=
 specific to my host, but:<br><div><br>Build Configuration:<br>BB_VERSION=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.17.1&quot;<br>
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-=
linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;openSUSE-project-12.3&=
quot;<br>
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i586-poky-li=
nux&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;qemux86&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=
=A0=C2=A0=C2=A0 =3D &quot;1.3+snapshot-20130317&quot;<br>TUNE_FEATURES=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m32 i586&quot;<br>

TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br>me=
ta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yo=
cto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;master:1ceb13dda11645229053fc4840954333=
f8910ba4&quot;<br><br>ERROR: Function failed: BUILDSPEC (see /home/trevor/d=
evel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTO=
INC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_r=
pm.15728 for further information)<br>

ERROR: Logfile of failure stored in: /home/trevor/devel/yocto/git-method/co=
reimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5=
ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728<br>Log data fol=
lows:<br>

| DEBUG: Executing python function sstate_task_prefunc<br>| DEBUG: Python f=
unction sstate_task_prefunc finished<br>| DEBUG: Executing python function =
do_package_write_rpm<br>| DEBUG: Executing python function read_subpackage_=
metadata<br>

| DEBUG: Python function read_subpackage_metadata finished<br>| DEBUG: Exec=
uting python function do_package_rpm<br>| DEBUG: Executing python function =
write_specfile<br>| NOTE: Not creating empty RPM package for neard-tests<br=
>

| NOTE: Creating RPM package for neard-dbg<br>| NOTE: Not creating empty RP=
M package for neard-staticdev<br>| NOTE: Creating RPM package for neard-dev=
<br>| NOTE: Not creating empty RPM package for neard-doc<br>| NOTE: Not cre=
ating empty RPM package for neard-locale<br>

| NOTE: Creating RPM package for neard<br>| NOTE: Creating RPM package for =
neard<br>| DEBUG: Python function write_specfile finished<br>| DEBUG: SITE =
files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;ix86-common&#39;, &#=
39;common-linux&#39;, &#39;common-glibc&#39;, &#39;i586-linux&#39;, &#39;co=
mmon&#39;]<br>

| DEBUG: Executing shell function BUILDSPEC<br>| error: line 152: Illegal c=
har &#39;-&#39; in EVR: Suggests: neard =3D 0.9-git0+1e20e396cb837017b7e5ef=
822bfdab6ce060d2cf-r1<br>| error: Package has no %description: neard-dbg.i5=
86<br>

| Building target platforms: i586-poky-linux<br>| DEBUG: Python function do=
_package_rpm finished<br>| DEBUG: Python function do_package_write_rpm fini=
shed<br>| ERROR: Function failed: BUILDSPEC (see /home/trevor/devel/yocto/g=
it-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396=
cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728 for=
 further information)<br>

</div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7b5d277480bc0404d825c77d--
