Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39E72E00DB8; Fri,  3 Jun 2016 02:54:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04666E00DB0
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 02:54:01 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id d51so2086162qte.1
	for <yocto@yoctoproject.org>; Fri, 03 Jun 2016 02:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=y/pJ5nmKOgPe/ktEnUjeNrOrsw4GifqYJq9+Ss7hcXE=;
	b=veYT22VtYpGiI0af5nBVTMUqLoqatDG+Tg7GCD7nGY62+S61YsNegAhV2jUdNUmi5c
	loF+l+3LvhLwPj80nDk8slZuaWcEls4JAbqEyPjBSV31ARD4m166TPDQPqCOgy5mjqYF
	m5rXahFV1OVLrs6ptMhFmXGKlcB/IlUsBYYIi64nCtjVwGW3CXVtRPdYW8Z+dvUoPuLR
	aoyMir2YLehZAvhKBSsO8khJ/Vg/D96cKDhIQUP+sIPtlp/THXVHzO0bRPtTSbndHNRJ
	w0Hmtn60I/dAEr2KfMc8ldL8zVwgoujDPd/5EU6EaBHANk1vlW4ec2dDFqpib13gVM20
	pNhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=y/pJ5nmKOgPe/ktEnUjeNrOrsw4GifqYJq9+Ss7hcXE=;
	b=HXh0yPGoftEQMhNXtiBnI3/EcKEHbGWyOT4XSpmEwvrz0YcptmNC61NqX108OFvkkf
	8N+pyXtpIIDdbLbnHSVYtiRcBvm5BphN7F8nLKps42OMoOtlTZF5sXssaa9h5/tJLZ/e
	/nJZc0RqmXAmhXbtmRHoV7AUZKtIYtb4Tgl7LKUjTJIu9NaINPoPa8LHc56SHow1ntD3
	1gcdmkGoFfFL1NuOU2fN15UpcwHjAVGnsEjUU17sV2iCal7sk9YmjrL/TzxLrqMeAWTr
	374RGnZkfBch7RQaV4xoJGm4KUCpP3BxKKVxh5uIkb3cPSmWQzBMSiams37VaolR79h5
	NhUw==
X-Gm-Message-State: ALyK8tJqr2Gtpwk6VKY6EMddcAZRhhJk39gaWL5Qv/mlgjtDk+a2CgGCJAtENwEJD7uWFHQ4ED9cFnV0BtIzag==
X-Received: by 10.200.50.220 with SMTP id a28mr2321837qtb.13.1464947640565;
	Fri, 03 Jun 2016 02:54:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.49.35 with HTTP; Fri, 3 Jun 2016 02:54:00 -0700 (PDT)
In-Reply-To: <5751489D.8000403@emutex.com>
References: <5751489D.8000403@emutex.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Date: Fri, 3 Jun 2016 12:54:00 +0300
Message-ID: <CAEeWub+31SEF90HY9JC-+7PtGxHZjjz+S1Sm9mS99dDxUFCKCQ@mail.gmail.com>
To: "Dan O'Donovan" <dan@emutex.com>
Cc: yocto@yoctoproject.org
Subject: Re: rootfs mounted read-only on Live USB (x86-64)
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
X-List-Received-Date: Fri, 03 Jun 2016 09:54:05 -0000
Content-Type: multipart/alternative; boundary=001a11404eacbb164305345cb392

--001a11404eacbb164305345cb392
Content-Type: text/plain; charset=UTF-8

Hi,

Check if "read-only-rootfs" feature is added to any of these variables
either in your local.conf or your image bitbake recipe:

Something like that:

IMAGE_FEATURES = "read-only-rootfs"

EXTRA_IMAGE_FEATURES += "read-only-rootfs"

Thanks,
Oleksandr Poznyak!

On Fri, Jun 3, 2016 at 12:06 PM, Dan O'Donovan <dan@emutex.com> wrote:

> Hi all
>
> Has anyone else noticed that the root file-system appears to be mounted
> read-only when booting a Live USB image from Yocto 2.1.
>
> This is on a sato build from the krogoth branch of poky and meta-intel,
> for a generic x86-64 machine (4.4 kernel).
>
> I'm transferring the resulting .iso image to a usb stick using 'dd', and
> then picking the 'boot' option at startup.
>
> As well as a bunch of errors about the read-only filesystem (e.g. failing
> to create files in /var and other locations), the desktop UI fails to load.
>
> This worked fine with Yocto 2.0.
>
> I have a hunch that it might be caused by a lack of aufs support.  Is it
> possible that aufs patches were omitted from the x86 kernels in Yocto 2.1?
>
> Thanks,
> -Dan
>
> P.S. It works fine if I just install it directly, or if I use the .hddimg,
> instead of trying to boot the live image from the .iso.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11404eacbb164305345cb392
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br>Check if &quot;read-only-rootfs&quot;=
 feature is added to any of these variables either in your local.conf or yo=
ur image bitbake recipe:<br><br>Something like that:<br><br>IMAGE_FEATURES =
=3D &quot;read-only-rootfs&quot;<br><br>EXTRA_IMAGE_FEATURES +=3D &quot;rea=
d-only-rootfs&quot;<br><br></div>Thanks,<br></div>Oleksandr Poznyak!<br></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 3,=
 2016 at 12:06 PM, Dan O&#39;Donovan <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:dan@emutex.com" target=3D"_blank">dan@emutex.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Hi all<br>
<br>
Has anyone else noticed that the root file-system appears to be mounted rea=
d-only when booting a Live USB image from Yocto 2.1.<br>
<br>
This is on a sato build from the krogoth branch of poky and meta-intel, for=
 a generic x86-64 machine (4.4 kernel).<br>
<br>
I&#39;m transferring the resulting .iso image to a usb stick using &#39;dd&=
#39;, and then picking the &#39;boot&#39; option at startup.<br>
<br>
As well as a bunch of errors about the read-only filesystem (e.g. failing t=
o create files in /var and other locations), the desktop UI fails to load.<=
br>
<br>
This worked fine with Yocto 2.0.<br>
<br>
I have a hunch that it might be caused by a lack of aufs support.=C2=A0 Is =
it possible that aufs patches were omitted from the x86 kernels in Yocto 2.=
1?<br>
<br>
Thanks,<br>
-Dan<br>
<br>
P.S. It works fine if I just install it directly, or if I use the .hddimg, =
instead of trying to boot the live image from the .iso.<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11404eacbb164305345cb392--
