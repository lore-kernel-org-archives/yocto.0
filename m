Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81F8F4C80B87
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 07:29:31 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6FCTQu2023633;
	Fri, 15 Jul 2011 07:29:27 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <4E1FD0C2.6000704@windriver.com>
Date: Fri, 15 Jul 2011 07:29:26 -0500
Message-Id: <B99EC425-9B03-436A-82B1-9A8E13F19963@kernel.crashing.org>
References: <1310705816-31653-1-git-send-email-galak@kernel.crashing.org>
	<4E1FD0C2.6000704@windriver.com>
To: Bruce Ashfield <Bruce.Ashfield@windriver.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] mpc8315e-rdb: Set TARGET_FPU correct
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jul 2011 12:29:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 15, 2011, at 12:31 AM, Bruce Ashfield wrote:

> On 11-07-15 12:56 AM, Kumar Gala wrote:
>> The MPC8315E has a e300c3 core in it with 'classic' or normal PPC
>> floating point.
>>=20
>> 'SPE' floating point is what exists on the e500v2 core.
>=20
> Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>=20
> Been meaning to change this for a while, the good news, is that
> the setting doesn't make any difference at the moment :)
>=20
> Cheers,
>=20
> Bruce

True, I want to use this for configure toolchain properly:

I'm looking at doing the following for when SPE is set:

diff --git a/meta/recipes-devtools/gcc/gcc-common.inc =
b/meta/recipes-devtools/gcc/gcc-common.inc
index 7bf036c..409ad01 100644
--- a/meta/recipes-devtools/gcc/gcc-common.inc
+++ b/meta/recipes-devtools/gcc/gcc-common.inc
@@ -12,6 +12,8 @@ FILESDIR =3D =
"${@os.path.dirname(bb.data.getVar('FILE',d,1))}/gcc-${PV}"
 def get_gcc_fpu_setting(bb, d):
     if bb.data.getVar('TARGET_FPU', d, 1) in [ 'soft' ]:
         return "--with-float=3Dsoft"
+    if bb.data.getVar('TARGET_FPU', d, 1) in [ 'spe' ]:
+        return "--enable-e500_double"
     return ""


