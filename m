Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0325D4C80A86
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:47:26 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6J6lNwN005952;
	Tue, 19 Jul 2011 01:47:23 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <CAMKF1sq4ho3-P6L0PfDVxpAscccS561LLRUNc64okvsU9R=f9Q@mail.gmail.com>
Date: Tue, 19 Jul 2011 01:47:23 -0500
Message-Id: <4537825C-7D8E-4260-88D2-C5F851FF827A@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
	<CAMKF1sq4ho3-P6L0PfDVxpAscccS561LLRUNc64okvsU9R=f9Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/5] gcc: Add gcc configure for PowerPC e500v2/SPE embedded floating point ABI
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
X-List-Received-Date: Tue, 19 Jul 2011 06:47:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 19, 2011, at 1:04 AM, Khem Raj wrote:

> On Mon, Jul 18, 2011 at 10:21 PM, Kumar Gala =
<galak@kernel.crashing.org> wrote:
>> The e500v2 core utilizes a unique floating point programming model / =
ABI.
>> We utilize TARGET_FPU =3D "spe" to distinguish this choice.  When =
building
>> the toolchain for this ABI we need configure gcc with =
--enable-e500_double.
>>=20
>> Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
>> ---
>>  meta/recipes-devtools/gcc/gcc-4.6.inc    |    2 +-
>>  meta/recipes-devtools/gcc/gcc-common.inc |    2 ++
>>  2 files changed, 3 insertions(+), 1 deletions(-)
>>=20
>> diff --git a/meta/recipes-devtools/gcc/gcc-4.6.inc =
b/meta/recipes-devtools/gcc/gcc-4.6.inc
>> index 56064b5..b719155 100644
>> --- a/meta/recipes-devtools/gcc/gcc-4.6.inc
>> +++ b/meta/recipes-devtools/gcc/gcc-4.6.inc
>> @@ -1,6 +1,6 @@
>>  require gcc-common.inc
>>=20
>> -PR =3D "r8"
>> +PR =3D "r9"
>>=20
>>  # Third digit in PV should be incremented after a minor release
>>  # happens from this branch on gcc e.g. currently its 4.6.0
>> diff --git a/meta/recipes-devtools/gcc/gcc-common.inc =
b/meta/recipes-devtools/gcc/gcc-common.inc
>> index 7bf036c..409ad01 100644
>> --- a/meta/recipes-devtools/gcc/gcc-common.inc
>> +++ b/meta/recipes-devtools/gcc/gcc-common.inc
>> @@ -12,6 +12,8 @@ FILESDIR =3D =
"${@os.path.dirname(bb.data.getVar('FILE',d,1))}/gcc-${PV}"
>>  def get_gcc_fpu_setting(bb, d):
>>     if bb.data.getVar('TARGET_FPU', d, 1) in [ 'soft' ]:
>>         return "--with-float=3Dsoft"
>> +    if bb.data.getVar('TARGET_FPU', d, 1) in [ 'spe' ]:
>> +        return "--enable-e500_double"
>>     return ""
>>=20
>=20
> this will enable e500_double even for e500v1 which IIRC does not have
> DFP support
> have you tried building for e500v1 with this ?

I think you are correct.  Any suggestions on how to distinguish e500v1 =
vs e500v2?  Utilizing BASE_PACKAGE_ARCH has problems w/native builds =
since it seems to get set to x86_64 at some point.

I could do:

TARGET_FPU =3D "ppc-efs"  [Embedded scalar single-precision =
floating-point]
TARGET_FPU =3D "ppc-efd"  [Embedded scalar double-precision =
floating-point]

Than meta/recipes-devtools/gcc/gcc-common.inc:

 def get_gcc_fpu_setting(bb, d):
    if bb.data.getVar('TARGET_FPU', d, 1) in [ 'soft' ]:
        return "--with-float=3Dsoft"
+    if bb.data.getVar('TARGET_FPU', d, 1) in [ 'ppc-efd' ]:
+        return "--enable-e500_double"
    return ""

And meta/conf/distro/include/tclibc-*libc.inc:

TARGET_OS_powerpc =3D =
"linux${@['','-gnuspe'][bb.data.getVar('TARGET_FPU',d,1) in ['ppc-efs', =
'ppc-efd']]}"

thoughts?

- k=

