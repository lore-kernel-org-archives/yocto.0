Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B48DC5472F
	for <webhook@archiver.kernel.org>; Mon, 26 Aug 2024 18:41:24 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.59525.1724697679615803110
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Aug 2024 11:41:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Yvxbce0q;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2f4f2868710so44420831fa.1
        for <yocto@lists.yoctoproject.org>; Mon, 26 Aug 2024 11:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724697677; x=1725302477; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PkDccbzjO7tzrA4hr0qUxZPvu+RMUI9eUmZPdp+qzRs=;
        b=Yvxbce0qmuWPAOGwcGe7r65cssdX5Guw4VKOwz1k5m9GQmnf65AiUpFtkOoGLyO3sA
         xIAYGUtyBqGBEZeGWoLx1w8iJ9zy0XsrBQrIp669JYideBF/TQFPaLnvsqIieDWW5EDs
         +Z21K9A/cmmNJxOI99Q6IFhPvdd54e0cbLCXqShzoaokQwnBh0yggeoVou+kSu4u2n8y
         TA/MZc4gjo7Y7NwgzqYYrDvKhOXq6IvWgRY2SP/NZ1bRCfl09PTXmm3IjiFVbJqzM5wV
         3O9fwOqfCA4YvO02A3C3H572rjzqJExSLcoLbOnMl156qeryYNlQ1OLyBgzyS+EAwbsw
         FAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724697677; x=1725302477;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PkDccbzjO7tzrA4hr0qUxZPvu+RMUI9eUmZPdp+qzRs=;
        b=U2ojYmAQCQohV+P52wx5XhWu5jvQE8y3pgxGzwzAImCqJ0ta7K5f5qtBYBCCxyaLso
         vXM0zhtn4dvxaUqKAk1/NLt/7Cm5PcoEOqWKOARAz89ePzncDNt4LfJ42Bg1R+tHPSpG
         RmYvVjlpwXdAR6obXkOwzymbM080sIYeYWm6yYqVy3cS8KIqgBW7zeaejimUbgYgVUT9
         I6a17yPdqIw/Z1rtmYVzm8BnPuLl2FF8l8uTh/h+U6hp0pfMMIjaLiMOKHYmf3a2bE9O
         nD4KwKHeLMpu8+4IWPr+OAnY+oiCAKFhcPM3ixYhig3ZXlcRVvrS1XFBbM5oFulwVxKg
         aWKQ==
X-Gm-Message-State: AOJu0YwiQ0N8tt5xSpfTxK39sng6vX+wC2hsFdrPgtLRUluBNpasJjg/
	foFLz2/zVkm/0AuiZIO6xKZ+MktfGtvz7iBhhAgZWQmF+GgL7NfpFChxk5DKAHSVtqXuo9HAMqN
	iTG/eYcRGb8cbjIc6DBHEeSY72/cLfpMjEQ4=
X-Google-Smtp-Source: AGHT+IFJ0Eqanh60+ui1um6VA1QDfOsCgvQ0NLW/opGqXCKG8HbUN065czqflvxqx/nrUrGBf6XeC/mLFpvd5w0o0Y8=
X-Received: by 2002:a05:651c:1993:b0:2f4:f255:4fd2 with SMTP id
 38308e7fff4ca-2f4f493f072mr78845531fa.39.1724697676441; Mon, 26 Aug 2024
 11:41:16 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 26 Aug 2024 20:41:04 +0200
Message-ID: <CAAfyv36ZazuAyWpyaQVFK1TWqj1fd=k69QdkHxMgHQ4e169H3g@mail.gmail.com>
Subject: zerotier-one C++ and rust compilation in one recipe
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000059710606209a7829"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Aug 2024 18:41:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63742

--00000000000059710606209a7829
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using zeroetier-one recipe as base:
https://layers.openembedded.org/layerindex/recipe/210085/ and would like to
upgrade to 1.14 release. In the latest release there is subdirectory
rustybits which compile some rust code.

I'm not sure how to adjust recipe in order to find a rust cross-compiler
etc.
I've tried to steal some parts from cargo bbclass but it make things even
worse ;). Any ideas how to make it work please? Thanks.

Updated recipe:
LICENSE = "ZeroTier_BSL_1.1 & MIT"
LIC_FILES_CHKSUM = "file://COPYING;md5=11bbae9cacaf61dd7fc10035f6f5c68e \
                    file://LICENSE.txt;md5=33322cad2f266673d999241243910f44
\

file://attic/historic/anode/LICENSE.txt;md5=d32239bcb673463ab874e80d47fae504
\

file://debian/copyright;md5=f4a6ffbe72aad9cedd587bcb18904813 \

file://ext/http-parser/LICENSE-MIT;md5=20d989143ee48a92dacde4f06bbcb59a \

file://ext/libnatpmp/LICENSE;md5=63b8bf0fd09f4909d823a94c6e6fc06b \

file://ext/miniupnpc/LICENSE;md5=4a95d5317ee6dac993b7598848c72c1e \
"

# detected but not included license
# file://ext/hiredis-0.14.1/COPYING;md5=d84d659a35c666d23233e54503aaea51
#
file://ext/redis-plus-plus-1.1.1/LICENSE;md5=86d3f3a95c324c9479bd8986968f4327

FILESEXTRAPATHS:prepend := "${THISDIR}/files/:"


BASEDEPENDS:append = " cargo-bin-native rust-bin-cross-aarch64"

SRC_URI = "git://github.com/zerotier/ZeroTierOne;protocol=https;branch=dev"
SRC_URI:append = "
file://0001-systemd-fix-zerotier-hanging-on-shutdown.patch"

# Modify these as desired
PV = "1.14.0+git${SRCPV}"
SRCREV = "91e7ce87f09ac1cfdeaf6ff22c3cedcd93574c86"

S = "${WORKDIR}/git"

# NOTE: spec file indicates the license may be "ZeroTier BSL 1.1"

EXTRA_OEMAKE = " \
                DESTDIR=${D} \
                ZT_DEBUG=1 \
                STRIP=echo \
                "
do_compile[network] = "1"

do_install() {
oe_runmake install
    # install service file
install -d ${D}${systemd_unitdir}/system
install -c -m 0644 ${S}/debian/zerotier-one.service
${D}${systemd_unitdir}/system

}

inherit systemd
SYSTEMD_SERVICE_${PN} = "zerotier-one.service"

# Do not enable by default. zerotier requires manual setup anyway
# Before setting up systemctl enable zerotier-one ; systemctl start
zerotier-one
SYSTEMD_AUTO_ENABLE = "disable"

FILES:${PN}:append = " ${systemd_system_unitdir}/*"

Try with bbappend:
WRAPPER_DIR = "${WORKDIR}/wrappers"

inherit rust_bin-common

do_compile:prepend() {

    mkdir -p "${WRAPPER_DIR}"

    # Yocto provides the C compiler in ${CC} but that includes options
beyond
    # the compiler binary. cargo/rustc expect a single binary, so we put
${CC}
    # in a wrapper script.
    echo "#!/bin/sh" >"${WRAPPER_DIR}/cc-wrapper.sh"
    echo "${CC} \"\$@\"" >>"${WRAPPER_DIR}/cc-wrapper.sh"
    chmod +x "${WRAPPER_DIR}/cc-wrapper.sh"

    echo "#!/bin/sh" >"${WRAPPER_DIR}/cxx-wrapper.sh"
    echo "${CXX} \"\$@\"" >>"${WRAPPER_DIR}/cxx-wrapper.sh"
    chmod +x "${WRAPPER_DIR}/cxx-wrapper.sh"

    echo "#!/bin/sh" >"${WRAPPER_DIR}/cc-native-wrapper.sh"
    echo "${BUILD_CC} \"\$@\"" >>"${WRAPPER_DIR}/cc-native-wrapper.sh"
    chmod +x "${WRAPPER_DIR}/cc-native-wrapper.sh"

    echo "#!/bin/sh" >"${WRAPPER_DIR}/cxx-native-wrapper.sh"
    echo "${BUILD_CXX} \"\$@\"" >>"${WRAPPER_DIR}/cxx-native-wrapper.sh"
    chmod +x "${WRAPPER_DIR}/cxx-native-wrapper.sh"

    echo "#!/bin/sh" >"${WRAPPER_DIR}/linker-wrapper.sh"
    echo "${CC} ${LDFLAGS} \"\$@\"" >>"${WRAPPER_DIR}/linker-wrapper.sh"
    chmod +x "${WRAPPER_DIR}/linker-wrapper.sh"

    echo "#!/bin/sh" >"${WRAPPER_DIR}/linker-native-wrapper.sh"
    echo "${BUILD_CC} ${BUILD_LDFLAGS} \"\$@\""
>>"${WRAPPER_DIR}/linker-native-wrapper.sh"
    chmod +x "${WRAPPER_DIR}/linker-native-wrapper.sh"

    export TARGET_CC="${WRAPPER_DIR}/cc-wrapper.sh"
    export TARGET_CXX="${WRAPPER_DIR}/cxx-wrapper.sh"
    export CC="${WRAPPER_DIR}/cc-native-wrapper.sh"
    export CXX="${WRAPPER_DIR}/cxx-native-wrapper.sh"
    export TARGET_LD="${WRAPPER_DIR}/linker-wrapper.sh"
    export LD="${WRAPPER_DIR}/linker-native-wrapper.sh"
    export PKG_CONFIG_ALLOW_CROSS="1"
    export LDFLAGS=""
    export RUSTFLAGS="${RUSTFLAGS}"
    export SSH_AUTH_SOCK="${SSH_AUTH_SOCK}"

    # This "DO_NOT_USE_THIS" option of cargo is currently the only way to
    # configure a different linker for host and target builds when
RUST_BUILD ==
    # RUST_TARGET.
    export __CARGO_TEST_CHANNEL_OVERRIDE_DO_NOT_USE_THIS="nightly"
    export CARGO_UNSTABLE_TARGET_APPLIES_TO_HOST="true"
    export CARGO_UNSTABLE_HOST_CONFIG="true"
    export CARGO_TARGET_APPLIES_TO_HOST="false"
    export CARGO_TARGET_${@rust_target(d,
'TARGET').replace('-','_').upper()}_LINKER="${WRAPPER_DIR}/linker-wrapper.sh"
    export CARGO_HOST_LINKER="${WRAPPER_DIR}/linker-native-wrapper.sh"
    export CARGO_BUILD_FLAGS="-C rpath"
    export CARGO_PROFILE_RELEASE_DEBUG="true"

    # The CC crate defaults to using CFLAGS when compiling everything. We
can
    # give it custom flags for compiling on the host.
    export HOST_CXXFLAGS=""
    export HOST_CFLAGS=""

    bbnote "which rustc:" `which rustc`
    bbnote "rustc --version" `rustc --version`
    bbnote "which cargo:" `which cargo`
    bbnote "cargo --version" `cargo --version`
    bbnote cargo build ${CARGO_BUILD_FLAGS}
}

BR,

marek






-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--00000000000059710606209a7829
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m using zeroetier-one recipe =
as base:=C2=A0<a href=3D"https://layers.openembedded.org/layerindex/recipe/=
210085/">https://layers.openembedded.org/layerindex/recipe/210085/</a> and =
would like to upgrade to 1.14 release. In the latest release there is subdi=
rectory rustybits which compile some rust code.</div><div><br></div><div>I&=
#39;m not sure how to adjust recipe in order to find a rust cross-compiler =
etc.</div><div>I&#39;ve tried to steal some parts from cargo bbclass but it=
 make things even worse ;). Any ideas how to make it work please? Thanks.</=
div><div><br></div><div>Updated recipe:</div><div>LICENSE =3D &quot;ZeroTie=
r_BSL_1.1 &amp; MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=
=3D11bbae9cacaf61dd7fc10035f6f5c68e \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://LICENSE.txt;md5=3D33322cad2f2666=
73d999241243910f44 \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 file://attic/historic/anode/LICENSE.txt;md5=3Dd32239bc=
b673463ab874e80d47fae504 \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 file://debian/copyright;md5=3Df4a6ffbe72aad9cedd58=
7bcb18904813 \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 file://ext/http-parser/LICENSE-MIT;md5=3D20d989143ee48a92dacd=
e4f06bbcb59a \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 file://ext/libnatpmp/LICENSE;md5=3D63b8bf0fd09f4909d823a94c6e=
6fc06b \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://ext/miniupnpc/LICENSE;md5=3D4a95d5317ee6dac993b7598848c72c1e =
\<br>		&quot;<br><br># detected but not included license<br># file://ext/hi=
redis-0.14.1/COPYING;md5=3Dd84d659a35c666d23233e54503aaea51<br># file://ext=
/redis-plus-plus-1.1.1/LICENSE;md5=3D86d3f3a95c324c9479bd8986968f4327<br><b=
r>FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/files/:&quot;<br><br><br>BA=
SEDEPENDS:append =3D &quot; cargo-bin-native rust-bin-cross-aarch64&quot;<b=
r><br>SRC_URI =3D &quot;git://<a href=3D"http://github.com/zerotier/ZeroTie=
rOne;protocol=3Dhttps;branch=3Ddev">github.com/zerotier/ZeroTierOne;protoco=
l=3Dhttps;branch=3Ddev</a>&quot;<br>SRC_URI:append =3D &quot; file://0001-s=
ystemd-fix-zerotier-hanging-on-shutdown.patch&quot;<br><br># Modify these a=
s desired<br>PV =3D &quot;1.14.0+git${SRCPV}&quot;<br>SRCREV =3D &quot;91e7=
ce87f09ac1cfdeaf6ff22c3cedcd93574c86&quot;<br><br>S =3D &quot;${WORKDIR}/gi=
t&quot;<br><br># NOTE: spec file indicates the license may be &quot;ZeroTie=
r BSL 1.1&quot;<br><br>EXTRA_OEMAKE =3D &quot; \<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DESTDIR=3D${D} \<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ZT_DEBUG=3D1 \<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 STRIP=3Decho \<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>do_compile[network] =3D &quot;=
1&quot;<br><br>do_install() {<br>	oe_runmake install<br>=C2=A0 =C2=A0 	# in=
stall service file<br>	install -d ${D}${systemd_unitdir}/system<br>	install=
 -c -m 0644 ${S}/debian/zerotier-one.service ${D}${systemd_unitdir}/system<=
br><br>}<br><br>inherit systemd<br>SYSTEMD_SERVICE_${PN} =3D &quot;zerotier=
-one.service&quot;<br><br># Do not enable by default. zerotier requires man=
ual setup anyway<br># Before setting up systemctl enable zerotier-one ; sys=
temctl start zerotier-one<br>SYSTEMD_AUTO_ENABLE =3D &quot;disable&quot;<br=
><br>FILES:${PN}:append =3D &quot; ${systemd_system_unitdir}/*&quot;<br></d=
iv><div><br></div><div>Try with bbappend:</div><div>WRAPPER_DIR =3D &quot;$=
{WORKDIR}/wrappers&quot;<br><br>inherit rust_bin-common<br><br>do_compile:p=
repend() {<br><br>=C2=A0 =C2=A0 mkdir -p &quot;${WRAPPER_DIR}&quot;<br><br>=
=C2=A0 =C2=A0 # Yocto provides the C compiler in ${CC} but that includes op=
tions beyond<br>=C2=A0 =C2=A0 # the compiler binary. cargo/rustc expect a s=
ingle binary, so we put ${CC}<br>=C2=A0 =C2=A0 # in a wrapper script.<br>=
=C2=A0 =C2=A0 echo &quot;#!/bin/sh&quot; &gt;&quot;${WRAPPER_DIR}/cc-wrappe=
r.sh&quot;<br>=C2=A0 =C2=A0 echo &quot;${CC} \&quot;\$@\&quot;&quot; &gt;&g=
t;&quot;${WRAPPER_DIR}/cc-wrapper.sh&quot;<br>=C2=A0 =C2=A0 chmod +x &quot;=
${WRAPPER_DIR}/cc-wrapper.sh&quot;<br><br>=C2=A0 =C2=A0 echo &quot;#!/bin/s=
h&quot; &gt;&quot;${WRAPPER_DIR}/cxx-wrapper.sh&quot;<br>=C2=A0 =C2=A0 echo=
 &quot;${CXX} \&quot;\$@\&quot;&quot; &gt;&gt;&quot;${WRAPPER_DIR}/cxx-wrap=
per.sh&quot;<br>=C2=A0 =C2=A0 chmod +x &quot;${WRAPPER_DIR}/cxx-wrapper.sh&=
quot;<br><br>=C2=A0 =C2=A0 echo &quot;#!/bin/sh&quot; &gt;&quot;${WRAPPER_D=
IR}/cc-native-wrapper.sh&quot;<br>=C2=A0 =C2=A0 echo &quot;${BUILD_CC} \&qu=
ot;\$@\&quot;&quot; &gt;&gt;&quot;${WRAPPER_DIR}/cc-native-wrapper.sh&quot;=
<br>=C2=A0 =C2=A0 chmod +x &quot;${WRAPPER_DIR}/cc-native-wrapper.sh&quot;<=
br><br>=C2=A0 =C2=A0 echo &quot;#!/bin/sh&quot; &gt;&quot;${WRAPPER_DIR}/cx=
x-native-wrapper.sh&quot;<br>=C2=A0 =C2=A0 echo &quot;${BUILD_CXX} \&quot;\=
$@\&quot;&quot; &gt;&gt;&quot;${WRAPPER_DIR}/cxx-native-wrapper.sh&quot;<br=
>=C2=A0 =C2=A0 chmod +x &quot;${WRAPPER_DIR}/cxx-native-wrapper.sh&quot;<br=
><br>=C2=A0 =C2=A0 echo &quot;#!/bin/sh&quot; &gt;&quot;${WRAPPER_DIR}/link=
er-wrapper.sh&quot;<br>=C2=A0 =C2=A0 echo &quot;${CC} ${LDFLAGS} \&quot;\$@=
\&quot;&quot; &gt;&gt;&quot;${WRAPPER_DIR}/linker-wrapper.sh&quot;<br>=C2=
=A0 =C2=A0 chmod +x &quot;${WRAPPER_DIR}/linker-wrapper.sh&quot;<br><br>=C2=
=A0 =C2=A0 echo &quot;#!/bin/sh&quot; &gt;&quot;${WRAPPER_DIR}/linker-nativ=
e-wrapper.sh&quot;<br>=C2=A0 =C2=A0 echo &quot;${BUILD_CC} ${BUILD_LDFLAGS}=
 \&quot;\$@\&quot;&quot; &gt;&gt;&quot;${WRAPPER_DIR}/linker-native-wrapper=
.sh&quot;<br>=C2=A0 =C2=A0 chmod +x &quot;${WRAPPER_DIR}/linker-native-wrap=
per.sh&quot;<br><br>=C2=A0 =C2=A0 export TARGET_CC=3D&quot;${WRAPPER_DIR}/c=
c-wrapper.sh&quot;<br>=C2=A0 =C2=A0 export TARGET_CXX=3D&quot;${WRAPPER_DIR=
}/cxx-wrapper.sh&quot;<br>=C2=A0 =C2=A0 export CC=3D&quot;${WRAPPER_DIR}/cc=
-native-wrapper.sh&quot;<br>=C2=A0 =C2=A0 export CXX=3D&quot;${WRAPPER_DIR}=
/cxx-native-wrapper.sh&quot;<br>=C2=A0 =C2=A0 export TARGET_LD=3D&quot;${WR=
APPER_DIR}/linker-wrapper.sh&quot;<br>=C2=A0 =C2=A0 export LD=3D&quot;${WRA=
PPER_DIR}/linker-native-wrapper.sh&quot;<br>=C2=A0 =C2=A0 export PKG_CONFIG=
_ALLOW_CROSS=3D&quot;1&quot;<br>=C2=A0 =C2=A0 export LDFLAGS=3D&quot;&quot;=
<br>=C2=A0 =C2=A0 export RUSTFLAGS=3D&quot;${RUSTFLAGS}&quot;<br>=C2=A0 =C2=
=A0 export SSH_AUTH_SOCK=3D&quot;${SSH_AUTH_SOCK}&quot;<br><br>=C2=A0 =C2=
=A0 # This &quot;DO_NOT_USE_THIS&quot; option of cargo is currently the onl=
y way to<br>=C2=A0 =C2=A0 # configure a different linker for host and targe=
t builds when RUST_BUILD =3D=3D<br>=C2=A0 =C2=A0 # RUST_TARGET.<br>=C2=A0 =
=C2=A0 export __CARGO_TEST_CHANNEL_OVERRIDE_DO_NOT_USE_THIS=3D&quot;nightly=
&quot;<br>=C2=A0 =C2=A0 export CARGO_UNSTABLE_TARGET_APPLIES_TO_HOST=3D&quo=
t;true&quot;<br>=C2=A0 =C2=A0 export CARGO_UNSTABLE_HOST_CONFIG=3D&quot;tru=
e&quot;<br>=C2=A0 =C2=A0 export CARGO_TARGET_APPLIES_TO_HOST=3D&quot;false&=
quot;<br>=C2=A0 =C2=A0 export CARGO_TARGET_${@rust_target(d, &#39;TARGET&#3=
9;).replace(&#39;-&#39;,&#39;_&#39;).upper()}_LINKER=3D&quot;${WRAPPER_DIR}=
/linker-wrapper.sh&quot;<br>=C2=A0 =C2=A0 export CARGO_HOST_LINKER=3D&quot;=
${WRAPPER_DIR}/linker-native-wrapper.sh&quot;<br>=C2=A0 =C2=A0 export CARGO=
_BUILD_FLAGS=3D&quot;-C rpath&quot;<br>=C2=A0 =C2=A0 export CARGO_PROFILE_R=
ELEASE_DEBUG=3D&quot;true&quot;<br><br>=C2=A0 =C2=A0 # The CC crate default=
s to using CFLAGS when compiling everything. We can<br>=C2=A0 =C2=A0 # give=
 it custom flags for compiling on the host.<br>=C2=A0 =C2=A0 export HOST_CX=
XFLAGS=3D&quot;&quot;<br>=C2=A0 =C2=A0 export HOST_CFLAGS=3D&quot;&quot;<br=
><br>=C2=A0 =C2=A0 bbnote &quot;which rustc:&quot; `which rustc`<br>=C2=A0 =
=C2=A0 bbnote &quot;rustc --version&quot; `rustc --version`<br>=C2=A0 =C2=
=A0 bbnote &quot;which cargo:&quot; `which cargo`<br>=C2=A0 =C2=A0 bbnote &=
quot;cargo --version&quot; `cargo --version`<br>=C2=A0 =C2=A0 bbnote cargo =
build ${CARGO_BUILD_FLAGS}<br>}<br></div><div><br></div><div>BR,</div><div>=
<br></div><div>marek</div><div><br></div><div><br></div><div><br></div><div=
><br></div><div><br clear=3D"all"><div><br></div><span class=3D"gmail_signa=
ture_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-=
smartmail=3D"gmail_signature">as simple and primitive as possible<br>------=
-------------------------------------------<br>Marek Belisko - OPEN-NANDRA<=
br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Rep=
ublic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra=
<br>web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-n=
andra.com</a></div></div></div>

--00000000000059710606209a7829--

