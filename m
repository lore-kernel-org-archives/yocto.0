Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B99E0174C
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 12:36:30 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id e14so12211959iej.11
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 12:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=xRzH7DeCXHLptEFPVG16GhDTeKbE/WZL0dXdP51IiKM=;
	b=clptbjDY10fb778voumhLUcMBvbOf6FtUgx9hhT5RwKde90TqEzF0szIHrjYyeA7SA
	z0eFLIMuhoGwri5rlB+bjCr9VDsPTjos0IOnl2rPpXhbTtutKi+goghaND6uLVoo0e/a
	yJSOBaqCLdrvo+IPR1WDMFDRpyBAraCOvyNhtGAfRjwuWizj1E8sm0ZWJyFO0/5WlCY7
	EBlLtBkxDkgLICGCmsC5OCGB7nqioFClqbywuJQnVaVMBpDC5Ue5u3Xha3pv4vJUBrYR
	WM9GzASPkzPqYDY/N4necKPNlHsqGjndjTvXU+NXOJBL5ZbZKM4p05A6e9PoZ/S2xnGI
	EMCQ==
X-Received: by 10.42.208.211 with SMTP id gd19mr14537713icb.15.1382988989647; 
	Mon, 28 Oct 2013 12:36:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Mon, 28 Oct 2013 12:35:54 -0700 (PDT)
In-Reply-To: <CANFVK7-RGLuL9=wYagjNmScMt7gi_1nUOM=V8DiWJiTfRCahGw@mail.gmail.com>
References: <CANFVK7-RGLuL9=wYagjNmScMt7gi_1nUOM=V8DiWJiTfRCahGw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Oct 2013 12:35:54 -0700
Message-ID: <CAMKF1so9W4TR=FKFX7JFbCBR1hhu5NGd+T3RiXC_eo1vSDqdNQ@mail.gmail.com>
To: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto-dora problems building python
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
X-List-Received-Date: Mon, 28 Oct 2013 19:36:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 25, 2013 at 6:16 AM, Jo=C3=A3o Henrique Freitas <joaohf@gmail.c=
om> wrote:
>
> Hello,
>
> I got this QA error when build python:
>
> ERROR: QA Issue: python: The compile log indicates that host include and/=
or
> library paths were used.
>
> Any hint?

python build system is very stubborn and does not respect cross
compilation many times. You might have uncovered some case
that hasnt been seen yet.  You should put your build logs for python
somewhere so we can take a look and understand better
whats going on

>
> ----
> Build Configuration:
> BB_VERSION        =3D "1.20.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-13.04"
> TARGET_SYS        =3D "i586-poky-linux"
> MACHINE           =3D "qemux86"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.5"
> TUNE_FEATURES     =3D "m32 i586"
> TARGET_FPU        =3D ""
> meta              =3D "dora:faf8f8660fae26a14578738b642fdeb08bcb9d54"
> meta-oe
> meta-systemd      =3D "dora:513e7ca20ddd0a5c3b649bf292a67c3e0473d3a8"
> meta-yocto        =3D "dora:faf8f8660fae26a14578738b642fdeb08bcb9d54"
> meta-padtec
> meta-otns         =3D "master:b2db43d21f303e4e02956cc9f2e9ad2bf547dd95"
> meta-intel
> meta-crownbay     =3D "custom:fa3b568222f87fc557f01bb5acb5d362e6bde301"
>
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: QA Issue: python: The compile log indicates that host include and/=
or
> library paths were used.
>          Please check the log
> '/srv/build/yocto/build/work/i586-poky-linux/python/2.7.3-r0.3/temp/log.d=
o_compile'
> for more information.
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /srv/build/yocto/build/work/i586-poky-linux/python/2.7.3-r0.3/temp/log.do=
_package.29112
> ERROR: Task 12
> (/home/jfreitas/yocto/poky/meta/recipes-devtools/python/python_2.7.3.bb,
> do_package) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 872 tasks of which 540 didn't need to be
> rerun and 1 failed.
> NOTE: Writing buildhistory
> No currently running tasks (872 of 876)
>
> Summary: 1 task failed:
>   /home/jfreitas/yocto/poky/meta/recipes-devtools/python/python_2.7.3.bb,
> do_package
> Summary: There were 3 ERROR messages shown, returning a non-zero exit cod=
e.
>
>
> Thanks.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

