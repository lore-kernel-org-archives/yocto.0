Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02FF5E01460
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 10:58:45 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id z4so1387319qan.19
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 10:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=46mKl7Ak2N34CUQ/PluBPJPKYAvM//1HuSIM3wRPOVE=;
	b=0GQKqOp2q46OfUu+g9PTFVqJgl1CswXMdL+ZQaZKRRcr0QSFTIjbLciguCwF3N2LNo
	KsqN1fdcTe7bDcD8aqhbvvceY6IDHHP7CpSDAoOZrvPZyewamjaC+q+lfljn52Ywu/xR
	0Ac+LfTJ7/5MLRi4dizOMIaB1CmoKoyGg8toObfWvCf3jHF8hQBwaVbI2YGb1qlJz5u1
	Q9eRWQ+zVAILOfg/gOfS0TUNsmOLNl+oR5qVKEstdYJ19+yazJ+FoW37FDCDcBU5YKIz
	IPjgs+ugDEFrvmaY/51C/Ysp1eQLfu0ljP21zIb8eny99u+hjgcEpBw8TRHGOq6hz6yo
	s2tw==
MIME-Version: 1.0
X-Received: by 10.224.216.8 with SMTP id hg8mr3660467qab.74.1363283925403;
	Thu, 14 Mar 2013 10:58:45 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Thu, 14 Mar 2013 10:58:45 -0700 (PDT)
In-Reply-To: <CAFyqS9ppjD1m69VrUOZVeS+D5Pz=GB96erjLQ-7NyDZd=zVq3A@mail.gmail.com>
References: <CAFyqS9ppjD1m69VrUOZVeS+D5Pz=GB96erjLQ-7NyDZd=zVq3A@mail.gmail.com>
Date: Thu, 14 Mar 2013 18:58:45 +0100
Message-ID: <CAFyqS9qQNtJivPyhSL2CBgLJ1nORkR+UETTd=HjhGfZOwjF05Q@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Using image_types_uboot.bbclass
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
X-List-Received-Date: Thu, 14 Mar 2013 17:58:46 -0000
Content-Type: multipart/alternative; boundary=20cf3005141a1a0dd104d7e64622

--20cf3005141a1a0dd104d7e64622
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 14, 2013 at 6:44 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>w=
rote:

> Anyone that could explain how to take use of this excellent class ;)
> I have a custom image recipe and I would like the resulting image to be
> massaged by mkimage.
> I can see that this class is exporting an oe_mkimage() function, but how
> should I make sure it is called from my recipe?
> I guess I need to inherit from it, but how to tell the image factory to
> call oe_mkimage() after creating the .gz image file?
>
> Hans
>
>

Sorry guys. Once I hit the send button it struck me ;) All I had to do was
to add the below to the image recipe and make sure to inherit from
image_types_uboot

*  IMAGE_FSTYPES =3D "ext2.gz ext2.gz.u-boot"*

Again sorry for this, my bad.

Hans

--20cf3005141a1a0dd104d7e64622
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Thu, Mar 14, 2013 at 6:44 PM, Hans Be=
ck=E9rus <span dir=3D"ltr">&lt;<a href=3D"mailto:hans.beckerus@gmail.com" t=
arget=3D"_blank">hans.beckerus@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">
Anyone that could explain how to take use of this excellent class ;)<br>I h=
ave a custom image recipe and I would like the resulting image to be massag=
ed by mkimage.<br>I can see that this class is exporting an oe_mkimage() fu=
nction, but how should I make sure it is called from my recipe?<br>

I guess I need to inherit from it, but how to tell the image factory to cal=
l oe_mkimage() after creating the .gz image file?<span class=3D"HOEnZb"><fo=
nt color=3D"#888888"><br><br>Hans<br>=A0 <br>
</font></span></blockquote></div><br>Sorry guys. Once I hit the send button=
 it struck me ;) All I had to do was to add the below to the image recipe a=
nd make sure to inherit from image_types_uboot<br><br><i>=A0 IMAGE_FSTYPES =
=3D &quot;ext2.gz ext2.gz.u-boot&quot;</i><br>
<br>Again sorry for this, my bad.<br><br>Hans<br><br>

--20cf3005141a1a0dd104d7e64622--
