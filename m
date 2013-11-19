Return-Path: <lemonjack05@gmail.com>
Received: from mail-qa0-f66.google.com (mail-qa0-f66.google.com
	[209.85.216.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F3B6E0053F
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 07:04:06 -0800 (PST)
Received: by mail-qa0-f66.google.com with SMTP id f11so541687qae.5
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 07:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=1rRLAV8SVb2BAJKgw19OZvLzZRaVCk37nKK3aSkVOKk=;
	b=JCsaEt1ggk0OFdXywxkRwy5LJM0r9pixyNRs/Oa4UR+xfZm4581HZtCZ3hJceXBvNX
	MrVVYCNNl7p6EydhNjKDSvD2D9QKA02tozXRg+c6WpiDRlRwqnOF8MUu3xn4O3vOtfXU
	RLCpFNG+Be8alnWfcP3BqZ+XjRXxlQZqPqF46QoGjn8E+jlTy6ldnT9HHXjCRXy59oU3
	ntSlJSo2Pw+yBRizFFhTBAa3WxStdBIKipjGV4KprVZPJVcAEjTDp+taRxdbRLZhlbHb
	Oaso0qj9SqslEhgxgvGFuicNLrSga6ZXeEFUfKh3RgbZ5NctgjlKuvA7Wioi/s104NAE
	YUjA==
MIME-Version: 1.0
X-Received: by 10.224.22.20 with SMTP id l20mr43712996qab.17.1384873445651;
	Tue, 19 Nov 2013 07:04:05 -0800 (PST)
Received: by 10.140.102.167 with HTTP; Tue, 19 Nov 2013 07:04:05 -0800 (PST)
In-Reply-To: <528B5529.5090807@denx.de>
References: <loom.20131116T135512-692@post.gmane.org>
	<528B27C0.5060901@denx.de>
	<loom.20131119T105032-516@post.gmane.org>
	<528B390E.4000401@denx.de>
	<loom.20131119T121506-919@post.gmane.org>
	<528B5529.5090807@denx.de>
Date: Tue, 19 Nov 2013 18:34:05 +0330
Message-ID: <CAKdgcL08xZxo4ftZVSTqpjS-TqzHeeoz3mTZHxu5E3mJGfdnGg@mail.gmail.com>
From: jack lemon <lemonjack05@gmail.com>
To: Stefano Babic <sbabic@denx.de>
X-Mailman-Approved-At: Tue, 19 Nov 2013 08:43:11 -0800
Cc: yocto@yoctoproject.org
Subject: Re: How to modify u-boot in Root File System rootfs.ext2.gz.u-boot ?
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
X-List-Received-Date: Tue, 19 Nov 2013 15:04:08 -0000
Content-Type: multipart/alternative; boundary=047d7bf0cfecc9889b04eb88f9fa

--047d7bf0cfecc9889b04eb88f9fa
Content-Type: text/plain; charset=ISO-8859-1

Thanks a lot for your answers Stefano,

I put the patch in my bsp directory and adjust my u-boot receipe.


On Tue, Nov 19, 2013 at 3:40 PM, Stefano Babic <sbabic@denx.de> wrote:

> Hi Jack,
>
> On 19/11/2013 12:25, Jack wrote:
>
> > For Nor-Flash we have only three files(kernel,rootfs,dtb). Where is
> u-boot?
> > I think it is inside the fsl-image-minimal-p1022ds.ext2.gz.u-boot rootfs
> > file. Is it true?
>
> I do not think so, but you are the best to answer this question: unzip
> the file and check inside.
>
> However, even if it contains a u-boot.bin or whatever is your u-boot
> file, you have to extract it to write the bootloader at the right address.
>
> In most cases, you will see a separate image for u-boot in
> tmp/deploy/images diurectory.
>
> >
> > So, for modifying u-boot to adujst serial boaudrate,
>
> No. To modify the serial console under linux.
>
> > I understand that I can
> > add SERIAL_CONSOLE = "115200 ttyS0" to my local.conf according to your
> reply
>
> See Robert reply. SERIAL_CONSOLE is deprecated, uses SERIAL_CONSOLES
> instead.
>
> > and it doesnt need to modify u-boot source code.
> >
> > Am I in the right place?
>
> Mmmhh..there is something missing. Usually you have a separate file for
> u-boot. Of course, if u-boot is part of the filesystem, you cannot use
> for a first installation because u-boot must be copied at a specific
> address.
>

Best regards,
> Stefano Babic
>
> --
> =====================================================================
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =====================================================================
>

--047d7bf0cfecc9889b04eb88f9fa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">
</div><div class=3D"gmail_extra">Thanks a lot for your answers Stefano,<br>=
<br>I put the patch in my bsp directory and adjust my u-boot receipe.<br>
<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue,=
 Nov 19, 2013 at 3:40 PM, Stefano Babic <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:sbabic@denx.de" target=3D"_blank">sbabic@denx.de</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">

Hi Jack,<br>
<br>
On 19/11/2013 12:25, Jack wrote:<br>
<br>
&gt; For Nor-Flash we have only three files(kernel,rootfs,dtb). Where is u-=
boot?<br>
&gt; I think it is inside the fsl-image-minimal-p1022ds.ext2.gz.u-boot root=
fs<br>
&gt; file. Is it true?<br>
<br>
I do not think so, but you are the best to answer this question: unzip<br>
the file and check inside.<br>
<br>
However, even if it contains a u-boot.bin or whatever is your u-boot<br>
file, you have to extract it to write the bootloader at the right address.<=
br>
<br>
In most cases, you will see a separate image for u-boot in<br>
tmp/deploy/images diurectory.<br>
<br>
&gt;<br>
&gt; So, for modifying u-boot to adujst serial boaudrate,<br>
<br>
No. To modify the serial console under linux.<br>
<br>
&gt; I understand that I can<br>
&gt; add SERIAL_CONSOLE =3D &quot;115200 ttyS0&quot; to my local.conf accor=
ding to your reply<br>
<br>
See Robert reply. SERIAL_CONSOLE is deprecated, uses SERIAL_CONSOLES<br>
instead.<br>
<br>
&gt; and it doesnt need to modify u-boot source code.<br>
&gt;<br>
&gt; Am I in the right place?<br>
<br>
Mmmhh..there is something missing. Usually you have a separate file for<br>
u-boot. Of course, if u-boot is part of the filesystem, you cannot use<br>
for a first installation because u-boot must be copied at a specific<br>
address.<br>
=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Best regards,<br>
<div><div>Stefano Babic<br>
<br>
--<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
DENX Software Engineering GmbH, =A0 =A0 MD: Wolfgang Denk &amp; Detlev Zund=
el<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: <a href=3D"mailto:sb=
abic@denx.de" target=3D"_blank">sbabic@denx.de</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div></div></blockquote></div><br></div></div>

--047d7bf0cfecc9889b04eb88f9fa--
