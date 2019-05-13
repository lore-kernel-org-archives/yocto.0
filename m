Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B245E00D52; Mon, 13 May 2019 06:06:47 -0700 (PDT)
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
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F07F0E00D3F
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 06:06:45 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 188so10868252ljf.9
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 06:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Mq0ypOe+RyLfK3iPJU2FdTcW5wIcQsqTpsoNs5WT72M=;
	b=DV8YVKFhYQMZZaMXs/QMxmneDAlZGvas12yLmpHIhTCgrHEe3VvfTCDLZI9UDO0rJf
	qtINgBwvg3nLx6DKIy8UwwkFwkRjPpiyQ/ePbDsZ8iBadh2X+dHD98cBnP90GpjwcS47
	UGrmjHUArDK8LmigDEKe9ps8xqxSI39MNNwNpI/p297TB2DQgsvNUanAQjvj1JI5ah6A
	2+2SvTcyNt0k0E/tlXrzNzQciiJdlQ0UAsF0cfG8rOHd0BJxSN0gSeoKsn8WbPsF2+a2
	PCWZODxAB0wmFLHlIgzCFyQjdzLh0Bx+JRxapTiQMwGP63YiQehfPjTFb45Dv2sGPSFB
	e34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Mq0ypOe+RyLfK3iPJU2FdTcW5wIcQsqTpsoNs5WT72M=;
	b=FP4duWPlI+VELEsWTDIHj0XacHu8h5k2R2LkLnEeLmqmHvSZ9JFtyjNXY0Q4rfAIwF
	OHmcMLtemDTHp4ImZiylFMWsx63GHJ9uqGM7JZv+ZpzMMXu2T7lMTxFks3D4l2AOjE6y
	+6QyXQbSI5FV7VHsk5nS33an4o5Vvaj3ZhtAx1/y/Dw6xy1CgKr3cm6Cz4GnERV9kUIa
	A35nVx0idQcVjEfvMCCX57YdrmS7Fnf0tZTobJcQ3rPP9Ofu90KRU5yLZe+YCg5/Zjao
	mbDqzLA1Eh8khwMjlRO/VAZwb7usPHwYLS1mCQQsXtkj8U56gfGaAM53nPCCpjc6E+Tx
	D22A==
X-Gm-Message-State: APjAAAXaOGGeysO47s4O1bTHSmSQkNrs3P9fOYqrWqr/9QiZNGLAEqzg
	MI0Ao+BkUIKAQnZQIJfxR3hcjsvy33JlvMmtnaRvMXBJ
X-Google-Smtp-Source: APXvYqziz3WafDZ+xO2oCZrL31hVbZTTmIMZJUC9ngNLVCsvZ3SsobIUQmAxf8qZJDU0jYOjNUDgqAoAP3mpsdPM7Lc=
X-Received: by 2002:a2e:28d:: with SMTP id y13mr13275681lje.177.1557752804640; 
	Mon, 13 May 2019 06:06:44 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 13 May 2019 15:06:33 +0200
Message-ID: <CAAx3WaDU_dtaZqAhkZV6caizdZ+ebBOcRyJdCDwyP97fpLcYbg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Using a native tool from another recipe
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
X-List-Received-Date: Mon, 13 May 2019 13:06:47 -0000
Content-Type: multipart/alternative; boundary="0000000000009190900588c496d1"

--0000000000009190900588c496d1
Content-Type: text/plain; charset="UTF-8"

Hi all,

I need to add a couple of tools to my build system (build2 and odb). The
second one depends on the first. Following a snippet of the build2 recipe:
--------------------------------------------------------------------------------------------
DEPENDS = "openssl-native"
SRC_URI = "https://download.build2.org/${PV}/build2-toolchain-${PV}.tar.gz"
SRC_URI[sha256sum] =
"42a254c46b59109b764afade0d50819b3d793a9167f46759fc6aa9d6d8a6ff37"

S = "${WORKDIR}/build2-toolchain-${PV}"

# build.sh located inside the tarball cannot be used to configure, compile
and
# install in different steps. This task is misleading, but I didn't find any
# other way to make it works
do_compile_prepend() {
    ./build.sh --timeout 600 --sudo false \
        --make ${MAKE} ${PARALLEL_MAKE} \
        --trust yes \
        --install-dir ${prefix} g++
}

FILES_${PN}_append_class-nativesdk = " ${SDKPATHNATIVE}"
FILES_${PN} = "${D}${prefix}/*"

BBCLASSEXTEND = "native nativesdk"
--------------------------------------------------------------------------------------------

Then the odb-compiler recipe

--------------------------------------------------------------------------------------------
SECTION = "devtools"
DEPENDS = "build2-native"
CONFIG_NAME = "odb-gcc-X"
do_configure() {
    cd ${B}
    bpkg create -d ${CONFIG_NAME} cc    \
        config.cxx=g++                  \
        config.cc.coptions=-O3          \
        config.bin.rpath=/usr/lib       \
        config.install.root=/usr        \
        config.install.sudo=false

}
BBCLASSEXTEND = "native nativesdk"
--------------------------------------------------------------------------------------------

When I try to build odb-compiler, bitbake complete the build2-native
recipe, but fails on do_configure due to 'bpkg command not found'.

Are my recipes correct?

Thanks,
Gabriele

--0000000000009190900588c496d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>Hi all,</div><div><br></div><div>I need to add a couple of t=
ools to my build system (build2 and odb). The second one depends on the fir=
st. Following a snippet of the build2 recipe:</div><div>-------------------=
-------------------------------------------------------------------------</=
div><div>DEPENDS =3D &quot;openssl-native&quot;<br>SRC_URI =3D &quot;<a hre=
f=3D"https://download.build2.org/$%7BPV%7D/build2-toolchain-$%7BPV%7D.tar.g=
z" target=3D"_blank">https://download.build2.org/${PV}/build2-toolchain-${P=
V}.tar.gz</a>&quot;<br>SRC_URI[sha256sum] =3D &quot;42a254c46b59109b764afad=
e0d50819b3d793a9167f46759fc6aa9d6d8a6ff37&quot;<br></div><div><br>S =3D &qu=
ot;${WORKDIR}/build2-toolchain-${PV}&quot;<br><br># build.sh located inside=
 the tarball cannot be used to configure, compile and<br># install in diffe=
rent steps. This task is misleading, but I didn&#39;t find any<br># other w=
ay to make it works<br>do_compile_prepend() {<br>=C2=A0=C2=A0=C2=A0 ./build=
.sh --timeout 600 --sudo false \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 --make ${MAKE} ${PARALLEL_MAKE} \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 --trust yes \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --ins=
tall-dir ${prefix} g++<br>}<br><br>FILES_${PN}_append_class-nativesdk =3D &=
quot; ${SDKPATHNATIVE}&quot;<br>FILES_${PN} =3D &quot;${D}${prefix}/*&quot;=
<br><br>BBCLASSEXTEND =3D &quot;native nativesdk&quot;</div><div>----------=
---------------------------------------------------------------------------=
-------</div><div><br></div><div>Then the odb-compiler recipe</div><div><br=
></div><div>---------------------------------------------------------------=
-----------------------------</div><div>SECTION =3D &quot;devtools&quot;<br=
>DEPENDS =3D &quot;build2-native&quot;<br>CONFIG_NAME =3D &quot;odb-gcc-X&q=
uot;<br>do_configure() {<br>=C2=A0=C2=A0=C2=A0 cd ${B}<br>=C2=A0=C2=A0=C2=
=A0 bpkg create -d ${CONFIG_NAME} cc=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.cxx=3Dg++=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.cc.coptions=3D-O3=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 config.bin.rpath=3D/usr/lib=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.inst=
all.root=3D/usr=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.install.sudo=3Dfalse<br><br>}</div><d=
iv>BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>----------------------=
----------------------------------------------------------------------</div=
><div><br></div><div>When I try to build odb-compiler, bitbake complete the=
 build2-native recipe, but fails on do_configure due to &#39;bpkg command n=
ot found&#39;. <br></div><div><br></div><div>Are my recipes correct?</div><=
div><br></div><div>Thanks,</div><div>Gabriele<br></div></div></div></div></=
div></div>

--0000000000009190900588c496d1--
