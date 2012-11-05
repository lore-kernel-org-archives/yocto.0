Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB1FE00655
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 07:57:37 -0800 (PST)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 05 Nov 2012 07:57:37 -0800
Received: by mail-oa0-f72.google.com with SMTP id h2so18786632oag.11
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2012 07:57:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ECtmrOf7TqfYy5F3kVayXyUomdmbSMHRFvBn4y5oAaM=;
	b=eD9mdSXn7GNHCvZZJwiT9asnnl4SyuInLyWrhkpXFiDNJH8GuzI2I+3PMcZnxKUnyt
	Eq3rvmIv1DbKIQLdOFzW1XHrW8FWYx/lVl9OQh6LphaIiMk7+KKhrgjp5V0fHV2OEibD
	VhhOC3U9cqdvJgwHYgVHbwdyUmSPGekzHz7qrPykbQqbifDHNUHEEG2t7N9P9qXLpWRU
	DlheMmd43+S1dSsteW7bEiAAixbZCGCdeOYtqpVOMCesx7rmQfQ3q2cXqkeyae18SHUd
	RguaIYmV76SAD92/dw2c9JxEDAcBDaD/gJ9Vy7sicJIaqYRuMpv3d/qFfXhkDwg1DLgJ
	DcMA==
Received: by 10.182.1.72 with SMTP id 8mr8052553obk.61.1352131056211;
	Mon, 05 Nov 2012 07:57:36 -0800 (PST)
Received: by 10.182.1.72 with SMTP id 8mr8052549obk.61.1352131056061; Mon, 05
	Nov 2012 07:57:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.68.135 with HTTP; Mon, 5 Nov 2012 07:57:15 -0800 (PST)
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE23E16A1B7@ORSMSX105.amr.corp.intel.com>
References: <1352118670-25336-1-git-send-email-ross.burton@intel.com>
	<D956029D25CF204F948EA0FB515E1EE23E16A1B7@ORSMSX105.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Nov 2012 15:57:15 +0000
Message-ID: <CAJTo0Lb9_+XqaB61tTBxQa6fpiWm=aCmzNs0Myjo1ZT8rvj_eQ@mail.gmail.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
X-Gm-Message-State: ALoCoQk/S1M/xpICrCzGrgwWONkE6r+lRjk6SF+2g+2FBv8l/rBVmmCczXl62z/lg/TbN/QFwqPvIJ25JH48uMdbgfKrskyLtjuG379jh1eu82f707qzPsVAo/swwm6NYxk/2SZUsU54BsMG+9aEtosAk7KDStfVmw==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri version (typo'd)
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
X-List-Received-Date: Mon, 05 Nov 2012 15:57:37 -0000
Content-Type: multipart/alternative; boundary=f46d04462fe0494df104cdc18b26

--f46d04462fe0494df104cdc18b26
Content-Type: text/plain; charset=UTF-8

Both Danny and master.

Ross


On 5 November 2012 15:54, Bodke, Kishore K <kishore.k.bodke@intel.com>wrote:

> Is this patch for danny?
>
> -Kishore.
>
> >-----Original Message-----
> >From: Ross Burton [mailto:ross.burton@intel.com]
> >Sent: Monday, November 05, 2012 4:31 AM
> >To: Bodke, Kishore K
> >Cc: yocto@yoctoproject.org
> >Subject: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri version
> >(typo'd)
> >
> >Signed-off-by: Ross Burton <ross.burton@intel.com>
> >---
> > meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-
> >cedartrail/conf/machine/cedartrail.conf
> >index aa2a46a..a5fa0f0 100644
> >--- a/meta-cedartrail/conf/machine/cedartrail.conf
> >+++ b/meta-cedartrail/conf/machine/cedartrail.conf
> >@@ -17,7 +17,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
> >            "
> > PREFERRED_VERSION_linux-yocto ?= "3.0%"
> > PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
> >-PREFERRED_VERSION_mesa-dri ?= "8.04"
> >+PREFERRED_VERSION_mesa-dri ?= "8.0.4"
> > PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
> >
> > SYSLINUX_OPTS = "serial 0 115200"
> >--
> >1.7.10
>
>

--f46d04462fe0494df104cdc18b26
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Both Danny and master.<div><br></div><div>Ross</div><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On 5 November 2012 15:54, Bodke, Kis=
hore K <span dir=3D"ltr">&lt;<a href=3D"mailto:kishore.k.bodke@intel.com" t=
arget=3D"_blank">kishore.k.bodke@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Is this patch for danny?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-Kishore.<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;-----Original Message-----<br>
&gt;From: Ross Burton [mailto:<a href=3D"mailto:ross.burton@intel.com">ross=
.burton@intel.com</a>]<br>
&gt;Sent: Monday, November 05, 2012 4:31 AM<br>
&gt;To: Bodke, Kishore K<br>
&gt;Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
><br>
&gt;Subject: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri versio=
n<br>
&gt;(typo&#39;d)<br>
&gt;<br>
&gt;Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@intel.com"=
>ross.burton@intel.com</a>&gt;<br>
&gt;---<br>
&gt; meta-cedartrail/conf/machine/cedartrail.conf | =C2=A0 =C2=A02 +-<br>
&gt; 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt;diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-<br>
&gt;cedartrail/conf/machine/cedartrail.conf<br>
&gt;index aa2a46a..a5fa0f0 100644<br>
&gt;--- a/meta-cedartrail/conf/machine/cedartrail.conf<br>
&gt;+++ b/meta-cedartrail/conf/machine/cedartrail.conf<br>
&gt;@@ -17,7 +17,7 @@ XSERVER ?=3D &quot;${XSERVER_IA32_BASE} \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt; PREFERRED_VERSION_linux-yocto ?=3D &quot;3.0%&quot;<br>
&gt; PREFERRED_VERSION_xserver-xorg ?=3D &quot;1.9.3&quot;<br>
&gt;-PREFERRED_VERSION_mesa-dri ?=3D &quot;8.04&quot;<br>
&gt;+PREFERRED_VERSION_mesa-dri ?=3D &quot;8.0.4&quot;<br>
&gt; PREFERRED_VERSION_xf86-input-evdev ?=3D &quot;2.6.0&quot;<br>
&gt;<br>
&gt; SYSLINUX_OPTS =3D &quot;serial 0 115200&quot;<br>
&gt;--<br>
&gt;1.7.10<br>
<br>
</div></div></blockquote></div><br></div>

--f46d04462fe0494df104cdc18b26--
