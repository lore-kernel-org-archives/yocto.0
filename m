Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F3BDE00C17; Wed, 16 Nov 2016 09:51:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBC93E0049F
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 09:51:40 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id p66so15258034pga.2
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 09:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=PRQLQjjSaT0zGskubTLZEFIf7n8yeLi/FtwSkNgogTQ=;
	b=SLOlLU8HdBLg5qJHuc9TKzjPIG/IQW5eA+mfLfenUBQJ3rKJX/Z1rNLYWB7fhiJylO
	UZCE2/W2rrDhEnuaCYMNunXrcIODYxOCAsWgd8eAfnK5nJtQiNOAYFMNyKG5+PYTbe76
	VVAJLq94YnQMA68U7JZGL7u4YAcd40dpKVKWAuftmO2xoDrV+3yiH66ipCG8uYnNs9PX
	1pz65Bz448JcABPMJT6hXIRtqeutzvjjMtMGyRAAcxd5M9oiy3aqERflQk5TU+/mkIG+
	md3rv1U3RZXm4bptD5ezNRsIWFvi9GGA5T7VAKwvetM795QmoC+xVYJ0Suy1h8ODbfpy
	ydsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=PRQLQjjSaT0zGskubTLZEFIf7n8yeLi/FtwSkNgogTQ=;
	b=is78q+VGpA5O5RurBdb5Lwumlr75iQEV9zDJu+i5vKvACP6uNcVsTzVhjfxvckmb8M
	uZwqcxh7jlfr5Mz6TPJGw3p5B9y4nrgHX+bLFFVeICRuiRtp9oArxkJsGccdbSfRUbhI
	SY8zJz0z5qcckDz1bYGwMK8uRl/p/jQSmilF4o57shNAfrbDmOZD/nQJX+84PRfjEoQS
	J/V5xhtABLTsghXpuvQpcZlXsfpGsBV9rxGLLgS7vlgWLikK/6I1LO0nD++N257ZP61B
	jmVyYvxV2VXUM3g17I/ODLEaFJ8rdCYqkYSjyBAx4kqu6AarCjbbvmyogBXE4rHDGo2T
	z+3w==
X-Gm-Message-State: ABUngvcxWQE+di4xgbtyuXMYGaBJ7eBLubo37EoyX9FTSyt4HHbEGJ/Z65l8lJzQWSnD5w==
X-Received: by 10.98.201.196 with SMTP id l65mr6278660pfk.116.1479318699179;
	Wed, 16 Nov 2016 09:51:39 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:253b:db0b:7823:74ba])
	by smtp.gmail.com with ESMTPSA id
	y134sm32502992pfg.81.2016.11.16.09.51.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Nov 2016 09:51:38 -0800 (PST)
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <9c7000d5-44f9-ab6c-6d87-c92531e6da0b@mlbassoc.com>
	<6edb9a2e-4e99-d92e-5844-4c6ca7a5a30e@gmail.com>
	<1a28d005-48f9-8181-f006-741bf7be2c6f@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <8d037918-be30-a039-b61f-0db8a6e4697f@gmail.com>
Date: Wed, 16 Nov 2016 09:51:32 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <1a28d005-48f9-8181-f006-741bf7be2c6f@mlbassoc.com>
Subject: Re: New error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Nov 2016 17:51:42 -0000
X-Groupsio-MsgNum: 33001
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="xjD4SVphsSfM42S9RrxF8NBcuP2wP7nNr"

--xjD4SVphsSfM42S9RrxF8NBcuP2wP7nNr
Content-Type: multipart/mixed; boundary="lqRr8al2biSXJPtbLX4JTN98kaBJTHp2a";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
Message-ID: <8d037918-be30-a039-b61f-0db8a6e4697f@gmail.com>
Subject: Re: [yocto] New error
References: <9c7000d5-44f9-ab6c-6d87-c92531e6da0b@mlbassoc.com>
 <6edb9a2e-4e99-d92e-5844-4c6ca7a5a30e@gmail.com>
 <1a28d005-48f9-8181-f006-741bf7be2c6f@mlbassoc.com>
In-Reply-To: <1a28d005-48f9-8181-f006-741bf7be2c6f@mlbassoc.com>

--lqRr8al2biSXJPtbLX4JTN98kaBJTHp2a
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/16/16 2:57 AM, Gary Thomas wrote:
> On 2016-11-16 07:47, Khem Raj wrote:
>> Can you test out this patch for OE-Core
>>
>> https://github.com/kraj/openembedded-core/commit/b2d345d0217db0c2dda3b=
9b40824829116599568
>>
>>
>=20
> Yes, this removes all the errors.

thanks. Patch sent.

>=20
> Thanks
>=20
>> On 11/15/16 4:41 AM, Gary Thomas wrote:
>>> I just ran a new build for one of my PowerPC targets and I'm getting =
errors
>>> like these:
>>>
>>> ERROR: openssh-7.3p1-r0 do_package: runstrip:
>>> ''powerpc-amltd-linux-gnuspe-strip' --remove-section=3D.comment
>>> --remove-section=3D.note
>>> '/build/diskstation_2016-11-15/tmp/work/p1022ds-amltd-linux-gnuspe/op=
enssh/7.3p1-r0/package/usr/bin/scp.openssh''
>>>
>>> strip command failed with 1 (b'powerpc-amltd-linux-gnuspe-strip:
>>> /build/diskstation_2016-11-15/tmp/work/p1022ds-amltd-linux-gnuspe/ope=
nssh/7.3p1-r0/package/usr/bin/strW48QK:
>>>
>>> Not enough room for program headers, try linking with
>>> -N\npowerpc-amltd-linux-gnuspe-strip:/build/diskstation_2016-11-15/tm=
p/work/p1022ds-amltd-linux-gnuspe/openssh/7.3p1-r0/package/usr/bin/strW48=
QK[.interp]:
>>>
>>> Bad value\n')
>>> ERROR: coreutils-8.25-r0 do_package: runstrip:
>>> ''powerpc-amltd-linux-gnuspe-strip' --remove-section=3D.comment
>>> --remove-section=3D.note --strip-unneeded
>>> '/build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/=
coreutils/8.25-r0/package/usr/lib/coreutils/libstdbuf.so''
>>>
>>> strip command failed with 1 (b'powerpc-amltd-linux-gnuspe-strip:
>>> /build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/c=
oreutils/8.25-r0/package/usr/lib/coreutils/std1tFcO:
>>>
>>> Not enough room for program headers, try linking with
>>> -N\npowerpc-amltd-linux-gnuspe-strip:/build/diskstation_2016-11-15/tm=
p/work/ppce500v2-amltd-linux-gnuspe/coreutils/8.25-r0/package/usr/lib/cor=
eutils/std1tFcO[.note.gnu.build-id]:
>>>
>>> Bad value\n')
>>> ERROR: eudev-3.2-r0 do_package: runstrip: ''powerpc-amltd-linux-gnusp=
e-strip'
>>> --remove-section=3D.comment --remove-section=3D.note --strip-unneeded=

>>> '/build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/=
eudev/3.2-r0/package/lib/libudev.so.1.6.3''
>>>
>>> strip command failed with 1 (b'powerpc-amltd-linux-gnuspe-strip:
>>> /build/diskstation_2016-11-15/tmp/work/ppce500v2-amltd-linux-gnuspe/e=
udev/3.2-r0/package/lib/stxt1rac:
>>>
>>> Not enough room for program headers, try linking with
>>> -N\npowerpc-amltd-linux-gnuspe-strip:/build/diskstation_2016-11-15/tm=
p/work/ppce500v2-amltd-linux-gnuspe/eudev/3.2-r0/package/lib/stxt1rac[.no=
te.gnu.build-id]:
>>>
>>> Bad value\n')
>>>
>>> Actually, I got 438 of them :-(
>>>
>>> Build Configuration:
>>> BB_VERSION        =3D "1.32.0"
>>> BUILD_SYS         =3D "x86_64-linux"
>>> NATIVELSBSTRING   =3D "universal"
>>> TARGET_SYS        =3D "powerpc-amltd-linux-gnuspe"
>>> MACHINE           =3D "p1022ds"
>>> DISTRO            =3D "amltd"
>>> DISTRO_VERSION    =3D "2.2+snapshot-20161115"
>>> TUNE_FEATURES     =3D "m32 spe ppce500v2"
>>> TARGET_FPU        =3D "ppc-efd"
>>> meta              =3D "master:43e652f3d1fee5ce7fad67e6400315eab1b3427=
0"
>>> meta-amltd        =3D "master:697b2bc1467a311233f1da362aa4c8a2cccf52b=
f"
>>> meta-diskstation  =3D "master:0839596be89af4da67fb7c5ab41337f1a382e5b=
5"
>>> meta-freescale    =3D "master:979d079732949c49f7a859e93278287eb95fa05=
6"
>>>
>>>
>>> Questions:
>>> * What's the best way to fix them?  I assume it's just some
>>>   compiler/binutils option I need to adjust.  I tried comparing
>>>   this build against the stock qemuppc, but it got no such errors
>>>   and I don't see the difference (except for the CPU tuning of
>>>   e500v2 vs 7400).
>>> * If these are labeled 'ERROR', why do the packages continue
>>>   to be built?  Indeed, I ended up with a complete build image
>>>   (which I've not been able to test yet so I don't know if these
>>>   errors actually break things)
>>>
>>> Thanks for any pointers
>>>
>>
>>
>>
>=20
>=20


--lqRr8al2biSXJPtbLX4JTN98kaBJTHp2a--

--xjD4SVphsSfM42S9RrxF8NBcuP2wP7nNr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgsnKkACgkQuwUzVZGdMxQ51ACdH2AXmsDjuGxSEBFcBXCSOVDo
csIAnjgqh+nM2wXciZkldgcxnNdfU63r
=ynZT
-----END PGP SIGNATURE-----

--xjD4SVphsSfM42S9RrxF8NBcuP2wP7nNr--
