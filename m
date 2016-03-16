Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4227BE0086B; Wed, 16 Mar 2016 12:44:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFE4AE007D2
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 12:44:09 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id l68so201691884wml.0
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 12:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=EQolw5qRltgBJNdsfIqnwjH+Bh19mlQHwmn3mouCUsI=;
	b=t50nqz2q0EDg0uYGxjcxObhFqUL1PAk+joRK7QcqdFqgIufUk/9e65Z3XHPGB3VZxv
	942dtKzGddHTqZA0XKgSPOnnqbTB2GUo+V9wVuL7Dtgm+ciilnlmppTavHdWO3dMQOug
	Ic0V7Zrx0hUnbBgwEh/Ke9G+cBGW5heDpkInq/oz2rRaEVVeKFY+HxFrBwVR6z7rgepB
	JHIbDAmFgHadVl3O9gEyOG8VT/Q0xXQEonhlaUdrGuOeBDbY81yu06AbNy0/NO3/VMeA
	2QEx9+xARUYG68b+5WR7rUclHWaua+CaYoRjqSdB36kwwqJz0VAuKMMzo25JfHrtM+41
	Gm0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=EQolw5qRltgBJNdsfIqnwjH+Bh19mlQHwmn3mouCUsI=;
	b=PvhbQkywWAy3rxyRkaS4LK/mrRzYtrhdCp7fPAyRXCpUxggph3Qv0YLPLwFA7apet+
	v2E5vBZN2gDXZ1CONH8ULWeoRwdfecAlWhD6xWRvmqTYaaLTpQ57pTO4Sz5vk+7PHoAg
	atvii1IekGaK6Pw+BulAvo1WTcKrhJPMMjXbNl6lCfmDtpDR4JEiseX88fkQM1BpPdit
	yy9oie4dHxseFJ5a7HN3kGDVgGMu1TJDZBpnzdblJwafCwBSljCEDk6wvje78Dh1taRd
	PdRxBC/ob4ZXrRXZyQT4x20eWA5gy7UNLtnt0gJ42vh3B/Gnm7K7c1HL2esKK1gtxXRM
	WjvQ==
X-Gm-Message-State: AD7BkJL3oeMjEPdVqbPRAOiQkb5Io+NBY9sXPv2z+2odlfGunOyXokz3jARxtbOhc6cARKbiLoOsCgJMO5sKbg==
MIME-Version: 1.0
X-Received: by 10.28.176.200 with SMTP id z191mr6390833wme.91.1458157448690;
	Wed, 16 Mar 2016 12:44:08 -0700 (PDT)
Received: by 10.194.102.74 with HTTP; Wed, 16 Mar 2016 12:44:08 -0700 (PDT)
In-Reply-To: <CAALGJZZwG1ifVf7J0WdvNyXWN81Ot2m3rWgSUhTX2Gueywx3fw@mail.gmail.com>
References: <CAALGJZZwG1ifVf7J0WdvNyXWN81Ot2m3rWgSUhTX2Gueywx3fw@mail.gmail.com>
Date: Wed, 16 Mar 2016 20:44:08 +0100
Message-ID: <CA+chaQeG5B_i1W7Z4--x9K71ctacSbjw-x7M35PeDThqkq+CKQ@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Christian Ege <k4230r6@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [master] ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot:
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
X-List-Received-Date: Wed, 16 Mar 2016 19:44:12 -0000
Content-Type: multipart/alternative; boundary=001a11412ba0c18f9c052e2fbcda

--001a11412ba0c18f9c052e2fbcda
Content-Type: text/plain; charset=UTF-8

Delete your TMPDIR and start again.

On Wed, Mar 16, 2016 at 8:29 PM, Christian Ege <k4230r6@gmail.com> wrote:

> Hi,
>
> with the latest master from today I ran in some trouble:
>
> Build Configuration:
> BB_VERSION        = "1.29.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "udooneo"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.0+snapshot-20160316"
> TUNE_FEATURES     = "arm armv7a vfp thumb neon
> callconvention-hard       cortexa9"
> TARGET_FPU        = "hard"
> meta
> meta-poky         = "HEAD:8debfea81e69d038bd2d56314b272cb74f5582ed"
> meta-oe
> meta-multimedia
> meta-python
> meta-networking   = "HEAD:35d91f32c462ad5889cb3229766d6d4ed2c80a4c"
> meta-qt5          = "master-5.6:b2d5376b41625521b9a081fe800345fff33d8dd6"
> meta-ruby         = "HEAD:35d91f32c462ad5889cb3229766d6d4ed2c80a4c"
> meta-fsl-arm      = "HEAD:37564e6801ce82fad979b4f57151c676d80e8a6c"
> meta-fsl-arm-extra = "HEAD:36a638abe1238bdc8e0ef1242dd7bfab59cc48d7"
> meta-fsl-demos    = "HEAD:6b779b2cb0d231063fc035a9a0871d722366c329"
> meta-udoo         = "master:1b38bcec5057b93017a00f107e0738ce64ade66f"
> meta-swupdate     = "master:44516e81a494afef3be7e3f249713fdec6e6e32a"
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: The recipe
> gobject-introspection is trying to install files into a shared area
> when those files already exist. Those files and their manifest
> location are:
>
>  /data/FSL/fsl-community-bsp-master/build/tmp/sysroots/udooneo/usr/share/gobject-introspection-1.0/Makefile.introspection
>  Matched in manifest-udooneo-gtk-doc-stub.populate_sysroot
>
>  /data/FSL/fsl-community-bsp-master/build/tmp/sysroots/udooneo/usr/share/aclocal/introspection.m4
>  Matched in manifest-udooneo-gtk-doc-stub.populate_sysroot
> Please verify which recipe should provide the above files.
> The build has stopped as continuing in this scenario WILL break
> things, if not now, possibly in the future (we've seen builds fail
> several months later). If the system knew how to recover from this
> automatically it would however there are several different scenarios
> which can result in this and we don't know which one this is. It may
> be you have switched providers of something like virtual/kernel (e.g.
> from linux-yocto to linux-yocto-dev), in that case you need to execute
> the clean task for both recipes and it will resolve this error. It may
> be you changed DISTRO_FEATURES from systemd to udev or vice versa.
> Cleaning those recipes should again resolve this error however
> switching DISTRO_FEATURES on an existing build directory is not
> supported, you should really clean out tmp and rebuild (reusing sstate
> should be safe). It could be the overlapping files detected are
> harmless in which case adding them to SSTATE_DUPWHITELIST may be the
> correct solution. It could also be your build is including two
> different conflicting versions of things (e.g. bluez 4 and bluez 5 and
> the correct solution for that would be to resolve the conflict. If in
> doubt, please ask on the mailing list, sharing the error and filelist
> above.
> ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: If the
> above message is too much, the simpler version is you're advised to
> wipe out tmp and rebuild (reusing sstate is fine). That will likely
> fix things in most (but not all) cases.
> ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: Function
> failed: sstate_task_postfunc
> ERROR: Logfile of failure stored in:
>
> /data/FSL/fsl-community-bsp-master/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gobject-introspection/1.46.0-r0/temp/log.do_populate_sysroot.16494
> ERROR: Task 1802
>
> (/data/FSL/fsl-community-bsp-master/sources/poky/meta/recipes-gnome/gobject-introspection/
> gobject-introspection_1.46.0.bb,
> do_populate_sysroot) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4772 tasks of which 4742 didn't need to
> be rerun and 1 failed.
> No currently running tasks (4772 of 5254)
>
>
> Any help is appreciated.
>
> Best,
> Christian
>
> --
> http://ch.ege.io/
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11412ba0c18f9c052e2fbcda
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Delete your TMPDIR and start again.</div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Wed, Mar 16, 2016 at 8:29 PM, C=
hristian Ege <span dir=3D"ltr">&lt;<a href=3D"mailto:k4230r6@gmail.com" tar=
get=3D"_blank">k4230r6@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi,<br>
<br>
with the latest master from today I ran in some trouble:<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.29.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;universal&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot=
;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;udooneo&quot;<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.0+snapshot-20160316&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7a vfp thumb neon<br>
callconvention-hard=C2=A0 =C2=A0 =C2=A0 =C2=A0cortexa9&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<br>
meta<br>
meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD:8debfea81e69d038b=
d2d56314b272cb74f5582ed&quot;<br>
meta-oe<br>
meta-multimedia<br>
meta-python<br>
meta-networking=C2=A0 =C2=A0=3D &quot;HEAD:35d91f32c462ad5889cb3229766d6d4e=
d2c80a4c&quot;<br>
meta-qt5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master-5.6:b2d5376b416=
25521b9a081fe800345fff33d8dd6&quot;<br>
meta-ruby=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD:35d91f32c462ad588=
9cb3229766d6d4ed2c80a4c&quot;<br>
meta-fsl-arm=C2=A0 =C2=A0 =C2=A0 =3D &quot;HEAD:37564e6801ce82fad979b4f5715=
1c676d80e8a6c&quot;<br>
meta-fsl-arm-extra =3D &quot;HEAD:36a638abe1238bdc8e0ef1242dd7bfab59cc48d7&=
quot;<br>
meta-fsl-demos=C2=A0 =C2=A0 =3D &quot;HEAD:6b779b2cb0d231063fc035a9a0871d72=
2366c329&quot;<br>
meta-udoo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:1b38bcec5057b93=
017a00f107e0738ce64ade66f&quot;<br>
meta-swupdate=C2=A0 =C2=A0 =C2=A0=3D &quot;master:44516e81a494afef3be7e3f24=
9713fdec6e6e32a&quot;<br>
<br>
NOTE: Preparing RunQueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: The recipe<br>
gobject-introspection is trying to install files into a shared area<br>
when those files already exist. Those files and their manifest<br>
location are:<br>
=C2=A0 =C2=A0/data/FSL/fsl-community-bsp-master/build/tmp/sysroots/udooneo/=
usr/share/gobject-introspection-1.0/Makefile.introspection<br>
=C2=A0Matched in manifest-udooneo-gtk-doc-stub.populate_sysroot<br>
=C2=A0/data/FSL/fsl-community-bsp-master/build/tmp/sysroots/udooneo/usr/sha=
re/aclocal/introspection.m4<br>
=C2=A0Matched in manifest-udooneo-gtk-doc-stub.populate_sysroot<br>
Please verify which recipe should provide the above files.<br>
The build has stopped as continuing in this scenario WILL break<br>
things, if not now, possibly in the future (we&#39;ve seen builds fail<br>
several months later). If the system knew how to recover from this<br>
automatically it would however there are several different scenarios<br>
which can result in this and we don&#39;t know which one this is. It may<br=
>
be you have switched providers of something like virtual/kernel (e.g.<br>
from linux-yocto to linux-yocto-dev), in that case you need to execute<br>
the clean task for both recipes and it will resolve this error. It may<br>
be you changed DISTRO_FEATURES from systemd to udev or vice versa.<br>
Cleaning those recipes should again resolve this error however<br>
switching DISTRO_FEATURES on an existing build directory is not<br>
supported, you should really clean out tmp and rebuild (reusing sstate<br>
should be safe). It could be the overlapping files detected are<br>
harmless in which case adding them to SSTATE_DUPWHITELIST may be the<br>
correct solution. It could also be your build is including two<br>
different conflicting versions of things (e.g. bluez 4 and bluez 5 and<br>
the correct solution for that would be to resolve the conflict. If in<br>
doubt, please ask on the mailing list, sharing the error and filelist<br>
above.<br>
ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: If the<br>
above message is too much, the simpler version is you&#39;re advised to<br>
wipe out tmp and rebuild (reusing sstate is fine). That will likely<br>
fix things in most (but not all) cases.<br>
ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: Function<br>
failed: sstate_task_postfunc<br>
ERROR: Logfile of failure stored in:<br>
/data/FSL/fsl-community-bsp-master/build/tmp/work/cortexa9hf-neon-poky-linu=
x-gnueabi/gobject-introspection/1.46.0-r0/temp/log.do_populate_sysroot.1649=
4<br>
ERROR: Task 1802<br>
(/data/FSL/fsl-community-bsp-master/sources/poky/meta/recipes-gnome/gobject=
-introspection/<a href=3D"http://gobject-introspection_1.46.0.bb" rel=3D"no=
referrer" target=3D"_blank">gobject-introspection_1.46.0.bb</a>,<br>
do_populate_sysroot) failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 4772 tasks of which 4742 didn&#39;t need to<=
br>
be rerun and 1 failed.<br>
No currently running tasks (4772 of 5254)<br>
<br>
<br>
Any help is appreciated.<br>
<br>
Best,<br>
Christian<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<a href=3D"http://ch.ege.io/" rel=3D"noreferrer" target=3D"_blank">http://c=
h.ege.io/</a><br>
</font></span><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11412ba0c18f9c052e2fbcda--
