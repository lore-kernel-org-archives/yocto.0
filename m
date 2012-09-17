Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44B65E0027F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 09:33:01 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so11861408pbb.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 09:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=L0KNUam28P6E6G74wpTValtg7fqRne3jeNqAARPBjSs=;
	b=cdAHu9JdyUWu9OgAdk3L3Na0//KSf+bsZuEMWipND2nhTYpi6FE/AuGLrxgGXRCOZe
	m5pmEt+qGzsV0YGCXTq8IHx/PQB1ZszA/gg5RCYOM7nDLs5bVlzJxJ9c1hyMAVy478EZ
	Q/xtcjW6n2rFF70fkZH1kePKwpm7X78xE6zko2T9cksQvN2vXN6hj0eRkoQ5sqiTFXR9
	lvpY+Qn1/uMKvn7OLFYsUTMBeeHKCsRQsjOa8t/q9mvz2EkIlbyxtNzX+w+MQHH6KW1G
	49e7pq3BQZrgJEwbKb0pDx23W5CSnVyCmI6fheFxFAFHBZzE0s313ubSASR/BtR9bhGj
	CcKA==
Received: by 10.68.116.228 with SMTP id jz4mr23199671pbb.166.1347899576704;
	Mon, 17 Sep 2012 09:32:56 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.108.162])
	by mx.google.com with ESMTPS id ty1sm7170641pbc.76.2012.09.17.09.32.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 17 Sep 2012 09:32:56 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <2099128.G0xV8XsdZC@helios>
Date: Mon, 17 Sep 2012 20:32:48 +0400
Message-Id: <FE4D5A58-146B-4F28-AF81-7A1B2A25838B@gmail.com>
References: <0937D44A-6DDB-49BD-B8E3-14873C5D8839@gmail.com>
	<CAMKF1sr9zgFJMrhBM_xdVPMM_zhnQCzjxYanub6O7NFG4w1Ohg@mail.gmail.com>
	<5055F9A6.20709@gmail.com> <2099128.G0xV8XsdZC@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1278)
Cc: yocto@yoctoproject.org
Subject: Re: Dependency walk for busybox recipe
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
X-List-Received-Date: Mon, 17 Sep 2012 16:33:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On Sep 16, 2012, at 10:31 PM, Paul Eggleton wrote:

> On Sunday 16 September 2012 20:09:10 Elvis Dowson wrote:
>> On 09/16/2012 07:54 AM, Khem Raj wrote:
>>> On Sat, Sep 15, 2012 at 10:59 AM, Elvis Dowson =
<elvis.dowson@gmail.com>=20
> wrote:
>>>> So I added busybox-1.19.4 recipe back into my poky master branch, =
and the
>>>> resulting size of the busybox-1.19.4 /bin/busybox or /bin/sh =
executable
>>>> is 604.2 kb.>=20
>>> make sure that .config of busybox has not changed even if you have
>>> same version backported
>>=20
>> I've made sure that the defconfig files used in the recipe are
>> identical. The only addition that I notice now, is that the recent
>> rework done to task-core-boot, resulting in it being renamed as
>> packagegroup-core-boot.bb adds the following extra line:
>>=20
>> ${@base_contains("MACHINE_FEATURES", "rtc", "busybox-hwclock", "", =
d)} \
>>=20
>> My virtex5.conf machine features entry does not specify an rtc,
>>=20
>> MACHINE_FEATURES =3D "kernel26 apm ext2 ext3 vfat ethernet keyboard =
screen
>> serial"
>>=20
>> yet the current poky master attempts to pull it in:
>>=20
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing RPROVIDES 'busybox-hwclock' (but
>> =
/tool/yocto/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb=

>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'busybox-hwclock' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['busybox-hwclock']
>> NOTE: Runtime target 'packagegroup-core-boot' is unbuildable, =
removing...
>> Missing or unbuildable dependency chain was: =
['packagegroup-core-boot',
>> 'busybox-hwclock']
>> ERROR: Required build target 'core-image-minimal' has no buildable
>> providers.
>> Missing or unbuildable dependency chain was: ['core-image-minimal',
>> 'packagegroup-core-boot', 'busybox-hwclock']
>>=20
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.
>>=20
>> Is this a bug? Is the rtc being added from somewhere else? Should =
this
>> be happening?
>=20
> It's not a bug, this is meant to happen. This is a result of=20
> MACHINE_FEATURES_BACKFILL, which is intended to ensure that we can =
introduce=20
> new items to MACHINE_FEATURES controlling existing functionality =
without=20
> breaking existing machine configurations by disabling the existing=20
> functionality because the configuration doesn't include it. (In older =
versions=20
> of busybox the hwclock feature was on by default - an hwclock item was =
added=20
> at the MACHINE_FEATURES level to be able to control it).
>=20
> To fix this, just add hwclock to MACHINE_FEATURES_BACKFILL_CONSIDERED =
in your=20
> machine configuration.

My target board doesn't have an rtc, and busybox tries to look for a =
busybox-hwclock.

Hence, I don't need an rtc and would like to prevent the hwclock.sh =
script from being=20
copied onto the target by default.

In my machine configuration file, even if I set
MACHINE_FEATURES_BACKFILL =3D ""
MACHINE_FEATURES_BACKFILL_CONSIDERED =3D ""

it still complains with the same error=20
Nothing RPROVIDES 'busybox-hwclock' (but
=
/tool/yocto/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb=


The only way to suppress that error is to remove the line=20
${@base_contains("MACHINE_FEATURES", "rtc", "busybox-hwclock", "", d)} \

but the hwclock.sh script gets copied onto the rootfilesystem any way =
into /sbin

So, I'm not sure what's being achieved. The MACHINE_FEATURES_BACKFILL
and MACHINE_FEATURES_BACKFILL_CONSIDERED =3D "" has not effect

and the hwclock.sh gets copied to the target in all cases.

Best regards,

Elvis Dowson


