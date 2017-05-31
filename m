Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93831E00B51; Wed, 31 May 2017 09:13:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57B28E00992
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 09:13:14 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id 7so124585667wmo.1
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 09:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=5GG5OxZHVVBJL1g7AsELg4192kKRc1FZmCXbCpp9M1c=;
	b=OG97UUaPMIo/MFkfRJ9ieXSmuTjFupgXPUm5EPPOFXl45nFgaBjtEgnWFjtMODIE4k
	mP9h3Pc+7VKotORUJHa8KzGCweEkiWLM11g3ymWvtMSyG1xXSeivdWkSEF/DYIR5fgz5
	6hct+itEQL7sTTcjjltJOFDYNNhKw3ViUOrYVycfyCFEY+lmKP274s8hgolp9Oiyvzlh
	fJB2/exdpmB5VfCA/Jg9GeLDPhPoDVYxy2KOwIXtW0zGLDdm5YH5qNrXdykM0IDwEn9N
	NI42+0eKEFUTbeaVFxFzAbAjDGJFfJZati04mJPt1URNl3fFPxzeiVfLOGywbMHIL11L
	z59g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=5GG5OxZHVVBJL1g7AsELg4192kKRc1FZmCXbCpp9M1c=;
	b=nEd2l6kU0M+agqT4JQjGSuDccc8GsSSjXPqV1z4BxQsr/UAB6F1iRGBPkZdEpH3DOz
	fVQPcjaah9LqGdkFFVeei8UpwaJD6vatBEkLxLXUiXFSzxnXhCMUe/4LWg8UPPriDeYh
	DXFE7dOaZuHh01bcLK1PM3mGdHz/EeZYdRn03gRnB8T7EA1Lhr0ZUTWNolF+dJzu+Cu+
	CEbiPOC6uqh5p5Az0TCyQzo0FgHW2hZfvm2Aw3xozSifQmlnFh+9t9CoBNhJvctxJo7W
	nm18OcVu5hEzXDLJ3FkHho+v1EfUfK5Z3PNakJ21So93deX2yggIIafBvelBhlAhgIF8
	xIaA==
X-Gm-Message-State: AODbwcDheguhDmDHBVOg863c+2Ae1Z/bCWRL9foPrE2oLaoBFcMldsoE
	6pHzOSmvw03l4O1GIyL0lBDvCrLmtw==
X-Received: by 10.80.143.227 with SMTP id y90mr21719189edy.131.1496247193191; 
	Wed, 31 May 2017 09:13:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAFL6qn7k=4mZ2on8DES+f7Brfr24Hhq3u=x9ZXaVEsYeczAX4g@mail.gmail.com>
In-Reply-To: <CAFL6qn7k=4mZ2on8DES+f7Brfr24Hhq3u=x9ZXaVEsYeczAX4g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 31 May 2017 16:13:01 +0000
Message-ID: <CAMKF1sqKhFgp_y-rADK491gWksQQ19k8K4RWWjEC-+KCBu5FfQ@mail.gmail.com>
To: Pello Heriz <pello.heriz@alumni.mondragon.edu>, yocto@yoctoproject.org
Subject: Re: Problems to build xen-guest-image-minimal
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
X-List-Received-Date: Wed, 31 May 2017 16:13:20 -0000
Content-Type: multipart/alternative; boundary="f403045c9202724ba30550d43235"

--f403045c9202724ba30550d43235
Content-Type: text/plain; charset="UTF-8"

On Wed, May 31, 2017 at 12:22 AM Pello Heriz <
pello.heriz@alumni.mondragon.edu> wrote:

> Hi,
>
> I'm trying to build xen-guest-image-minimal with master branch of Yocto,
> but I keep stuck in the next error:
>
> bitbake xen-guest-image-minimal
> NOTE: /opt/yocto_GE/poky/meta-qt5/recipes-qt/qt5/qtbase_git.bb:
> base_contains is deprecated, please use bb.utils.contains instead.
> NOTE: /opt/yocto_GE/poky/meta-qt5/recipes-qt/qt5/qtbase_git.bb:
> base_contains is deprecated, please use bb.utils.contains instead.
> WARNING:
> /opt/yocto_GE/poky/meta-petalinux/recipes-external/external-xilinx-toolchain/
> libgcc-xilinx.bb: LICENSE_libgcov-dev includes licenses (GPL-3.0) that
> are not listed in LICENSE
> Parsing recipes: 100% |##########################################| Time:
> 0:04:34
> Parsing of 2477 .bb files complete (0 cached, 2477 parsed). 3310 targets,
> 312 skipped, 0 masked, 0 errors.
> WARNING: No recipes available for:
>
> /opt/yocto_GE/poky/meta-petalinux/recipes-devtools/python/python-smartpm_%.bbappend
> WARNING: No bb files matched BBFILE_PATTERN_gpe-layer
> '^/opt/yocto_GE/poky/meta-openembedded/meta-gpe/'
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'rpmresolve-native'. Close matches:
>   meson-native
>   rpm-native
>   perl-native
> ERROR: Required build target 'xen-guest-image-minimal' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['xen-guest-image-minimal',
> 'rpmresolve-native']
>

It's possible that you do not have matching releases of various layers I
would first check that

>
>
>
> The bblayers that I have included to the project are the next ones:
>
> BBLAYERS ?= " \
>     ${MY_META_DIR}/meta \
>     ${MY_META_DIR}/meta-poky \
>     ${MY_META_DIR}/meta-yocto-bsp \
>     ${MY_META_DIR}/meta-openembedded/meta-perl \
>     ${MY_META_DIR}/meta-openembedded/meta-systemd \
>     ${MY_META_DIR}/meta-openembedded/meta-gpe \
>     ${MY_META_DIR}/meta-openembedded/meta-python \
>     ${MY_META_DIR}/meta-openembedded/meta-efl \
>     ${MY_META_DIR}/meta-openembedded/meta-ruby \
>     ${MY_META_DIR}/meta-openembedded/meta-filesystems \
>     ${MY_META_DIR}/meta-openembedded/meta-gnome \
>     ${MY_META_DIR}/meta-openembedded/meta-multimedia \
>     ${MY_META_DIR}/meta-openembedded/meta-networking \
>     ${MY_META_DIR}/meta-openembedded/meta-webserver \
>     ${MY_META_DIR}/meta-openembedded/meta-xfce \
>     ${MY_META_DIR}/meta-openembedded/meta-initramfs \
>     ${MY_META_DIR}/meta-openembedded/meta-oe \
>     ${MY_META_DIR}/meta-qt5 \
>     ${MY_META_DIR}/meta-selftest \
>     ${MY_META_DIR}/meta-skeleton \
>     ${MY_META_DIR}/meta-xilinx \
>     ${MY_META_DIR}/meta-xilinx-tools \
>     ${MY_META_DIR}/meta-petalinux \
>     ${MY_META_DIR}/meta-virtualization \
>     ${MY_META_DIR}/meta-xzd \
>   "
>
> How can I solve this issue?
>
> Regards,
> Pello
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045c9202724ba30550d43235
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div>On Wed, May 31, 2017 at 12:22 AM P=
ello Heriz &lt;<a href=3D"mailto:pello.heriz@alumni.mondragon.edu">pello.he=
riz@alumni.mondragon.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div><div><div>Hi,<br><br></div>I&#39;m trying to build xen-guest-imag=
e-minimal with master branch of Yocto, but I keep stuck in the next error:<=
br><br>bitbake xen-guest-image-minimal<br>NOTE: /opt/yocto_GE/poky/meta-qt5=
/recipes-qt/qt5/<a href=3D"http://qtbase_git.bb" target=3D"_blank">qtbase_g=
it.bb</a>: base_contains is deprecated, please use bb.utils.contains instea=
d.<br>NOTE: /opt/yocto_GE/poky/meta-qt5/recipes-qt/qt5/<a href=3D"http://qt=
base_git.bb" target=3D"_blank">qtbase_git.bb</a>: base_contains is deprecat=
ed, please use bb.utils.contains instead.<br>WARNING: /opt/yocto_GE/poky/me=
ta-petalinux/recipes-external/external-xilinx-toolchain/<a href=3D"http://l=
ibgcc-xilinx.bb" target=3D"_blank">libgcc-xilinx.bb</a>: LICENSE_libgcov-de=
v includes licenses (GPL-3.0) that are not listed in LICENSE<br>Parsing rec=
ipes: 100% |##########################################| Time: 0:04:34<br>Pa=
rsing of 2477 .bb files complete (0 cached, 2477 parsed). 3310 targets, 312=
 skipped, 0 masked, 0 errors.<br>WARNING: No recipes available for:<br>=C2=
=A0 /opt/yocto_GE/poky/meta-petalinux/recipes-devtools/python/python-smartp=
m_%.bbappend<br>WARNING: No bb files matched BBFILE_PATTERN_gpe-layer &#39;=
^/opt/yocto_GE/poky/meta-openembedded/meta-gpe/&#39;<br>NOTE: Resolving any=
 missing task queue dependencies<br>ERROR: Nothing PROVIDES &#39;rpmresolve=
-native&#39;. Close matches:<br>=C2=A0 meson-native<br>=C2=A0 rpm-native<br=
>=C2=A0 perl-native<br>ERROR: Required build target &#39;xen-guest-image-mi=
nimal&#39; has no buildable providers.<br>Missing or unbuildable dependency=
 chain was: [&#39;xen-guest-image-minimal&#39;, &#39;rpmresolve-native&#39;=
]</div></div></blockquote><div><br></div><div>It&#39;s possible that you do=
 not have matching releases of various layers I would first check that</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div><div><br><br><br></div>The bblayers th=
at I have included to the project are the next ones:<br><br>BBLAYERS ?=3D &=
quot; \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta \<br>=C2=A0=C2=A0=C2=A0 $=
{MY_META_DIR}/meta-poky \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-yocto-b=
sp \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-perl \<br>=
=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-systemd \<br>=C2=
=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-gpe \<br>=C2=A0=C2=A0=
=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-python \<br>=C2=A0=C2=A0=C2=A0=
 ${MY_META_DIR}/meta-openembedded/meta-efl \<br>=C2=A0=C2=A0=C2=A0 ${MY_MET=
A_DIR}/meta-openembedded/meta-ruby \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/m=
eta-openembedded/meta-filesystems \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/me=
ta-openembedded/meta-gnome \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-open=
embedded/meta-multimedia \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openem=
bedded/meta-networking \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembe=
dded/meta-webserver \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedde=
d/meta-xfce \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-i=
nitramfs \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-oe \=
<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-qt5 \<br>=C2=A0=C2=A0=C2=A0 ${MY=
_META_DIR}/meta-selftest \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-skelet=
on \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-xilinx \<br>=C2=A0=C2=A0=C2=
=A0 ${MY_META_DIR}/meta-xilinx-tools \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}=
/meta-petalinux \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-virtualization =
\<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-xzd \<br>=C2=A0 &quot;<br><div>=
<br></div><div>How can I solve this issue?<br><br></div><div>Regards,<br></=
div><div>Pello<br></div><div><br><br><br><br></div></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--f403045c9202724ba30550d43235--
