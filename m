Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAEAAE01304
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 00:55:36 -0700 (PDT)
Received: from [109.224.129.17] (port=14604
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SX6Pu-0004dY-Up; Wed, 23 May 2012 08:55:35 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <8363795.7bU7lvsc4a@helios>
Date: Wed, 23 May 2012 08:55:33 +0100
Message-Id: <2B5CA5ED-EFE8-4F53-B592-55BCDA9AA8FD@keylevel.com>
References: <0A3A31D3-D0DF-4C56-8896-1075F801C8BD@keylevel.com>
	<4904220.mFpDsjEpuq@helios>
	<850EEF2D-6A67-4987-B202-A24461737544@keylevel.com>
	<8363795.7bU7lvsc4a@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: Per-machine DEPENDS
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
X-List-Received-Date: Wed, 23 May 2012 07:55:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 17 May 2012, at 22:22, Paul Eggleton wrote:

> On Thursday 17 May 2012 22:07:50 Chris Tapp wrote:
>> On 17 May 2012, at 21:27, Paul Eggleton wrote:
>>> On Thursday 17 May 2012 21:10:10 Chris Tapp wrote:
>>>> Is it possible to have the (R)DEPENDS list vary depending on the =
machine
>>>> being built?
>>>>=20
>>>> For example, I want 'this-bit' to be included for a 'machine-1' =
build,
>>>> but
>>>> not 'machine-2'.
>>>>=20
>>>> Something like:
>>>>=20
>>>> DEPENDS =3D "common-stuff"
>>>>=20
>>>> DEPENDS_machine-1 =3D "${DEPENDS} this-stuff"
>>>=20
>>> Yes, that will work. If the DEPENDS change implies some different
>>> configuration I'd recommend being explicit about it as well e.g. via
>>> EXTRA_OECONF or whatever is appropriate; this is particularly =
important
>>> for the case where the extra dependency is not included and the =
configure
>>> script for the application would auto-detect the presence of the
>>> additional dependency in the absence of an explicit configure =
option.
>>=20
>> Thanks. Is there some documentation that explains how the suffixes =
are build
>> up, when they are used, etc. ?
>=20
> These "suffixes" are called overrides in BitBake parlance. If an =
override=20
> appears in the OVERRIDES variable then it is applied, and the =
OVERRIDES=20
> variable is built up out of the values of various other variables =
(including=20
> MACHINE, DISTRO, etc - see 'bitbake -e | grep OVERRIDES'). I'm pretty =
sure=20
> this is covered in the BitBake manual, although unfortunately that is =
only=20
> available in source format right now.


Do overrides work with any variable? The RPi layer is using BBMASK to =
filter out some recipes when building against Yocto. This has to be =
manually added to local.conf. Would it be possible to do this =
automatically in the layer using an override based on the distro =
name/version? e.g. could something like the following be added to the =
layer.conf file?

BBMASK_poky_7.0? +=3D " ${LAYERDIR}/stuff-i-dont-want"

Or would it be better to have distro-specific recipe trees and then =
(somehow) apply overrides to BBFILES:

BBFILES :=3D "${BBFILES} ${LAYERDIR}/recipes*/*/*.bb \=20
            ${LAYERDIR}/recipes*/*/*.bbappend"

BBFILES<something-to-add-parts> "${LAYERDIR}/poky-7.0/*/*.bbappend"

Chris Tapp

opensource@keylevel.com
www.keylevel.com




