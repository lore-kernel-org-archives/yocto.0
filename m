Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CEDEC4C811F4
	for <yocto@yoctoproject.org>; Thu, 27 Jan 2011 03:50:53 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1969403iwn.35
	for <yocto@yoctoproject.org>; Thu, 27 Jan 2011 01:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=0ETspfwNVdj+N9QrglxE9Ip+//HhXOdn2TT1adPNRUM=;
	b=FzoG/FLCTqbb3ixaKrcOaaFh/FZ+fNRitQ0Dfyityu6lNcXAbUb6IyXE4DE6ceY6WH
	Ffk7aWhIZA64qIdGM3oh4wmLjJ9N/pvVvTvokmA71vNY9Cb+0FjkXiySG4X4TLJEGfzR
	Ln82kDjWxxHiVQNFOipXuyGfmvo+wTtaXYcko=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=pcSNEYcRHSHMFeJPScsu9D/0t2M+gjw4jIapSnP6FjtNa0gAApBT+Nvf+pq3SqbPjG
	vhVoUx2p6t0GtO7TwLNF9+NOhl2s7JYNR+ja+CByRHCfx7ScyNWV1bi1/ruR0l3Hr2FY
	U+NXzAZJfEnLGufn+eWlAM70gzQRPzY3IsplE=
Received: by 10.42.240.10 with SMTP id ky10mr1826012icb.383.1296121847894;
	Thu, 27 Jan 2011 01:50:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.226.70 with HTTP; Thu, 27 Jan 2011 01:50:27 -0800 (PST)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7593@shsmsx502.ccr.corp.intel.com>
References: <AANLkTikG322KfbJ-ZEKXFbsOLkzLE3Kdp4L-096ODvxd@mail.gmail.com>
	<46CAF87B-6605-4026-88C3-47258B9FDDB7@keylevel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB7593@shsmsx502.ccr.corp.intel.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 27 Jan 2011 07:50:27 -0200
Message-ID: <AANLkTinGWhhCqbjzfS0tuLgw4p9FiAQwaHsAJyj1epEE@mail.gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rootfs image size
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
X-List-Received-Date: Thu, 27 Jan 2011 09:50:54 -0000
Content-Type: multipart/alternative; boundary=20cf3054ab615453de049ad0e28e

--20cf3054ab615453de049ad0e28e
Content-Type: text/plain; charset=ISO-8859-1

Chris,

Take a look at your local.conf and see what is included
on EXTRA_IMAGE_FEATURES.
Removing them you will save lots of space too.

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Wed, Jan 26, 2011 at 9:58 PM, Tian, Kevin <kevin.tian@intel.com> wrote:

> > From: Chris Tapp
> > Sent: Wednesday, January 26, 2011 9:09 PM
> >
> > I know this is probably a basic question, but I'm not having much luck !
> >
> > I've built poky-image-minimal for atom-pc using the 0.9 Poky release.
> >
> > This gives me an ext3 rootfs of over 80MB, which doesn't sound minimal
> > to me ;-)
>
> This is a known issue in 0.9. the switch from ipk to rpm leaves some
> temporary files
> in the final ext3 rootfs, which results the large size.
>
> >
> > Can I reduce the size of the image, or is it expected to be this size?
> >
> > I've tried changing
> >
> > IMAGE_ROOTFS_SIZE_ext3 = "500000"
>
> This configuration option only works when it exceeds the size of generated
> rootfs,
> or else it will be changed implicitly to the actual size plus some extra
> buffer
>
> >
> >   in atom-pc.conf to another value, but this didn't make any
> > difference to the image that gets created (by re-running bitbake poky-
> > image-minimal after making the above change).
> >
> > I've also tried using
> >
> > ROOT_FLASH_SIZE = "64"
> >
> > also without any luck.
> >
> > Any help would be much appreciated !
> >
>
> I'd suggest you to use the master to see whether it works for you.
>
> The alternative is to apply below commit to your 0.9 code:
>
> commit 5e384038cbd5035377d61a1b77ad23ab69e0cac0
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Wed Jan 5 18:56:47 2011 +0000
>
>    rootfs_rpm.bbclass: Remove temporary work files in install directory,
> saving work files in install directory, saving the manifests as logfiles
> into ${T}
>
>    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> diff --git a/meta/classes/rootfs_rpm.bbclass
> b/meta/classes/rootfs_rpm.bbclass
> index 33abe96..2f7d691 100644
> --- a/meta/classes/rootfs_rpm.bbclass
> +++ b/meta/classes/rootfs_rpm.bbclass
> @@ -202,8 +202,11 @@ EOF
>        # remove lock files
>        rm -f ${IMAGE_ROOTFS}${rpmlibdir}/__db.*
>
> -       # remove resolver files and manifests
> -       rm -f ${IMAGE_ROOTFS}/install/install.manifest
> +       # Move manifests into the directory with the logs
> +       mv ${IMAGE_ROOTFS}/install/*.manifest ${T}/
> +
> +       # Remove all remaining resolver files
> +       rm -f ${IMAGE_ROOTFS}/install
>
>        log_check rootfs
>
> Thanks
> Kevin
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--20cf3054ab615453de049ad0e28e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Chris,</div><div><br></div><div>Take a look at your local.conf and see=
 what is included on=A0EXTRA_IMAGE_FEATURES.</div><div>Removing them you wi=
ll save lots of space too.</div><div><br clear=3D"all"><div>Regards,</div><=
div>

<br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<b=
r>
<br><br><div class=3D"gmail_quote">On Wed, Jan 26, 2011 at 9:58 PM, Tian, K=
evin <span dir=3D"ltr">&lt;<a href=3D"mailto:kevin.tian@intel.com">kevin.ti=
an@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">

&gt; From: Chris Tapp<br>
&gt; Sent: Wednesday, January 26, 2011 9:09 PM<br>
<div class=3D"im">&gt;<br>
&gt; I know this is probably a basic question, but I&#39;m not having much =
luck !<br>
&gt;<br>
&gt; I&#39;ve built poky-image-minimal for atom-pc using the 0.9 Poky relea=
se.<br>
&gt;<br>
&gt; This gives me an ext3 rootfs of over 80MB, which doesn&#39;t sound min=
imal<br>
&gt; to me ;-)<br>
<br>
</div>This is a known issue in 0.9. the switch from ipk to rpm leaves some =
temporary files<br>
in the final ext3 rootfs, which results the large size.<br>
<div class=3D"im"><br>
&gt;<br>
&gt; Can I reduce the size of the image, or is it expected to be this size?=
<br>
&gt;<br>
&gt; I&#39;ve tried changing<br>
&gt;<br>
&gt; IMAGE_ROOTFS_SIZE_ext3 =3D &quot;500000&quot;<br>
<br>
</div>This configuration option only works when it exceeds the size of gene=
rated rootfs,<br>
or else it will be changed implicitly to the actual size plus some extra bu=
ffer<br>
<div class=3D"im"><br>
&gt;<br>
&gt; =A0 in atom-pc.conf to another value, but this didn&#39;t make any<br>
&gt; difference to the image that gets created (by re-running bitbake poky-=
<br>
&gt; image-minimal after making the above change).<br>
&gt;<br>
&gt; I&#39;ve also tried using<br>
&gt;<br>
&gt; ROOT_FLASH_SIZE =3D &quot;64&quot;<br>
&gt;<br>
&gt; also without any luck.<br>
&gt;<br>
&gt; Any help would be much appreciated !<br>
&gt;<br>
<br>
</div>I&#39;d suggest you to use the master to see whether it works for you=
.<br>
<br>
The alternative is to apply below commit to your 0.9 code:<br>
<br>
commit 5e384038cbd5035377d61a1b77ad23ab69e0cac0<br>
Author: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation=
.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
Date: =A0 Wed Jan 5 18:56:47 2011 +0000<br>
<br>
 =A0 =A0rootfs_rpm.bbclass: Remove temporary work files in install director=
y, saving work files in install directory, saving the manifests as logfiles=
 into ${T}<br>
<br>
 =A0 =A0Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@=
linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
<br>
diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbcl=
ass<br>
index 33abe96..2f7d691 100644<br>
--- a/meta/classes/rootfs_rpm.bbclass<br>
+++ b/meta/classes/rootfs_rpm.bbclass<br>
@@ -202,8 +202,11 @@ EOF<br>
 =A0 =A0 =A0 =A0# remove lock files<br>
 =A0 =A0 =A0 =A0rm -f ${IMAGE_ROOTFS}${rpmlibdir}/__db.*<br>
<br>
- =A0 =A0 =A0 # remove resolver files and manifests<br>
- =A0 =A0 =A0 rm -f ${IMAGE_ROOTFS}/install/install.manifest<br>
+ =A0 =A0 =A0 # Move manifests into the directory with the logs<br>
+ =A0 =A0 =A0 mv ${IMAGE_ROOTFS}/install/*.manifest ${T}/<br>
+<br>
+ =A0 =A0 =A0 # Remove all remaining resolver files<br>
+ =A0 =A0 =A0 rm -f ${IMAGE_ROOTFS}/install<br>
<br>
 =A0 =A0 =A0 =A0log_check rootfs<br>
<br>
Thanks<br>
<font color=3D"#888888">Kevin<br>
</font><div><div></div><div class=3D"h5">__________________________________=
_____________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--20cf3054ab615453de049ad0e28e--
