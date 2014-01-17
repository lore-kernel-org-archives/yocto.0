Return-Path: <ashish.dalela@gmail.com>
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4779FE0081B
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 12:16:10 -0800 (PST)
Received: by mail-lb0-f179.google.com with SMTP id l4so1748092lbv.10
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 12:16:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CVNryRGbQHPf6FQ+i/Jx3V7m7I5riUHGmq648UI9v1A=;
	b=l1+UFJxU+4o/T0NevAxYO6ElCN2ULAd+2TGConCSUSa+dnEBWR9fpINc7myL8XCaqb
	QvdYDHy815G8VBGbl5TC9c37YgmFE6iYfSFy/XhqxFBKBBPspdME4M80SKLzqXi9LdmW
	fQkWqYYWGA7e0j3fV9PkLvs6uV7F2Ctay96je592M+H42mJ+uZQANp7rYjC/P13bVmT+
	qpM7Lumh+U4nqb/SASAI+t+cAQHuFG0d2KNDKlKxFXhimsDN+XpRKT1E5zF8N++ZunDL
	wcmszGQ43W8MyjUi/8FEQ45PV5yJ12GXeQQPrxQAnXNWGBkwgQTLYBM8mIbfiUT4Ld7F
	Vnpg==
MIME-Version: 1.0
X-Received: by 10.152.9.9 with SMTP id v9mr2024453laa.41.1389989768722; Fri,
	17 Jan 2014 12:16:08 -0800 (PST)
Received: by 10.112.96.198 with HTTP; Fri, 17 Jan 2014 12:16:08 -0800 (PST)
In-Reply-To: <CAMKF1sqjX1R4M7+HFgHz43WmG+PwEN=8RJpYP1-tO7p4ny4OwA@mail.gmail.com>
References: <CABhkJRcAAvORSQ0d_bhEi5eX9yJfOLQ32gHiQHN4074ptDJXrQ@mail.gmail.com>
	<CAMKF1sqjX1R4M7+HFgHz43WmG+PwEN=8RJpYP1-tO7p4ny4OwA@mail.gmail.com>
Date: Sat, 18 Jan 2014 01:46:08 +0530
Message-ID: <CABhkJRf5PSkpjwzdD2Wweo02QTV2vLq9WSL33aY7+7dKRBfeog@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: meta-oracle-java fails
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
X-List-Received-Date: Fri, 17 Jan 2014 20:16:14 -0000
Content-Type: multipart/alternative; boundary=089e0149512667fdf604f0303641

--089e0149512667fdf604f0303641
Content-Type: text/plain; charset=ISO-8859-1

I already have the following in my jdk and jre recipes:

DEPENDS = "libav gtk+ libxslt libxtst"

Should I have RDEPENDS?

Thanks
-Ashish


On Sat, Jan 18, 2014 at 1:23 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Jan 17, 2014 at 11:46 AM, Ashish Dalela <ashish.dalela@gmail.com>
> wrote:
> >
> > Hi,
> >
> > I'm trying to build JDK and JRE using the meta-oracle-java recipes. The
> > recipes build fine, but during do_rootfs (core-image-basic) I see the
> > following errors:
> >
> > FOR JRE:
> > | Computing transaction...error: Can't install
> > oracle-jse-jre-i586-1.7.0-u25r0@i586: no package provides
> libavcodec.so.52
> >
> > FOR JDK:
> > | Computing transaction...error: Can't install
> > oracle-jse-jdk-i586-1.7.0-u51r0@i586: no package provides
> > libavcodec.so.52(LIBAVCODEC_52)
> >
> > meta/recipes-multimedia/libav/libav_0.7.4.bb builds libavcodec.so.53.
> >
> > Does anyone know how to fix this issue?
>
> add libav to DEPENDS in recipe which is providing oracle-jse-jdk
>
> >
> > I already tried manually copying libavcodec.so.53 to libavcodec.so.52
> but it
> > does not help.
> >
> > Thanks
> > -Ashish
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e0149512667fdf604f0303641
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">I already have the following in my jdk and jre recipes:<div><br></div><div><div>DEPENDS = &quot;libav gtk+ libxslt libxtst&quot;</div></div><div><br></div><div>Should I have RDEPENDS?</div><div><br></div><div>
Thanks</div><div>-Ashish</div></div><div class="gmail_extra"><br><br><div class="gmail_quote">On Sat, Jan 18, 2014 at 1:23 AM, Khem Raj <span dir="ltr">&lt;<a href="mailto:raj.khem@gmail.com" target="_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="im">On Fri, Jan 17, 2014 at 11:46 AM, Ashish Dalela &lt;<a href="mailto:ashish.dalela@gmail.com">ashish.dalela@gmail.com</a>&gt; wrote:<br>

&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m trying to build JDK and JRE using the meta-oracle-java recipes. The<br>
&gt; recipes build fine, but during do_rootfs (core-image-basic) I see the<br>
&gt; following errors:<br>
&gt;<br>
&gt; FOR JRE:<br>
&gt; | Computing transaction...error: Can&#39;t install<br>
&gt; oracle-jse-jre-i586-1.7.0-u25r0@i586: no package provides libavcodec.so.52<br>
&gt;<br>
&gt; FOR JDK:<br>
&gt; | Computing transaction...error: Can&#39;t install<br>
&gt; oracle-jse-jdk-i586-1.7.0-u51r0@i586: no package provides<br>
&gt; libavcodec.so.52(LIBAVCODEC_52)<br>
&gt;<br>
&gt; meta/recipes-multimedia/libav/<a href="http://libav_0.7.4.bb" target="_blank">libav_0.7.4.bb</a> builds libavcodec.so.53.<br>
&gt;<br>
&gt; Does anyone know how to fix this issue?<br>
<br>
</div>add libav to DEPENDS in recipe which is providing oracle-jse-jdk<br>
<div class="im"><br>
&gt;<br>
&gt; I already tried manually copying libavcodec.so.53 to libavcodec.so.52 but it<br>
&gt; does not help.<br>
&gt;<br>
&gt; Thanks<br>
&gt; -Ashish<br>
&gt;<br>
</div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br></div>

--089e0149512667fdf604f0303641--
