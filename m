Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EC8EE00BAF; Tue,  5 Feb 2019 17:22:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C28E009AA
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 17:22:48 -0800 (PST)
Received: by mail-qt1-f181.google.com with SMTP id t33so6237542qtt.4
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 17:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Kdm/KNC7KjYZ1tpip/5VOjuouSgRCwP9NMNOeyR0EWI=;
	b=uBpUpHgrldcUYemFUZB8hp2lt+Ewlh8UFb5pFlBK/9sajpQLV+qTqvxgBZlcVqD8Zk
	HXCv3j9fqAjGxtszNGq7oEDpJWKauGeiM3I1a3poQgOexbOKRtw/ZBM+aIvmLAcRo4zQ
	MMC7azMBKa0e2jZlR45tQZqV3LFilk45mDW/ND+S5md7+/oi1h3RUb3Y9Bz/WsT5fO78
	xwDdSmJ6KSqgQgvjv/QZ48Ma9X+3LZphR3Z5zSW2+xbYxf2tSDDIG1CrT0hqANt9PLZ0
	smdsKW9WGFlmWqnZPEqvUIcVHdDO8PNdJ6jH8TMFw18v0sUtHGQgeD9vy+5dlUeWAZCs
	HjCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Kdm/KNC7KjYZ1tpip/5VOjuouSgRCwP9NMNOeyR0EWI=;
	b=HF5NHsq6nFTIZRXIXhYwQLSxTSypFdfvL06O4+ufnSeZnOTDqN3jgs7gpAoIbIsCgU
	G4F35BvNKwEdEDQM4KsZinkZulTOjMBQOupz068SDLfKf6SnvRRvOu1qdUwKThxkVAfw
	NW722TSoZ18seS4W3Hwvknpd1su0FcFCO2zhkeT2RV8JxWMfBJLws5sJDpD8DZnYvsoO
	GKH80oGdYiEsMAW3j9WLkVb0Zq2U/yajHGwfD+6R8iwwfhy+MkU53CH0vkjW43HtWRma
	x4N+YJehigQjQAesiCEZ5xHfCfpOQM+ujWjQxooBI+zPEBhE0dF3v+4vkxWvZ09MFIxA
	oqqQ==
X-Gm-Message-State: AHQUAuaKbKVPAGM3KiHt1tL+7rJrre8SPwkVx1HwjhkF0Maq1Qhn+RFX
	6EsFfWCa2ObEet9Ma5/nMYmgy96TOAp1o7GW5rc=
X-Google-Smtp-Source: AHgI3IZ8oG4MGZpb9FqHzOAx5WTu846MFAwpUz7kRRlmlIFsJnMj/KSBvoe1P5nc44qEZgbWkJ9sLBV1Q7GHySrOjjc=
X-Received: by 2002:aed:3a22:: with SMTP id n31mr5937518qte.29.1549416167777; 
	Tue, 05 Feb 2019 17:22:47 -0800 (PST)
MIME-Version: 1.0
References: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
	<4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
	<CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
In-Reply-To: <CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Feb 2019 17:22:36 -0800
Message-ID: <CAMKF1sq0y_uP6pvoK4fbPG-ty9=z1xiLnaRFO8_Ba=e-WBEwTw@mail.gmail.com>
To: Ken Sloat <ken.sloat@ohmlinxelectronics.com>
Cc: yocto@yoctoproject.org, Nate Drude <nate.drude@ohmlinxelectronics.com>
Subject: Re: Proper Use of KERNEL_MODULE_AUTOLOAD variable
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
X-List-Received-Date: Wed, 06 Feb 2019 01:22:49 -0000
Content-Type: multipart/alternative; boundary="0000000000004a2b1205812f9084"

--0000000000004a2b1205812f9084
Content-Type: text/plain; charset="UTF-8"

On Sat, Feb 2, 2019 at 7:17 PM Ken Sloat <ken.sloat@ohmlinxelectronics.com>
wrote:

> On Sat, Feb 2, 2019 at 10:03 PM Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
> >
> > On 2019-02-02 9:59 p.m., Ken Sloat wrote:
> > > Hello,
> > >
> > > I have an out of tree kernel module which I want autoloaded at startup
> > > on my system. Looking at the Yocto project manual, I see that one way
> > > I can do this is to add the module name to the KERNEL_MODULE_AUTOLOAD
> > > variable within my custom module recipe.
> > >
> > > What I have found is that the module-split class is indeed generating
> > > the "/etc/modules-load.d/mymodule.conf" file, however this file is not
> > > actually being installed. To be more precise it is appearing in the
> > > "package" directory (i.e.
> > > tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) but not
> > > within the "image" directory (nor in my final rootfs).
> > >
> > > Is there something I'm missing in the usage of KERNEL_MODULE_AUTOLOAD?
> > > Is the intention for this variable I add extra steps to manually
> > > install this file in my recipe? FYI I'm using Morty.
> >
> > Can you provide your recipe ? It would make suggestions easier. For
> > example, my first question is: Is the module being installed to your
> > image via IMAGE_INSTALL, or some other similar variable ?
> >
> > Bruce
> >
> > >
> > > Thanks,
> > > Ken Sloat
> > >
> >
>
> Hi Bruce,
>
> Thanks for your quick reply. Yes the module is being installed via
> image_install. Module is installed but generated conf file is not. See
> recipe below:
>
> require mymodule.inc
>
> inherit module kernel-module-split
>
> DEPENDS = "virtual/kernel"
>
> EXTRA_OEMAKE_append = " \
>     KERNELDIR=${STAGING_KERNEL_DIR} \
>     "
>
> MAKE_TARGETS = "module"
>
> MODULE_NAME = "mymodule"
>
> PKG_${PN} = "kernel-module-${MODULE_NAME}"
>
> module_do_install() {
>     install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}
>     install -m 0644 ${MODULE_NAME}.ko \
>
> ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MODULE_NAME}.ko
> }
>
> FILES_${PN} = " \
>     /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \
> "


Your recipe is overwriting common stuff which otherwise should be provided
by module bbclass
I would suggest that you append to the variables instead of over writing
them above and try to reuse
The primitives from bbclass as much as you can for best results

>
>
> KERNEL_MODULE_AUTOLOAD += "${MODULE_NAME}"
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000004a2b1205812f9084
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sat,=
 Feb 2, 2019 at 7:17 PM Ken Sloat &lt;<a href=3D"mailto:ken.sloat@ohmlinxel=
ectronics.com">ken.sloat@ohmlinxelectronics.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">On Sat, Feb 2, 2019 at 10:03 PM Bruce Ashfield<=
br>
&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce=
.ashfield@windriver.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 2019-02-02 9:59 p.m., Ken Sloat wrote:<br>
&gt; &gt; Hello,<br>
&gt; &gt;<br>
&gt; &gt; I have an out of tree kernel module which I want autoloaded at st=
artup<br>
&gt; &gt; on my system. Looking at the Yocto project manual, I see that one=
 way<br>
&gt; &gt; I can do this is to add the module name to the KERNEL_MODULE_AUTO=
LOAD<br>
&gt; &gt; variable within my custom module recipe.<br>
&gt; &gt;<br>
&gt; &gt; What I have found is that the module-split class is indeed genera=
ting<br>
&gt; &gt; the &quot;/etc/modules-load.d/mymodule.conf&quot; file, however t=
his file is not<br>
&gt; &gt; actually being installed. To be more precise it is appearing in t=
he<br>
&gt; &gt; &quot;package&quot; directory (i.e.<br>
&gt; &gt; tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) bu=
t not<br>
&gt; &gt; within the &quot;image&quot; directory (nor in my final rootfs).<=
br>
&gt; &gt;<br>
&gt; &gt; Is there something I&#39;m missing in the usage of KERNEL_MODULE_=
AUTOLOAD?<br>
&gt; &gt; Is the intention for this variable I add extra steps to manually<=
br>
&gt; &gt; install this file in my recipe? FYI I&#39;m using Morty.<br>
&gt;<br>
&gt; Can you provide your recipe ? It would make suggestions easier. For<br=
>
&gt; example, my first question is: Is the module being installed to your<b=
r>
&gt; image via IMAGE_INSTALL, or some other similar variable ?<br>
&gt;<br>
&gt; Bruce<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt; Ken Sloat<br>
&gt; &gt;<br>
&gt;<br>
<br>
Hi Bruce,<br>
<br>
Thanks for your quick reply. Yes the module is being installed via<br>
image_install. Module is installed but generated conf file is not. See<br>
recipe below:<br>
<br>
require mymodule.inc<br>
<br>
inherit module kernel-module-split<br>
<br>
DEPENDS =3D &quot;virtual/kernel&quot;<br>
<br>
EXTRA_OEMAKE_append =3D &quot; \<br>
=C2=A0 =C2=A0 KERNELDIR=3D${STAGING_KERNEL_DIR} \<br>
=C2=A0 =C2=A0 &quot;<br>
<br>
MAKE_TARGETS =3D &quot;module&quot;<br>
<br>
MODULE_NAME =3D &quot;mymodule&quot;<br>
<br>
PKG_${PN} =3D &quot;kernel-module-${MODULE_NAME}&quot;<br>
<br>
module_do_install() {<br>
=C2=A0 =C2=A0 install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE=
_NAME}<br>
=C2=A0 =C2=A0 install -m 0644 ${MODULE_NAME}.ko \<br>
=C2=A0 =C2=A0 ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MO=
DULE_NAME}.ko<br>
}<br>
<br>
FILES_${PN} =3D &quot; \<br>
=C2=A0 =C2=A0 /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \<br>
&quot;</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Your recip=
e is overwriting common stuff which otherwise should be provided by module =
bbclass=C2=A0</div><div dir=3D"auto">I would suggest that you append to the=
 variables instead of over writing them above and try to reuse</div><div di=
r=3D"auto">The primitives from bbclass as much as you can for best results=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><br>
<br>
KERNEL_MODULE_AUTOLOAD +=3D &quot;${MODULE_NAME}&quot;<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000004a2b1205812f9084--
