Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f49.google.com (mail-oa0-f49.google.com
	[209.85.219.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0AE8E01431
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 07:13:30 -0700 (PDT)
Received: by mail-oa0-f49.google.com with SMTP id n16so1705702oag.36
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 07:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=39Oa23B6nB/nEpvQNnUb2LSbk7R2+eBFqznuEnIMVn8=;
	b=ILYeX62nDx6jtv+js8+jHaVa+NyEDd+L14p7dc4TV6WRTDI1OTQ4Kfvd2xhokoFk7w
	Pj4WlOzBacuSMvveDu1iKnHl6vIlnropAeiQbIkj0p5qoNCFHxHPHWse0zGbN25tGUyc
	w3Cz19g9hyqadRMn8FUpEy4N6edetpWrhwJYmCxnydQiIqHsaaw+IUf+GAgdzpYwXhHo
	CFS5aO1K0Swxb3hbispzzktkrkpKukL7q//ggu4T1N1+5o9HyA/mzvSwiZHvb2+p23jm
	d/F6Q2tecyNuXXwtfiWKt43yDRdQFiUChKjA5xZckGWgsV1Awvabdm8b3namW09ndPim
	IFrQ==
X-Received: by 10.60.63.196 with SMTP id i4mr58021190oes.69.1375107210163;
	Mon, 29 Jul 2013 07:13:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.221.5 with HTTP; Mon, 29 Jul 2013 07:13:08 -0700 (PDT)
In-Reply-To: <CAJTo0La7z576ofKxqrr_WcgCKuP-SN32QndmA+Eg7GUmdsn7XQ@mail.gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1C406793@POCITMSEXMB06.LntUniverse.com>
	<CA+Z6RkV9ZL57uYyuaCVXKJG52EbMb72ZnPP5KKXKVoJvjehdZg@mail.gmail.com>
	<CAJTo0La7z576ofKxqrr_WcgCKuP-SN32QndmA+Eg7GUmdsn7XQ@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Mon, 29 Jul 2013 19:43:08 +0530
Message-ID: <CA+Z6RkVUXgsp8wsRKXTWxq6tM=bdMVLyFC1VuL7S9iqL2_sVuw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Cleaning dependent package
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
X-List-Received-Date: Mon, 29 Jul 2013 14:13:31 -0000
Content-Type: multipart/alternative; boundary=001a11c20f96ca3bb404e2a7182b

--001a11c20f96ca3bb404e2a7182b
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Ross,

Thanks for your reply.
My goal is to clean kernel and u-boot compiled packages and their images
from any other recipe. It could be core-image-minimal.bb or anything.

Thanks
Navani

<http://core-image-minimal.bb>


On Mon, Jul 29, 2013 at 7:32 PM, Burton, Ross <ross.burton@intel.com> wrote=
:

> On 29 July 2013 14:54, Navani Srivastava <navani.srivastava@gmail.com>
> wrote:
> > Is it possible to clean any dependent package from some other recipe?
> >
> > As an example-
> >
> > =93bitbake core-image-minimal.bb=94 will build u-boot and linux package=
 as a
> > part of dependent package. Is it possible to clean u-boot and linux by
> > making changes in core-image-minimal.bb recipe?
>
> If you're goal is to save space, why not use rm_work, which will clean
> the work directory after a build.  Just add this to your local.conf:
>
>      INHERIT +=3D "rm_work"
>
> If this isn't your goal, what is it?
>
> Ross
>

--001a11c20f96ca3bb404e2a7182b
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Ross,<br><br></div>Thanks for your =
reply.<br></div>My goal is to clean kernel and u-boot compiled packages and=
 their images from any other recipe. It could be <a href=3D"http://core-ima=
ge-minimal.bb">core-image-minimal.bb</a> or anything.<br>

<br></div>Thanks <br></div>Navani<br><div><div><br><a href=3D"http://core-i=
mage-minimal.bb" target=3D"_blank"></a></div></div></div><div class=3D"gmai=
l_extra"><br><br><div class=3D"gmail_quote">On Mon, Jul 29, 2013 at 7:32 PM=
, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.co=
m" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 29 July 2013 14:54, Nav=
ani Srivastava &lt;<a href=3D"mailto:navani.srivastava@gmail.com">navani.sr=
ivastava@gmail.com</a>&gt; wrote:<br>


&gt; Is it possible to clean any dependent package from some other recipe?<=
br>
&gt;<br>
&gt; As an example-<br>
&gt;<br>
&gt; =93bitbake <a href=3D"http://core-image-minimal.bb" target=3D"_blank">=
core-image-minimal.bb</a>=94 will build u-boot and linux package as a<br>
&gt; part of dependent package. Is it possible to clean u-boot and linux by=
<br>
&gt; making changes in <a href=3D"http://core-image-minimal.bb" target=3D"_=
blank">core-image-minimal.bb</a> recipe?<br>
<br>
</div>If you&#39;re goal is to save space, why not use rm_work, which will =
clean<br>
the work directory after a build. =A0Just add this to your local.conf:<br>
<br>
=A0 =A0 =A0INHERIT +=3D &quot;rm_work&quot;<br>
<br>
If this isn&#39;t your goal, what is it?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a11c20f96ca3bb404e2a7182b--
