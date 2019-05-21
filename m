Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EC3DE00D5C; Mon, 20 May 2019 23:16:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 526AEE00D52
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 23:16:33 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id a10so14730440ljf.6
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 23:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6F25Xh8v1MxAGIDtBmerIkzuiNutoAhM7JApFXemI6c=;
	b=p61pXL2RxoZ5P1Pide+BVoCRBGEnGHl4F6d1jzGg/tXXVx37GhNtv7K61MLB9yfs7f
	3xvYVVJAafryitc3401x0/ajJSaR27LzamGsyZnX+y5zTgeXc42NSIv10S2U6TPEW5wX
	vq8+kNgLoPZZ7HwqAVjO9sHzjIod5tQUSioyRZdxtOFRHt42dgKQMIljQuNQN/tyq0jx
	lbk0jo5Znx+qKgd9iLmWLZfww56oBvdB4qQH67PnF0PweAdYb1X3BV6fMVZcLg/tnnwj
	WHvB7+6OCPTUCG5FLXqxqD1jw/Ny8DX3xWGZMVbOr7bGepZHhXDLJd/OEx7/6UjOscYf
	g9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6F25Xh8v1MxAGIDtBmerIkzuiNutoAhM7JApFXemI6c=;
	b=ZQcBfyaIRBvqkD1oa3Gzg616h8ogPQuDWszRhteheyqgyZV+GJKYlx4KiGg+g8e9zn
	RxqqBAkHcHxqF8qFiVzXMVOaQjaiK1UFMD02ronOhpI8Qh1gx0WL8VC/XAKRJ4VBn5lH
	pKDaKkJfcDRexV5xEexx2Bx+yuivq1cY+uQRGKtxDNQ4X3ZhEsFzrw5Pbl4PlIheeEr9
	+We2OePoxlXZ2vQnHYn6rhbm1fEC0HngNVo1jrVE2VFrAmehDDMjRzyIA22hxlXOSGsG
	zoX9LP/ECBPCXeh1Rv2wuhqlAdQjgrCs7yMEsMIltKnRtTy8mkC+Y4XMOcB3AY5LJr9F
	bxKA==
X-Gm-Message-State: APjAAAXQmqSqnEOtxa6/g/sYCZ1fXGPShW59+w+NGWn28PxsanSXm0UL
	qFvfIMD+0wIv/uci67NAuOLXZGZ/WfiQ3gdFOB4=
X-Google-Smtp-Source: APXvYqxDbCCQbpcQxErTD6g34U4Qtsgi/DrkP9duVvUelt36z+aePWZWJY0lsxMnjeAGg3xWZs38V6ClTnVTVi5Xla8=
X-Received: by 2002:a2e:86c2:: with SMTP id n2mr7193667ljj.23.1558419392394;
	Mon, 20 May 2019 23:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaDU_dtaZqAhkZV6caizdZ+ebBOcRyJdCDwyP97fpLcYbg@mail.gmail.com>
	<CAMKF1spXJDh_a4BRccT0XNYLKn9pgPCX0jJfTnAWefnTyUtEQg@mail.gmail.com>
	<CAAx3WaBqabr+PdSKS5qq8cT_d=rtHHgMpgdoVhfmrEjAeWfi5Q@mail.gmail.com>
	<CAMKF1sosdCX+D+VgEt8hz=2NhK0D6aHzZTnZ8F-tt2sgiwoaXg@mail.gmail.com>
In-Reply-To: <CAMKF1sosdCX+D+VgEt8hz=2NhK0D6aHzZTnZ8F-tt2sgiwoaXg@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 21 May 2019 08:16:21 +0200
Message-ID: <CAAx3WaD2jV8CB_hPUC1pVqndS-25sEquf6JQ5Stx5RgTvFJfMg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Using a native tool from another recipe
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
X-List-Received-Date: Tue, 21 May 2019 06:16:35 -0000
Content-Type: multipart/alternative; boundary="0000000000004b7b5e05895fca85"

--0000000000004b7b5e05895fca85
Content-Type: text/plain; charset="UTF-8"

I found the problem, I was installing the package in the wrong location, so
it wasn't shown in the output SDK.
Thanks,
Gabriele

Il giorno lun 20 mag 2019 alle ore 23:55 Khem Raj <raj.khem@gmail.com> ha
scritto:

> On Mon, May 13, 2019 at 11:17 PM Gabriele Zampieri
> <gabbla.malist@gmail.com> wrote:
> >
> > Hi Khem,
> >
> > what do you mean with "build bpkg as a native recipe"? I though that the
> DEPENDS = "build2-native" will achieve this task. Thanks to pointing out
> the hosttool option.
>
> yes DEPENDS = "build2-native" should have added the needed tool to build.
>
> >
> > Best regards,
> > Gabriele
> >
> > Il giorno lun 13 mag 2019 alle ore 17:59 Khem Raj <raj.khem@gmail.com>
> ha scritto:
> >>
> >> You need to either build bpkg as a native recipe or install and make it
> available as a hosttool from build machine distribution itself
> >>
> >> On Mon, May 13, 2019 at 6:07 AM Gabriele Zampieri <
> gabbla.malist@gmail.com> wrote:
> >>>
> >>> Hi all,
> >>>
> >>> I need to add a couple of tools to my build system (build2 and odb).
> The second one depends on the first. Following a snippet of the build2
> recipe:
> >>>
> --------------------------------------------------------------------------------------------
> >>> DEPENDS = "openssl-native"
> >>> SRC_URI = "
> https://download.build2.org/${PV}/build2-toolchain-${PV}.tar.gz"
> >>> SRC_URI[sha256sum] =
> "42a254c46b59109b764afade0d50819b3d793a9167f46759fc6aa9d6d8a6ff37"
> >>>
> >>> S = "${WORKDIR}/build2-toolchain-${PV}"
> >>>
> >>> # build.sh located inside the tarball cannot be used to configure,
> compile and
> >>> # install in different steps. This task is misleading, but I didn't
> find any
> >>> # other way to make it works
> >>> do_compile_prepend() {
> >>>     ./build.sh --timeout 600 --sudo false \
> >>>         --make ${MAKE} ${PARALLEL_MAKE} \
> >>>         --trust yes \
> >>>         --install-dir ${prefix} g++
> >>> }
> >>>
> >>> FILES_${PN}_append_class-nativesdk = " ${SDKPATHNATIVE}"
> >>> FILES_${PN} = "${D}${prefix}/*"
> >>>
> >>> BBCLASSEXTEND = "native nativesdk"
> >>>
> --------------------------------------------------------------------------------------------
> >>>
> >>> Then the odb-compiler recipe
> >>>
> >>>
> --------------------------------------------------------------------------------------------
> >>> SECTION = "devtools"
> >>> DEPENDS = "build2-native"
> >>> CONFIG_NAME = "odb-gcc-X"
> >>> do_configure() {
> >>>     cd ${B}
> >>>     bpkg create -d ${CONFIG_NAME} cc    \
> >>>         config.cxx=g++                  \
> >>>         config.cc.coptions=-O3          \
> >>>         config.bin.rpath=/usr/lib       \
> >>>         config.install.root=/usr        \
> >>>         config.install.sudo=false
> >>>
> >>> }
> >>> BBCLASSEXTEND = "native nativesdk"
> >>>
> --------------------------------------------------------------------------------------------
> >>>
> >>> When I try to build odb-compiler, bitbake complete the build2-native
> recipe, but fails on do_configure due to 'bpkg command not found'.
> >>>
> >>> Are my recipes correct?
> >>>
> >>> Thanks,
> >>> Gabriele
> >>>
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000004b7b5e05895fca85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I found the problem, I was installing the package in =
the wrong location, so it wasn&#39;t shown in the output SDK.</div><div>Tha=
nks,</div><div>Gabriele<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 20 mag 2019 alle ore 23:55 K=
hem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt=
; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On=
 Mon, May 13, 2019 at 11:17 PM Gabriele Zampieri<br>
&lt;<a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">gabbla.mal=
ist@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Khem,<br>
&gt;<br>
&gt; what do you mean with &quot;build bpkg as a native recipe&quot;? I tho=
ugh that the DEPENDS =3D &quot;build2-native&quot; will achieve this task. =
Thanks to pointing out the hosttool option.<br>
<br>
yes DEPENDS =3D &quot;build2-native&quot; should have added the needed tool=
 to build.<br>
<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Gabriele<br>
&gt;<br>
&gt; Il giorno lun 13 mag 2019 alle ore 17:59 Khem Raj &lt;<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; ha scrit=
to:<br>
&gt;&gt;<br>
&gt;&gt; You need to either build bpkg as a native recipe or install and ma=
ke it available as a hosttool from build machine distribution itself<br>
&gt;&gt;<br>
&gt;&gt; On Mon, May 13, 2019 at 6:07 AM Gabriele Zampieri &lt;<a href=3D"m=
ailto:gabbla.malist@gmail.com" target=3D"_blank">gabbla.malist@gmail.com</a=
>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi all,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I need to add a couple of tools to my build system (build2 and=
 odb). The second one depends on the first. Following a snippet of the buil=
d2 recipe:<br>
&gt;&gt;&gt; --------------------------------------------------------------=
------------------------------<br>
&gt;&gt;&gt; DEPENDS =3D &quot;openssl-native&quot;<br>
&gt;&gt;&gt; SRC_URI =3D &quot;<a href=3D"https://download.build2.org/$%7BP=
V%7D/build2-toolchain-$%7BPV%7D.tar.gz" rel=3D"noreferrer" target=3D"_blank=
">https://download.build2.org/${PV}/build2-toolchain-${PV}.tar.gz</a>&quot;=
<br>
&gt;&gt;&gt; SRC_URI[sha256sum] =3D &quot;42a254c46b59109b764afade0d50819b3=
d793a9167f46759fc6aa9d6d8a6ff37&quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; S =3D &quot;${WORKDIR}/build2-toolchain-${PV}&quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; # build.sh located inside the tarball cannot be used to config=
ure, compile and<br>
&gt;&gt;&gt; # install in different steps. This task is misleading, but I d=
idn&#39;t find any<br>
&gt;&gt;&gt; # other way to make it works<br>
&gt;&gt;&gt; do_compile_prepend() {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0./build.sh --timeout 600 --sudo false \<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--make ${MAKE} ${PARALLEL_MAK=
E} \<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--trust yes \<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--install-dir ${prefix} g++<b=
r>
&gt;&gt;&gt; }<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; FILES_${PN}_append_class-nativesdk =3D &quot; ${SDKPATHNATIVE}=
&quot;<br>
&gt;&gt;&gt; FILES_${PN} =3D &quot;${D}${prefix}/*&quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
&gt;&gt;&gt; --------------------------------------------------------------=
------------------------------<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Then the odb-compiler recipe<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --------------------------------------------------------------=
------------------------------<br>
&gt;&gt;&gt; SECTION =3D &quot;devtools&quot;<br>
&gt;&gt;&gt; DEPENDS =3D &quot;build2-native&quot;<br>
&gt;&gt;&gt; CONFIG_NAME =3D &quot;odb-gcc-X&quot;<br>
&gt;&gt;&gt; do_configure() {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0cd ${B}<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0bpkg create -d ${CONFIG_NAME} cc=C2=A0 =C2=
=A0 \<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0config.cxx=3Dg++=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0config.cc.coptions=3D-O3=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0config.bin.rpath=3D/usr/lib=
=C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0config.install.root=3D/usr=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0config.install.sudo=3Dfalse<b=
r>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; }<br>
&gt;&gt;&gt; BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
&gt;&gt;&gt; --------------------------------------------------------------=
------------------------------<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; When I try to build odb-compiler, bitbake complete the build2-=
native recipe, but fails on do_configure due to &#39;bpkg command not found=
&#39;.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Are my recipes correct?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt; Gabriele<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
</blockquote></div>

--0000000000004b7b5e05895fca85--
