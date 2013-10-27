Return-Path: <joaohf@gmail.com>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B715E01780
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 18:13:39 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id h11so2581305wiv.4
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 18:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=jf2V55WZusLZUballKDnSK+/91ElJqP4RWWoQSvrKp4=;
	b=aqema2A0Vnih+0/7CZ3yf1bkOrSIAqlW2szsM4hL8TEWD1tn5PH0/SjAbAgS7PWxFE
	tsUiYALpYIIXQhE/wIQz/8FkzKSjVQINLKxJkRtZFiSpZ9MJwY2b6eYJqO62AGGECFka
	e5ITCVlIQNxzfk1A0SLsBkmC0xR0SshhPkKA9PohR2h0Eqkb88i1JtMo1F8FlRuUv2Nt
	6mHPx5YxWE+TMrr6QZ1jc+itWNYCJ81ochRVc+Bl0IGWu+Cvp/7A51j+TyOF5jmRH2wN
	QAw2ynOEqBRj83XCr6mfmDvE6gzh0zB4sDFFKBbula2ABhb6QntNN6JXtC9PoiWxw0Mv
	JYZw==
MIME-Version: 1.0
X-Received: by 10.180.86.104 with SMTP id o8mr3832507wiz.64.1382836417661;
	Sat, 26 Oct 2013 18:13:37 -0700 (PDT)
Received: by 10.216.90.132 with HTTP; Sat, 26 Oct 2013 18:13:37 -0700 (PDT)
In-Reply-To: <CANFVK7-RGLuL9=wYagjNmScMt7gi_1nUOM=V8DiWJiTfRCahGw@mail.gmail.com>
References: <CANFVK7-RGLuL9=wYagjNmScMt7gi_1nUOM=V8DiWJiTfRCahGw@mail.gmail.com>
Date: Sat, 26 Oct 2013 23:13:37 -0200
Message-ID: <CANFVK7-y1hoF_oAW_u1-XafYw7-pY5-HnkPX+S3nJ2eRKpV=Lw@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 27 Oct 2013 01:13:41 -0000
Content-Type: multipart/alternative; boundary=f46d044287e47510cf04e9aeb121

--f46d044287e47510cf04e9aeb121
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I took some time to test this issue and if I run using Ubuntu 13.04 32bits,
no problem. But when I switched to 64 bits (cleaning my build dir) I got
the problem again.

Using Ubuntu 13.10 64 bits is fine. But I needed to install gcc-multilib.
Because syslinux complains about that is unable to compile using the target
i386.

Thanks.


On Fri, Oct 25, 2013 at 11:16 AM, Jo=C3=A3o Henrique Freitas <joaohf@gmail.=
com>wrote:

>
> Hello,
>
> I got this QA error when build python:
>
> ERROR: QA Issue: python: The compile log indicates that host include
> and/or library paths were used.
>
> Any hint?
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
> ERROR: QA Issue: python: The compile log indicates that host include
> and/or library paths were used.
>          Please check the log
> '/srv/build/yocto/build/work/i586-poky-linux/python/2.7.3-r0.3/temp/log.d=
o_compile'
> for more information.
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /srv/build/yocto/build/work/i586-poky-linux/python/2.7.3-r0.3/temp/log.do=
_package.29112
> ERROR: Task 12 (/home/jfreitas/yocto/poky/meta/recipes-devtools/python/
> python_2.7.3.bb, do_package) failed with exit code '1'
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



--=20
Jo=C3=A3o Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil

--f46d044287e47510cf04e9aeb121
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><br>Hello,<br><br>I took some time to test =
this issue and if I run using Ubuntu 13.04 32bits, no problem. But when I s=
witched to 64 bits (cleaning my build dir) I got the problem again.<br><br>
Using Ubuntu 13.10 64 bits is fine. But I needed to install gcc-multilib. B=
ecause syslinux complains about that is unable to compile using the target =
i386.<br><br></div></div></div>Thanks.<br></div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Fri, Oct 25, 2013 at 11:16 AM, Jo=C3=
=A3o Henrique Freitas <span dir=3D"ltr">&lt;<a href=3D"mailto:joaohf@gmail.=
com" target=3D"_blank">joaohf@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">
<div dir=3D"ltr"><div><div><div><br></div>Hello,<br><br></div>I got this QA=
 error when build python:<br><br>ERROR: QA Issue: python: The compile log i=
ndicates that host include and/or library paths were used.<br><br></div>Any=
 hint?<br>

<div><div><div><br>----<br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.20.0&quot;<br>BUILD_SYS=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NAT=
IVELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-13.04&quot;<br>TARGET_SYS=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i586-poky-linux&quot;<br>

MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;qemux86&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0=
 =3D &quot;1.5&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m32=
 i586&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &qu=
ot;&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;dora:faf8f8660fae26a14578738b642fdeb08bcb9d=
54&quot;<br>

meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>met=
a-systemd=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;dora:513e7ca20ddd0a5c3b64=
9bf292a67c3e0473d3a8&quot;<br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;dora:faf8f8660fae26a14578738b642fdeb08bcb9d54&quot;<br>=
meta-padtec=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-otns=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;master:b2db43d21f303e4e02956=
cc9f2e9ad2bf547dd95&quot;<br>

meta-intel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-crownbay=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;custom:fa3b568222f87fc557f01bb5acb5d362e6bd=
e301&quot;<br><br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene Task=
s<br>NOTE: Executing RunQueue Tasks<br>ERROR: QA Issue: python: The compile=
 log indicates that host include and/or library paths were used.<br>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Please check the log &#39;=
/srv/build/yocto/build/work/i586-poky-linux/python/2.7.3-r0.3/temp/log.do_c=
ompile&#39; for more information.<br>ERROR: QA run found fatal errors. Plea=
se consider fixing them.<br>ERROR: Function failed: do_package_qa<br>

ERROR: Logfile of failure stored in: /srv/build/yocto/build/work/i586-poky-=
linux/python/2.7.3-r0.3/temp/log.do_package.29112<br>ERROR: Task 12 (/home/=
jfreitas/yocto/poky/meta/recipes-devtools/python/<a href=3D"http://python_2=
.7.3.bb" target=3D"_blank">python_2.7.3.bb</a>, do_package) failed with exi=
t code &#39;1&#39;<br>

NOTE: Tasks Summary: Attempted 872 tasks of which 540 didn&#39;t need to be=
 rerun and 1 failed.<br>NOTE: Writing buildhistory<br>No currently running =
tasks (872 of 876)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/jfreitas/=
yocto/poky/meta/recipes-devtools/python/<a href=3D"http://python_2.7.3.bb" =
target=3D"_blank">python_2.7.3.bb</a>, do_package<br>

Summary: There were 3 ERROR messages shown, returning a non-zero exit code.=
<br><br><br></div><div>Thanks.</div></div></div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=3D"ltr">Jo=C3=
=A3o Henrique Ferreira de Freitas - <a href=3D"http://joaohf_at_gmail.com" =
target=3D"_blank">joaohf_at_gmail.com</a><br>Campinas-SP-Brasil</div>
</div>

--f46d044287e47510cf04e9aeb121--
