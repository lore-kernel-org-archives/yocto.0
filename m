Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 738ADE01560
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 22:47:03 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id lx15so6583300lab.35
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 22:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kunDx3phmE5k78DRh0sitcieAVN0ycMrENYsPopVQ2k=;
	b=g5nzI/Xon5kLw9YKlrinkT45Jqk1Xj+MqMAHgqsrhStEtemYsmcDXj/4SOAc1bsxV6
	mMT9IALuwuULIGJqflLPuTKR20WJGhVPUoEjxgRGDuxkCH4ME4ONCpzy1IH6K5T+vu+0
	n2qznCIuHD/6vWl5os4QYILUBFbFtLuGFDIBfHv7hoQgK11Bmri2JYcpPOCTQFfDzphh
	KAzb5u3sgxCzExpceCZLQ53FXMfyINexdkkyMSpWCs/Np9kV8aJ8RPwxUPKpmxM/16Ca
	E6lrpg6xaeZvvpX51QbRFZC6WPPLkmq5eWuZ4SH30ruUojHnQAeoQjHeatLOuT6efj7y
	GG+w==
MIME-Version: 1.0
X-Received: by 10.152.29.41 with SMTP id g9mr8884840lah.44.1371016021994; Tue,
	11 Jun 2013 22:47:01 -0700 (PDT)
Received: by 10.114.58.72 with HTTP; Tue, 11 Jun 2013 22:47:01 -0700 (PDT)
In-Reply-To: <CCC55643-4330-4AE6-B2D8-AD5E47E486DC@spidercloud.com>
References: <0E1D49D2-4C56-45AC-AB70-2EA8261EE4D8@spidercloud.com>
	<CCC55643-4330-4AE6-B2D8-AD5E47E486DC@spidercloud.com>
Date: Wed, 12 Jun 2013 11:17:01 +0530
Message-ID: <CAE_REAuG+FZkFSMjjdPJ7SEGDVsdc1Snq0BEtWoVuh_SgDKjyQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Ben Warren <Ben.Warren@spidercloud.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SOLVED: How to get mkfs.ext4 in rootfs package
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
X-List-Received-Date: Wed, 12 Jun 2013 05:47:04 -0000
Content-Type: multipart/alternative; boundary=089e0158c09af8f3a904deee8abc

--089e0158c09af8f3a904deee8abc
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Can you try with IMAGE_INSTALL_append =3D " e2fsprogs" and run once again
"bitbake core-image-minimal" or whatever you are referring for your final
target

//Gaurang Shastri


On Wed, Jun 12, 2013 at 1:06 AM, Ben Warren <Ben.Warren@spidercloud.com>wro=
te:

> Sorry for the spam.  Still learning how this works=85
>
> Turns out I needed 'e2fsprogs-mke2fs'
>
> regards,
> Ben
>
> On Jun 11, 2013, at 10:51 AM, Ben Warren <Ben.Warren@spidercloud.com>
> wrote:
>
> > Hi,
> >
> > I'm trying to get the 'mkfs.ext4' binary from e2fsprogs into my image,
> in particular the '.ext3' rootfs image, and am obviously missing somethin=
g
> fundamental.
> > I'm using a custom image based on (copy/pasted from)
> 'kvm_image_minimal', and have added 'e2fsprogs' to the IMAGE_INSTALL stri=
ng
> in the image descriptor file.
> >
> > I see that the library is compiling and the binary is in tmp/sysroots:
> >
> > ben@ubuntu-scw:/opt/scw-appscard-build$ ls
> tmp/sysroots/x86_64-linux/sbin/mkfs.*
> > tmp/sysroots/x86_64-linux/sbin/mkfs.ext2
>  tmp/sysroots/x86_64-linux/sbin/mkfs.ext4
> tmp/sysroots/x86_64-linux/sbin/mkfs.minix
> > tmp/sysroots/x86_64-linux/sbin/mkfs.ext3
>  tmp/sysroots/x86_64-linux/sbin/mkfs.ext4dev
> >
> > but it's not making it to the rootfs images.
> >
> > I've tried to read the documentation but still am not quite sure about
> what defines the contents of the rootfs images.
> >
> > thanks,
> > Ben
> >
> >
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0158c09af8f3a904deee8abc
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Can you try with IMAGE_INSTALL_append =3D &quot; e2fs=
progs&quot; and run once again &quot;bitbake core-image-minimal&quot; or wh=
atever you are referring for your final target<br><br></div>//Gaurang Shast=
ri<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Jun 12, 2013 at 1:06 AM, Ben Warren <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:Ben.Warren@spidercloud.com" target=3D"_blank">Ben.Warren@spidercloud.com<=
/a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Sorry for the spam. =A0Still learning how th=
is works=85<br>
<br>
Turns out I needed &#39;e2fsprogs-mke2fs&#39;<br>
<br>
regards,<br>
Ben<br>
<br>
On Jun 11, 2013, at 10:51 AM, Ben Warren &lt;<a href=3D"mailto:Ben.Warren@s=
pidercloud.com">Ben.Warren@spidercloud.com</a>&gt; wrote:<br>
<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m trying to get the &#39;mkfs.ext4&#39; binary from e2fsprogs in=
to my image, in particular the &#39;.ext3&#39; rootfs image, and am obvious=
ly missing something fundamental.<br>
&gt; I&#39;m using a custom image based on (copy/pasted from) &#39;kvm_imag=
e_minimal&#39;, and have added &#39;e2fsprogs&#39; to the IMAGE_INSTALL str=
ing in the image descriptor file.<br>
&gt;<br>
&gt; I see that the library is compiling and the binary is in tmp/sysroots:=
<br>
&gt;<br>
&gt; ben@ubuntu-scw:/opt/scw-appscard-build$ ls tmp/sysroots/x86_64-linux/s=
bin/mkfs.*<br>
&gt; tmp/sysroots/x86_64-linux/sbin/mkfs.ext2 =A0tmp/sysroots/x86_64-linux/=
sbin/mkfs.ext4 =A0 =A0 tmp/sysroots/x86_64-linux/sbin/mkfs.minix<br>
&gt; tmp/sysroots/x86_64-linux/sbin/mkfs.ext3 =A0tmp/sysroots/x86_64-linux/=
sbin/mkfs.ext4dev<br>
&gt;<br>
&gt; but it&#39;s not making it to the rootfs images.<br>
&gt;<br>
&gt; I&#39;ve tried to read the documentation but still am not quite sure a=
bout what defines the contents of the rootfs images.<br>
&gt;<br>
&gt; thanks,<br>
&gt; Ben<br>
&gt;<br>
&gt;<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--089e0158c09af8f3a904deee8abc--
