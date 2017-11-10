Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A809E00D14; Fri, 10 Nov 2017 02:50:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63D39E00C59
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 02:50:45 -0800 (PST)
Received: by mail-wr0-f176.google.com with SMTP id u97so8249221wrc.1
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 02:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MMck8VgnMTLOG5ag3uvZtKjNBxWVFLtwG9ThMgWaPvA=;
	b=g+K84vnOL+KFm4ARWjav1FSJL4l0w1G7Iq/6AUmu14kJroAXWa4s1iWcl9DW1BFQSO
	ao26KdcLcEpKz6goy5H5HT6dKcYfUkvQ5ZJAuRHkAKrcz3Izy0LIo0tu/jxC12eFGq2a
	ieB0V/NgjbpIbhwKLjkq7EQvWdLABAQ+PxtWEKF6Q9LYniMhabadUrDLG3o080m63IQz
	wIp6UqZ2PoiZ0eZPf9Woi7IKUGWUSHUckA/CnnpfuGoVfSzxi2ovAbUxnR0wKpfua2Z8
	ExeZH/VYDmdjXjyxj6YN+SHSekFfPeCVsYaUVmARQBnI2CWAJfh4vnvEkTMEar0f6UIa
	2snw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MMck8VgnMTLOG5ag3uvZtKjNBxWVFLtwG9ThMgWaPvA=;
	b=oe6U3GoQFWkXSKAONeyJN/94YgDfaK2D0g6JyaKiI+Q5rglSnfck1xBamWU7qUgRnp
	0NMFl/ke25TBmiuTlfhDnYi42ZGekUjlyWP4LWJ8ldjtK5cFidyM+whC9oEv97t4Cfc5
	XGjzBfu3hfPMvVNyxi7j8Mhrb/xiA8bHMYFVochrS1TILyBS8i2UYFEYizz803NmWoCV
	Jgzsw/n+QFjzaogTiT9yhmfgmjJ0PUbGZqWUoIBX/Y5Gu7x0/si8kxcDEJlZg0JGEflG
	NCppd98x6LxkA0GW/pHHKCnpkxN0Xf3XsWHCbaDAlS2mAr37XoU+SiCZ+EpqrphU4+tp
	1z2Q==
X-Gm-Message-State: AJaThX5OC4BpIwPmYnKuIpw2cbqV948vmbZMN+euEXt8RZwnswcRxI7T
	F1PNi4nzdY70Tyg/NGM3Rmf2de8VrgqKxEhIyQ4=
X-Google-Smtp-Source: ABhQp+SyqtVxl6IHhV8PTCIDMGKOtXrxzPbwvAVuS64z8StS1WYmL5MwVIictc06D/SVyF6VcUl30fHRld6wnuW02Sg=
X-Received: by 10.223.170.67 with SMTP id q3mr2743564wrd.193.1510311044453;
	Fri, 10 Nov 2017 02:50:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Fri, 10 Nov 2017 02:50:43 -0800 (PST)
In-Reply-To: <CAJ2oMh+0YBDwjFLu+_1fUQ6XyC6=j0jC_yR_n9D1msxRK-qn4g@mail.gmail.com>
References: <CAJ2oMhLQJGBZZW8uCG5C9HJDFU7=LiLB9f28Sv6D1Cm+wFiPWg@mail.gmail.com>
	<CAJTo0LZ4WA8cRS3OcryYQubQTBFPyA=Gkf_e_Er1rV7T4wRdsA@mail.gmail.com>
	<CAJ2oMhKQ=R615oVu2i-_verahERksqhMtxKq0RkjcxCmXnbKkQ@mail.gmail.com>
	<CAJTo0LYW2tz6BryyNBLMpBkQPURB-VTqe_mW+a0+O8E7Uz+nng@mail.gmail.com>
	<CAJ2oMh+0YBDwjFLu+_1fUQ6XyC6=j0jC_yR_n9D1msxRK-qn4g@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 10 Nov 2017 11:50:43 +0100
Message-ID: <CAGAf8LxtPVqPPS2qR-YQdQnPZN-aKdCYTzekafgLok=-4Y0ZyQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 10 Nov 2017 10:50:47 -0000
Content-Type: multipart/alternative; boundary="94eb2c1cc5c84e18f6055d9eb1f1"

--94eb2c1cc5c84e18f6055d9eb1f1
Content-Type: text/plain; charset="UTF-8"

> I've added in local.conf both:
> PACKAGE_CLASSES = "package_rpm"
> IMAGE_FEATURES += "package-management"

I have the following in my poky x86-64 build. in .../poky/build/local.conf:
PACKAGE_CLASSES ?= "package_rpm"
EXTRA_IMAGE_FEATURES ?= "debug-tweaks package-management"

Should I add the line: IMAGE_FEATURES += "package-management"?

(extras: I do have dnf on my qemux86-64 target, since I am using master
branch/master head - target indeed does respond correctly to my which dnf
query (as /usr/bin/dnf).

I don't think so, but I would like to know the logic/reasoning/mechanism
behind these two variables: EXTRA_IMAGE_FEATURES and IMAGE_FEATURES (I hope
other people would like to know to)?!

Thank you,
Zoran

On Thu, Nov 9, 2017 at 3:56 PM, Ran Shalit <ranshalit@gmail.com> wrote:

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
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c1cc5c84e18f6055d9eb1f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; I&#39;ve added in lo=
cal.conf both:</span><br style=3D"font-size:12.8px"><span style=3D"font-siz=
e:12.8px">&gt; PACKAGE_CLASSES =3D &quot;package_rpm&quot;</span><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">&gt; IMAGE_FEATURES =
+=3D &quot;package-management&quot;</span><br style=3D"font-size:12.8px"><d=
iv><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"fo=
nt-size:12.8px">I have the following in my poky x86-64 build. in .../poky/b=
uild/local.conf:</span></div><div><div><span style=3D"font-size:12.8px">PAC=
KAGE_CLASSES ?=3D &quot;package_rpm&quot;</span></div><div><span style=3D"f=
ont-size:12.8px">EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks package-manag=
ement&quot;</span><br></div></div><div><span style=3D"font-size:12.8px"><br=
></span></div><div><span style=3D"font-size:12.8px">Should I add the line:=
=C2=A0</span><span style=3D"font-size:12.8px">IMAGE_FEATURES +=3D &quot;pac=
kage-management&quot;?</span></div><div><span style=3D"font-size:12.8px"><b=
r></span></div><div><span style=3D"font-size:12.8px">(extras: I do have dnf=
 on my qemux86-64 target, since I am using master branch/master head - t</s=
pan><span style=3D"font-size:12.8px">arget indeed does respond correctly to=
 my which dnf query (as /usr/bin/dnf).</span></div><div><span style=3D"font=
-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">I don&=
#39;t think so, but I would like to know the logic/reasoning/mechanism behi=
nd these two variables:=C2=A0</span><span style=3D"font-size:12.8px">EXTRA_=
IMAGE_FEATURES and=C2=A0</span><span style=3D"font-size:12.8px">IMAGE_FEATU=
RES=C2=A0</span><span style=3D"font-size:12.8px">(I hope other people would=
 like to know to)?!</span></div><div><span style=3D"font-size:12.8px"><br><=
/span></div><div><span style=3D"font-size:12.8px">Thank you,</span></div><d=
iv><span style=3D"font-size:12.8px">Zoran</span></div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Thu, Nov 9, 2017 at 3:56 PM, =
Ran Shalit <span dir=3D"ltr">&lt;<a href=3D"mailto:ranshalit@gmail.com" tar=
get=3D"_blank">ranshalit@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">I&#39;ve added in local.conf both:<br>
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
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--94eb2c1cc5c84e18f6055d9eb1f1--
