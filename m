Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7889E00E87; Thu, 19 May 2016 09:40:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE76FE00E6C
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 09:40:18 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id g132so8642103pfb.3
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 09:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=zXba+eNdXtcQFrvHPCRlQ9zAr4zlkEU2Wv68chEeIyA=;
	b=qaDM8g9wUv4fU2irGXbesM6zI+3+aE2it25MCEv3Ajosw6JzCPMcojm7T0Dz5wrLoo
	5nhJX0QGAYF4Hrd0l98otifh12o9VNkbj2IMNzpAPUtBZMfCo49J5sC5+uPAJnu1kvMT
	O5t0isLGJM84IJ6QvOnwgMlrB3EDBPhtJADESYg9IfwJfDuffOWZ2daCKOckgFeeg9UO
	PUnztpWqX81zn3+s3vwOi44SCdxrVw9e7FM/K2Z8vdzrxj02Di3QgOivuyTJQEmjpvSZ
	mzeuZ0iw+/E9v/7rVaC6NkcjUaFqAnfE2fSpDhZmLXdWF8biM5G5UMC+INn+V1r8Wz9Y
	AYDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=zXba+eNdXtcQFrvHPCRlQ9zAr4zlkEU2Wv68chEeIyA=;
	b=WpIuLZGSxeTpJHoMF64LOlOjepo9RL3B5E/5Md2C7pGXMgTKyt6zqxNtWo6HkPFvlW
	L5iJjcHcQW8P+pbyQkdEKmDenQ1HBpS5Jr5I+SHTaNmCrixhQRN3pZXw+TscY1k1xPtd
	/+6cFhRiGq3L/dUDDyRr74ZCQfDDzDrk42bxhmceDKLhZS7Rll8Rq57ulwwoW338Sz0r
	0dkd0iKjV99hoTu0iT3jZODm2e6ixL8pH5wikYAjNEnxUJWEd7FUkGHqQyk12zsLLY68
	fNA5n0/+y3Wsz8sR3GHYXaJE3EDnEhnHJCI6Yep34PBxB6r9WZD/0avtxi63010IjeEx
	WjKQ==
X-Gm-Message-State: AOPr4FWgdFxYlizfo9e8huRqecpOPFw9/TlQm+wFFJuD5MwnwnyuSff+lrKOXQwGlw/eBA==
X-Received: by 10.98.51.2 with SMTP id z2mr21246995pfz.118.1463676018294;
	Thu, 19 May 2016 09:40:18 -0700 (PDT)
Received: from ?IPv6:2601:646:9b80:c0a8:4dc:d7b8:6757:e35f?
	([2601:646:9b80:c0a8:4dc:d7b8:6757:e35f])
	by smtp.gmail.com with ESMTPSA id
	o7sm21041062pfb.76.2016.05.19.09.40.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 19 May 2016 09:40:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20160519152756.GE9848@resin.home>
Date: Thu, 19 May 2016 09:40:13 -0700
Message-Id: <9F9E2F05-CC7B-4F90-AAED-0B327C09B733@gmail.com>
References: <573DAE5A.6000707@elfin.de> <20160519143914.GA3601@resin.home>
	<573DDB17.5050007@elfin.de> <20160519152756.GE9848@resin.home>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][Question] How to build an hwup image for raspberrypi3
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
X-List-Received-Date: Thu, 19 May 2016 16:40:20 -0000
X-Groupsio-MsgNum: 30086
Content-Type: multipart/signed;
	boundary="Apple-Mail=_36D9B391-CA90-4F87-B88A-AB6E656DAC11";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_36D9B391-CA90-4F87-B88A-AB6E656DAC11
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 19, 2016, at 8:27 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> On Thu, May 19, 2016 at 05:26:15PM +0200, piotr.lewicki wrote:
>> On 19.05.2016 16:39, Andrei Gherzan wrote:
>>> On Thu, May 19, 2016 at 02:15:22PM +0200, piotr.lewicki wrote:
>>>> Hello,
>>>> I'm trying to build a Yocto image for raspberrypi3.
>>>> I'm using only two layers:
>>>> - poky (krogoth: rev eff84a76acea1a0842194106a66684511f409842)
>>>> - meta-raspberrypi (master: rev =
9912d38e97671704822d1aa05312a0439cb650d3)
>>>>=20
>>>> I have built it by cloning both layers from git (and changing poky =
branch),
>>>> then I sourced poky (source poky/oe-init-build-env), added =
meta-raspberrypi
>>>> layer in conf/bblayers.conf and in conf/local.conf changed MACHINE =
to
>>>> raspberrypi3.
>>>>=20
>>> I just tested the same revisions as you mentioned and the board boot =
for
>>> me. How do you test the board? Over serial?
>>>=20
>>> If you are using serial I suspecte you are not setting the serial
>>> console. if you are using tty1 (hdmi) you need to add the specific
>>> console argument to cmdline.
>> I'm using hdmi. Where can I find those console arguments?
>=20
> Boot partition, cmdline.txt.
>=20
>>>=20
>>>> Then I have built "rpi-hwup-image" using bitbake and dd'd it to an =
SD card.
>>>>=20
>>>> Unfortunately rpi-hwup-image does not work on raspberry pi 3.
>>>> Boot screen halts when 4 raspberry logos show up and that's it.
>>>>=20
>>>> On the other hand I have tried the same SD card with raspberry pi 2 =
and it
>>>> booted up (!?).
>>>>=20
>>>> Can you tell me if there is still support for meta-raspberrypi =
layer?
>>>> I found that this layer does not follow Yocto project naming =
convention for
>>>> branches (I think that the latest is "jethro", but nothing newer =
besides
>>>> "master").
>>>> Does this mean that there is no stable and up-to-date branch apart =
from
>>>> master?
>>>>=20
>>> What do you mean rpi is not following the yocto project naming
>>> convention? It does miss a branch for the last yocto release but =
there
>>> are already for the old ones.
>> Maybe I explained that wrong, but I've noticed that it's missing =
krogoth
>> branch.
>> I think that if something like this occurs users are a little bit =
confused
>> and have to choose between old branch (potentially outdated) and a =
master
>> branch (potentially unstable).
>=20
> Correct. I'll release krogoth too soon. Thanks.


I would suggest to delay branching until we really diverge from krogoth =
in incompatible ways
just makes it easier to maintain.

--Apple-Mail=_36D9B391-CA90-4F87-B88A-AB6E656DAC11
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlc97HAACgkQuwUzVZGdMxQFrgCggyGKGPa/sHLZyOhUv5JUGf3F
QX8An3jO/p7dBpFOBwhU2lz/NpRZpcZ9
=xH9z
-----END PGP SIGNATURE-----

--Apple-Mail=_36D9B391-CA90-4F87-B88A-AB6E656DAC11--
