Return-Path: <kazuya.nisimura@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 700B7E006B5
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 19:53:48 -0800 (PST)
Received: by mail-qc0-f176.google.com with SMTP id e16so4918628qcx.21
	for <yocto@yoctoproject.org>; Thu, 06 Feb 2014 19:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TlcTsLtewYNpWrKE75TCVErqz1W2udnWwtZjdGymIME=;
	b=xVUIKYH/9MpxY5gb2AZmr8WyvXvE9Q0cbcf0P7ydHTFC8Kp98TvvmJ7545zbK7JweI
	4CAjjA5AJVvOUP2fjN+4pDr8n4ERscRQuuOqkp7xwImWO53RyDbsd2nyDzfPyfpPxyrm
	sGy7kjnnJdg3SLwh+FD5CsdLq2G+R0V+fSB/KZxDIwAnvT/T70NNQuVdV03qUDFxE0KN
	nogVAruZ4WbmcD8H0v2H7d0oWnHEZd1f7JD/0WNtrjE8jYKrax+maNUelCKirBOpIHL2
	JxgLGJ67kRl/kWX1ljz+e625FXwK9ojYv87wpE7PkHv+u9ldBLkJQD9pDHo3EcvhpMWv
	wnVg==
MIME-Version: 1.0
X-Received: by 10.140.43.230 with SMTP id e93mr17124041qga.35.1391745228152;
	Thu, 06 Feb 2014 19:53:48 -0800 (PST)
Received: by 10.96.188.72 with HTTP; Thu, 6 Feb 2014 19:53:48 -0800 (PST)
In-Reply-To: <2841839.SyqLMEXVIj@peggleto-mobl5.ger.corp.intel.com>
References: <1391565679-15351-1-git-send-email-kazuya.nisimura@gmail.com>
	<2841839.SyqLMEXVIj@peggleto-mobl5.ger.corp.intel.com>
Date: Fri, 7 Feb 2014 12:53:48 +0900
Message-ID: <CA+o05TzDjS2Xd=dDmu3nihuBUF3ZyqeKszOG8e=wynce-Xfb7A@mail.gmail.com>
From: Kazuya Nishimura <kazuya.nisimura@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] tune-arm1176jzfs-s.inc: Add hard float profile, arm1176jzfshf, in AVAILTUNES
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
X-List-Received-Date: Fri, 07 Feb 2014 03:53:56 -0000
Content-Type: multipart/alternative; boundary=001a113a945af125d404f1c8ef33

--001a113a945af125d404f1c8ef33
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

This tune-arm1176jzf-s.inc belongs to meta-raspberrypi layer, not an
oe-core file.
(Title missing [meta-raspberrypi]... this is my fault)

Do you still think I should re-send this patch to oe-core?

Best regards,
Kaz


2014-02-05 Paul Eggleton <paul.eggleton@linux.intel.com>:

> Hi Kazuya,
>
> On Wednesday 05 February 2014 11:01:19 Kazuya Nishimura wrote:
> > * arm1176jzfshf uses -mtune=hard.
> > * Add -mfpu=vfp if vfp is included in TUNE_FEATURES
> >
> > Signed-off-by: Kazuya Nishimura <kazuya.nisimura@gmail.com>
> > Change-Id: If81977cacbba052fa30c4a407ec65e93148d2ee3
> > ---
> >  conf/machine/include/tune-arm1176jzf-s.inc |    7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/conf/machine/include/tune-arm1176jzf-s.inc
> > b/conf/machine/include/tune-arm1176jzf-s.inc index ebad588..a5368a3
> 100644
> > --- a/conf/machine/include/tune-arm1176jzf-s.inc
> > +++ b/conf/machine/include/tune-arm1176jzf-s.inc
> > @@ -4,8 +4,15 @@ require conf/machine/include/arm/arch-armv6.inc
> >
> >  TUNEVALID[arm1176jzfs] = "Enable arm1176jzfs specific processor
> > optimizations" TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES",
> > "arm1176jzfs", "-mtune=arm1176jzf-s", "", d)}" +TUNE_CCARGS +=
> > "${@bb.utils.contains("TUNE_FEATURES", "vfp", "-mfpu=vfp", "", d)}"
> >
> >  AVAILTUNES += "arm1176jzfs"
> >  TUNE_FEATURES_tune-arm1176jzfs = "${TUNE_FEATURES_tune-armv6}
> arm1176jzfs"
> >  ARMPKGARCH_tune-arm1176jzfs = "arm1176jzfs"
> >  PACKAGE_EXTRA_ARCHS_tune-arm1176jzfs =
> "${PACKAGE_EXTRA_ARCHS_tune-armv6}"
> > +
> > +AVAILTUNES += "arm1176jzfshf"
> > +TUNE_FEATURES_tune-arm1176jzfshf = "${TUNE_FEATURES_tune-arm1176jzfs}
> > callconvention-hard" +ARMPKGARCH_tune-arm1176jzfshf = "arm1176jzfs"
> > +PACKAGE_EXTRA_ARCHS_tune-arm1176jzfshf =
> > "${PACKAGE_EXTRA_ARCHS_tune-armv6hf-vfp} arm1176jzfshf-vfp" +
>
> this patch is for a file that is part of OE-Core, and thus should be sent
> to
> the openembedded-core mailing list (as noted in the poky README file):
>
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>
> Could you please re-send it there?
>
> Thanks,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a113a945af125d404f1c8ef33
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>This tune-arm1176jzf-s.inc bel=
ongs to meta-raspberrypi layer, not an oe-core file.</div><div>(Title missi=
ng [meta-raspberrypi]... this is my fault)</div><div><br></div><div>Do you =
still think I should re-send this patch to oe-core?</div>
<div><br></div><div>Best regards,</div><div>Kaz</div></div><div class=3D"gm=
ail_extra"><br><br><div class=3D"gmail_quote">2014-02-05 Paul Eggleton <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=
=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Kazuya,<br>
<div><div class=3D"h5"><br>
On Wednesday 05 February 2014 11:01:19 Kazuya Nishimura wrote:<br>
&gt; * arm1176jzfshf uses -mtune=3Dhard.<br>
&gt; * Add -mfpu=3Dvfp if vfp is included in TUNE_FEATURES<br>
&gt;<br>
&gt; Signed-off-by: Kazuya Nishimura &lt;<a href=3D"mailto:kazuya.nisimura@=
gmail.com">kazuya.nisimura@gmail.com</a>&gt;<br>
&gt; Change-Id: If81977cacbba052fa30c4a407ec65e93148d2ee3<br>
&gt; ---<br>
&gt; =A0conf/machine/include/tune-arm1176jzf-s.inc | =A0 =A07 +++++++<br>
&gt; =A01 file changed, 7 insertions(+)<br>
&gt;<br>
&gt; diff --git a/conf/machine/include/tune-arm1176jzf-s.inc<br>
&gt; b/conf/machine/include/tune-arm1176jzf-s.inc index ebad588..a5368a3 10=
0644<br>
&gt; --- a/conf/machine/include/tune-arm1176jzf-s.inc<br>
&gt; +++ b/conf/machine/include/tune-arm1176jzf-s.inc<br>
&gt; @@ -4,8 +4,15 @@ require conf/machine/include/arm/arch-armv6.inc<br>
&gt;<br>
&gt; =A0TUNEVALID[arm1176jzfs] =3D &quot;Enable arm1176jzfs specific proces=
sor<br>
&gt; optimizations&quot; TUNE_CCARGS +=3D &quot;${@bb.utils.contains(&quot;=
TUNE_FEATURES&quot;,<br>
&gt; &quot;arm1176jzfs&quot;, &quot;-mtune=3Darm1176jzf-s&quot;, &quot;&quo=
t;, d)}&quot; +TUNE_CCARGS +=3D<br>
&gt; &quot;${@bb.utils.contains(&quot;TUNE_FEATURES&quot;, &quot;vfp&quot;,=
 &quot;-mfpu=3Dvfp&quot;, &quot;&quot;, d)}&quot;<br>
&gt;<br>
&gt; =A0AVAILTUNES +=3D &quot;arm1176jzfs&quot;<br>
&gt; =A0TUNE_FEATURES_tune-arm1176jzfs =3D &quot;${TUNE_FEATURES_tune-armv6=
} arm1176jzfs&quot;<br>
&gt; =A0ARMPKGARCH_tune-arm1176jzfs =3D &quot;arm1176jzfs&quot;<br>
&gt; =A0PACKAGE_EXTRA_ARCHS_tune-arm1176jzfs =3D &quot;${PACKAGE_EXTRA_ARCH=
S_tune-armv6}&quot;<br>
&gt; +<br>
&gt; +AVAILTUNES +=3D &quot;arm1176jzfshf&quot;<br>
&gt; +TUNE_FEATURES_tune-arm1176jzfshf =3D &quot;${TUNE_FEATURES_tune-arm11=
76jzfs}<br>
&gt; callconvention-hard&quot; +ARMPKGARCH_tune-arm1176jzfshf =3D &quot;arm=
1176jzfs&quot;<br>
&gt; +PACKAGE_EXTRA_ARCHS_tune-arm1176jzfshf =3D<br>
&gt; &quot;${PACKAGE_EXTRA_ARCHS_tune-armv6hf-vfp} arm1176jzfshf-vfp&quot; =
+<br>
<br>
</div></div>this patch is for a file that is part of OE-Core, and thus shou=
ld be sent to<br>
the openembedded-core mailing list (as noted in the poky README file):<br>
<br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" target=3D"_blank">http://lists.openembedded.org/mailman/listinfo/openembe=
dded-core</a><br>
<br>
Could you please re-send it there?<br>
<br>
Thanks,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a113a945af125d404f1c8ef33--
