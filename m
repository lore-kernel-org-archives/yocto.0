Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EC90E00D12; Mon, 13 May 2019 08:59:35 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89682E00D00
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 08:59:33 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id k24so10364711qtq.7
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 08:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0Vgbg7TKvpK0Dnhqm0zihy392clXj36O04K5wPJL9TU=;
	b=bnGlwee6jDr7DSuPXLaEi5qGvQ37DTDB1bh1IX+55otYHrJIY86+neo/PkSpMiWD0Z
	6x842PoJ9EZS5NQMyQi5U4nRPZfoITIXLVVieLmD6GNQqoeBekvelo8PGfoCo07oAFY+
	VHd8zeCnh+e435Bh9t+9RnEaXEsdgsLVqCp48RvkyKiVibFkFDH+75QrPZqx7LsuQOsi
	p8VGXnlwdxwJZkmNWEiLl/eIWqmLBqQgSzax1mhlIt9GgvjvsxMYQZHIDC6d37GEuITb
	Ub/4n8vVdWgYsk2+MpxgrDJeytYy8BTAyob9uweHZuVMAY3ZVjZ7UDyNYOz4unENKfrT
	sPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0Vgbg7TKvpK0Dnhqm0zihy392clXj36O04K5wPJL9TU=;
	b=i/Njz+v99nUFDXByQmn6gRtzSVkU2SVNYUMisBMVQrPRzAkTUDZY1jP6jPGazk3My+
	Egzp9NHamONxQWVZdPPWXHve01KkzJCoywqRnaHTnM8e2afRSMHelTKr8yjKOWgPT/2Z
	IGy4rYIhhDfEBoqBjjx6m0rsECRAATLMLk3Gocei3OjqC2KusNaRQ/tlRo//6CEgkTpp
	Bw0NB5jagRpM4GwiZ+hZ5kQWlK7BziWHJ09weCOMFp9yXriHclrsyH0WMbzHj8ZpGEB9
	BanCw5qpUiQFW+N+S7eGGgLyPyUUGA8F3Uqrft6STqYTKu9ZKL0pR3JRSyvcQp3g8xDj
	MyVQ==
X-Gm-Message-State: APjAAAWREOU1UnUl6g+acBQbC0Lym+DI6cmc9Fji13Ta3DHULdci2tON
	XEIYMkMt/U+jb1+EtUx5QVbKB2tbC6xHGmthxQE=
X-Google-Smtp-Source: APXvYqxfecZf9vYdhLrmZn9b6uf6jZkoaWkzdyJkzUBRB9MbC2hiZBbb7o4w1qpXk6rFBPkFonQxve0vmBDToARx+iQ=
X-Received: by 2002:a0c:b620:: with SMTP id f32mr23455757qve.228.1557763172691;
	Mon, 13 May 2019 08:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaDU_dtaZqAhkZV6caizdZ+ebBOcRyJdCDwyP97fpLcYbg@mail.gmail.com>
In-Reply-To: <CAAx3WaDU_dtaZqAhkZV6caizdZ+ebBOcRyJdCDwyP97fpLcYbg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 13 May 2019 08:59:20 -0700
Message-ID: <CAMKF1spXJDh_a4BRccT0XNYLKn9pgPCX0jJfTnAWefnTyUtEQg@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
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
X-List-Received-Date: Mon, 13 May 2019 15:59:35 -0000
Content-Type: multipart/alternative; boundary="0000000000008d76af0588c70006"

--0000000000008d76af0588c70006
Content-Type: text/plain; charset="UTF-8"

You need to either build bpkg as a native recipe or install and make it
available as a hosttool from build machine distribution itself

On Mon, May 13, 2019 at 6:07 AM Gabriele Zampieri <gabbla.malist@gmail.com>
wrote:

> Hi all,
>
> I need to add a couple of tools to my build system (build2 and odb). The
> second one depends on the first. Following a snippet of the build2 recipe:
>
> --------------------------------------------------------------------------------------------
> DEPENDS = "openssl-native"
> SRC_URI = "https://download.build2.org/${PV}/build2-toolchain-${PV}.tar.gz
> "
> SRC_URI[sha256sum] =
> "42a254c46b59109b764afade0d50819b3d793a9167f46759fc6aa9d6d8a6ff37"
>
> S = "${WORKDIR}/build2-toolchain-${PV}"
>
> # build.sh located inside the tarball cannot be used to configure, compile
> and
> # install in different steps. This task is misleading, but I didn't find
> any
> # other way to make it works
> do_compile_prepend() {
>     ./build.sh --timeout 600 --sudo false \
>         --make ${MAKE} ${PARALLEL_MAKE} \
>         --trust yes \
>         --install-dir ${prefix} g++
> }
>
> FILES_${PN}_append_class-nativesdk = " ${SDKPATHNATIVE}"
> FILES_${PN} = "${D}${prefix}/*"
>
> BBCLASSEXTEND = "native nativesdk"
>
> --------------------------------------------------------------------------------------------
>
> Then the odb-compiler recipe
>
>
> --------------------------------------------------------------------------------------------
> SECTION = "devtools"
> DEPENDS = "build2-native"
> CONFIG_NAME = "odb-gcc-X"
> do_configure() {
>     cd ${B}
>     bpkg create -d ${CONFIG_NAME} cc    \
>         config.cxx=g++                  \
>         config.cc.coptions=-O3          \
>         config.bin.rpath=/usr/lib       \
>         config.install.root=/usr        \
>         config.install.sudo=false
>
> }
> BBCLASSEXTEND = "native nativesdk"
>
> --------------------------------------------------------------------------------------------
>
> When I try to build odb-compiler, bitbake complete the build2-native
> recipe, but fails on do_configure due to 'bpkg command not found'.
>
> Are my recipes correct?
>
> Thanks,
> Gabriele
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000008d76af0588c70006
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">You need to either build bpkg as a native recipe or =
install and make it available as a hosttool from build machine distribution=
 itself=C2=A0</div></div><div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon, May 13, 2019 at 6:07 AM Gabriele Zampieri &=
lt;<a href=3D"mailto:gabbla.malist@gmail.com">gabbla.malist@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</d=
iv><div><br></div><div>I need to add a couple of tools to my build system (=
build2 and odb). The second one depends on the first. Following a snippet o=
f the build2 recipe:</div><div>--------------------------------------------=
------------------------------------------------</div><div>DEPENDS =3D &quo=
t;openssl-native&quot;<br>SRC_URI =3D &quot;<a href=3D"https://download.bui=
ld2.org/$%7BPV%7D/build2-toolchain-$%7BPV%7D.tar.gz" target=3D"_blank">http=
s://download.build2.org/${PV}/build2-toolchain-${PV}.tar.gz</a>&quot;<br>SR=
C_URI[sha256sum] =3D &quot;42a254c46b59109b764afade0d50819b3d793a9167f46759=
fc6aa9d6d8a6ff37&quot;<br></div><div><br>S =3D &quot;${WORKDIR}/build2-tool=
chain-${PV}&quot;<br><br># build.sh located inside the tarball cannot be us=
ed to configure, compile and<br># install in different steps. This task is =
misleading, but I didn&#39;t find any<br># other way to make it works<br>do=
_compile_prepend() {<br>=C2=A0=C2=A0=C2=A0 ./build.sh --timeout 600 --sudo =
false \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --make ${MAKE} ${PARA=
LLEL_MAKE} \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --trust yes \<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --install-dir ${prefix} g++<br>=
}<br><br>FILES_${PN}_append_class-nativesdk =3D &quot; ${SDKPATHNATIVE}&quo=
t;<br>FILES_${PN} =3D &quot;${D}${prefix}/*&quot;<br><br>BBCLASSEXTEND =3D =
&quot;native nativesdk&quot;</div><div>------------------------------------=
--------------------------------------------------------</div><div><br></di=
v><div>Then the odb-compiler recipe</div><div><br></div><div>--------------=
---------------------------------------------------------------------------=
---</div><div>SECTION =3D &quot;devtools&quot;<br>DEPENDS =3D &quot;build2-=
native&quot;<br>CONFIG_NAME =3D &quot;odb-gcc-X&quot;<br>do_configure() {<b=
r>=C2=A0=C2=A0=C2=A0 cd ${B}<br>=C2=A0=C2=A0=C2=A0 bpkg create -d ${CONFIG_=
NAME} cc=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
config.cxx=3Dg++=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 config.cc.coptions=3D-O3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 co=
nfig.bin.rpath=3D/usr/lib=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.install.root=3D/usr=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 config.install.sudo=3Dfalse<br><br>}</div><div>BBCLASSEXTEND =3D &quot;=
native nativesdk&quot;<br>-------------------------------------------------=
-------------------------------------------</div><div><br></div><div>When I=
 try to build odb-compiler, bitbake complete the build2-native recipe, but =
fails on do_configure due to &#39;bpkg command not found&#39;. <br></div><d=
iv><br></div><div>Are my recipes correct?</div><div><br></div><div>Thanks,<=
/div><div>Gabriele</div></div></div></div></div></div><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></=
div></div></div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000008d76af0588c70006--
