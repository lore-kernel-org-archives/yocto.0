Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECD5BE00D4D; Thu,  9 Nov 2017 07:01:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2393E00C59
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 07:01:28 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id p138so11597402itp.2
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 07:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MnLAACOJvMG9c8u3sDiQ9Vz8I+a7G3Cbe6eA3AcVLg8=;
	b=KT5f+Fzd2EzsTed/BW8aWlR18nn8sJ2lRpw28OamH5gvk/Z3FjKwU/go4lBn39fzkf
	G0lsHCrkPJjjqSV5WX8yH3Ge8N0zD+AGPXf/VytmAY4LiAUUn9oUrU78Aff/ue2FbOs1
	0AQg2aqqaFVPXkCdAGW6Dj6ndxTZ/p2aQuxp/wLHjklRcr3DbQ8HCfx+XMAqfIOAqUOO
	aqSRqRHfRzXEEiufvGdW0XsspIohx7p0eolBKjU9GzN5Im2YZTlEvYRGBM9bxcxooP+i
	0GjxZZ2Jyc9Yu6jpFmwHWPc1rmlAY4+JH2Rhp7Upusl+HGX/vGodpQxBDm61lN7vLPvB
	h3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MnLAACOJvMG9c8u3sDiQ9Vz8I+a7G3Cbe6eA3AcVLg8=;
	b=MVe8xH4rAfrnaddyNWek76oxwevwZ8+I+VN34N5L3mckc8ggsAT8OwBrnYp6gbcE/b
	YJa6d4pjHT9G3toyLv69R+mSvuxK5YpLNE/SzcPQ0Dgs7WSfjD7NzidzPPrlUZ2WdrbJ
	w2yubPwuZwbrRsDNGXcC64HwHzgIYpU2CWh97GSRgwqRkzaiNdTNYdcR6U00UKnK2zfr
	BVRMq3yr+CihGoh+tgoig2scXyBPZGghUlqk3yWVP5ZL/eqHU9x/tLnZYgRt6bxS28sl
	DJENb1bWPiNCnmgXtjSCPF4LLtDwhMDPHI+uqL/OZ26hQP1+ctzUqfF1CiKdiKcu/iSy
	evrQ==
X-Gm-Message-State: AJaThX59hHUYzXPP0T9CCMbgok47/TCHJBs6uMdTu+fKu8csOX94gsFj
	p7qbdk1UnFYXZAEQC9T65aWVAgIzevedub6Iv8s0Hw==
X-Google-Smtp-Source: AGs4zMb/5E7b05GKajUqKwD8Te1UpaqEekHdKAbcDdOyTQsCfEPo0QRPGBdgS3GkqfCJ6mD4cpP/llbrS+qhV3/A3D8=
X-Received: by 10.36.4.67 with SMTP id 64mr212943itb.94.1510239687890; Thu, 09
	Nov 2017 07:01:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Thu, 9 Nov 2017 07:01:07 -0800 (PST)
In-Reply-To: <CAJ2oMh+0YBDwjFLu+_1fUQ6XyC6=j0jC_yR_n9D1msxRK-qn4g@mail.gmail.com>
References: <CAJ2oMhLQJGBZZW8uCG5C9HJDFU7=LiLB9f28Sv6D1Cm+wFiPWg@mail.gmail.com>
	<CAJTo0LZ4WA8cRS3OcryYQubQTBFPyA=Gkf_e_Er1rV7T4wRdsA@mail.gmail.com>
	<CAJ2oMhKQ=R615oVu2i-_verahERksqhMtxKq0RkjcxCmXnbKkQ@mail.gmail.com>
	<CAJTo0LYW2tz6BryyNBLMpBkQPURB-VTqe_mW+a0+O8E7Uz+nng@mail.gmail.com>
	<CAJ2oMh+0YBDwjFLu+_1fUQ6XyC6=j0jC_yR_n9D1msxRK-qn4g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Nov 2017 15:01:07 +0000
Message-ID: <CAJTo0LZvizhPiiOA5jxsoYPRRDZcoKq601gkk6APHwmCUg0HdQ@mail.gmail.com>
To: Ran Shalit <ranshalit@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: apt-get
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
X-List-Received-Date: Thu, 09 Nov 2017 15:01:30 -0000
Content-Type: multipart/alternative; boundary="001a1140ad4e1f8a56055d8e1485"

--001a1140ad4e1f8a56055d8e1485
Content-Type: text/plain; charset="UTF-8"

What release?  Until recently we used smart not yum.

Ross

On 9 November 2017 at 14:56, Ran Shalit <ranshalit@gmail.com> wrote:

> I've added in local.conf both:
> PACKAGE_CLASSES = "package_rpm"
> IMAGE_FEATURES += "package-management"
>
> Yet, I don't have yum command, only rpm command.
>
> Regards,
> Ran
>
> On Thu, Nov 9, 2017 at 1:25 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> > (adding yocto@ back to CC)
> >
> > I don't know where you saw that but that is very wrong.
> >
> > Set PACKAGE_CLASSES to the package manager that you want to use.  If you
> > want to use opkg, then PACKAGE_CLASSES should be package_ipk (historical
> > naming).  If you want opkg to be present in the images ensure
> IMAGE_FEATURES
> > contains package-management.
> >
> > PACKAGE_CLASSES controls what package formats are generated, and multiple
> > are supported for flexibility and testing purposes.  For real world use
> > there's no need to have more than one.  The first entry is the package
> type
> > that is actually used in the rootfs generation.
> >
> > package-management needs to be in IMAGE_FEATURES to both get the tools
> > installed (opkg in your case, apt-get for dpkg, yum for rpm) and to keep
> the
> > package management database on the disk.  By removing package-management
> > from IMAGE_FEATURES all traces of the package manager will be removed
> from
> > the rootfs, which is useful if you don't want to support on-target use of
> > the package manager.
> >
> > Ross
> >
> > On 9 November 2017 at 06:45, Ran Shalit <ranshalit@gmail.com> wrote:
> >>
> >> Hi,
> >>
> >> We also consider using opkg.
> >>
> >> Now, I have some confusion as to how to install opkg.
> >> I see in some documentation that it should be installed as following:
> >>
> >> PACKAGE_CLASSES ?= "package_rpm package_ipk"
> >> IMAGE_INSTALL_append = " opkg "
> >>
> >> Does it mean there are 2 package managers active ?
> >> How can we know which of them is active ?
> >>
> >>
> >> If "?=" means that it shall be defined only if not defined previously,
> >> so if it is already defined as  package_rpm , it might not install
> >> package_ipk?
> >> Doesn't it mean that "opkg" might be installed without the required
> >> package_ipk ?
> >>
> >> Thank you,
> >> Ran
> >>
> >> On Wed, Nov 8, 2017 at 9:26 PM, Burton, Ross <ross.burton@intel.com>
> >> wrote:
> >> > Set PACKAGE_CLASSES to package_deb, and then ensure IMAGE_FEATURES
> >> > includes
> >> > package-management.
> >> >
> >> > Ross
> >> >
> >> > On 8 November 2017 at 19:16, Ran Shalit <ranshalit@gmail.com> wrote:
> >> >>
> >> >> Hello,
> >> >>
> >> >> Is there a way to add "apt-get" command (and package manager) in
> yocto
> >> >> ?
> >> >>
> >> >> Thank you,
> >> >> Ran
> >> >> --
> >> >> _______________________________________________
> >> >> yocto mailing list
> >> >> yocto@yoctoproject.org
> >> >> https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >> >
> >
> >
>

--001a1140ad4e1f8a56055d8e1485
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What release?=C2=A0 Until recently we used smart not yum.<=
div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">On 9 November 2017 at 14:56, Ran Shalit <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:ranshalit@gmail.com" target=3D"_blank">ranshalit@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;ve add=
ed in local.conf both:<br>
PACKAGE_CLASSES =3D &quot;package_rpm&quot;<br>
IMAGE_FEATURES +=3D &quot;package-management&quot;<br>
<br>
Yet, I don&#39;t have yum command, only rpm command.<br>
<br>
Regards,<br>
Ran<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Thu, Nov 9, 2017 at 1:25 PM, Burton, Ross &lt;<a href=3D"mailto:ross.bur=
ton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt; (adding yocto@ back to CC)<br>
&gt;<br>
&gt; I don&#39;t know where you saw that but that is very wrong.<br>
&gt;<br>
&gt; Set PACKAGE_CLASSES to the package manager that you want to use.=C2=A0=
 If you<br>
&gt; want to use opkg, then PACKAGE_CLASSES should be package_ipk (historic=
al<br>
&gt; naming).=C2=A0 If you want opkg to be present in the images ensure IMA=
GE_FEATURES<br>
&gt; contains package-management.<br>
&gt;<br>
&gt; PACKAGE_CLASSES controls what package formats are generated, and multi=
ple<br>
&gt; are supported for flexibility and testing purposes.=C2=A0 For real wor=
ld use<br>
&gt; there&#39;s no need to have more than one.=C2=A0 The first entry is th=
e package type<br>
&gt; that is actually used in the rootfs generation.<br>
&gt;<br>
&gt; package-management needs to be in IMAGE_FEATURES to both get the tools=
<br>
&gt; installed (opkg in your case, apt-get for dpkg, yum for rpm) and to ke=
ep the<br>
&gt; package management database on the disk.=C2=A0 By removing package-man=
agement<br>
&gt; from IMAGE_FEATURES all traces of the package manager will be removed =
from<br>
&gt; the rootfs, which is useful if you don&#39;t want to support on-target=
 use of<br>
&gt; the package manager.<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On 9 November 2017 at 06:45, Ran Shalit &lt;<a href=3D"mailto:ranshali=
t@gmail.com">ranshalit@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; We also consider using opkg.<br>
&gt;&gt;<br>
&gt;&gt; Now, I have some confusion as to how to install opkg.<br>
&gt;&gt; I see in some documentation that it should be installed as followi=
ng:<br>
&gt;&gt;<br>
&gt;&gt; PACKAGE_CLASSES ?=3D &quot;package_rpm package_ipk&quot;<br>
&gt;&gt; IMAGE_INSTALL_append =3D &quot; opkg &quot;<br>
&gt;&gt;<br>
&gt;&gt; Does it mean there are 2 package managers active ?<br>
&gt;&gt; How can we know which of them is active ?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; If &quot;?=3D&quot; means that it shall be defined only if not def=
ined previously,<br>
&gt;&gt; so if it is already defined as=C2=A0 package_rpm , it might not in=
stall<br>
&gt;&gt; package_ipk?<br>
&gt;&gt; Doesn&#39;t it mean that &quot;opkg&quot; might be installed witho=
ut the required<br>
&gt;&gt; package_ipk ?<br>
&gt;&gt;<br>
&gt;&gt; Thank you,<br>
&gt;&gt; Ran<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Nov 8, 2017 at 9:26 PM, Burton, Ross &lt;<a href=3D"mailto=
:ross.burton@intel.com">ross.burton@intel.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; Set PACKAGE_CLASSES to package_deb, and then ensure IMAGE_FEA=
TURES<br>
&gt;&gt; &gt; includes<br>
&gt;&gt; &gt; package-management.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Ross<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On 8 November 2017 at 19:16, Ran Shalit &lt;<a href=3D"mailto=
:ranshalit@gmail.com">ranshalit@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hello,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Is there a way to add &quot;apt-get&quot; command (and pa=
ckage manager) in yocto<br>
&gt;&gt; &gt;&gt; ?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thank you,<br>
&gt;&gt; &gt;&gt; Ran<br>
&gt;&gt; &gt;&gt; --<br>
&gt;&gt; &gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/l=
istinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a1140ad4e1f8a56055d8e1485--
