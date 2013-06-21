Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B89DDE005B3
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 02:37:37 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id pb11so6078731veb.37
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 02:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Y1a2gBkEl4+CX2Km49jDS+XN7iDfcKOjnbVAlPvJuNY=;
	b=Fx2jKhfFKtRn382+csGIRqzZ1T1HWKrRPEG2+xOtS/juwIDKpBEMTaYrW3qrHiCz/j
	eD7mQ/L6AfIOzNp1J2sn3X1FqxdKWIuLHbgkQPx1gW6rFXyrSGduiNx+LsYK085Xbj6Y
	TDEobczUeXQKAlL6Nxuqc23r9xUmTg/ld+D54ad8Fvr/x30njntYcQ2gI65qrYJggUCq
	mwi33umzsk9QEjWlDQH0VQoK7QyZTXHLW2JawsMZr9lTlrHOwu4WPQr9JiNsoz6mcQ0P
	srlQuwV1gbR4vmCenL/uDDvukmPqkKp6pUKW7TxPchBp9wqAEASxE11hYgMqNV7zNdUo
	g9CQ==
MIME-Version: 1.0
X-Received: by 10.221.9.68 with SMTP id ov4mr4913165vcb.6.1371807455055; Fri,
	21 Jun 2013 02:37:35 -0700 (PDT)
Received: by 10.52.66.194 with HTTP; Fri, 21 Jun 2013 02:37:34 -0700 (PDT)
In-Reply-To: <3BD19600BE4A4789BF0D37E2CA80EB9B@PAULD>
References: <3BD19600BE4A4789BF0D37E2CA80EB9B@PAULD>
Date: Fri, 21 Jun 2013 11:37:34 +0200
Message-ID: <CAFMfyzJviMRjginUzXELM9erYM7BUXWAku1_vjt7qThFq6R+gQ@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Adding a mount for a second partition
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
X-List-Received-Date: Fri, 21 Jun 2013 09:37:38 -0000
Content-Type: multipart/alternative; boundary=089e011778f50f14c904dfa6d035

--089e011778f50f14c904dfa6d035
Content-Type: text/plain; charset=ISO-8859-1

Hi,

If I am not wrong the file mount.sh in udev already does this but I dont
know if it different for a live image ...


On Fri, Jun 21, 2013 at 10:37 AM, Paul D. DeRocco <pderocco@ix.netcom.com>wrote:

> My image is a live image that is booted from a flash drive. The drive
> actually has two partitions on it, and I'd like the second partition to get
> mounted on startup. I believe that what I need is to create a mount point
> in
> the image's file system, and also append a line to /etc/fstab. How do I
> write a recipe to do those two things?
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e011778f50f14c904dfa6d035
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>If I am not wrong the file mo=
unt.sh in udev already does this but I dont know if it different for a live=
 image ...</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmai=
l_quote">
On Fri, Jun 21, 2013 at 10:37 AM, Paul D. DeRocco <span dir=3D"ltr">&lt;<a =
href=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
My image is a live image that is booted from a flash drive. The drive<br>
actually has two partitions on it, and I&#39;d like the second partition to=
 get<br>
mounted on startup. I believe that what I need is to create a mount point i=
n<br>
the image&#39;s file system, and also append a line to /etc/fstab. How do I=
<br>
write a recipe to do those two things?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Ciao, =A0 =A0 =A0 =A0 =A0 =A0 =A0 Paul D. DeRocco<br>
Paul =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mailto:<a href=3D"mailto:pderocco@ix.ne=
tcom.com">pderocco@ix.netcom.com</a><br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--089e011778f50f14c904dfa6d035--
