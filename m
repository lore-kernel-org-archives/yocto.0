Return-Path: <diego.sueiro@gmail.com>
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48A70E0099B
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 07:36:01 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id ih12so278311qab.16
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 07:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=DjErqRQn0biDnqnoV23h9ifNZqH9X5UbPljDt+TRBoM=;
	b=NDXlIBtuqOha3czvqjAwHAI7d2ONtW0PUYUu6m1zwAO6j+jaRj0KHRbBgpgkGGezl2
	lpPbnVX+WC8nR3k+fCrWR5duIQJxvQpcbXCAI1HgaIUIM37GW8YkNilAVy/R7VnZaHFL
	W9eiDmuV4Aa1eHCBirvuDOKTF0JHZBdKfjBXdasCP71QHd/iEXZXm55xmGG7nEsP76LT
	6nNpX/PpKUTOrTJDS93r825rNE+Qg9FevFWNndtN+wyHkB7taVNoY41rHk0w/OTqeMk1
	IBQvPfKBSWNHZWX3OOUl9dc1f9fE2OGzjOklrS9aKnP/W2C4i6TGkTFvp1AhPANjAaiZ
	Fnsw==
X-Received: by 10.224.162.198 with SMTP id w6mr42887531qax.1.1398782160057;
	Tue, 29 Apr 2014 07:36:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Tue, 29 Apr 2014 07:35:40 -0700 (PDT)
In-Reply-To: <CANr+NRvN80_OHjAh61zuLOebiNM1g7q5V4aGgoT=208oSjZ1qQ@mail.gmail.com>
References: <CAMCfZKG6Q5jQuQABsDOijHOcqm-v1=gPnvLdXZrP88YNfT8+rw@mail.gmail.com>
	<CANr+NRvN80_OHjAh61zuLOebiNM1g7q5V4aGgoT=208oSjZ1qQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 29 Apr 2014 11:35:40 -0300
Message-ID: <CAMCfZKHtB+xoDpovyLwcovJxh_L0W5OXqqjqok9i2R4xA5OZJA@mail.gmail.com>
To: Stefan Stanacar <sstncr@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Missing kernel, modules and dtb for beaglebone on core-image-minimal
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
X-List-Received-Date: Tue, 29 Apr 2014 14:36:07 -0000
Content-Type: multipart/alternative; boundary=089e0149c66ec4bc7304f82f5903

--089e0149c66ec4bc7304f82f5903
Content-Type: text/plain; charset=ISO-8859-1

Stefan,
On Tue, Apr 29, 2014 at 11:32 AM, Stefan Stanacar <sstncr@gmail.com> wrote:

> That's not a bug :), it's intended. The README.hardware clearly states
> that for deploying a core-image-minimal you need to unpack the modules and
> copy the dtbs over.
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/README.hardware#n244
>
> There is a reason for that, mainly beacause the way core-image-minimal
> recipe works.
>  A BSP usually adds kernel-modules and other stuff to
> MACHINE_EXTRA_RDEPENDS but not all images respect that (they need to
> inherit core-image.bbclass and not overwrite IMAGE_INSTALL).


Thanks. Got it.
Why I never RTFM or at least the README file?


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--089e0149c66ec4bc7304f82f5903
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Stefan,<br><div class=3D"gmail_=
quote">On Tue, Apr 29, 2014 at 11:32 AM, Stefan Stanacar <span dir=3D"ltr">=
&lt;<a href=3D"mailto:sstncr@gmail.com" target=3D"_blank">sstncr@gmail.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div>That&#39;s not a bug :), it&#39;s =
intended. The README.hardware clearly states that for deploying a core-imag=
e-minimal you need to unpack the modules and copy the dtbs over.<br>

<br><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/README.h=
ardware#n244" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/p=
oky/tree/README.hardware#n244</a><br>

<br></div>There is a reason for that, mainly beacause the way core-image-mi=
nimal recipe works.<br></div>=A0A BSP usually adds kernel-modules and other=
 stuff to MACHINE_EXTRA_RDEPENDS but not all images respect that (they need=
 to inherit core-image.bbclass and not overwrite IMAGE_INSTALL).</blockquot=
e>

</div><br>Thanks. Got it.</div><div class=3D"gmail_extra">Why I never RTFM =
or at least the README file?<br><br><br clear=3D"all"><div><div dir=3D"ltr"=
><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Adminis=
trador do Embarcados<br>

<a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;=
utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=
=3D"_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll*/=
<br></div>

</div>
</div></div>

--089e0149c66ec4bc7304f82f5903--
