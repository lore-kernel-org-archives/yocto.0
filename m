Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id D04094C800A3
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2011 21:53:12 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6L2r0Zm026855;
	Wed, 20 Jul 2011 21:53:02 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <4E1FD0C2.6000704@windriver.com>
Date: Wed, 20 Jul 2011 21:53:00 -0500
Message-Id: <6E49AB59-E015-426B-B3B3-6CE384869532@kernel.crashing.org>
References: <1310705816-31653-1-git-send-email-galak@kernel.crashing.org>
	<4E1FD0C2.6000704@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 21 Jul 2011 02:53:14 -0000
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

ping, this seems to have gotten lost w/regards to getting applied

- k

>> Signed-off-by: Kumar Gala<galak@kernel.crashing.org>
>> ---
>>  meta-yocto/conf/machine/mpc8315e-rdb.conf |    2 +-
>>  1 files changed, 1 insertions(+), 1 deletions(-)
>>=20
>> diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf =
b/meta-yocto/conf/machine/mpc8315e-rdb.conf
>> index 095d113..3f946a0 100644
>> --- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
>> +++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
>> @@ -2,7 +2,7 @@
>>  #@DESCRIPTION: Machine configuration for running
>>=20
>>  TARGET_ARCH =3D "powerpc"
>> -TARGET_FPU =3D "spe"
>> +TARGET_FPU =3D "hard"
>>=20
>>  require conf/machine/include/tune-ppc603e.inc
>>=20


