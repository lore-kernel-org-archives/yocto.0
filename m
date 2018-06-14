Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 716ABE00CBD; Thu, 14 Jun 2018 09:43:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72BCFE00CBD
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 09:43:37 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id q4-v6so3182770pgr.1
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 09:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=YZwA/erMLd0OZybB6ZAvFtr0MuRofZwk5IQM4HPzNps=;
	b=TUZOcrwgup3xZZ9qTnd2Ibfq/XsxINHvFb62Wh+Uo5T12KeJtoJxjXNhzSUH02KWYt
	6yFUU+AXpz12UEzOjV9UoqIGg3J3MyFJb3/3IgXf89a9D5zjPPDChQYPBIzmLCSGUwbV
	DR+qQO9u8FExEm4QOkz67i3YdPY3NiTBFrYMiR0lAadUXPxSlUdPnMvX2SJZJqVR54Mr
	eLYELAT56wmyA6s18XKbUfNeaOqp1635w5sQ3CKvKkpeInBJZhmpXBVU51bDzwSBlyA4
	NZisqx6tgSEXvlSRyTLAvAz0my0+cq/u4IX248LmGV6vqutvEgwzF+xZ3fhXmogh329j
	LsmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=YZwA/erMLd0OZybB6ZAvFtr0MuRofZwk5IQM4HPzNps=;
	b=m3xSDEjCwgWYS7rgDV6LAgsZkgFXcEtDpJhqenvkO33g8SgmJrWmfCEGJWftpYnWUD
	0oB0BMZs7Wwe1XNEyI8nW5zW/lC8aOm3zvx+0PbkUaedCNfFtqw5Fy6S1KMYy/h67S8L
	HZzv+WbBU54rVM2lwoebS14hvGG3GQKIrwkIQeidRX4pjZbRba/M8/MW9oLBTGil6DNr
	hcsbX8iIKSqasbU/btakZFGKW4gBHYqVqlYNnulKf0rLjUEMko+YRswNIeYl6oZly3Qr
	0ryGkE7pADgS6ZDGUGSvoVl4OoabJgd3eeZzjvAJpFhMfi87IykULqv+MyGEAezPWZYT
	CfHw==
X-Gm-Message-State: APt69E32PklL1PIhJyc13GfjFAcwy4Il6H/MF6dCi5zE8XehV9fDYBrg
	7G5QeRIt+odAwXZsKTrzUUoiSe0x
X-Google-Smtp-Source: ADUXVKKBP4pD/AQLO+R0NywT5+aK3+KJRGZrhh6nxznTfZkOClpmY8FL+QEB9dpcdPirbWWkU66FuA==
X-Received: by 2002:a63:6fce:: with SMTP id
	k197-v6mr2954159pgc.307.1528994616435; 
	Thu, 14 Jun 2018 09:43:36 -0700 (PDT)
Received: from ?IPv6:2601:646:877f:9499:819b:b40b:792d:8193?
	([2601:646:877f:9499:819b:b40b:792d:8193])
	by smtp.gmail.com with ESMTPSA id
	8-v6sm10206509pfk.132.2018.06.14.09.43.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Jun 2018 09:43:35 -0700 (PDT)
To: Jon Szymaniak <jon.szymaniak.foss@gmail.com>, yocto@yoctoproject.org
References: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
	<CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=raj.khem@gmail.com; prefer-encrypt=mutual; keydata=
	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
Message-ID: <aade00d6-6ad7-a894-420b-47a97fb68d37@gmail.com>
Date: Thu, 14 Jun 2018 09:43:30 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>
Subject: Re: qemu-native build fails on sumo due to missing capstone.h
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
X-List-Received-Date: Thu, 14 Jun 2018 16:43:38 -0000
X-Groupsio-MsgNum: 41457
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="3HqM4VK58rF8VWoSKtwVwcLz3mEaMc21D"

--3HqM4VK58rF8VWoSKtwVwcLz3mEaMc21D
Content-Type: multipart/mixed; boundary="qZIAMgS8XM4suN9livxhBbbWqo9YUHkqn";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Jon Szymaniak <jon.szymaniak.foss@gmail.com>, yocto@yoctoproject.org
Message-ID: <aade00d6-6ad7-a894-420b-47a97fb68d37@gmail.com>
Subject: Re: [yocto] qemu-native build fails on sumo due to missing capstone.h
References: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
 <CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>
In-Reply-To: <CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>

--qZIAMgS8XM4suN9livxhBbbWqo9YUHkqn
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 6/14/18 8:49 AM, Jon Szymaniak wrote:
> On Fri, Jun 1, 2018 at 1:00 AM, Jon Szymaniak <jon.szymaniak@gmail.com>=
 wrote:
>> When attempting to build core-image-minimal on sumo (@b369e61) with a
>> largely default local.conf, I'm experiencing qemu-native build failure=
s due
>> to what appear to be an include path issue.
>>
>> Below is one of the failures -- those not listed here also pertain to =
a
>> missing capstone.h.
>>
>> |   CC      aarch64-softmmu/monitor.o
>> | In file included from
>> /snip/build/yocto/sumo/rpi/tmp/work/x86_64-linux/qemu-native/2.11.1-r0=
/qemu-2.11.1/disas.c:9:0:
>> |
>> /snip/build/yocto/sumo/rpi/tmp/work/x86_64-linux/qemu-native/2.11.1-r0=
/qemu-2.11.1/include/disas/capstone.h:6:10:
>> fatal error: capstone.h: No such file or directory
>> |  #include <capstone.h>
>> |           ^~~~~~~~~~~~
>> | compilation terminated.
>>
>> In the qemu-native build directory, the config.log shows an "
>> -I/usr/include/capstone" parameter being used during compilation, desp=
ite
>> other -I parameters using ${prefix} correctly.
>>
>> capstone is pulled into the qemu source tree as a git submodule, and h=
as a
>> CMake-based build -- so I'm guessing this is the result of not providi=
ng
>> prefix information to the CMake build? However, I'm honestly not sure =
why
>> there's a dependency on the capstone disassembler at this point, and w=
hether
>> the Yocto use-case warrants even enabling support for it.
>>
>> Adding --disable-capstone to the qemu.inc EXTRA_OECONF definition seem=
ed to
>> address the build failure, but I haven't tried any QEMU targets yet.
>>
>> I still need to dig into this a bit further, but just wanted to check =
in
>> before I go too far down the rabbit hole... this strikes me as somethi=
ng
>> that would have broken the nightly builds and therefore might just be =
an
>> issue on my end somehow.
>>
>> Thanks,
>> Jon Szymaniak
>=20
> Sorry to be a bother -- just wanted to bump this.
>=20

Do you have capstone development headers/libs installed on your build hos=
t ?

> Happy to work on a patch, but just wanted a sanity check to confirm
> that other folks are seeing this too.
>=20



--qZIAMgS8XM4suN9livxhBbbWqo9YUHkqn--

--3HqM4VK58rF8VWoSKtwVwcLz3mEaMc21D
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCWyKbMgAKCRC7BTNVkZ0z
FL+PAJ48hZ3fIXpRKRJgn+sbNUNA7bWyfQCgjtX0/h4i6itByXNw32y10ZVziUM=
=2sOg
-----END PGP SIGNATURE-----

--3HqM4VK58rF8VWoSKtwVwcLz3mEaMc21D--
