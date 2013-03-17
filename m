Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A917DE006AD
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 14:37:21 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id es5so4549508wgb.29
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 14:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=9ryUcBcq0CZv42YJFra9XLQF0TTMhZDZy9sdelPCSGY=;
	b=EAVtxhwlGeNZzbATxh1InZCcTHn1Z/QTDMe16UXnJiD94qh1egOcHx3b4ZuYft/EJj
	Hlk/hGcaEcBhqQUh7rDTUB9XLibxScglyyxHRk+iIXb6NGtUbVuk+yZXbzxxmsXg8sMI
	omqHFRuytjMaYYiwZdhkZ1J0zc8QDeZrFBIBYUib0inPAshy8YbuKVYdgqekv/9VMZj/
	RRBMjEhVViesxjWFxRuyQa4gDOair98PDfQV7bZav9DNm8eXG7ETgtLslNAzFNC1yxqS
	nkLfNimHR/QPsFiq+twEA0rimTDxoy9A3bMYYv8DdUS5/6wXohYfNaa/WYf4//mESY6d
	Uthw==
MIME-Version: 1.0
X-Received: by 10.180.97.132 with SMTP id ea4mr13071099wib.23.1363556240613;
	Sun, 17 Mar 2013 14:37:20 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Sun, 17 Mar 2013 14:37:20 -0700 (PDT)
Date: Sun, 17 Mar 2013 17:37:20 -0400
Message-ID: <CAHUNapQOknbQKfj+m6OaONATjhb4Sg9JqX1Vkd-qUV+jj+tM_A@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: problems building 'neard'
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
X-List-Received-Date: Sun, 17 Mar 2013 21:37:22 -0000
Content-Type: multipart/alternative; boundary=f46d04426c4e5a671f04d825adb2

--f46d04426c4e5a671f04d825adb2
Content-Type: text/plain; charset=ISO-8859-1

I'm not sure if this is specific to my host, but:

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "openSUSE-project-12.3"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130317"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:1ceb13dda11645229053fc4840954333f8910ba4"

ERROR: Function failed: BUILDSPEC (see
/home/trevor/devel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728
for further information)
ERROR: Logfile of failure stored in:
/home/trevor/devel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728
Log data follows:
| DEBUG: Executing python function sstate_task_prefunc
| DEBUG: Python function sstate_task_prefunc finished
| DEBUG: Executing python function do_package_write_rpm
| DEBUG: Executing python function read_subpackage_metadata
| DEBUG: Python function read_subpackage_metadata finished
| DEBUG: Executing python function do_package_rpm
| DEBUG: Executing python function write_specfile
| NOTE: Not creating empty RPM package for neard-tests
| NOTE: Creating RPM package for neard-dbg
| NOTE: Not creating empty RPM package for neard-staticdev
| NOTE: Creating RPM package for neard-dev
| NOTE: Not creating empty RPM package for neard-doc
| NOTE: Not creating empty RPM package for neard-locale
| NOTE: Creating RPM package for neard
| NOTE: Creating RPM package for neard
| DEBUG: Python function write_specfile finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']
| DEBUG: Executing shell function BUILDSPEC
| error: line 152: Illegal char '-' in EVR: Suggests: neard =
0.9-git0+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1
| error: Package has no %description: neard-dbg.i586
| Building target platforms: i586-poky-linux
| DEBUG: Python function do_package_rpm finished
| DEBUG: Python function do_package_write_rpm finished
| ERROR: Function failed: BUILDSPEC (see
/home/trevor/devel/yocto/git-method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728
for further information)

--f46d04426c4e5a671f04d825adb2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m not sure if this is specific to my host, but:<br><=
div><br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1=
.17.1&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;x86_64-linux&quo=
t;<br>NATIVELSBSTRING=A0=A0 =3D &quot;openSUSE-project-12.3&quot;<br>
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;i586-poky-linux&quot;<br>MACHINE=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;qemux86&quot;<br>DISTRO=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=A0=A0 =
=3D &quot;1.3+snapshot-20130317&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quo=
t;m32 i586&quot;<br>
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;&quot;<br>meta=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto-bs=
p=A0=A0=A0 =3D &quot;master:1ceb13dda11645229053fc4840954333f8910ba4&quot;<=
br><br>ERROR: Function failed: BUILDSPEC (see /home/trevor/devel/yocto/git-=
method/coreimgmin/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb8=
37017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.15728 for fu=
rther information)<br>
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

--f46d04426c4e5a671f04d825adb2--
