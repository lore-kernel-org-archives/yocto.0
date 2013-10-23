Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05FC5E01756
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 15:11:57 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id t60so1497365wes.30
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 15:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sh2cZKAaYO/Lk+REjszMmGbrKyDLqTUx1pDm8R7AHhs=;
	b=LZvi65SV5bPeEs3AP75PVGq8Z07Fw8zay20J9zcA570fmHwOU+akGhwtQI8Uvqz9KJ
	sRDF25LJPhnun8i/iqPURRK9z9RIGrj5hY6DFqYbp0b96EsCG3BOoRpJArR9FkBRefUb
	D0wXS0M2rI54Lfr2Ce0XzTQqcZs999DQ7aPYJCpHCXdsD8W/MDD+yV982iBtvaDK4TMS
	k326uy4ZLEQg61IeuaitGsUBFnYkxq557B9WEv0y6977MZqx7jrYBMyQ3dN6U8wylC/0
	mY1TE/AhjA148Rrjm5Vnzdao+2JZr04PA0y9StJhuw2rjBtv0c3YOOFXycKkSdL3awMv
	XCSw==
MIME-Version: 1.0
X-Received: by 10.180.211.237 with SMTP id nf13mr3862787wic.55.1382566316068; 
	Wed, 23 Oct 2013 15:11:56 -0700 (PDT)
Received: by 10.194.179.198 with HTTP; Wed, 23 Oct 2013 15:11:56 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B8ED06FE@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153B8ED06FE@pluto.melinkcorp.local>
Date: Thu, 24 Oct 2013 00:11:56 +0200
Message-ID: <CA+chaQcLnZvUXN=4qWuWgavOJ2FdfVT6uVA3NHmDr3P-XE6PEw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to prevent building -dbg and -doc packages?
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
X-List-Received-Date: Wed, 23 Oct 2013 22:11:58 -0000
Content-Type: multipart/alternative; boundary=001a11c25f4225da3c04e96fcee0

--001a11c25f4225da3c04e96fcee0
Content-Type: text/plain; charset=UTF-8

Why do you want to disable them? All the files are already there, so
packaging them in right package doesn't cost much (if your reason was build
time).


On Wed, Oct 23, 2013 at 6:31 PM, Bryan Evenson <bevenson@melinkcorp.com>wrote:

> I'm on poky/dylan-9.0.1.  I'm not using any of the -dbg and the -doc
> packages and I'd like to clean things up for my build by not building these
> packages in the first place across the entire system.  I see references in
> the documentation to these package types, but I haven't found anything
> about how to keep the system from generating them.
>
> I tried going into meta/conf/bitbake.conf and modifying the PACKAGES
> variable to look as follows:
>
> PACKAGES = "${PN}-staticdev ${PN}-dev ${PN}-locale ${PACKAGE_BEFORE_PN}
> ${PN}"
>
> This caused a bunch of packages to get rebuilt and seemed to be working
> until it got to the libpam package.  Then I got the following errors:
>
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch2
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_pwhistory1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access3
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix2
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_succeed_if1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_authsucceed
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch4
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_time1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix3
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_authfail
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access2
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib2
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch5
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_limits1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch3
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_group1
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix4
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access4
> ERROR: QA Issue: non debug package contains .debug directory:
> libpam-xtests path
> /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/libpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix1
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /media/sda3/poky/poky-build/tmp/work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/temp/log.do_package.8163
> ERROR: Task 362 (/media/sda3/poky/meta/recipes-extended/pam/
> libpam_1.1.6.bb, do_package) failed with exit code '1'
>
> So either I didn't remove enough from bitbake.conf or there is a better
> way to do this.  Does anyone know of a good way to avoid building all the
> -dbg and -doc packages?
>
> Thanks,
> Bryan
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c25f4225da3c04e96fcee0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Why do you want to disable them? All the files are already=
 there, so packaging them in right package doesn&#39;t cost much (if your r=
eason was build time).<br></div><div class=3D"gmail_extra"><br><br><div cla=
ss=3D"gmail_quote">
On Wed, Oct 23, 2013 at 6:31 PM, Bryan Evenson <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@melinkcorp.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
I&#39;m on poky/dylan-9.0.1. =C2=A0I&#39;m not using any of the -dbg and th=
e -doc packages and I&#39;d like to clean things up for my build by not bui=
lding these packages in the first place across the entire system. =C2=A0I s=
ee references in the documentation to these package types, but I haven&#39;=
t found anything about how to keep the system from generating them.<br>

<br>
I tried going into meta/conf/bitbake.conf and modifying the PACKAGES variab=
le to look as follows:<br>
<br>
PACKAGES =3D &quot;${PN}-staticdev ${PN}-dev ${PN}-locale ${PACKAGE_BEFORE_=
PN} ${PN}&quot;<br>
<br>
This caused a bunch of packages to get rebuilt and seemed to be working unt=
il it got to the libpam package. =C2=A0Then I got the following errors:<br>
<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch2<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_pwhistory1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access3<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix2<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_succeed_if1<br>

ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_authsucceed<br>

ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch4<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_time1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix3<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_authfail<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access2<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_cracklib2<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch5<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_limits1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_dispatch3<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_group1<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix4<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_access4<br>
ERROR: QA Issue: non debug package contains .debug directory: libpam-xtests=
 path /work/arm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/packages-split/l=
ibpam-xtests/usr/share/Linux-PAM/xtests/.debug/tst-pam_unix1<br>
ERROR: QA run found fatal errors. Please consider fixing them.<br>
ERROR: Function failed: do_package_qa<br>
ERROR: Logfile of failure stored in: /media/sda3/poky/poky-build/tmp/work/a=
rm926ejste-poky-linux-gnueabi/libpam/1.1.6-r2/temp/log.do_package.8163<br>
ERROR: Task 362 (/media/sda3/poky/meta/recipes-extended/pam/<a href=3D"http=
://libpam_1.1.6.bb" target=3D"_blank">libpam_1.1.6.bb</a>, do_package) fail=
ed with exit code &#39;1&#39;<br>
<br>
So either I didn&#39;t remove enough from bitbake.conf or there is a better=
 way to do this. =C2=A0Does anyone know of a good way to avoid building all=
 the -dbg and -doc packages?<br>
<br>
Thanks,<br>
Bryan<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--001a11c25f4225da3c04e96fcee0--
