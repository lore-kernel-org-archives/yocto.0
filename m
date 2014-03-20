Return-Path: <ashish.dalela@gmail.com>
Received: from mail-yh0-f53.google.com (mail-yh0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE41CE00995
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 02:21:01 -0700 (PDT)
Received: by mail-yh0-f53.google.com with SMTP id v1so483720yhn.26
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 02:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=a3IVIiCLzRA6rN3g+L45WaJIZ7WB0shq0DAmIU9oDms=;
	b=qWHQOcDo4kxaWUpJAj3rqa3zhvIaLCXplSPk6KB1YNvRAFiDu2ThOY/DsQKexAO0HN
	nEgrt2ZnpNcWoYWB+QbEeGV42/xXwFvVXIU76OgXMsdGU9g0wc8Co/HDqQU2rf9jrylF
	k8nsmRyHGw/AG5596yhSXzEkQCxjFljIh4nN8O9vqsNr3DMNbVAVLnx82uiIEvpGBr1F
	fu9UqHqs04ihwomiYLkVTro8pLgFnNavHzjN+og18ZpY5Cb5d4Uc+wcKsKnGHTsVuGee
	3CYWIYweFxOE0zkr/JxZZm8hU8l9tWy/QyWyMhS5dbDeuyRt9ZaAm/pBkKEBrn65ZlN9
	Up0Q==
MIME-Version: 1.0
X-Received: by 10.236.82.104 with SMTP id n68mr729424yhe.142.1395307260977;
	Thu, 20 Mar 2014 02:21:00 -0700 (PDT)
Received: by 10.170.63.69 with HTTP; Thu, 20 Mar 2014 02:21:00 -0700 (PDT)
In-Reply-To: <CADkTA4NdOJHnmcPcJqMx2i5ZmEMUw+QV2QvuPvts9TE=quWTqw@mail.gmail.com>
References: <CABhkJRebWkHYUWXu77n2kg20Ti3P8bYgE2UzfY8UO6T5K_tYew@mail.gmail.com>
	<CADkTA4NdOJHnmcPcJqMx2i5ZmEMUw+QV2QvuPvts9TE=quWTqw@mail.gmail.com>
Date: Thu, 20 Mar 2014 14:51:00 +0530
Message-ID: <CABhkJRcX+DCxfqzDdLQ_XotRzT0vrQFrQFq9TmXFmGF1dQQucg@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto not packaging "m" kernel modules
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
X-List-Received-Date: Thu, 20 Mar 2014 09:21:05 -0000
Content-Type: multipart/alternative; boundary=20cf30063c0aa4a9af04f5064935

--20cf30063c0aa4a9af04f5064935
Content-Type: text/plain; charset=ISO-8859-1

Bruce,

How do I add these modules to the packaging? Is it something I need to add
to local.conf? Right now I have this -

IMAGE_FEATURES += "package-management"

Thanks
-Ashish


On Thu, Mar 20, 2014 at 12:51 PM, Bruce Ashfield
<bruce.ashfield@gmail.com>wrote:

> On Thu, Mar 20, 2014 at 2:48 AM, Ashish Dalela <ashish.dalela@gmail.com>
> wrote:
> >
> > In my build I see that the kernel modules which are specified as modular
> (
> > "m" in the kernel config) are not being packaged withe rootfs. The
> modules
> > specified as built-in ("y" in the kernel config) are being packaged in
> the
> > rootfs. This seems to be reverse of what it should be.
> >
> > As an example, I have the following options for my kernel config
> specified
> > additionally as part of my BSP layer. The modules "y" are packaged with
> > rootfs but "m" are not.
> >
> > CONFIG_USB_NET_CDCETHER=y
> > CONFIG_USB_NET_CDC_EEM=m
> > CONFIG_USB_NET_CDC_NCM=y
> > CONFIG_USB_NET_SMSC75XX=m
> > CONFIG_USB_NET_CDC_SUBSET=y
> >
> > How do I fix this? Making everything "y" is not a good idea if I want to
> > avoid loading these until really needed.
>
>
> Have you specified "kernel-modules" in your image types installed packages
> ?
> Or listed the individual module packages in the RDEPENDS of either the
> image recipe, or recipes that require them ?
>
> They'll be built and packaged automatically, but they won't be in the
> rootfs until
> something depends on them, or they are added to the install.
>
> Bruce
>
> >
> > Thanks
> > -Ashish
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>

--20cf30063c0aa4a9af04f5064935
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bruce,<div><br></div><div>How do I add these modules to th=
e packaging? Is it something I need to add to local.conf? Right now I have =
this -=A0</div><div><br></div><div><div>IMAGE_FEATURES +=3D &quot;package-m=
anagement&quot;</div>
</div><div><br></div><div>Thanks</div><div>-Ashish</div></div><div class=3D=
"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Mar 20, 2014 at 12=
:51 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfie=
ld@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;</span> wro=
te:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On T=
hu, Mar 20, 2014 at 2:48 AM, Ashish Dalela &lt;<a href=3D"mailto:ashish.dal=
ela@gmail.com">ashish.dalela@gmail.com</a>&gt; wrote:<br>

&gt;<br>
&gt; In my build I see that the kernel modules which are specified as modul=
ar (<br>
&gt; &quot;m&quot; in the kernel config) are not being packaged withe rootf=
s. The modules<br>
&gt; specified as built-in (&quot;y&quot; in the kernel config) are being p=
ackaged in the<br>
&gt; rootfs. This seems to be reverse of what it should be.<br>
&gt;<br>
&gt; As an example, I have the following options for my kernel config speci=
fied<br>
&gt; additionally as part of my BSP layer. The modules &quot;y&quot; are pa=
ckaged with<br>
&gt; rootfs but &quot;m&quot; are not.<br>
&gt;<br>
&gt; CONFIG_USB_NET_CDCETHER=3Dy<br>
&gt; CONFIG_USB_NET_CDC_EEM=3Dm<br>
&gt; CONFIG_USB_NET_CDC_NCM=3Dy<br>
&gt; CONFIG_USB_NET_SMSC75XX=3Dm<br>
&gt; CONFIG_USB_NET_CDC_SUBSET=3Dy<br>
&gt;<br>
&gt; How do I fix this? Making everything &quot;y&quot; is not a good idea =
if I want to<br>
&gt; avoid loading these until really needed.<br>
<br>
<br>
</div></div>Have you specified &quot;kernel-modules&quot; in your image typ=
es installed packages ?<br>
Or listed the individual module packages in the RDEPENDS of either the<br>
image recipe, or recipes that require them ?<br>
<br>
They&#39;ll be built and packaged automatically, but they won&#39;t be in t=
he<br>
rootfs until<br>
something depends on them, or they are added to the install.<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt; Thanks<br>
&gt; -Ashish<br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
<br>
<br>
--<br>
&quot;Thou shalt not follow the NULL pointer, for chaos and madness await<b=
r>
thee at its end&quot;<br>
</font></span></blockquote></div><br></div>

--20cf30063c0aa4a9af04f5064935--
