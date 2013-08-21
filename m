Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 776D5E00747
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 08:22:48 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id w62so554343wes.1
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 08:22:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vxGTTTjO421uN2BjkYJPhUombFKoCN+dwt9a9tH+zn4=;
	b=L3Ry135meJfb7i5kVPOIz60rIRDnXatZqlKZiIsFc8mI581J79FcVUFxIoe8SLI5Mz
	BFbX6GAL1PIGCagQNZghglfmw3g8YADst8T4CPLoO+AaphS0qsmiLTkDdDfT9pzcJ1dj
	5EcgMTbJuFZpDHT5XelmlSIPPepQ9nStu4/pKJyLPCvJGV/QcvJ+ESd6OPUddaIHnBSF
	OQLaVo4YTrXkaqvXGfLZuDxPD63S2Oes4M/zI5xfJDV/lezr5iiT8PC+qbEZsmyIsvH1
	ItvWdUyPmtO1uerIi0PVWFHNZ/PhD2gVnT7tMvddoWwRu+QVuGBqeTkAG+7TV87TfsvY
	t9DA==
X-Gm-Message-State: ALoCoQmRPFksJQtQC61JnX8HvD7encj214fyPGV/0Vu8LMPCPNk4FooIg+a0X24b9tLJFT0JTUhs
X-Received: by 10.194.88.98 with SMTP id bf2mr24665wjb.82.1377098567769; Wed,
	21 Aug 2013 08:22:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Wed, 21 Aug 2013 08:22:26 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1377098522-25948-1-git-send-email-andrei@gherzan.ro>
References: <1377098522-25948-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 21 Aug 2013 18:22:26 +0300
Message-ID: <CAK18fxGn-qMK8rWHo=mTaXSxwCdPg8y1B6ZeHT+niQB5icCvVA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] base-files: Remove profile and fstab
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
X-List-Received-Date: Wed, 21 Aug 2013 15:22:50 -0000
Content-Type: multipart/alternative; boundary=089e010d825af56cd704e476bea9

--089e010d825af56cd704e476bea9
Content-Type: text/plain; charset=ISO-8859-1

Merged.


On Wed, Aug 21, 2013 at 6:22 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Remove these files as the default ones work just OK.
> Moreover, not having /run mounted as tmpfs, would break mounting root as
> read only. This is done in the default fstab so use that one.
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  .../base-files/base-files/raspberrypi/fstab        |  9 ------
>  .../base-files/base-files/raspberrypi/profile      | 33
> ----------------------
>  recipes-core/base-files/base-files_3.0.14.bbappend |  3 --
>  3 files changed, 45 deletions(-)
>  delete mode 100644 recipes-core/base-files/base-files/raspberrypi/fstab
>  delete mode 100644 recipes-core/base-files/base-files/raspberrypi/profile
>  delete mode 100644 recipes-core/base-files/base-files_3.0.14.bbappend
>
> diff --git a/recipes-core/base-files/base-files/raspberrypi/fstab
> b/recipes-core/base-files/base-files/raspberrypi/fstab
> deleted file mode 100644
> index 55da1df..0000000
> --- a/recipes-core/base-files/base-files/raspberrypi/fstab
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -# stock fstab for the RaspberryPi - you may want to tweak this to suit.
> -
> -rootfs               /                    auto       defaults,noatime
>  1  1
> -proc                 /proc                proc       defaults
>  0  0
> -devpts               /dev/pts             devpts     mode=0620,gid=5
>   0  0
> -usbfs                /proc/bus/usb        usbfs      defaults
>  0  0
> -tmpfs                /var/volatile        tmpfs      defaults
>  0  0
> -tmpfs                /dev/shm             tmpfs      mode=0777
>   0  0
> -tmpfs                /media/ram           tmpfs      defaults
>  0  0
> diff --git a/recipes-core/base-files/base-files/raspberrypi/profile
> b/recipes-core/base-files/base-files/raspberrypi/profile
> deleted file mode 100644
> index 55568ad..0000000
> --- a/recipes-core/base-files/base-files/raspberrypi/profile
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
> -# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).
> -
> -PATH="/usr/local/bin:/usr/bin:/bin"
> -EDITOR="/bin/vi"                       # needed for packages like cron
> -test -z "$TERM" && TERM="vt100"        # Basic terminal capab. For screen
> etc.
> -
> -if [ ! -e /etc/localtime -a ! -e /etc/TZ ]; then
> -       TZ="UTC"                # Time Zone. Look at
> http://theory.uwinnipeg.ca/gnu/glibc/libc_303.html
> -                               # for an explanation of how to set this to
> your local timezone.
> -       export TZ
> -fi
> -
> -if [ "`id -u`" -eq 0 ]; then
> -   PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin:
> -fi
> -if [ "$PS1" ]; then
> -# works for bash and ash (no other shells known to be in use here)
> -   PS1='\u@\h:\w\$ '
> -fi
> -
> -if [ -d /etc/profile.d ]; then
> -  for i in /etc/profile.d/*.sh; do
> -    if [ -r $i ]; then
> -      . $i
> -    fi
> -  done
> -  unset i
> -fi
> -
> -export PATH PS1 OPIEDIR QPEDIR QTDIR EDITOR TERM
> -
> -umask 022
> diff --git a/recipes-core/base-files/base-files_3.0.14.bbappend
> b/recipes-core/base-files/base-files_3.0.14.bbappend
> deleted file mode 100644
> index 36432f5..0000000
> --- a/recipes-core/base-files/base-files_3.0.14.bbappend
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -# Don't forget to bump PRINC if you update the extra files.
> -PRINC = "1"
> --
> 1.8.1.4
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e010d825af56cd704e476bea9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Wed, Aug 21, 2013 at 6:22 PM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Remove these files as the default ones work =
just OK.<br>
Moreover, not having /run mounted as tmpfs, would break mounting root as<br=
>
read only. This is done in the default fstab so use that one.<br>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0.../base-files/base-files/raspberrypi/fstab =A0 =A0 =A0 =A0| =A09 ------=
<br>
=A0.../base-files/base-files/raspberrypi/profile =A0 =A0 =A0| 33 ----------=
------------<br>
=A0recipes-core/base-files/base-files_3.0.14.bbappend | =A03 --<br>
=A03 files changed, 45 deletions(-)<br>
=A0delete mode 100644 recipes-core/base-files/base-files/raspberrypi/fstab<=
br>
=A0delete mode 100644 recipes-core/base-files/base-files/raspberrypi/profil=
e<br>
=A0delete mode 100644 recipes-core/base-files/base-files_3.0.14.bbappend<br=
>
<br>
diff --git a/recipes-core/base-files/base-files/raspberrypi/fstab b/recipes=
-core/base-files/base-files/raspberrypi/fstab<br>
deleted file mode 100644<br>
index 55da1df..0000000<br>
--- a/recipes-core/base-files/base-files/raspberrypi/fstab<br>
+++ /dev/null<br>
@@ -1,9 +0,0 @@<br>
-# stock fstab for the RaspberryPi - you may want to tweak this to suit.<br=
>
-<br>
-rootfs =A0 =A0 =A0 =A0 =A0 =A0 =A0 / =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0auto =A0 =A0 =A0 defaults,noatime =A0 =A0 =A01 =A01<br>
-proc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /proc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
proc =A0 =A0 =A0 defaults =A0 =A0 =A0 =A0 =A0 =A0 =A00 =A00<br>
-devpts =A0 =A0 =A0 =A0 =A0 =A0 =A0 /dev/pts =A0 =A0 =A0 =A0 =A0 =A0 devpts=
 =A0 =A0 mode=3D0620,gid=3D5 =A0 =A0 =A0 0 =A00<br>
-usbfs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/proc/bus/usb =A0 =A0 =A0 =A0usbfs =
=A0 =A0 =A0defaults =A0 =A0 =A0 =A0 =A0 =A0 =A00 =A00<br>
-tmpfs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/var/volatile =A0 =A0 =A0 =A0tmpfs =
=A0 =A0 =A0defaults =A0 =A0 =A0 =A0 =A0 =A0 =A00 =A00<br>
-tmpfs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/dev/shm =A0 =A0 =A0 =A0 =A0 =A0 tmpf=
s =A0 =A0 =A0mode=3D0777 =A0 =A0 =A0 =A0 =A0 =A0 0 =A00<br>
-tmpfs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/media/ram =A0 =A0 =A0 =A0 =A0 tmpfs =
=A0 =A0 =A0defaults =A0 =A0 =A0 =A0 =A0 =A0 =A00 =A00<br>
diff --git a/recipes-core/base-files/base-files/raspberrypi/profile b/recip=
es-core/base-files/base-files/raspberrypi/profile<br>
deleted file mode 100644<br>
index 55568ad..0000000<br>
--- a/recipes-core/base-files/base-files/raspberrypi/profile<br>
+++ /dev/null<br>
@@ -1,33 +0,0 @@<br>
-# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))<br>
-# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).<br>
-<br>
-PATH=3D&quot;/usr/local/bin:/usr/bin:/bin&quot;<br>
-EDITOR=3D&quot;/bin/vi&quot; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 #=
 needed for packages like cron<br>
-test -z &quot;$TERM&quot; &amp;&amp; TERM=3D&quot;vt100&quot; =A0 =A0 =A0 =
=A0# Basic terminal capab. For screen etc.<br>
-<br>
-if [ ! -e /etc/localtime -a ! -e /etc/TZ ]; then<br>
- =A0 =A0 =A0 TZ=3D&quot;UTC&quot; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0# Time Zo=
ne. Look at <a href=3D"http://theory.uwinnipeg.ca/gnu/glibc/libc_303.html" =
target=3D"_blank">http://theory.uwinnipeg.ca/gnu/glibc/libc_303.html</a><br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 # for an expl=
anation of how to set this to your local timezone.<br>
- =A0 =A0 =A0 export TZ<br>
-fi<br>
-<br>
-if [ &quot;`id -u`&quot; -eq 0 ]; then<br>
- =A0 PATH=3D$PATH:/usr/local/sbin:/usr/sbin:/sbin:<br>
-fi<br>
-if [ &quot;$PS1&quot; ]; then<br>
-# works for bash and ash (no other shells known to be in use here)<br>
- =A0 PS1=3D&#39;\u@\h:\w\$ &#39;<br>
-fi<br>
-<br>
-if [ -d /etc/profile.d ]; then<br>
- =A0for i in /etc/profile.d/*.sh; do<br>
- =A0 =A0if [ -r $i ]; then<br>
- =A0 =A0 =A0. $i<br>
- =A0 =A0fi<br>
- =A0done<br>
- =A0unset i<br>
-fi<br>
-<br>
-export PATH PS1 OPIEDIR QPEDIR QTDIR EDITOR TERM<br>
-<br>
-umask 022<br>
diff --git a/recipes-core/base-files/base-files_3.0.14.bbappend b/recipes-c=
ore/base-files/base-files_3.0.14.bbappend<br>
deleted file mode 100644<br>
index 36432f5..0000000<br>
--- a/recipes-core/base-files/base-files_3.0.14.bbappend<br>
+++ /dev/null<br>
@@ -1,3 +0,0 @@<br>
-FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
-# Don&#39;t forget to bump PRINC if you update the extra files.<br>
-PRINC =3D &quot;1&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--089e010d825af56cd704e476bea9--
