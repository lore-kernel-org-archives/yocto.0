Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 039004C81065
	for <yocto@yoctoproject.org>; Thu, 20 Jan 2011 17:32:33 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so1208822iyb.35
	for <yocto@yoctoproject.org>; Thu, 20 Jan 2011 15:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=//7l9kCrvLHQPKN54YenhR7uFfX3qOWNVHJlZ+i+yDo=;
	b=Q6oLKUXs7pmaPQUlqGvkn6dZ6E8IoyRdQVAKX/nGbmKRhcUfSmgAL/fxGKJ1j0nZuE
	2p0tA6paTV35X03dtGqPZyNI14UaMua/OXvzrGMouIFXujbUyYp2rwfob00HPzijyFgw
	cQYGRRQiOMJGezuW9H2dDi0zA0mL2b5xlRD1Y=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=sQa/GfCbMCtd+YFPXG0wYLIJ3SfoTy/Wzi7znccOoxnpVye0pjPOsHgCUtm0O9ugea
	/f6/kdGOOm8id33Iy65rXoF49H8NUQiSRUs60bZcTuQeDOvtGIQK5uMv0x1zVXU5HezR
	1IbQB9Iqqm7TZ2hsj9hLE8rljiN/tOyvG9Mjc=
Received: by 10.42.176.2 with SMTP id bc2mr3386492icb.517.1295566353526; Thu,
	20 Jan 2011 15:32:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.226.70 with HTTP; Thu, 20 Jan 2011 15:32:13 -0800 (PST)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9504ED88CD@orsmsx504.amr.corp.intel.com>
References: <AANLkTi=XdyonrJRV03znEbLf5r67rVWOLBiAJrWoYE8E@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504ED88CD@orsmsx504.amr.corp.intel.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 20 Jan 2011 21:32:13 -0200
Message-ID: <AANLkTinm1j+_J_7=dsjEx=rnsOhQH1vwfKZPzPsdP7++@mail.gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse Plugin Yocto Project Settings
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Jan 2011 23:32:34 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e887e48efbc049a4f8c2e

--90e6ba6e887e48efbc049a4f8c2e
Content-Type: text/plain; charset=ISO-8859-1

Jessica,

Even if I'm using "Poky Tree Mode"?

When I tried to pass my rootfs directory built by poky I've gotten an error
message related to a wrong ext3 filesystem type.

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Thu, Jan 20, 2011 at 9:24 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

>  Within the Eclipse IDE, it's expected to run qemu in the unfs mode which
> means you have to extract the rootfs file to the dirctory with the
> poky-extract-sdk script, and setup the directory in the "Root Filesystem"
> entry.
>
> Thanks,
> Jessica
>
>  ------------------------------
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Diego Sueiro
> *Sent:* Thursday, January 20, 2011 3:16 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Eclipse Plugin Yocto Project Settings
>
>  On "Target Settings" for "QEMU" "Root Filesystem" options there is no way
> to choose a individual file, just directories are allowed to be chosen.
>
> When I tried to pass a poky-image-sato-qemuarm.ext3 file I had to put the
> filename manually.
>
>
>
>  Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>

--90e6ba6e887e48efbc049a4f8c2e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Jessica,<div><br></div><div>Even if I&#39;m using &quot;Poky Tree Mode&quot=
;?</div><div><br></div><div>When I tried to pass my rootfs directory built =
by poky I&#39;ve gotten an error message related to a wrong ext3 filesystem=
 type.=A0</div>

<div><br clear=3D"all"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego=
 Sueiro<br><br>/*long live rock &#39;n roll*/<br>
<br><br><div class=3D"gmail_quote">On Thu, Jan 20, 2011 at 9:24 PM, Zhang, =
Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com">je=
ssica.zhang@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x;">





<div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">Within the Eclipse IDE, it&#39;s expected to run qemu in the u=
nfs=20
mode which means you have to extract the rootfs file to the dirctory with t=
he=20
poky-extract-sdk script, and setup the directory in the &quot;Root Filesyst=
em&quot;=20
entry.</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial"></font></span>=A0</div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">Thanks,</font></span></div>
<div dir=3D"ltr" align=3D"left"><span><font color=3D"#0000ff" size=3D"2" fa=
ce=3D"Arial">Jessica</font></span></div><br>
<div dir=3D"ltr" lang=3D"en-us" align=3D"left">
<hr>
<font size=3D"2" face=3D"Tahoma"><b>From:</b> <a href=3D"mailto:yocto-bounc=
es@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>=
=20
[mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank"=
>yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of </b>Diego=20
Sueiro<br><b>Sent:</b> Thursday, January 20, 2011 3:16 PM<br><b>To:</b>=20
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br><b>Subject:</b> [yocto] Eclipse Plugin Yocto Project=20
Settings<br></font><br></div><div><div></div><div class=3D"h5">
<div></div>
<div>On &quot;Target Settings&quot; for &quot;QEMU&quot; &quot;Root Filesys=
tem&quot; options there is no way=20
to choose a individual file, just directories are allowed to be chosen.</di=
v>
<div><br></div>
<div>When I tried to pass a poky-image-sato-qemuarm.ext3 file I had to put =
the=20
filename manually.</div>
<div><br></div>
<div><br></div>
<div><br></div>
<div>
<div>Regards,</div>
<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n=20
roll*/<br></div></div></div></div>
</blockquote></div><br></div>

--90e6ba6e887e48efbc049a4f8c2e--
