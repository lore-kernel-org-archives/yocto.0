Subject: Question: how to properly enable PIC/PIE (Position Independent Code/Executable) in Yocto Warrior? #yocto #toolchain #linux
To: yocto@lists.yoctoproject.org
From: "Daniel" <daniel.wang@intusurg.com>
X-Originating-Location: Dublin, California, US (73.93.113.143)
X-Originating-Platform: Linux Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 21 Aug 2020 11:50:10 -0700
Message-ID: <8s3b.1598035810236704660.GG5T@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="90srwVMoHTRyNdm1m1Co"

--90srwVMoHTRyNdm1m1Co
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm using Yocto warrior building a system based on NIVIDA tegra TX2i. My t=
ree is using an external toolchain, gcc linaro 7.2.1 (specified through EXT=
ERNAL_TOOLCHAIN variable in local.conf). I'm confused on setting up securit=
y flags.

In ,y local.conf, I have `GCCPIE ?=3D "--enable-default-pie"` enabled, but=
 binaries built are not actually compiled with PIE not sure about PIC. I fo=
und out that this is due to the following condition in security_flags.inc:

```

# Inject pie flags into compiler flags if not configured with gcc itself

# especially useful with external toolchains

SECURITY_PIE_CFLAGS ?=3D "${@'' if '${GCCPIE}' else '-pie -fPIE'}"

```

So I tried to setup GCCPIE as `GCCPIE =3D ""`.=C2=A0 This actually include=
s `-pie -fPIE` in gcc, but then the build failed when building attr_2.4.47.=
 The error messages are pretty long if anyone want to see it I will attach =
in a followup email.

My question is that is there a way to properly add PIE or at least PIC for=
 Yocto Warrior with external toolchain?

Thanks
-Daniel

--90srwVMoHTRyNdm1m1Co
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi all,<br /><br />I'm using Yocto warrior building a system based on NI=
VIDA tegra TX2i. My tree is using an external toolchain, gcc linaro 7.2.1 (=
specified through EXTERNAL_TOOLCHAIN variable in local.conf). I'm confused =
on setting up security flags.<br /><br />In ,y local.conf, I have `GCCPIE ?=
=
=3D "--enable-default-pie"` enabled, but binaries built are not actually c=
ompiled with PIE not sure about PIC. I found out that this is due to the fo=
llowing condition in security_flags.inc:</p>
<p>```</p>
<p># Inject pie flags into compiler flags if not configured with gcc itsel=
f</p>
<p># especially useful with external toolchains</p>
<p>SECURITY_PIE_CFLAGS ?=3D "${@'' if '${GCCPIE}' else '-pie -fPIE'}"</p>
<p>```<br /><br />So I tried to setup GCCPIE as `GCCPIE =3D ""`.&nbsp; Thi=
s actually includes `-pie -fPIE` in gcc, but then the build failed when bui=
lding attr_2.4.47. The error messages are pretty long if anyone want to see=
 it I will attach in a followup email.</p>
<p>My question is that is there a way to properly add PIE or at least PIC =
for Yocto Warrior with external toolchain?<br /><br />Thanks<br />-Daniel</=
p>

--90srwVMoHTRyNdm1m1Co--
