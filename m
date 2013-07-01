Return-Path: <bruce.kumita@gmail.com>
Received: from mail-qe0-f47.google.com (mail-qe0-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E31E3E013B8
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 02:24:44 -0700 (PDT)
Received: by mail-qe0-f47.google.com with SMTP id 1so1546373qec.6
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 02:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kYIJGWzz3880Pzgt6QkRyKo3Y1ceH9Y0YL7OL5ha7kU=;
	b=mo68J0erqpIDsXIyKnmXo2Ul2SxXfDxADT6JLKEIcNsabyuO294upoD4MGUmlpHJT1
	YGOiJNufioRbxIxfdK/vDFm2Nifv4lwiMx3MRjihAyvyAP1jWHpQ4CjRtuuV74HMhKYe
	X1b7kNnausuqHlwUpCR+WYCay11Bqx/u5lIoFSH0ob9rVO/ms2219AqKwm4vAP9RRw0R
	uM5xQu9Y2dJCecEozdWlVsrMnuvtvP6zwIHX7Koec+GUC28VQ5Vn7dQE8unHkxtHFSjx
	Gjqy+zUtWUwjS8bDhQ16I4ODtBzuoYh8LzApuBw8f9+QVpTU2utzR0WfJr2sI3aBlELh
	mDIQ==
MIME-Version: 1.0
X-Received: by 10.224.22.8 with SMTP id l8mr4626505qab.45.1372670683547; Mon,
	01 Jul 2013 02:24:43 -0700 (PDT)
Received: by 10.229.13.105 with HTTP; Mon, 1 Jul 2013 02:24:43 -0700 (PDT)
In-Reply-To: <1372670218.7808.4.camel@flashheart.burtonini.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
	<51CE03D9.6070202@mlbassoc.com>
	<1372670218.7808.4.camel@flashheart.burtonini.com>
Date: Mon, 1 Jul 2013 17:24:43 +0800
Message-ID: <CALaXJ9kPeBKf0u2pnbso_+P97ZWtVz8ZhffUL9JaLC+gqvm4vA@mail.gmail.com>
From: Kumita Bruce <bruce.kumita@gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Mon, 01 Jul 2013 09:24:50 -0000
Content-Type: multipart/alternative; boundary=047d7bdc8cc67c8ea704e06fccb4

--047d7bdc8cc67c8ea704e06fccb4
Content-Type: text/plain; charset=ISO-8859-1

What's the reason to deprecate meta-toolchain that is for standalone
cross-compiler generation? Is there a replacement?


Cheers,

Bruce



On Mon, Jul 1, 2013 at 5:16 PM, Ross Burton <ross.burton@intel.com> wrote:

> On Fri, 2013-06-28 at 15:44 -0600, Gary Thomas wrote:
> > On 2013-06-27 04:06, Ross Burton wrote:
> > > The meta-toolchain* recipes are deprecated, so when building
> meta-toolchain-gmae
> > > also build the SDK for core-image-sato.
> > >
> > > Signed-off-by: Ross Burton <ross.burton@intel.com>
> >
> > If/when the meta-toolchain recipes go away, how do I create a
> stand-alone toolchain
> > derived from Poky/Yocto (which I use all the time!)?
>
> The idiom is to pick an image to base the SDK on, and use the
> "populate_sdk" task:
>
> $ bitbake core-image-sato -c populate_sdk
>
> If you want just the compiler and no userspace, then I'm not sure what
> the best solution going forwards is.
>
> Ross
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bdc8cc67c8ea704e06fccb4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"" style>What&#39;s the reason to deprecate met=
a-toolchain that is for
standalone cross-compiler generation? Is there a replacement?<br></p><p cla=
ss=3D""><br></p><p class=3D"" style>Cheers,</p><p class=3D"" style>Bruce</p=
><p class=3D""></p></div><div class=3D"gmail_extra"><br><br><div class=3D"g=
mail_quote">
On Mon, Jul 1, 2013 at 5:16 PM, Ross Burton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"im">On Fri, 2013-06-28 at 15:44 -0600, Gary Thomas wrote:<br>
&gt; On 2013-06-27 04:06, Ross Burton wrote:<br>
&gt; &gt; The meta-toolchain* recipes are deprecated, so when building meta=
-toolchain-gmae<br>
&gt; &gt; also build the SDK for core-image-sato.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@inte=
l.com">ross.burton@intel.com</a>&gt;<br>
&gt;<br>
&gt; If/when the meta-toolchain recipes go away, how do I create a stand-al=
one toolchain<br>
&gt; derived from Poky/Yocto (which I use all the time!)?<br>
<br>
</div>The idiom is to pick an image to base the SDK on, and use the<br>
&quot;populate_sdk&quot; task:<br>
<br>
$ bitbake core-image-sato -c populate_sdk<br>
<br>
If you want just the compiler and no userspace, then I&#39;m not sure what<=
br>
the best solution going forwards is.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--047d7bdc8cc67c8ea704e06fccb4--
