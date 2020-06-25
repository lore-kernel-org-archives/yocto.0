Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.1092.1593105429346313136
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jun 2020 10:17:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 05PHH2HL026195
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Thu, 25 Jun 2020 10:17:03 -0700 (PDT)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 25 Jun
 2020 10:17:02 -0700
Subject: Re: [yocto] llvm native
To: Damien LEFEVRE <lefevre.da@gmail.com>, <yocto@lists.yoctoproject.org>
References: <CA+FhBv8zMQOdP6GLXxC+9oqPp+h66_ssSt27rihBS83B8+pgmQ@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <d602fe07-f013-81d1-d7d2-530e78a63a3d@windriver.com>
Date: Thu, 25 Jun 2020 13:16:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CA+FhBv8zMQOdP6GLXxC+9oqPp+h66_ssSt27rihBS83B8+pgmQ@mail.gmail.com>
X-Originating-IP: [172.25.44.3]
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.windriver.com id 05PHH2HL026195
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-06-10 9:10 a.m., Damien LEFEVRE wrote:
> Hi,
>=20
> I'm trying to build a native package which uses llvm. I never used llvm=
=20
> before, so time to learn
>=20
> I've added
> DEPENDS +=3D "llvm-native"
>=20
> to my recipe but I still get errors
>=20
> LLVM_CONFIG:
> | CMake Error at data/shiboken_helpers.cmake:146 (message):
> | =C2=A0 Unable to detect CLANG location by checking LLVM_INSTALL_DIR,
> | =C2=A0 CLANG_INSTALL_DIR or running llvm-config.
> | Call Stack (most recent call first):
> | =C2=A0 CMakeLists.txt:37 (setup_clang)
>=20
> I looked at the llvm_git.bb <http://llvm_git.bb> file
> do_install_class-native() {
> install -D -m 0755 ${B}/bin/llvm-tblgen ${D}${bindir}/llvm-tblgen${PV}
> install -D -m 0755 ${B}/bin/llvm-config ${D}${bindir}/llvm-config${PV}
> install -D -m 0755 ${B}/lib/libLLVM-${MAJOR_VERSION}.so=20
> ${D}${libdir}/libLLVM-${MAJOR_VERSION}.so
> }
>=20
> so I would expect to see=C2=A0llvm-config8.0.0 in=20
> the=C2=A0recipe-sysroot-native/usr/bin/ inside my package folder but not=
hing=20
> llvm related.
>=20
> What am I missing?

That's odd, I can build:
   llvm-native-9.0.1
using just oe-core from about a week ago. I don't have clang installed
on that builder. Check the git history between your version and master.
I don't see anything below from a quick look.

Can you try building master?

../Randy

oe-core.git $ git log --oneline  meta/recipes-devtools/llvm
80cc6e60b9 llvm: Remove -fcommon
312e9fe3f0 recipes: Use -fcommon explicitly
8413dede13 llvm: Upgrade to 9.0.1 release
2fa183c59c llvm: fix upstream version check
c1efb1772c llvm: rv32/rv64 target builds are not supported yet
85d9348272 llvm: add missing Upstream-Status tags
7f4870132e llvm: Update to 9.0.0
487eb18928 llvm: remove -mlongcall from CXXFLAGS for powerpc
13f9182e72 llvm: use python 3 during builds
3c08b63834 mesa,llvm,meson: Update llvm to 8.0.1 plus define and use=20
LLVM version globally
5302047be6 llvm: fix link error for powerpc
3b4049157a llvm: fix more places where '8.0' version of llvm was hardcoded
0e7d761b13 llvm: support older toolchains
4405a1793a llvm: update from 8.0.0rc2 to 8.0.0 final release
d8269db061 llvm: don't inherit perlnative
1587475e45 llvm: doesn't actually need pythonnative
8e24164606 llvm: Enable RTTI support in preparation for new mesa
18f565f3ca llvm: switch to the official git repository
96631d53be llvm,mesa: Upgrade to upcoming 8.0.0 release
4b1c0c7d55 meta: Fix Deprecated warnings from regexs
0053740c01 llvm: Enable AMDGPU backend for native/native-sdk builds too
5e6e08512e llvm: Use HOST_ARCH in LLVM_TARGETS_TO_BUILD for builds
865eb1c140 llvm: Use YOCTO_ALTERNATE_MULTILIB_NAME environment variable=20
in llvm-config
7153a17166 llvm: Point llvm-config to one built with llvm-native
b0783b713e llvm: Update to 6.0.1


> Thanks,
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
