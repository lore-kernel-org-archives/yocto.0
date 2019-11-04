Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9F0BE00D99; Mon,  4 Nov 2019 07:49:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.219.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
	[209.85.219.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45119E00D8F
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2019 07:49:06 -0800 (PST)
Received: by mail-yb1-f176.google.com with SMTP id w6so6419906ybj.5
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2019 07:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=+vr6Yywzqk6i7Qb68Le1i/GTWWGyJgtgv7xlr5+AXwE=;
	b=qCC+DGqEnJ+xjXp50ih94Py5jNHDRr2UzMxVdVB/9vuGVgKIrx99RPcmZUC5Zo8O5w
	Ldi2J7n/NkQd0ZpfDLbg3L6+ics9P5lePk7pKoX2STVWFMkV8uRW8aXWsWHsuq9UEGc+
	UQ618pYChcagEJlHN8PjY9qsZcQy9XDu6uks8QFBL8nL6KJ6tYHSUg057QjRuaA7AVfn
	wYJQaUrpZWWviwmr/JLeL2H1KcKyaDFAlYfHMGIwANjGQWUTqRoKq6krwgqFLqZr1YCR
	a/eE/dHeyag7C/e7SQwYv1ubQBfW1keZvWvmYjosRjjAYnLGi+NfWtQW+zrkLCGaQaTG
	7IRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=+vr6Yywzqk6i7Qb68Le1i/GTWWGyJgtgv7xlr5+AXwE=;
	b=lz1c3LufKVZElDmyoUeFhl2s78CwRRc6eYo3ouOMxiTKtcI4bs2naOACsrQUzWGj2S
	KtrP9GLb31bbMT/GaQ5SE5yqNM5Refz2hdJjZDaGo4SyV62iy956dAwIbbOGkurUwdYe
	yv+zWzvQwfHPYMS4uRpFdOrb849qrX6ioO4QhjJT1gNnnnI78vRdUkkxiBStTgf3wYzP
	RlUkLQT+mJbPECKiAxrFEcjCbrK/qZtEAoAOOP7uI73ziw1S5lwWwYUjVhQ1lo2xo9JD
	M6ZvI2aOQ/HhAqsMxvSPQdKrzZSnXV0pOD2Wn+M/Ao08krjiAC83WjYHzzN/OjnGoH74
	S6FA==
X-Gm-Message-State: APjAAAUeTDTr/GeEOuDRFTlG+zpL6i9DRUorVivoqhoKNTNqUL5T2ZVq
	trBCcGB3ix778qIs1ScWbY63SA==
X-Google-Smtp-Source: APXvYqzfKsS8slHmcuoP16KMGpAp5mwcjF2Clq/6adk2OniU0lCo2PBAz5kDGNzJtELyhJCfPFZ0Uw==
X-Received: by 2002:a25:80c1:: with SMTP id c1mr23595709ybm.195.1572882545378; 
	Mon, 04 Nov 2019 07:49:05 -0800 (PST)
Received: from ?IPv6:2600:6c64:6780:170b:a4c5:e905:53b0:1bba?
	([2600:6c64:6780:170b:a4c5:e905:53b0:1bba])
	by smtp.gmail.com with ESMTPSA id
	r67sm7704251ywr.48.2019.11.04.07.49.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Nov 2019 07:49:04 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <20191103182512.GA28946@localhost>
Date: Mon, 4 Nov 2019 10:48:57 -0500
Message-Id: <9F6E6EE0-4FF9-4251-9B7B-37A734DA4824@korgrd.com>
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
	<CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
	<097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
	<CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
	<352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro>
	<20191103182512.GA28946@localhost>
To: Adrian Bunk <bunk@stusta.de>
X-Mailer: Apple Mail (2.3445.104.11)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Mon, 04 Nov 2019 15:49:07 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Nov 3, 2019, at 1:25 PM, Adrian Bunk <bunk@stusta.de> wrote:
>=20
> On Sun, Nov 03, 2019 at 05:56:45PM +0000, Andrei Gherzan wrote:
>> On 3 November 2019 13:18:53 GMT, Khem Raj <raj.khem@gmail.com> wrote:
>>> On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan.ro>
>>> wrote:
>>>> I was thinking about this. The erratum seems to show that this
>>> applies
>>>> to all revisions of a53. So it sounds like we should add it in
>>>> `tune-cortexa53.inc`.
>>>>=20
>>>=20
>>> Up to r0b4 only so maybe not all a53 implementations are impacted
>>>=20
>>=20
>> As far as I know that is the latest revision. Do you mean that newer =
revision might come up with this fixed?=20
>=20
> It is fixed in some r0p4 implementations, indicated in REVIDR[8].
>=20

I am closer to understanding why I experience an error when building =
with the ARM errata switches.

I believe it is related to 32-bit app support in my poky Linux 64-bit =
build (I add this to support vcgencmd and vcdbg 32-bit apps.)

When I remove the 32-bit support, the build completes OK.  As of now, =
adding the following seems to work fine to acheive this:

TARGET_CC_ARCH_append +=3D " -mfix-cortex-a53-843419 =
-mfix-cortex-a53-835769=E2=80=9D

Something in the following block seems to be the culprit.:

# for vcgencmd and vcdbg 32-bit executable support in the OS image =
(comment out for -c populate_sdk)
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"
IMAGE_INSTALL_append +=3D " vcgencmd lib32-glibc lib32-libgcc =
lib32-libstdc++ vcdbg rpi-setup \
=E2=80=9C

I will post again when I have localized the build problem further.  =
Maybe there=E2=80=99s some 64-bit vs. 32-bit build confusion going on, =
and the armv7a default tune switch for 32-bits is colliding with the =
errata switches.

- Steve Pavao
Korg R&D






