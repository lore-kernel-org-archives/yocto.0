Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A82D7E009D7; Wed, 12 Aug 2015 07:22:40 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BD1AE009B3
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 07:22:36 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so14542289igb.0
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 07:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Oca7I246NazaGed3k/5dTpkd0LKOpcu+jnp8yun8Hzc=;
	b=OnQrmcETVTZ8Haiur5foE49ickaKYJPaVENuX/HKWK6hkDB0w+GtT529R8Z/k3o7Ze
	9YIoBkqocrFIOLLaJvsJN9wHDIV9fczErGPSFMCMbcScLMtMFTRbzfZpOBfXrHgY+k/u
	gszz6VinZRfoT4CIfoE7NtXiaiafd0CzANrnQ3dZDa8n1cUfeYN1OX/tjfdZ1OGsPYOV
	hNVxhqQXRuae/vQ8US9+eTThMnwWRlFu37q2Cpv1GjDfY5z0g+bHtD1DUlF7q2FsmcL6
	toghXzqUKkbwLhau90FGZlEHOKAafYjIlfqygXeLdP3D3HM6HPmoP9etX2zTFLJegIUP
	fsIw==
MIME-Version: 1.0
X-Received: by 10.50.59.211 with SMTP id b19mr23307589igr.42.1439389355791;
	Wed, 12 Aug 2015 07:22:35 -0700 (PDT)
Received: by 10.50.157.34 with HTTP; Wed, 12 Aug 2015 07:22:35 -0700 (PDT)
In-Reply-To: <20150811133745.GE4802@mentor.com>
References: <1438248304-7884-1-git-send-email-bobadeshrikant@gmail.com>
	<CALwQErr1fTKQ=Nc8OXJ0m-itC-NzoNz5bsc4R6gsCN3cJC9ciw@mail.gmail.com>
	<55C983A2.4050002@twobit.us>
	<CALwQErqbQWUmMP0b=+tXhMd--ETNRMsrZzuiBVbg4XUxnRoyPA@mail.gmail.com>
	<20150811133745.GE4802@mentor.com>
Date: Wed, 12 Aug 2015 19:52:35 +0530
Message-ID: <CALwQErrf7KtZA9ka97mRJ_TJC2iCCHc3fE54EgSArd25am1j5w@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: Joe MacDonald <Joe_MacDonald@mentor.com>
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
X-List-Received-Date: Wed, 12 Aug 2015 14:22:40 -0000
Content-Type: multipart/alternative; boundary=047d7bd757583edd59051d1df387

--047d7bd757583edd59051d1df387
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 11, 2015 at 7:07 PM, Joe MacDonald <Joe_MacDonald@mentor.com>
wrote:

> [Re: [yocto] [meta-selinux][PATCH v1] libpam: use wildcard for version and
> cleanup] On 15.08.11 (Tue 16:39) Shrikant Bobade wrote:
>
> > Hi Philip,
> >
> >
> > On Tue, Aug 11, 2015 at 10:39 AM, Philip Tricca <flihp@twobit.us> wrote:
> >
> >     Hey Shrikant,
> >
> >     On 07/30/2015 02:31 AM, Shrikant Bobade wrote:
> >     > This patch provides green build for core-image-selinux
> >     > (meta-selinux:master & poky:master) against libpam upgrade from
> 1.1.6 to
> >     > 1.2.1,
> >     > image boots fine,but I am unable to login at target. I have
> prepared
> >     > build for qemuarm, does anyone else facing similar issue? please
> advice.
> >     >
> >     > Observed the login issue appears even with disabled selinux support
> >     > (selinux=0).
> >
> >     I just tested this again after Joe merged the commits from the
> backlog.
> >     I'm not longer able to reproduce the failed login. Are you still
> having
> >     login problems?
> >
> >
> > I also got similar results:
> > With the check on latest bits: the login issue is not reproducible on
> > core-image-selinux(with poky-selinux distro)
> > I can now login properly.
>
> I'm glad to hear that, guys, because I wasn't able to reproduce the
> login problem on my setup and was thinking I needed to spend time in the
> next couple of days hunting down what's polluting my environment that I
> was getting different results than you.  :-)  This is a nice treat.
>
> -J.
>
>
Thanks Joe & Philip,

I just compared my latest setup (login working) with older one(login issue)
observed this patch at poky served the login fix:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-extended/pam/libpam?id=c75cefe8a382a63f625123c156137782db118f64

Thanks!
Shrikant


> >
> >
> > Build Configuration:
> > BB_VERSION        = "1.27.1"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "Ubuntu-12.04"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "qemuarm"
> > DISTRO            = "poky-selinux"
> > DISTRO_VERSION    = "1.8+snapshot-20150811"
> > TUNE_FEATURES     = "arm armv5 thumb dsp"
> > TARGET_FPU        = "soft"
> > meta
> > meta-yocto
> > meta-yocto-bsp    = "master:a16e0b4014173af46ef80d643bb71055219b0dab"
> > meta-selinux      = "master:684ee9401f33db7c9d5b183988d89c688c9dd0be"
> >
> > Thanks!
> > Shrikant
> >
> >
> >
> >
> >     Philip
> >
> >     > On Thu, Jul 30, 2015 at 2:55 PM, Shrikant Bobade
> >     > <bobadeshrikant@gmail.com <mailto:bobadeshrikant@gmail.com>>
> wrote:
> >     >
> >     >     From: Shrikant Bobade <shrikant_bobade@mentor.com
> >     >     <mailto:shrikant_bobade@mentor.com>>
> >     >
> >     >     use wildcard for version: adopting libpam upgrade from 1.1.6 to
> >     1.2.1,
> >     >     cleanup older recipe and remove patch
> >     sepermit-add-DESTDIR-prefix.patch
> >     >     since the changes already available with latest source.
> >     >
> >     >     Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com
> >     >     <mailto:shrikant_bobade@mentor.com>>
> >     >     ---
> >     >      .../pam/libpam/sepermit-add-DESTDIR-prefix.patch   |   31
> >     >     --------------------
> >     >      recipes-extended/pam/libpam_%.bbappend             |    3 ++
> >     >      recipes-extended/pam/libpam_1.1.6.bbappend         |   10
> -------
> >     >      3 files changed, 3 insertions(+), 41 deletions(-)
> >     >      delete mode 100644
> >     >     recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> >     >      create mode 100644 recipes-extended/pam/libpam_%.bbappend
> >     >      delete mode 100644 recipes-extended/pam/libpam_1.1.6.bbappend
> >     >
> >     >     diff --git
> >     >     a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> >     >     b/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> >     >     deleted file mode 100644
> >     >     index d48d386..0000000
> >     >     ---
> a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> >     >     +++ /dev/null
> >     >     @@ -1,31 +0,0 @@
> >     >     -Subject: [PATCH] libpam: add missing DESTDIR prefix
> >     >     -
> >     >     -The DESTDIR prefix is missing, this will cause build failures
> for
> >     >     -mkdir /var/run/sepermit on the host.
> >     >     -
> >     >     -| mkdir -p /var/run/sepermit
> >     >     -| mkdir: cannot create directory `/var/run/sepermit':
> Permission
> >     denied
> >     >     -
> >     >     -Upstream-Status: Pending
> >     >     -
> >     >     -Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com
> >     >     <mailto:Xin.Ouyang@windriver.com>>
> >     >     ----
> >     >     - modules/pam_sepermit/Makefile.am |    2 +-
> >     >     - 1 files changed, 1 insertions(+), 1 deletions(-)
> >     >     -
> >     >     -diff --git a/modules/pam_sepermit/Makefile.am
> >     >     b/modules/pam_sepermit/Makefile.am
> >     >     -index cfc5594..bc82275 100644
> >     >     ---- a/modules/pam_sepermit/Makefile.am
> >     >     -+++ b/modules/pam_sepermit/Makefile.am
> >     >     -@@ -35,7 +35,7 @@ if HAVE_LIBSELINUX
> >     >     -   securelib_LTLIBRARIES = pam_sepermit.la <
> http://pam_sepermit.la>
> >     >     -
> >     >     - install-data-local:
> >     >     --      mkdir -p $(sepermitlockdir)
> >     >     -+      mkdir -p $(DESTDIR)$(sepermitlockdir)
> >     >     - endif
> >     >     - if ENABLE_REGENERATE_MAN
> >     >     - noinst_DATA = README pam_sepermit.8 sepermit.conf.5
> >     >     ---
> >     >     -1.7.5.4
> >     >     -
> >     >     diff --git a/recipes-extended/pam/libpam_%.bbappend
> >     >     b/recipes-extended/pam/libpam_%.bbappend
> >     >     new file mode 100644
> >     >     index 0000000..adcf938
> >     >     --- /dev/null
> >     >     +++ b/recipes-extended/pam/libpam_%.bbappend
> >     >     @@ -0,0 +1,3 @@
> >     >     +inherit enable-selinux
> >     >     +
> >     >     +RDEPENDS_${PN}-runtime += "${@target_selinux(d,
> >     'pam-plugin-selinux')}"
> >     >     diff --git a/recipes-extended/pam/libpam_1.1.6.bbappend
> >     >     b/recipes-extended/pam/libpam_1.1.6.bbappend
> >     >     deleted file mode 100644
> >     >     index 71acecc..0000000
> >     >     --- a/recipes-extended/pam/libpam_1.1.6.bbappend
> >     >     +++ /dev/null
> >     >     @@ -1,10 +0,0 @@
> >     >     -#FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >     >     -FILESPATH_append :=
> ":${@base_set_filespath(['${THISDIR}/${PN}'],
> >     d)}"
> >     >     -
> >     >     -SRC_URI += "file://sepermit-add-DESTDIR-prefix.patch"
> >     >     -
> >     >     -PR .= ".4"
> >     >     -
> >     >     -inherit enable-selinux
> >     >     -
> >     >     -RDEPENDS_${PN}-runtime += "${@target_selinux(d,
> >     'pam-plugin-selinux')}"
> >     >     --
> >     >     1.7.9.5
> >     >
> >     >
> >     >
> >     >
> >
> >
> >
>
> --
> -Joe MacDonald.
> :wq
>

--047d7bd757583edd59051d1df387
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Aug 11, 2015 at 7:07 PM, Joe MacDonald <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:Joe_MacDonald@mentor.com" target=3D"_blank">Joe_MacDonald@m=
entor.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">[Re: [yocto] [meta-selinux][PATCH v1] libpam: use wildcard for ver=
sion and cleanup] On 15.08.11 (Tue 16:39) Shrikant Bobade wrote:<br>
<br>
&gt; Hi Philip,<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Aug 11, 2015 at 10:39 AM, Philip Tricca &lt;<a href=3D"mailto:=
flihp@twobit.us">flihp@twobit.us</a>&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Hey Shrikant,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 07/30/2015 02:31 AM, Shrikant Bobade wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; This patch provides green build for core-image=
-selinux<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; (meta-selinux:master &amp; poky:master) agains=
t libpam upgrade from 1.1.6 to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; 1.2.1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; image boots fine,but I am unable to login at t=
arget. I have prepared<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; build for qemuarm, does anyone else facing sim=
ilar issue? please advice.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Observed the login issue appears even with dis=
abled selinux support<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; (selinux=3D0).<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0I just tested this again after Joe merged the commi=
ts from the backlog.<br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;m not longer able to reproduce the failed log=
in. Are you still having<br>
&gt;=C2=A0 =C2=A0 =C2=A0login problems?<br>
&gt;<br>
&gt;<br>
&gt; I also got similar results:<br>
&gt; With the check on latest bits: the login issue is not reproducible on<=
br>
&gt; core-image-selinux(with poky-selinux distro)<br>
&gt; I can now login properly.<br>
<br>
</span>I&#39;m glad to hear that, guys, because I wasn&#39;t able to reprod=
uce the<br>
login problem on my setup and was thinking I needed to spend time in the<br=
>
next couple of days hunting down what&#39;s polluting my environment that I=
<br>
was getting different results than you.=C2=A0 :-)=C2=A0 This is a nice trea=
t.<br>
<br>
-J.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div><=
br></div><div>Thanks Joe &amp; Philip, <br><br></div><div>I just compared m=
y latest setup (login working) with older one(login issue) <br></div><div>o=
bserved this patch at poky served the login fix: <a href=3D"http://git.yoct=
oproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-extended/pam/libpam?id=
=3Dc75cefe8a382a63f625123c156137782db118f64">http://git.yoctoproject.org/cg=
it/cgit.cgi/poky/commit/meta/recipes-extended/pam/libpam?id=3Dc75cefe8a382a=
63f625123c156137782db118f64</a> <br></div><div><br></div><div>Thanks!<br></=
div><div>Shrikant<br>=C2=A0<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cl=
ass=3D"HOEnZb"><div class=3D"h5">
&gt;<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.27.1&quot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot=
;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-12.04&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi=
&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemuarm&quot=
;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky-selinux=
&quot;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.8+snapshot-20150811&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv5 thumb dsp&quot;<b=
r>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;soft&quot;<br>
&gt; meta<br>
&gt; meta-yocto<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;master:a16e0b4014173af46ef80d643=
bb71055219b0dab&quot;<br>
&gt; meta-selinux=C2=A0 =C2=A0 =C2=A0 =3D &quot;master:684ee9401f33db7c9d5b=
183988d89c688c9dd0be&quot;<br>
&gt;<br>
&gt; Thanks!<br>
&gt; Shrikant<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Philip<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Thu, Jul 30, 2015 at 2:55 PM, Shrikant Boba=
de<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"mailto:bobadeshrikant@gmail.com=
">bobadeshrikant@gmail.com</a> &lt;mailto:<a href=3D"mailto:bobadeshrikant@=
gmail.com">bobadeshrikant@gmail.com</a>&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0From: Shrikant Bobade &lt;<=
a href=3D"mailto:shrikant_bobade@mentor.com">shrikant_bobade@mentor.com</a>=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:shrikant_bobade@mentor.com">shrikant_bobade@mentor.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0use wildcard for version: a=
dopting libpam upgrade from 1.1.6 to<br>
&gt;=C2=A0 =C2=A0 =C2=A01.2.1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0cleanup older recipe and re=
move patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0sepermit-add-DESTDIR-prefix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0since the changes already a=
vailable with latest source.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Shrikant Bob=
ade &lt;<a href=3D"mailto:shrikant_bobade@mentor.com">shrikant_bobade@mento=
r.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:shrikant_bobade@mentor.com">shrikant_bobade@mentor.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 .../pam/libpam/sepermit-ad=
d-DESTDIR-prefix.patch=C2=A0 =C2=A0|=C2=A0 =C2=A031<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0--------------------<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 recipes-extended/pam/libpa=
m_%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =
3 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 recipes-extended/pam/libpa=
m_1.1.6.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A010 -------<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 3 files changed, 3 inserti=
ons(+), 41 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 delete mode 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0recipes-extended/pam/libpam=
/sepermit-add-DESTDIR-prefix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 create mode 100644 recipes=
-extended/pam/libpam_%.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 delete mode 100644 recipes=
-extended/pam/libpam_1.1.6.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0diff --git<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0a/recipes-extended/pam/libp=
am/sepermit-add-DESTDIR-prefix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0b/recipes-extended/pam/libp=
am/sepermit-add-DESTDIR-prefix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0deleted file mode 100644<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0index d48d386..0000000<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0--- a/recipes-extended/pam/=
libpam/sepermit-add-DESTDIR-prefix.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0+++ /dev/null<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,31 +0,0 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-Subject: [PATCH] libpam: a=
dd missing DESTDIR prefix<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-The DESTDIR prefix is miss=
ing, this will cause build failures for<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-mkdir /var/run/sepermit on=
 the host.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-| mkdir -p /var/run/seperm=
it<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-| mkdir: cannot create dir=
ectory `/var/run/sepermit&#39;: Permission<br>
&gt;=C2=A0 =C2=A0 =C2=A0denied<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-Upstream-Status: Pending<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-Signed-off-by: Xin Ouyang =
&lt;<a href=3D"mailto:Xin.Ouyang@windriver.com">Xin.Ouyang@windriver.com</a=
><br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:Xin.Ouyang@windriver.com">Xin.Ouyang@windriver.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0----<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0- modules/pam_sepermit/Make=
file.am |=C2=A0 =C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0- 1 files changed, 1 insert=
ions(+), 1 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-diff --git a/modules/pam_s=
epermit/Makefile.am<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0b/modules/pam_sepermit/Make=
file.am<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-index cfc5594..bc82275 100=
644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0---- a/modules/pam_sepermit=
/Makefile.am<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-+++ b/modules/pam_sepermit=
/Makefile.am<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-@@ -35,7 +35,7 @@ if HAVE_=
LIBSELINUX<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0securelib_LTL=
IBRARIES =3D <a href=3D"http://pam_sepermit.la" rel=3D"noreferrer" target=
=3D"_blank">pam_sepermit.la</a> &lt;<a href=3D"http://pam_sepermit.la" rel=
=3D"noreferrer" target=3D"_blank">http://pam_sepermit.la</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0- install-data-local:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0--=C2=A0 =C2=A0 =C2=A0 mkdi=
r -p $(sepermitlockdir)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-+=C2=A0 =C2=A0 =C2=A0 mkdi=
r -p $(DESTDIR)$(sepermitlockdir)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0- endif<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0- if ENABLE_REGENERATE_MAN<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0- noinst_DATA =3D README pa=
m_sepermit.8 sepermit.conf.5<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-1.7.5.4<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/recipes-extend=
ed/pam/libpam_%.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0b/recipes-extended/pam/libp=
am_%.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0new file mode 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0index 0000000..adcf938<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0--- /dev/null<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0+++ b/recipes-extended/pam/=
libpam_%.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0@@ -0,0 +1,3 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0+inherit enable-selinux<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0+RDEPENDS_${PN}-runtime +=
=3D &quot;${@target_selinux(d,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;pam-plugin-selinux&#39;)}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/recipes-extend=
ed/pam/libpam_1.1.6.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0b/recipes-extended/pam/libp=
am_1.1.6.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0deleted file mode 100644<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0index 71acecc..0000000<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0--- a/recipes-extended/pam/=
libpam_1.1.6.bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0+++ /dev/null<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,10 +0,0 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-#FILESEXTRAPATHS_prepend :=
=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-FILESPATH_append :=3D &quo=
t;:${@base_set_filespath([&#39;${THISDIR}/${PN}&#39;],<br>
&gt;=C2=A0 =C2=A0 =C2=A0d)}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-SRC_URI +=3D &quot;file://=
sepermit-add-DESTDIR-prefix.patch&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-PR .=3D &quot;.4&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-inherit enable-selinux<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0-RDEPENDS_${PN}-runtime +=
=3D &quot;${@target_selinux(d,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;pam-plugin-selinux&#39;)}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A01.7.9.5<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
-Joe MacDonald.<br>
:wq<br>
</font></span></blockquote></div><br></div></div>

--047d7bd757583edd59051d1df387--
