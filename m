Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67261E00A9A; Tue, 11 Aug 2015 04:09:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B8DE00A92
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 04:09:32 -0700 (PDT)
Received: by igbjg10 with SMTP id jg10so19342829igb.0
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 04:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6FHPSrwMRHfYk8I3+91Ub+NVFreGuWi69lGiEFWrT7Q=;
	b=ztklw71OxvsubtgeUE/h+Ze4pASjUPN7RdxYKac8GhZzO4yrn/ukyTqSy4JfJUvn9p
	U4Ydl5MGXWQNh88M4LLXjzkwO2/2GXyOEhLV3trfnekuhMF9Wt+qWxbVciWruOgW6LUa
	yIjWAiXbE2WDIL8TcaTAaytz5cFMjbkstrUFlt4HU3/tSPc2BsQfk2BISP0sW0skp7UT
	KE0Ths8MMFfu3xplQVPMenHLzmlt+SjOeu5Dx/68NYsTw5hVEoprqKblxggA/WickiCE
	pqCpHB9R8wZJbqDkYfkT3YIUMD4fiXesQwn4SqMrF9ApMJiKGhCZ0CIVCFxjgPcYp48P
	VjjQ==
MIME-Version: 1.0
X-Received: by 10.50.59.211 with SMTP id b19mr16350990igr.42.1439291371722;
	Tue, 11 Aug 2015 04:09:31 -0700 (PDT)
Received: by 10.50.157.34 with HTTP; Tue, 11 Aug 2015 04:09:31 -0700 (PDT)
In-Reply-To: <55C983A2.4050002@twobit.us>
References: <1438248304-7884-1-git-send-email-bobadeshrikant@gmail.com>
	<CALwQErr1fTKQ=Nc8OXJ0m-itC-NzoNz5bsc4R6gsCN3cJC9ciw@mail.gmail.com>
	<55C983A2.4050002@twobit.us>
Date: Tue, 11 Aug 2015 16:39:31 +0530
Message-ID: <CALwQErqbQWUmMP0b=+tXhMd--ETNRMsrZzuiBVbg4XUxnRoyPA@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: Philip Tricca <flihp@twobit.us>
Cc: yocto@yoctoproject.org, Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH v1] libpam: use wildcard for version and cleanup
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
X-List-Received-Date: Tue, 11 Aug 2015 11:09:38 -0000
Content-Type: multipart/alternative; boundary=047d7bd75758f0a01e051d0722a6

--047d7bd75758f0a01e051d0722a6
Content-Type: text/plain; charset=UTF-8

Hi Philip,


On Tue, Aug 11, 2015 at 10:39 AM, Philip Tricca <flihp@twobit.us> wrote:

> Hey Shrikant,
>
> On 07/30/2015 02:31 AM, Shrikant Bobade wrote:
> > This patch provides green build for core-image-selinux
> > (meta-selinux:master & poky:master) against libpam upgrade from 1.1.6 to
> > 1.2.1,
> > image boots fine,but I am unable to login at target. I have prepared
> > build for qemuarm, does anyone else facing similar issue? please advice.
> >
> > Observed the login issue appears even with disabled selinux support
> > (selinux=0).
>
> I just tested this again after Joe merged the commits from the backlog.
> I'm not longer able to reproduce the failed login. Are you still having
> login problems?
>

I also got similar results:
With the check on latest bits: the login issue is not reproducible on
core-image-selinux(with poky-selinux distro)
I can now login properly.


Build Configuration:
BB_VERSION        = "1.27.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky-selinux"
DISTRO_VERSION    = "1.8+snapshot-20150811"
TUNE_FEATURES     = "arm armv5 thumb dsp"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-yocto-bsp    = "master:a16e0b4014173af46ef80d643bb71055219b0dab"
meta-selinux      = "master:684ee9401f33db7c9d5b183988d89c688c9dd0be"

Thanks!
Shrikant



> Philip
>
> > On Thu, Jul 30, 2015 at 2:55 PM, Shrikant Bobade
> > <bobadeshrikant@gmail.com <mailto:bobadeshrikant@gmail.com>> wrote:
> >
> >     From: Shrikant Bobade <shrikant_bobade@mentor.com
> >     <mailto:shrikant_bobade@mentor.com>>
> >
> >     use wildcard for version: adopting libpam upgrade from 1.1.6 to
> 1.2.1,
> >     cleanup older recipe and remove patch
> sepermit-add-DESTDIR-prefix.patch
> >     since the changes already available with latest source.
> >
> >     Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com
> >     <mailto:shrikant_bobade@mentor.com>>
> >     ---
> >      .../pam/libpam/sepermit-add-DESTDIR-prefix.patch   |   31
> >     --------------------
> >      recipes-extended/pam/libpam_%.bbappend             |    3 ++
> >      recipes-extended/pam/libpam_1.1.6.bbappend         |   10 -------
> >      3 files changed, 3 insertions(+), 41 deletions(-)
> >      delete mode 100644
> >     recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> >      create mode 100644 recipes-extended/pam/libpam_%.bbappend
> >      delete mode 100644 recipes-extended/pam/libpam_1.1.6.bbappend
> >
> >     diff --git
> >     a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> >     b/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> >     deleted file mode 100644
> >     index d48d386..0000000
> >     --- a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> >     +++ /dev/null
> >     @@ -1,31 +0,0 @@
> >     -Subject: [PATCH] libpam: add missing DESTDIR prefix
> >     -
> >     -The DESTDIR prefix is missing, this will cause build failures for
> >     -mkdir /var/run/sepermit on the host.
> >     -
> >     -| mkdir -p /var/run/sepermit
> >     -| mkdir: cannot create directory `/var/run/sepermit': Permission
> denied
> >     -
> >     -Upstream-Status: Pending
> >     -
> >     -Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com
> >     <mailto:Xin.Ouyang@windriver.com>>
> >     ----
> >     - modules/pam_sepermit/Makefile.am |    2 +-
> >     - 1 files changed, 1 insertions(+), 1 deletions(-)
> >     -
> >     -diff --git a/modules/pam_sepermit/Makefile.am
> >     b/modules/pam_sepermit/Makefile.am
> >     -index cfc5594..bc82275 100644
> >     ---- a/modules/pam_sepermit/Makefile.am
> >     -+++ b/modules/pam_sepermit/Makefile.am
> >     -@@ -35,7 +35,7 @@ if HAVE_LIBSELINUX
> >     -   securelib_LTLIBRARIES = pam_sepermit.la <http://pam_sepermit.la>
> >     -
> >     - install-data-local:
> >     --      mkdir -p $(sepermitlockdir)
> >     -+      mkdir -p $(DESTDIR)$(sepermitlockdir)
> >     - endif
> >     - if ENABLE_REGENERATE_MAN
> >     - noinst_DATA = README pam_sepermit.8 sepermit.conf.5
> >     ---
> >     -1.7.5.4
> >     -
> >     diff --git a/recipes-extended/pam/libpam_%.bbappend
> >     b/recipes-extended/pam/libpam_%.bbappend
> >     new file mode 100644
> >     index 0000000..adcf938
> >     --- /dev/null
> >     +++ b/recipes-extended/pam/libpam_%.bbappend
> >     @@ -0,0 +1,3 @@
> >     +inherit enable-selinux
> >     +
> >     +RDEPENDS_${PN}-runtime += "${@target_selinux(d,
> 'pam-plugin-selinux')}"
> >     diff --git a/recipes-extended/pam/libpam_1.1.6.bbappend
> >     b/recipes-extended/pam/libpam_1.1.6.bbappend
> >     deleted file mode 100644
> >     index 71acecc..0000000
> >     --- a/recipes-extended/pam/libpam_1.1.6.bbappend
> >     +++ /dev/null
> >     @@ -1,10 +0,0 @@
> >     -#FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >     -FILESPATH_append := ":${@base_set_filespath(['${THISDIR}/${PN}'],
> d)}"
> >     -
> >     -SRC_URI += "file://sepermit-add-DESTDIR-prefix.patch"
> >     -
> >     -PR .= ".4"
> >     -
> >     -inherit enable-selinux
> >     -
> >     -RDEPENDS_${PN}-runtime += "${@target_selinux(d,
> 'pam-plugin-selinux')}"
> >     --
> >     1.7.9.5
> >
> >
> >
> >
>
>

--047d7bd75758f0a01e051d0722a6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Philip, <br><br><div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Tue, Aug 11, 2015 at 10:39 AM, Philip Tricca <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:flihp@twobit.us" target=3D"_blank">fli=
hp@twobit.us</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hey Sh=
rikant,<br>
<span class=3D""><br>
On 07/30/2015 02:31 AM, Shrikant Bobade wrote:<br>
</span><span class=3D"">&gt; This patch provides green build for core-image=
-selinux<br>
&gt; (meta-selinux:master &amp; poky:master) against libpam upgrade from 1.=
1.6 to<br>
&gt; 1.2.1,<br>
&gt; image boots fine,but I am unable to login at target. I have prepared<b=
r>
&gt; build for qemuarm, does anyone else facing similar issue? please advic=
e.<br>
&gt;<br>
&gt; Observed the login issue appears even with disabled selinux support<br=
>
&gt; (selinux=3D0).<br>
<br>
</span>I just tested this again after Joe merged the commits from the backl=
og.<br>
I&#39;m not longer able to reproduce the failed login. Are you still having=
<br>
login problems?<br></blockquote><div><br></div><div>I also got similar resu=
lts: <br></div><div>With the check on latest bits: the login issue is not r=
eproducible on core-image-selinux(with poky-selinux distro)<br></div><div>I=
 can now login properly. <br></div><div><br></div><div><br>Build Configurat=
ion:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.27=
.1&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &=
quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-12.=
04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;=
arm-poky-linux-gnueabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;qemuarm&quot;<br>DISTRO=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky-selinux&=
quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.8+snapshot-20150811&q=
uot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm armv5 thumb dsp=
&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;so=
ft&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 <br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;master:a16e0b4014173af46=
ef80d643bb71055219b0dab&quot;<br>meta-selinux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D &quot;master:684ee9401f33db7c9d5b183988d89c688c9dd0be&quot;<br><br>Tha=
nks!<br></div><div>Shrikant<br><br></div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
Philip<br>
<span class=3D""><br>
&gt; On Thu, Jul 30, 2015 at 2:55 PM, Shrikant Bobade<br>
</span><span class=3D"">&gt; &lt;<a href=3D"mailto:bobadeshrikant@gmail.com=
">bobadeshrikant@gmail.com</a> &lt;mailto:<a href=3D"mailto:bobadeshrikant@=
gmail.com">bobadeshrikant@gmail.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0From: Shrikant Bobade &lt;<a href=3D"mailto:shrikan=
t_bobade@mentor.com">shrikant_bobade@mentor.com</a><br>
</span>&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:shrikant_bobade=
@mentor.com">shrikant_bobade@mentor.com</a>&gt;&gt;<br>
<span class=3D"">&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0use wildcard for version: adopting libpam upgrade f=
rom 1.1.6 to 1.2.1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0cleanup older recipe and remove patch sepermit-add-=
DESTDIR-prefix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0since the changes already available with latest sou=
rce.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Shrikant Bobade &lt;<a href=3D"mailt=
o:shrikant_bobade@mentor.com">shrikant_bobade@mentor.com</a><br>
</span>&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:shrikant_bobade=
@mentor.com">shrikant_bobade@mentor.com</a>&gt;&gt;<br>
<div><div class=3D"h5">&gt;=C2=A0 =C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 .../pam/libpam/sepermit-add-DESTDIR-prefix.patch=
=C2=A0 =C2=A0|=C2=A0 =C2=A031<br>
&gt;=C2=A0 =C2=A0 =C2=A0--------------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 recipes-extended/pam/libpam_%.bbappend=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 3 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 recipes-extended/pam/libpam_1.1.6.bbappend=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A010 -------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 3 files changed, 3 insertions(+), 41 deletions(-)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 delete mode 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0recipes-extended/pam/libpam/sepermit-add-DESTDIR-pr=
efix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 create mode 100644 recipes-extended/pam/libpam_%.b=
bappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0 delete mode 100644 recipes-extended/pam/libpam_1.1=
.6.bbappend<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git<br>
&gt;=C2=A0 =C2=A0 =C2=A0a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-=
prefix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0b/recipes-extended/pam/libpam/sepermit-add-DESTDIR-=
prefix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0deleted file mode 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0index d48d386..0000000<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/recipes-extended/pam/libpam/sepermit-add-DEST=
DIR-prefix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ /dev/null<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,31 +0,0 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Subject: [PATCH] libpam: add missing DESTDIR prefi=
x<br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0-The DESTDIR prefix is missing, this will cause bui=
ld failures for<br>
&gt;=C2=A0 =C2=A0 =C2=A0-mkdir /var/run/sepermit on the host.<br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0-| mkdir -p /var/run/sepermit<br>
&gt;=C2=A0 =C2=A0 =C2=A0-| mkdir: cannot create directory `/var/run/sepermi=
t&#39;: Permission denied<br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Upstream-Status: Pending<br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Signed-off-by: Xin Ouyang &lt;<a href=3D"mailto:Xi=
n.Ouyang@windriver.com">Xin.Ouyang@windriver.com</a><br>
</div></div>&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Xin.Ouyang=
@windriver.com">Xin.Ouyang@windriver.com</a>&gt;&gt;<br>
<span class=3D"">&gt;=C2=A0 =C2=A0 =C2=A0----<br>
&gt;=C2=A0 =C2=A0 =C2=A0- modules/pam_sepermit/Makefile.am |=C2=A0 =C2=A0 2=
 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0- 1 files changed, 1 insertions(+), 1 deletions(-)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0-diff --git a/modules/pam_sepermit/Makefile.am<br>
&gt;=C2=A0 =C2=A0 =C2=A0b/modules/pam_sepermit/Makefile.am<br>
&gt;=C2=A0 =C2=A0 =C2=A0-index cfc5594..bc82275 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0---- a/modules/pam_sepermit/Makefile.am<br>
&gt;=C2=A0 =C2=A0 =C2=A0-+++ b/modules/pam_sepermit/Makefile.am<br>
&gt;=C2=A0 =C2=A0 =C2=A0-@@ -35,7 +35,7 @@ if HAVE_LIBSELINUX<br>
</span>&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0securelib_LTLIBRARIES =3D <a h=
ref=3D"http://pam_sepermit.la" rel=3D"noreferrer" target=3D"_blank">pam_sep=
ermit.la</a> &lt;<a href=3D"http://pam_sepermit.la" rel=3D"noreferrer" targ=
et=3D"_blank">http://pam_sepermit.la</a>&gt;<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0- install-data-local:<br>
&gt;=C2=A0 =C2=A0 =C2=A0--=C2=A0 =C2=A0 =C2=A0 mkdir -p $(sepermitlockdir)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0-+=C2=A0 =C2=A0 =C2=A0 mkdir -p $(DESTDIR)$(sepermi=
tlockdir)<br>
&gt;=C2=A0 =C2=A0 =C2=A0- endif<br>
&gt;=C2=A0 =C2=A0 =C2=A0- if ENABLE_REGENERATE_MAN<br>
&gt;=C2=A0 =C2=A0 =C2=A0- noinst_DATA =3D README pam_sepermit.8 sepermit.co=
nf.5<br>
&gt;=C2=A0 =C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 =C2=A0-1.7.5.4<br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/recipes-extended/pam/libpam_%.bbappend=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0b/recipes-extended/pam/libpam_%.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0new file mode 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 0000000..adcf938<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- /dev/null<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/recipes-extended/pam/libpam_%.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -0,0 +1,3 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0+inherit enable-selinux<br>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0+RDEPENDS_${PN}-runtime +=3D &quot;${@target_selinu=
x(d, &#39;pam-plugin-selinux&#39;)}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/recipes-extended/pam/libpam_1.1.6.bbap=
pend<br>
&gt;=C2=A0 =C2=A0 =C2=A0b/recipes-extended/pam/libpam_1.1.6.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0deleted file mode 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 71acecc..0000000<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/recipes-extended/pam/libpam_1.1.6.bbappend<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0+++ /dev/null<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,10 +0,0 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0-#FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${P=
N}:&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0-FILESPATH_append :=3D &quot;:${@base_set_filespath=
([&#39;${THISDIR}/${PN}&#39;], d)}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0-SRC_URI +=3D &quot;file://sepermit-add-DESTDIR-pre=
fix.patch&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0-PR .=3D &quot;.4&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0-inherit enable-selinux<br>
&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0-RDEPENDS_${PN}-runtime +=3D &quot;${@target_selinu=
x(d, &#39;pam-plugin-selinux&#39;)}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A01.7.9.5<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div></div></div>

--047d7bd75758f0a01e051d0722a6--
