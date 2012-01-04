Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5EBAE01366
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2012 05:56:59 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaac13 with SMTP id c13so22527832eaa.35
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2012 05:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=luUC8b7ksijM6hSW4vt/joJ9B4RLYQc+I1GUOHOCTU8=;
	b=ZcH9SzGzx6m8mTS419YqDL0eYgX2aTAvlRO1fNv88nK0GB3ejVSb4+5GwKuWFiDYBR
	xyoZsLe9QeilrcNzIDUcOt+iL5kQdC74byhcZQsUNRwplEIO11z3WL5hCfQVc1P33rrp
	hVdTd2n0Rh4Xvd588eAItegg6qOsQA9wCPIH0=
MIME-Version: 1.0
Received: by 10.205.135.18 with SMTP id ie18mr6184384bkc.72.1325685418245;
	Wed, 04 Jan 2012 05:56:58 -0800 (PST)
Received: by 10.205.121.142 with HTTP; Wed, 4 Jan 2012 05:56:58 -0800 (PST)
In-Reply-To: <ffa7a3dfe6a46305c98f2ae7fd05f21a3d220fa8.1325115602.git.dvhart@linux.intel.com>
References: <cover.1325115602.git.dvhart@linux.intel.com>
	<ffa7a3dfe6a46305c98f2ae7fd05f21a3d220fa8.1325115602.git.dvhart@linux.intel.com>
Date: Wed, 4 Jan 2012 14:56:58 +0100
Message-ID: <CAMvUbCyeLEEThPBkYUjazinVBQq48GXQypU_4pft32L87p8Tjg@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/3] distro: Add poky-tiny distro definition
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
X-List-Received-Date: Wed, 04 Jan 2012 13:57:00 -0000
Content-Type: multipart/alternative; boundary=000e0ce03d52703f1b04b5b430fb

--000e0ce03d52703f1b04b5b430fb
Content-Type: text/plain; charset=ISO-8859-1

Darren,

On Thu, Dec 29, 2011 at 12:45 AM, Darren Hart <dvhart@linux.intel.com>wrote:

> Poky-tiny is intended for building very small OS images. The distro
> definition sets the providers for the kernel and the runtime services.
> It also reduces the eglibc component list and other DISTRO_FEATURE
> elements.
>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky-tiny.conf |  103
> +++++++++++++++++++++++++++++++++
>

On retrospect, does poky-tiny.conf below in openembedded-core (rather than
in a Yocto layer)?
I *do* welcome such a distro in -core, as my use case has always been
similar to this.

Also, this seems to be the first entry in meta-yocto/, but it cannot be
used as a layer:
openembedded-core.git/meta-yocto/conf/layer.conf: [Errno 2] No such file or
directory

What is the expected way to use this? Or is it that the layer file is just
missing?

Regards,

Leon.

--000e0ce03d52703f1b04b5b430fb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Darren,<br><br><div class=3D"gmail_quote">On Thu, Dec 29, 2011 at 12:45 AM,=
 Darren Hart <span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com=
">dvhart@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
Poky-tiny is intended for building very small OS images. The distro<br>
definition sets the providers for the kernel and the runtime services.<br>
It also reduces the eglibc component list and other DISTRO_FEATURE<br>
elements.<br>
<br>
Signed-off-by: Darren Hart &lt;<a href=3D"mailto:dvhart@linux.intel.com">dv=
hart@linux.intel.com</a>&gt;<br>
---<br>
=A0meta-yocto/conf/distro/poky-tiny.conf | =A0103 +++++++++++++++++++++++++=
++++++++<br></blockquote></div><br>On retrospect, does poky-tiny.conf below=
 in openembedded-core (rather than in a Yocto layer)?<br>
I *do* welcome such a distro in -core, as my use case has always been simil=
ar to this.<br><br>
Also, this seems to be the first entry in meta-yocto/, but it cannot be use=
d as a layer:<br>

openembedded-core.git/meta-yocto/conf/layer.conf: [Errno 2] No such file or=
 directory<br><br>
What is the expected way to use this? Or is it that the layer file is just =
missing?<br><br>Regards,<br><br>Leon.<br>
<br>

--000e0ce03d52703f1b04b5b430fb--
