Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web11.3396.1593159467467045019
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jun 2020 01:17:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=bhAWpJCF;
 spf=pass (domain: blade-group.com, ip: 209.85.210.50, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ot1-f50.google.com with SMTP id 18so7853091otv.6
        for <yocto@lists.yoctoproject.org>; Fri, 26 Jun 2020 01:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/kCP3Ud+M/M/xIPEcjFzKNCTCYFAjW7OoDXeGO9b/nk=;
        b=bhAWpJCFjryKNhNCg/xspY+I8yIw594QryfjzXpXFxTp5AicZU7UJWbHYvsVH1rhgO
         S/fh1kLg7KvDNnLTP2viGterSCTnRxzvGhMfHCwPHby12aManDcGT4MBkocZ2m5sXfEP
         ajrQiG4JJOysUV+b6kw5GAoExIOOP+k/m09S1/1KllNamlaCpSNrIfyzVhLuPYtMZajd
         9daZr8eqBNrD0BlGqHm+nDymXLIsDX7SemXjPa58fAfd7kKHKaUxLOhkX1BEKRbfLS7F
         QLBzf8Ub0xX5LhMqHHwTWA85bdWgYJ32MgeO4s/Er8Mjfe4COR2AOJm6uc+iCEvpctiz
         Ykkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/kCP3Ud+M/M/xIPEcjFzKNCTCYFAjW7OoDXeGO9b/nk=;
        b=scJjtno8hqh8hdbbVAw5cgLmZKdJyZkdrqnzm4XLjNhpEJ3TZfumv8CeYRZmAoQaAD
         9vqHauZw0+cP9PRnCH/lZCCTA0AjY5Ksq+MbvJ277/AT9owpOqgw/7iddwvKI/rD81Xf
         e5qtVywHGetqdfFSyxalbpEAFT+kbKOuKr6f4bdPureX+JmbF6UtY/rixdp0xWP4HEQM
         kGJ7oHdz4ZUbe3/ZreTtyieu6V6b+8s7YcWpPTq8XbaSotg8zR78bKpfIx6PK/cCaWgm
         k0w8KwdyyEOx81++uimb5oR2kkexYCZL6lYXCID/RS4l2O5VnGhKT+Fxz7nd8uBArd88
         NiSg==
X-Gm-Message-State: AOAM5317s+t2yS1wmf8z0qxMKTeFAfFOnEWVd/seuIn2MTDPd4I1zU7e
	tRF98Wn1u3/5USfpFUfIoOjY/uiRWeZH3sCW5UZdNw==
X-Google-Smtp-Source: ABdhPJzrM8eO64F/G09+EKQfWRDT3ebngk4XCp6/uAApVC+Bq/NcfprUHdTOzm2okn37gvsCHlncUoWPqUQSyCDQTlk=
X-Received: by 2002:a4a:c4c1:: with SMTP id g1mr1320098ooq.93.1593159466692;
 Fri, 26 Jun 2020 01:17:46 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv8zMQOdP6GLXxC+9oqPp+h66_ssSt27rihBS83B8+pgmQ@mail.gmail.com>
 <d602fe07-f013-81d1-d7d2-530e78a63a3d@windriver.com>
In-Reply-To: <d602fe07-f013-81d1-d7d2-530e78a63a3d@windriver.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Fri, 26 Jun 2020 10:17:35 +0200
Message-ID: <CA+4=imYpbk2wdp+ojNtJ_0bWMxkJr0AVOR0uw97shMvTaN3MEQ@mail.gmail.com>
Subject: Re: [yocto] llvm native
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Damien LEFEVRE <lefevre.da@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000015435a05a8f85869"

--00000000000015435a05a8f85869
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Did you check that llvm-native is listed in the sysroot-providers folder,
and that tmp/sysroots-components/x86_64/llvm-native/ contains the expected
files ?

Le jeu. 25 juin 2020 =C3=A0 19:17, Randy MacLeod <randy.macleod@windriver.=
com> a
=C3=A9crit :

> On 2020-06-10 9:10 a.m., Damien LEFEVRE wrote:
> > Hi,
> >
> > I'm trying to build a native package which uses llvm. I never used llv=
m
> > before, so time to learn
> >
> > I've added
> > DEPENDS +=3D "llvm-native"
> >
> > to my recipe but I still get errors
> >
> > LLVM_CONFIG:
> > | CMake Error at data/shiboken_helpers.cmake:146 (message):
> > |   Unable to detect CLANG location by checking LLVM_INSTALL_DIR,
> > |   CLANG_INSTALL_DIR or running llvm-config.
> > | Call Stack (most recent call first):
> > |   CMakeLists.txt:37 (setup_clang)
> >
> > I looked at the llvm_git.bb <http://llvm_git.bb> file
> > do_install_class-native() {
> > install -D -m 0755 ${B}/bin/llvm-tblgen ${D}${bindir}/llvm-tblgen${PV}
> > install -D -m 0755 ${B}/bin/llvm-config ${D}${bindir}/llvm-config${PV}
> > install -D -m 0755 ${B}/lib/libLLVM-${MAJOR_VERSION}.so
> > ${D}${libdir}/libLLVM-${MAJOR_VERSION}.so
> > }
> >
> > so I would expect to see llvm-config8.0.0 in
> > the recipe-sysroot-native/usr/bin/ inside my package folder but nothin=
g
> > llvm related.
> >
> > What am I missing?
>
> That's odd, I can build:
>    llvm-native-9.0.1
> using just oe-core from about a week ago. I don't have clang installed
> on that builder. Check the git history between your version and master.
> I don't see anything below from a quick look.
>
> Can you try building master?
>
> ../Randy
>
> oe-core.git $ git log --oneline  meta/recipes-devtools/llvm
> 80cc6e60b9 llvm: Remove -fcommon
> 312e9fe3f0 recipes: Use -fcommon explicitly
> 8413dede13 llvm: Upgrade to 9.0.1 release
> 2fa183c59c llvm: fix upstream version check
> c1efb1772c llvm: rv32/rv64 target builds are not supported yet
> 85d9348272 llvm: add missing Upstream-Status tags
> 7f4870132e llvm: Update to 9.0.0
> 487eb18928 llvm: remove -mlongcall from CXXFLAGS for powerpc
> 13f9182e72 llvm: use python 3 during builds
> 3c08b63834 mesa,llvm,meson: Update llvm to 8.0.1 plus define and use
> LLVM version globally
> 5302047be6 llvm: fix link error for powerpc
> 3b4049157a llvm: fix more places where '8.0' version of llvm was hardcod=
ed
> 0e7d761b13 llvm: support older toolchains
> 4405a1793a llvm: update from 8.0.0rc2 to 8.0.0 final release
> d8269db061 llvm: don't inherit perlnative
> 1587475e45 llvm: doesn't actually need pythonnative
> 8e24164606 llvm: Enable RTTI support in preparation for new mesa
> 18f565f3ca llvm: switch to the official git repository
> 96631d53be llvm,mesa: Upgrade to upcoming 8.0.0 release
> 4b1c0c7d55 meta: Fix Deprecated warnings from regexs
> 0053740c01 llvm: Enable AMDGPU backend for native/native-sdk builds too
> 5e6e08512e llvm: Use HOST_ARCH in LLVM_TARGETS_TO_BUILD for builds
> 865eb1c140 llvm: Use YOCTO_ALTERNATE_MULTILIB_NAME environment variable
> in llvm-config
> 7153a17166 llvm: Point llvm-config to one built with llvm-native
> b0783b713e llvm: Update to 6.0.1
>
>
> > Thanks,
> >
> >
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--00000000000015435a05a8f85869
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Did you check that llvm-native is listed in the sysroot-pr=
oviders folder, and that tmp/sysroots-components/x86_64/llvm-native/ contai=
ns the expected files ?<br></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 25 juin 2020 =C3=A0=C2=A019:17, Ran=
dy MacLeod &lt;<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod=
@windriver.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On 2020-06-10 9:10 a.m., Damien LEFEVRE wrote:<b=
r>
&gt; Hi,<br>
&gt; <br>
&gt; I&#39;m trying to build a native package which uses llvm. I never use=
d llvm <br>
&gt; before, so time to learn<br>
&gt; <br>
&gt; I&#39;ve added<br>
&gt; DEPENDS +=3D &quot;llvm-native&quot;<br>
&gt; <br>
&gt; to my recipe but I still get errors<br>
&gt; <br>
&gt; LLVM_CONFIG:<br>
&gt; | CMake Error at data/shiboken_helpers.cmake:146 (message):<br>
&gt; | =C2=A0 Unable to detect CLANG location by checking LLVM_INSTALL_DIR=
,<br>
&gt; | =C2=A0 CLANG_INSTALL_DIR or running llvm-config.<br>
&gt; | Call Stack (most recent call first):<br>
&gt; | =C2=A0 CMakeLists.txt:37 (setup_clang)<br>
&gt; <br>
&gt; I looked at the <a href=3D"http://llvm_git.bb" rel=3D"noreferrer" tar=
get=3D"_blank">llvm_git.bb</a> &lt;<a href=3D"http://llvm_git.bb" rel=3D"no=
referrer" target=3D"_blank">http://llvm_git.bb</a>&gt; file<br>
&gt; do_install_class-native() {<br>
&gt; install -D -m 0755 ${B}/bin/llvm-tblgen ${D}${bindir}/llvm-tblgen${PV=
}<br>
&gt; install -D -m 0755 ${B}/bin/llvm-config ${D}${bindir}/llvm-config${PV=
}<br>
&gt; install -D -m 0755 ${B}/lib/libLLVM-${MAJOR_VERSION}.so <br>
&gt; ${D}${libdir}/libLLVM-${MAJOR_VERSION}.so<br>
&gt; }<br>
&gt; <br>
&gt; so I would expect to see=C2=A0llvm-config8.0.0 in <br>
&gt; the=C2=A0recipe-sysroot-native/usr/bin/ inside my package folder but =
nothing <br>
&gt; llvm related.<br>
&gt; <br>
&gt; What am I missing?<br>
<br>
That&#39;s odd, I can build:<br>
=C2=A0 =C2=A0llvm-native-9.0.1<br>
using just oe-core from about a week ago. I don&#39;t have clang installed=
<br>
on that builder. Check the git history between your version and master.<br=
>
I don&#39;t see anything below from a quick look.<br>
<br>
Can you try building master?<br>
<br>
../Randy<br>
<br>
oe-core.git $ git log --oneline=C2=A0 meta/recipes-devtools/llvm<br>
80cc6e60b9 llvm: Remove -fcommon<br>
312e9fe3f0 recipes: Use -fcommon explicitly<br>
8413dede13 llvm: Upgrade to 9.0.1 release<br>
2fa183c59c llvm: fix upstream version check<br>
c1efb1772c llvm: rv32/rv64 target builds are not supported yet<br>
85d9348272 llvm: add missing Upstream-Status tags<br>
7f4870132e llvm: Update to 9.0.0<br>
487eb18928 llvm: remove -mlongcall from CXXFLAGS for powerpc<br>
13f9182e72 llvm: use python 3 during builds<br>
3c08b63834 mesa,llvm,meson: Update llvm to 8.0.1 plus define and use <br>
LLVM version globally<br>
5302047be6 llvm: fix link error for powerpc<br>
3b4049157a llvm: fix more places where &#39;8.0&#39; version of llvm was h=
ardcoded<br>
0e7d761b13 llvm: support older toolchains<br>
4405a1793a llvm: update from 8.0.0rc2 to 8.0.0 final release<br>
d8269db061 llvm: don&#39;t inherit perlnative<br>
1587475e45 llvm: doesn&#39;t actually need pythonnative<br>
8e24164606 llvm: Enable RTTI support in preparation for new mesa<br>
18f565f3ca llvm: switch to the official git repository<br>
96631d53be llvm,mesa: Upgrade to upcoming 8.0.0 release<br>
4b1c0c7d55 meta: Fix Deprecated warnings from regexs<br>
0053740c01 llvm: Enable AMDGPU backend for native/native-sdk builds too<br=
>
5e6e08512e llvm: Use HOST_ARCH in LLVM_TARGETS_TO_BUILD for builds<br>
865eb1c140 llvm: Use YOCTO_ALTERNATE_MULTILIB_NAME environment variable <b=
r>
in llvm-config<br>
7153a17166 llvm: Point llvm-config to one built with llvm-native<br>
b0783b713e llvm: Update to 6.0.1<br>
<br>
<br>
&gt; Thanks,<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" ta=
rget=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shadow -- <a href=
=3D"http://shadow.tech" target=3D"_blank">http://shadow.tech</a><br><br></=
div>

--00000000000015435a05a8f85869--
