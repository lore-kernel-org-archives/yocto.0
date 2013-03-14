Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E272E012F1
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 06:21:31 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id b40so1002069qcq.38
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 06:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=0SsAzBMfnjh1sSJK2nsRslyZRqIBWlWcLe7Sd1P/wMY=;
	b=PRD7cS7geueusQYFiDQ4Nub/SJu8I4GZXXh+v64inLJB/Cf1LIhJ43ACUgqcFjkNY3
	9Rr4NkOPw3KbSwnge89x7LvfzrIyLLs60IGH1ATnYwUGWWzr6zqCdsVHHnPbrmPS7oRZ
	4szny1nXbmVISMgt8zClc0hYPcKjpl0n+As8b1qnOkfjIqI+G0NYqbQTTy9+yRVlwAbY
	m3r5jtJaGhuiB4fH91JyGPbeYth8syP677m4Dk+QlocOtn0KJKfqerk2oUY7DUbm639X
	VeE4iR2HwY+WUsKdNXCu2//P4wSEIcr4xI12yENzHww6CVcSxjOdxRhoFu2EaVPT9LkZ
	HdpQ==
MIME-Version: 1.0
X-Received: by 10.224.58.201 with SMTP id i9mr3246685qah.81.1363267290722;
	Thu, 14 Mar 2013 06:21:30 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Thu, 14 Mar 2013 06:21:30 -0700 (PDT)
In-Reply-To: <CAFyqS9pPywJFkh+60oOqse0oUjrp3qJuOqNZ4dXH3cbb40UXbQ@mail.gmail.com>
References: <CAFyqS9pPywJFkh+60oOqse0oUjrp3qJuOqNZ4dXH3cbb40UXbQ@mail.gmail.com>
Date: Thu, 14 Mar 2013 14:21:30 +0100
Message-ID: <CAFyqS9rDXuPdCYG6ntWCxbaMxJi9bVNQDG7TCrBg1oOzCKjYyQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Problem compiling util-linux-native
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
X-List-Received-Date: Thu, 14 Mar 2013 13:21:31 -0000
Content-Type: multipart/alternative; boundary=20cf3074b46698f5e304d7e26662

--20cf3074b46698f5e304d7e26662
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 13, 2013 at 8:34 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>w=
rote:

> Hi. I just moved from a x86 Ubuntu host to SuSE x86_64. Now I have issues
> getting my ARM image to build due to compilation errors in util-linux?
> It seems it is the util-linux-native that fails even though I get this in
> the end:
>
> *  ERROR: Task 432
> (virtual:native:/home/poky/meta/recipes-core/util-linux/
> util-linux_2.22.2.bb, do_compile) failed with exit code '1'*
>
>
> Here is the actual error reported from the log:
>
>    | *gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.  -include config.h -I./include
> -DLOCALEDIR=3D\"/home/poky/build/tmp/sysroots/x86_64-linux/usr/share/loca=
le\"
> -D_PATH_LOCALSTATEDIR=3D\"/home/poky/build/tmp/sysroots/x86_64-linux/var\=
"
> -isystem/home/poky/build/tmp/sysroots/x86_64-linux/usr/include
> -fsigned-char -fno-common -Wall -Werror=3Dsequence-point -Wextra
> -Wmissing-declarations -Wmissing-parameter-type -Wmissing-prototypes
> -Wno-missing-field-initializers -Wredundant-decls -Wsign-compare
> -Wtype-limits -Wuninitialized -Wunused-parameter -Wunused-result
> -Wunused-variable
> -isystem/home/poky/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe =
-c
> -o misc-utils/procs.o misc-utils/procs.c
> | In file included from misc-utils/lsblk.c:46:0:
> | /usr/include/libudev.h:28:2: error: #error "#define
> LIBUDEV_I_KNOW_THE_API_IS_SUBJECT_TO_CHANGE is needed to use this
> experimental library version"*
>
>
> I dit not get this error on the Ubuntu host. In fact
> /usr/include/libudev.h does not even exist and I dont think
> util-linux-native is even built.
> Why is it built on the SuSE host? Trying to define
> LIBUDEV_I_KNOW_THE_API_IS_SUBJECT_TO_CHANGE only made be pass the first
> error, then I got into issues with unresolved udev symbols instead. Is a
> no-go to try to use the Yocto environment on this SuSE host? It does warn
> about it :(
>
> *WARNING: Host distribution "SUSE-LINUX-11" has not been validated with
> this version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.*
>
> I am currently on branch:master
>
> Hans
>
> Ok, I seem to have worked around this particular problem. I have new ones
but I post them separately ;)
In this case it seems the *libudev* installed on my host is too old and
breaks the build.
I solved it in my layer using a util-linux_2.22.2.bbappend file by doing:
*   EXTRA_OECONF_append_class-native =3D " --without-udev"*
This is ok in my case since I will use mdev rather than udev.

Hans

--20cf3074b46698f5e304d7e26662
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Mar 13, 2013 at 8:34 PM, Hans Be=
ck=E9rus <span dir=3D"ltr">&lt;<a href=3D"mailto:hans.beckerus@gmail.com" t=
arget=3D"_blank">hans.beckerus@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">
Hi. I just moved from a x86 Ubuntu host to SuSE x86_64. Now I have issues g=
etting my ARM image to build due to compilation errors in util-linux?<br>It=
 seems it is the util-linux-native that fails even though I get this in the=
 end:<br>

<br><i>=A0 ERROR: Task 432 (virtual:native:/home/poky/meta/recipes-core/uti=
l-linux/<a href=3D"http://util-linux_2.22.2.bb" target=3D"_blank">util-linu=
x_2.22.2.bb</a>, do_compile) failed with exit code &#39;1&#39;</i><br><br><=
br>
Here is the actual error reported from the log:<br>
<br>=A0=A0 | <i>gcc -std=3Dgnu99 -DHAVE_CONFIG_H -I.=A0 -include config.h -=
I./include -DLOCALEDIR=3D\&quot;/home/poky/build/tmp/sysroots/x86_64-linux/=
usr/share/locale\&quot; -D_PATH_LOCALSTATEDIR=3D\&quot;/home/poky/build/tmp=
/sysroots/x86_64-linux/var\&quot; -isystem/home/poky/build/tmp/sysroots/x86=
_64-linux/usr/include -fsigned-char -fno-common -Wall -Werror=3Dsequence-po=
int -Wextra -Wmissing-declarations -Wmissing-parameter-type -Wmissing-proto=
types -Wno-missing-field-initializers -Wredundant-decls -Wsign-compare -Wty=
pe-limits -Wuninitialized -Wunused-parameter -Wunused-result -Wunused-varia=
ble -isystem/home/poky/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pip=
e -c -o misc-utils/procs.o misc-utils/procs.c<br>

| In file included from misc-utils/lsblk.c:46:0:<br>| /usr/include/libudev.=
h:28:2: error: #error &quot;#define LIBUDEV_I_KNOW_THE_API_IS_SUBJECT_TO_CH=
ANGE is needed to use this experimental library version&quot;</i><br><br>

<br>I dit not get this error on the Ubuntu host. In fact /usr/include/libud=
ev.h does not even exist and I dont think util-linux-native is even built. =
<br>Why is it built on the SuSE host? Trying to define LIBUDEV_I_KNOW_THE_A=
PI_IS_SUBJECT_TO_CHANGE only made be pass the first error, then I got into =
issues with unresolved udev symbols instead. Is a no-go to try to use the Y=
octo environment on this SuSE host? It does warn about it :(<br>

<br><i>WARNING: Host distribution &quot;SUSE-LINUX-11&quot; has not been va=
lidated with this version of the build system; you may possibly experience =
unexpected failures. It is recommended that you use a tested distribution.<=
/i><br>

<br>I am currently on branch:master<span class=3D"HOEnZb"><font color=3D"#8=
88888"><br><br>Hans<br><br></font></span></blockquote><div>Ok, I seem to ha=
ve worked around this particular problem. I have new ones but I post them s=
eparately ;)<br>
In this case it seems the <i>libudev</i> installed on my host is too old an=
d breaks the build.<br>I solved it in my layer using a util-linux_2.22.2.bb=
append file by doing:<br><i>=A0=A0 EXTRA_OECONF_append_class-native =3D &qu=
ot; --without-udev&quot;</i><br>
This is ok in my case since I will use mdev rather than udev. <br><br>Hans<=
br><br><br></div></div><br>

--20cf3074b46698f5e304d7e26662--
