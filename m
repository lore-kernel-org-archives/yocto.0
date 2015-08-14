Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39930E009BC; Fri, 14 Aug 2015 02:36:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B73E00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 02:36:32 -0700 (PDT)
Received: by iodt126 with SMTP id t126so79377154iod.2
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 02:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zmSJ3iJTZN+6UpUqkIe1RZ54qoD2QGHNPPVsoU/Cvm4=;
	b=zeRYm/8tKRu26LiPQcVO6pXJfcljIrn+YbfFYnfavn3ki5PByraeuJIkDkbDObt823
	bU2b5f7UOgSFxzVXcqqpI9WuXPDC/tFlO/+SJYexzX1npWPvoQUT2Tep7ry89vIDIV8h
	sy1418pAeN+FFjJ8+NYpy5OY64UqPhE4H7rWUs620oWEjnslkKNNNNecMZcHj817Xkep
	fatzicDZPZjCpuKV/mdrgjXrLPhRg+//Q0KASAFc/CO39I5Oc5pnpnGi/cgPUtjsViBI
	ML/lzvxGI78sOj+7SCMyIf50w3eBqCSmUiF7fYanNb3Ax3bVvW/R/lrpnzC1rft62AcE
	v+kQ==
MIME-Version: 1.0
X-Received: by 10.107.128.83 with SMTP id b80mr14186145iod.84.1439544991515;
	Fri, 14 Aug 2015 02:36:31 -0700 (PDT)
Received: by 10.50.157.34 with HTTP; Fri, 14 Aug 2015 02:36:31 -0700 (PDT)
In-Reply-To: <CAMKF1sr88SAznFsNuiBi9uF_24V2_9n=5+hzuf1JRNKW3HRZxA@mail.gmail.com>
References: <1439541970-21519-1-git-send-email-bobadeshrikant@gmail.com>
	<CALwQErqfd52nmRJ6cGb8oX8UHjaMXppt7-yxgpRDOyDUJzXWgQ@mail.gmail.com>
	<CAMKF1sr88SAznFsNuiBi9uF_24V2_9n=5+hzuf1JRNKW3HRZxA@mail.gmail.com>
Date: Fri, 14 Aug 2015 15:06:31 +0530
Message-ID: <CALwQErqOgCFEP3jT7me0585KQE7YVc1=itiaGo-vuTzy1Bow-g@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH] audit: fix qa warning of unrecognised config
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
X-List-Received-Date: Fri, 14 Aug 2015 09:36:38 -0000
Content-Type: multipart/alternative; boundary=001a113de4a8dbbe83051d422fd9

--001a113de4a8dbbe83051d422fd9
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 14, 2015 at 2:29 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Aug 14, 2015 at 1:53 AM, Shrikant Bobade
> <bobadeshrikant@gmail.com> wrote:
> > Hi,
> >
> > observed: WARNING: QA Issue: audit: configure was passed unrecognised
> > options: --with-armeb [unknown-configure-option]
> > on core-image-selinux (poky-selinux distro)
> >
> > build tag:
> > Build Configuration:
> > BB_VERSION        = "1.27.1"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "Ubuntu-12.04"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "qemuarm"
> > DISTRO            = "poky-selinux"
> > DISTRO_VERSION    = "1.8+snapshot-20150814"
> > TUNE_FEATURES     = "arm armv5 thumb dsp"
> > TARGET_FPU        = "soft"
> > meta
> > meta-yocto
> > meta-yocto-bsp    = "master:a533776d6ff83b6e3e830137455b8382d002768b"
> > meta-selinux      = "master:684ee9401f33db7c9d5b183988d89c688c9dd0be"
> >
> >
> > Thanks
> > Shrikant
> >
> > On Fri, Aug 14, 2015 at 2:16 PM, Shrikant Bobade <
> bobadeshrikant@gmail.com>
> > wrote:
> >>
> >> From: Shrikant Bobade <shrikant_bobade@mentor.com>
> >>
> >> remove --with-armeb=yes to fix the configure
> >> unrecognised option qa warning.
> >>
> >> Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> >> ---
> >>  recipes-security/audit/audit_2.4.3.bb |    1 -
> >>  1 file changed, 1 deletion(-)
> >>
> >> diff --git a/recipes-security/audit/audit_2.4.3.bb
> >> b/recipes-security/audit/audit_2.4.3.bb
> >> index 8f125c0..31f4b03 100644
> >> --- a/recipes-security/audit/audit_2.4.3.bb
> >> +++ b/recipes-security/audit/audit_2.4.3.bb
> >> @@ -41,7 +41,6 @@ EXTRA_OECONF += "--without-prelude \
> >>          --without-python3 \
> >>          --disable-zos-remote \
> >>         "
> >> -EXTRA_OECONF_append_arm = " --with-armeb=yes"
>
> this is not right fix because the option has been renamed so you
> should change it to
>
> EXTRA_OECONF_append_arm = " --with-arm=yes"
>
> and while you are at ti also add
>
> EXTRA_OECONF_append_aarch64 = " --with-aarch64=yes"
>

Thanks, I will update the patch and will re-send it.

Thanks
Shrikant

--001a113de4a8dbbe83051d422fd9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Aug 14, 2015 at 2:29 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div=
 class=3D"h5">On Fri, Aug 14, 2015 at 1:53 AM, Shrikant Bobade<br>
&lt;<a href=3D"mailto:bobadeshrikant@gmail.com">bobadeshrikant@gmail.com</a=
>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; observed: WARNING: QA Issue: audit: configure was passed unrecognised<=
br>
&gt; options: --with-armeb [unknown-configure-option]<br>
&gt; on core-image-selinux (poky-selinux distro)<br>
&gt;<br>
&gt; build tag:<br>
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
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.8+snapshot-20150814&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv5 thumb dsp&quot;<b=
r>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;soft&quot;<br>
&gt; meta<br>
&gt; meta-yocto<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;master:a533776d6ff83b6e3e8301374=
55b8382d002768b&quot;<br>
&gt; meta-selinux=C2=A0 =C2=A0 =C2=A0 =3D &quot;master:684ee9401f33db7c9d5b=
183988d89c688c9dd0be&quot;<br>
&gt;<br>
&gt;<br>
&gt; Thanks<br>
&gt; Shrikant<br>
&gt;<br>
&gt; On Fri, Aug 14, 2015 at 2:16 PM, Shrikant Bobade &lt;<a href=3D"mailto=
:bobadeshrikant@gmail.com">bobadeshrikant@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; From: Shrikant Bobade &lt;<a href=3D"mailto:shrikant_bobade@mentor=
.com">shrikant_bobade@mentor.com</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; remove --with-armeb=3Dyes to fix the configure<br>
&gt;&gt; unrecognised option qa warning.<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Shrikant Bobade &lt;<a href=3D"mailto:shrikant_boba=
de@mentor.com">shrikant_bobade@mentor.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=
=3D"noreferrer" target=3D"_blank">audit_2.4.3.bb</a> |=C2=A0 =C2=A0 1 -<br>
&gt;&gt;=C2=A0 1 file changed, 1 deletion(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/recipes-security/audit/<a href=3D"http://audit_2.4.3.=
bb" rel=3D"noreferrer" target=3D"_blank">audit_2.4.3.bb</a><br>
&gt;&gt; b/recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=3D"=
noreferrer" target=3D"_blank">audit_2.4.3.bb</a><br>
&gt;&gt; index 8f125c0..31f4b03 100644<br>
&gt;&gt; --- a/recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=
=3D"noreferrer" target=3D"_blank">audit_2.4.3.bb</a><br>
&gt;&gt; +++ b/recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=
=3D"noreferrer" target=3D"_blank">audit_2.4.3.bb</a><br>
&gt;&gt; @@ -41,7 +41,6 @@ EXTRA_OECONF +=3D &quot;--without-prelude \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-python3 \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-zos-remote \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt;&gt; -EXTRA_OECONF_append_arm =3D &quot; --with-armeb=3Dyes&quot;<br>
<br>
</div></div>this is not right fix because the option has been renamed so yo=
u<br>
should change it to<br>
<br>
EXTRA_OECONF_append_arm =3D &quot; --with-arm=3Dyes&quot;<br>
<br>
and while you are at ti also add<br>
<br>
EXTRA_OECONF_append_aarch64 =3D &quot; --with-aarch64=3Dyes&quot;<br></bloc=
kquote><div><br></div><div>Thanks, I will update the patch and will re-send=
 it. <br></div><div><br>Thanks <br></div><div>Shrikant<br></div></div><br><=
/div></div>

--001a113de4a8dbbe83051d422fd9--
