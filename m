Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBC29E00CB5; Fri,  1 Apr 2016 15:55:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D05BE00CA3
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 15:55:36 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id fe3so100794157pab.1
	for <yocto@yoctoproject.org>; Fri, 01 Apr 2016 15:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=NMdLtGNI0XA8X4BVzLg1jDzOvMmfOAYs1Kh02OgqQIs=;
	b=WLrPKYj5C02vay5XgPrieU2WuD6Qb70FBnRBYp8iMEtWaapB55dc9Mt2bCo1TuDGqP
	vQEsIDrovPIpLul+FYC8Z4AkahhIiiawl1Px02pMgjnvcREyL053gZ4n5oM9Ta/aAwX8
	InjTlmGKXif/dbY2vKND/aeD6OYiWIsgFDo85L4ud9qqSAlSDkczslAwVBKlWzEL4vBH
	t3DISv0dN+z7EesV+p52/nqQwPr1Zt8jQ+Cw5hDyP0cS7A0mdnZgJLWF/yFteytGEXTa
	UeevNtkzfpdNelck5CGO2F5GxU579XsL2mitsu8ftOvFJqOev2XqyDVUtMwlQi2SHrr7
	I6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=NMdLtGNI0XA8X4BVzLg1jDzOvMmfOAYs1Kh02OgqQIs=;
	b=C+DEUxwczfLaP16lHaSaQjdgK1S71P8yDki5MmhErOhX1lcrT3K267xpMipA+K3Urx
	o3B48H9Ya9+pgBj235ShGk64R7AImJjNzKWpIx62WuPIarS9KcZ0aecB6EbxTUzSVKzX
	aol2yzt9mktNlan3pmP7S7SGiGGapH7oOrwGAIu9PHjrOPuqC+KvEjyS/DXTY2avFbzK
	LUpt6vKugtVlhKmCFxthmWuCbbm2AlbQsw2VJjV4ZT4n+/Cg/nOL9QcZx4lIDCZxcRda
	/iM6wG8dj2UVsHXmeb15756/noN6oono9Idi8S9wFJWWrY1oKcCBktLN31en4Q478npP
	r63w==
X-Gm-Message-State: AD7BkJL1K9PcDc3ccUZT1l+ExNfcdVhe+PvfIOXu+uUZrhQ6sfSWlJUFRjXYy2gJt+LbJQ==
X-Received: by 10.67.21.205 with SMTP id hm13mr34652878pad.56.1459551336308;
	Fri, 01 Apr 2016 15:55:36 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:e8d9:786e:60e7:43d8?
	([2601:646:8800:5a9a:e8d9:786e:60e7:43d8])
	by smtp.gmail.com with ESMTPSA id
	r68sm22280900pfa.33.2016.04.01.15.55.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 01 Apr 2016 15:55:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20160401224604.GA30256@linux-yxv0>
Date: Fri, 1 Apr 2016 15:55:31 -0700
Message-Id: <46A38E77-8BDD-4272-9619-2583EC019F1E@gmail.com>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
	<655B9BF4-0067-4E41-9B09-BD74A530B79C@gmail.com>
	<20160401191729.GA25051@linux-yxv0>
	<20160401224604.GA30256@linux-yxv0>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Fri, 01 Apr 2016 22:55:41 -0000
X-Groupsio-MsgNum: 29247
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0CE20902-68B6-434D-81C8-40E55DE941B1";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0CE20902-68B6-434D-81C8-40E55DE941B1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 1, 2016, at 3:46 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>=20
> On Fri 2016-04-01 @ 03:17:29 PM, Trevor Woerner wrote:
>> As far as I can tell there are two raspberry pi OE layers which =
include this
>> commit:
>>=20
>> 1. git://git.yoctoproject.org/meta-raspberrypi::master
>> 2. https://github.com/kraj/meta-raspberrypi.git::kraj/master
> [...]
>> - Using 1 (the official layer from Andrei) I get an image that boots =
but the
>>   console remains messed up (as before).
>>=20
>> - Using 2 (the layer from Khem) I get an image that flashes the =
rainbow
>>   pattern on the HDMI monitor, shows the 4 berries, then stops. =
Nothing else
>>   happens, no messages on the console.
>=20
> I get the same results with no local.conf tweaks and building the
> rpi-basic-image.
>=20
> Does anyone have a run-tested, OE-built, raspi3 image with working =
console?
>=20

can you select 4.1 for kernel and try with master, Andre has merged all =
my changes
today

> Best regards,
> 	Trevor


--Apple-Mail=_0CE20902-68B6-434D-81C8-40E55DE941B1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlb+/GYACgkQuwUzVZGdMxS2pACgh/lwQoNW9xl7Q70ghgciu6Oe
138AnimkdvQVpZMPNL8rN/ezPmuurKLd
=GyQ/
-----END PGP SIGNATURE-----

--Apple-Mail=_0CE20902-68B6-434D-81C8-40E55DE941B1--
