Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7BF44C80A86
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:25:56 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6J6PrEx027839;
	Tue, 19 Jul 2011 01:25:54 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <CAMKF1soqFsRFB0pmPegTSND7JYb-sHBFWdDCOBy+sRn-3BPcCQ@mail.gmail.com>
Date: Tue, 19 Jul 2011 01:25:53 -0500
Message-Id: <A23006D6-4524-4EED-8C10-E8984AF9404C@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-3-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-4-git-send-email-galak@kernel.crashing.org>
	<CAMKF1soqFsRFB0pmPegTSND7JYb-sHBFWdDCOBy+sRn-3BPcCQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/5] tune-ppce500v2: Add a tune file for PowerPC e500v2 cores
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
X-List-Received-Date: Tue, 19 Jul 2011 06:25:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 19, 2011, at 1:01 AM, Khem Raj wrote:

> On Mon, Jul 18, 2011 at 10:21 PM, Kumar Gala =
<galak@kernel.crashing.org> wrote:
>> Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
>> ---
>>  meta/conf/machine/include/tune-ppce500v2.inc |    5 +++++
>>  1 files changed, 5 insertions(+), 0 deletions(-)
>>  create mode 100644 meta/conf/machine/include/tune-ppce500v2.inc
>>=20
>> diff --git a/meta/conf/machine/include/tune-ppce500v2.inc =
b/meta/conf/machine/include/tune-ppce500v2.inc
>> new file mode 100644
>> index 0000000..9901045
>> --- /dev/null
>> +++ b/meta/conf/machine/include/tune-ppce500v2.inc
>> @@ -0,0 +1,5 @@
>> +TARGET_CC_ARCH =3D "-mcpu=3D8548 -mabi=3Dspe -mspe"
>> +BASE_PACKAGE_ARCH =3D "ppce500v2"
>> +FEED_ARCH =3D "ppce500v2"
>> +PACKAGE_EXTRA_ARCHS =3D "powerpc ppce500v2"
>> +TARGET_OS_powerpc =3D "linux-gnuspe"
>=20
> I think TARGET_OS is unwanted here

Thanks, left over from my debug attempts.

- k=

