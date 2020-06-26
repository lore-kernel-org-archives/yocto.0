Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web11.3427.1593159659894026498
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jun 2020 01:21:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=URXBrAhG;
 spf=pass (domain: blade-group.com, ip: 209.85.210.47, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ot1-f47.google.com with SMTP id m2so7830914otr.12
        for <yocto@lists.yoctoproject.org>; Fri, 26 Jun 2020 01:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+1/u34759Ip4RcJUK3//KeJT2YGL4NSAh9U39drX0yc=;
        b=URXBrAhGr41LKHv8P2/WkELFBQspmlJGA13C2f2IC6uLEMTga0A7CweqnDk9FZ10+H
         bC53Q4UxMp521CxnIlyu9HCVrIZ67JkUyHSlWiBY1osLAuwSGeuAlfpdRehp4RISC34J
         uHcw0C5RXeGRo6MsP5b2po3Lknjyk/YHC/dVrtqMXq+MZ4GACNXiarFnz/PWC9tN9K2X
         cV0fRout1/AQWd0RzZwGwCRnpJuyN9fe15gRO9e+/2sp+h0yODZvtXwuwYHYPvqW+iV8
         p2id0VhrVGztGYCqiMUWc594qL2ma0Z0mqB2SPij7neFo/0pYoiaWWXuxcudMk97fmcC
         /kgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+1/u34759Ip4RcJUK3//KeJT2YGL4NSAh9U39drX0yc=;
        b=dJmcgA7VUE+kNLADYZhXyIPEA5lQO5/aGWAKFko3jKSjoy7FOgRIVBsqd1ZKKTgyJ+
         QpJw/sOcarTnEh7vdTnXxzJdPF8L3UgXzc8T8rBWtbMlRbnUQo8O1/+atVb4e/euJEt9
         ns7NqZRJxc8cAnjN7VXCCT8zNrCZiDL8swv8JEmSNjoqsccoB+uL1Dk198JaeLR4BAu5
         AbWQiU3DNhz7srnHfJIGIhJZjshP/riLIJjTPOMQz72ZaGrxFKY56PElt/MPq/3O3lHL
         bYb1i58ceVqwvEeaNYPRJ9CoqXV1KJ4HMmQZmZuMKTiFcepUkOHYkX331LANyktIPCSA
         Sdhg==
X-Gm-Message-State: AOAM533LfHOE6sBj++zMXK9TW84lqtRlV+Kz+jcxNpmmjz/12GN9cLvO
	2PhQDIceFHQ8UVbqx1vEZ2qoCet1vJ8oNMNKHghDdA==
X-Google-Smtp-Source: ABdhPJz+6qOojwsp+Y6FGxzv5qlTr+NY0a4nJSr1Q1dDVga7yMMantoBAUPzMwEzK3Nh6RyGljVQDdZeW/HZU1mAN/4=
X-Received: by 2002:a9d:6b83:: with SMTP id b3mr1460084otq.191.1593159659256;
 Fri, 26 Jun 2020 01:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv8zMQOdP6GLXxC+9oqPp+h66_ssSt27rihBS83B8+pgmQ@mail.gmail.com>
 <d602fe07-f013-81d1-d7d2-530e78a63a3d@windriver.com> <CA+4=imYpbk2wdp+ojNtJ_0bWMxkJr0AVOR0uw97shMvTaN3MEQ@mail.gmail.com>
In-Reply-To: <CA+4=imYpbk2wdp+ojNtJ_0bWMxkJr0AVOR0uw97shMvTaN3MEQ@mail.gmail.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Fri, 26 Jun 2020 10:20:48 +0200
Message-ID: <CA+4=imbWrcPHs9gaKFfMG49ogB=vPw-i7s-uwAKk9TZ51uGdfw@mail.gmail.com>
Subject: Re: [yocto] llvm native
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Damien LEFEVRE <lefevre.da@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008f95f305a8f8639c"

--0000000000008f95f305a8f8639c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh, and beware of master and dunfell with llvm-config, if your target is
multilib.
You may need the patch referenced in
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13937

Le ven. 26 juin 2020 =C3=A0 10:17, Yann Dirson <yann.dirson@blade-group.co=
m> a
=C3=A9crit :

> Did you check that llvm-native is listed in the sysroot-providers folder=
,
> and that tmp/sysroots-components/x86_64/llvm-native/ contains the expect=
ed
> files ?
>
> Le jeu. 25 juin 2020 =C3=A0 19:17, Randy MacLeod <randy.macleod@windrive=
r.com>
> a =C3=A9crit :
>
>> On 2020-06-10 9:10 a.m., Damien LEFEVRE wrote:
>> > Hi,
>> >
>> > I'm trying to build a native package which uses llvm. I never used ll=
vm
>> > before, so time to learn
>> >
>> > I've added
>> > DEPENDS +=3D "llvm-native"
>> >
>> > to my recipe but I still get errors
>> >
>> > LLVM_CONFIG:
>> > | CMake Error at data/shiboken_helpers.cmake:146 (message):
>> > |   Unable to detect CLANG location by checking LLVM_INSTALL_DIR,
>> > |   CLANG_INSTALL_DIR or running llvm-config.
>> > | Call Stack (most recent call first):
>> > |   CMakeLists.txt:37 (setup_clang)
>> >
>> > I looked at the llvm_git.bb <http://llvm_git.bb> file
>> > do_install_class-native() {
>> > install -D -m 0755 ${B}/bin/llvm-tblgen ${D}${bindir}/llvm-tblgen${PV=
}
>> > install -D -m 0755 ${B}/bin/llvm-config ${D}${bindir}/llvm-config${PV=
}
>> > install -D -m 0755 ${B}/lib/libLLVM-${MAJOR_VERSION}.so
>> > ${D}${libdir}/libLLVM-${MAJOR_VERSION}.so
>> > }
>> >
>> > so I would expect to see llvm-config8.0.0 in
>> > the recipe-sysroot-native/usr/bin/ inside my package folder but nothi=
ng
>> > llvm related.
>> >
>> > What am I missing?
>>
>> That's odd, I can build:
>>    llvm-native-9.0.1
>> using just oe-core from about a week ago. I don't have clang installed
>> on that builder. Check the git history between your version and master.
>> I don't see anything below from a quick look.
>>
>> Can you try building master?
>>
>> ../Randy
>>
>> oe-core.git $ git log --oneline  meta/recipes-devtools/llvm
>> 80cc6e60b9 llvm: Remove -fcommon
>> 312e9fe3f0 recipes: Use -fcommon explicitly
>> 8413dede13 llvm: Upgrade to 9.0.1 release
>> 2fa183c59c llvm: fix upstream version check
>> c1efb1772c llvm: rv32/rv64 target builds are not supported yet
>> 85d9348272 llvm: add missing Upstream-Status tags
>> 7f4870132e llvm: Update to 9.0.0
>> 487eb18928 llvm: remove -mlongcall from CXXFLAGS for powerpc
>> 13f9182e72 llvm: use python 3 during builds
>> 3c08b63834 mesa,llvm,meson: Update llvm to 8.0.1 plus define and use
>> LLVM version globally
>> 5302047be6 llvm: fix link error for powerpc
>> 3b4049157a llvm: fix more places where '8.0' version of llvm was hardco=
ded
>> 0e7d761b13 llvm: support older toolchains
>> 4405a1793a llvm: update from 8.0.0rc2 to 8.0.0 final release
>> d8269db061 llvm: don't inherit perlnative
>> 1587475e45 llvm: doesn't actually need pythonnative
>> 8e24164606 llvm: Enable RTTI support in preparation for new mesa
>> 18f565f3ca llvm: switch to the official git repository
>> 96631d53be llvm,mesa: Upgrade to upcoming 8.0.0 release
>> 4b1c0c7d55 meta: Fix Deprecated warnings from regexs
>> 0053740c01 llvm: Enable AMDGPU backend for native/native-sdk builds too
>> 5e6e08512e llvm: Use HOST_ARCH in LLVM_TARGETS_TO_BUILD for builds
>> 865eb1c140 llvm: Use YOCTO_ALTERNATE_MULTILIB_NAME environment variable
>> in llvm-config
>> 7153a17166 llvm: Point llvm-config to one built with llvm-native
>> b0783b713e llvm: Update to 6.0.1
>>
>>
>> > Thanks,
>> >
>> >
>> >
>>
>>
>> --
>> # Randy MacLeod
>> # Wind River Linux
>>=20
>>
>
>
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech
>
>

--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--0000000000008f95f305a8f8639c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Oh, and beware of master and dunfell with llvm-config=
, if your target is multilib.</div><div>You may need the patch referenced i=
n <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13937">htt=
ps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13937</a></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0ven=
. 26 juin 2020 =C3=A0=C2=A010:17, Yann Dirson &lt;<a href=3D"mailto:yann.di=
rson@blade-group.com">yann.dirson@blade-group.com</a>&gt; a =C3=A9crit=C2=
=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Did you check that llvm-native is listed in the sysroot-providers=
 folder, and that tmp/sysroots-components/x86_64/llvm-native/ contains the =
expected files ?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">Le=C2=A0jeu. 25 juin 2020 =C3=A0=C2=A019:17, Randy MacL=
eod &lt;<a href=3D"mailto:randy.macleod@windriver.com" target=3D"_blank">ra=
ndy.macleod@windriver.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">On 2020-06-10 9:10 a.m., Damien LEFEV=
RE wrote:<br>
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
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr">Yann Dirs=
on &lt;<a href=3D"mailto:yann@blade-group.com" target=3D"_blank">yann@blade=
-group.com</a>&gt;<br>Blade / Shadow -- <a href=3D"http://shadow.tech" targ=
et=3D"_blank">http://shadow.tech</a><br><br></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" ta=
rget=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shadow -- <a href=
=3D"http://shadow.tech" target=3D"_blank">http://shadow.tech</a><br><br></=
div>

--0000000000008f95f305a8f8639c--
