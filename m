Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18B4BE016CC
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 06:58:21 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id q58so3919778wes.28
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 06:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nLbXL8THX2/eBAP5efoPuuPSNM85tNcBjkOSWfVnhDs=;
	b=Xsn8VAf7MSoA22FSkvJdQyNxO+Kj0BZCJS1YTyk0zPXXOIP9YLGLwmpz8x0x8JrjIo
	MxaXOXZwkXYvKQiernDRadneWG6XKcCu1En9KPf/pJSAMaeADdQpv4e5hXxIVYVdfm1I
	WVS9Yi6oB2T4PwcHnIKRzk7oe9RtMKQytbG+szcN6hWOd4G8wqxj5adIpgP60ryNzch/
	dUvnD7suDhD1CXyG6fN7UOq0nc87B/2kVhh0q5qdWW0egZ2hC9vQu8pEH5FQ7mrydb9+
	sUWg7sjCKKFz+qgoajUKKVz2QLVmIVnpU0ZQswCzbRQtWA9CFSHftvgYWnxQaVMXeDsB
	Gb4g==
MIME-Version: 1.0
X-Received: by 10.180.160.203 with SMTP id xm11mr2645067wib.17.1382709499889; 
	Fri, 25 Oct 2013 06:58:19 -0700 (PDT)
Received: by 10.194.179.198 with HTTP; Fri, 25 Oct 2013 06:58:19 -0700 (PDT)
In-Reply-To: <CAMCfZKHWyKwJ3BquFk=hpRx7nrJN_rzbCRZvTeAFTj5FU6X7zA@mail.gmail.com>
References: <CAMCfZKHWyKwJ3BquFk=hpRx7nrJN_rzbCRZvTeAFTj5FU6X7zA@mail.gmail.com>
Date: Fri, 25 Oct 2013 15:58:19 +0200
Message-ID: <CA+chaQd1GEzyBfOSOfmxdy8qh6a5EJ+J-Yero9sKpV0DfhF1sg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BAD_RECOMMENDATIONS / BAD_RECOMMENDS not working
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
X-List-Received-Date: Fri, 25 Oct 2013 13:58:22 -0000
Content-Type: multipart/alternative; boundary=047d7b66f90791913504e991246a

--047d7b66f90791913504e991246a
Content-Type: text/plain; charset=UTF-8

BAD_RECOMMENDATIONS work only for packages which are installed because
something has them in RRECOMMENDS, if your custom image has qt-demo-init in
IMAGE_INSTALL or pulled by RDEPENDS in some variable, than it won't be
removed (and shouldn't be).

Use bitbake -g to see why and how it's pulled to your image.


On Fri, Oct 25, 2013 at 3:16 PM, Diego Sueiro <diego.sueiro@gmail.com>wrote:

> Folks,
>
> I'm using dylan branch and package management is ipk.
>
> I'm trying to remove qt-demo-init package from my custom image with
> both BAD_RECOMMENDATIONS and BAD_RECOMMENDS variables but it is still being
> installed on rootfs.
> I've already did a cleansstate on my image recipe but no success.
>
>
> I can use the ROOTFS_POSTPROCESS_COMMAND to remove the initscript from
> /etc/init.d but it seems to be an workaround to get this working.
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b66f90791913504e991246a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>BAD_RECOMMENDATIONS work only for packages which are =
installed because something has them in RRECOMMENDS, if your custom image h=
as qt-demo-init in IMAGE_INSTALL or pulled by RDEPENDS in some variable, th=
an it won&#39;t be removed (and shouldn&#39;t be).<br>
<br></div>Use bitbake -g to see why and how it&#39;s pulled to your image.<=
br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On F=
ri, Oct 25, 2013 at 3:16 PM, Diego Sueiro <span dir=3D"ltr">&lt;<a href=3D"=
mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.sueiro@gmail.com</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Folks,<div><br></div><div>I=
&#39;m using dylan branch and package management is ipk.</div><div><br></di=
v>
<div>I&#39;m trying to remove qt-demo-init package from my custom image wit=
h both=C2=A0BAD_RECOMMENDATIONS and BAD_RECOMMENDS variables but it is stil=
l being installed on rootfs.</div>

<div>I&#39;ve already did a cleansstate on my image recipe but no success.<=
/div><div><br></div><div><br></div><div>I can use the=C2=A0ROOTFS_POSTPROCE=
SS_COMMAND to remove the initscript from /etc/init.d but it seems to be an =
workaround to get this working.</div>


<div><br><div><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br=
>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7b66f90791913504e991246a--
