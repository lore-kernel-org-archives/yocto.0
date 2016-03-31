Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EE99E00C76; Thu, 31 Mar 2016 09:36:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12504E0092C
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 09:36:26 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id tt10so69763347pab.3
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 09:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=oTm7x5xnhHT6Fv3QRLy8m7a+WYvke+m9HkT8exc/9nU=;
	b=zLy3iDEown42gZ8U+0ziy20JODlc4nDg+E9jQeBJLeLEro56V20mQiUX2g3Nzp+dwJ
	429nPWT+8AKcGr9qpQd8jSIFt3SWHTq3b9mYO/zrF7xNRWWhP6MXnwoteQe7n4s2wIoc
	S5DFlpuHvmYABDSKvSTcTJMBcxhemdJ6ZZ/j8Rr11uivMAz/2bgwOF8irsc5C2FWNj9Z
	9nBC3Els6eszqY/HyEzW+CaUfSABFVjBugzUwSxM62FAPvzAOPaHFR1IH1cxtKaAFeSU
	sQGSAtopScL3YIjENPwLpEINdu3j7YW3E5amQ8kGRAEvdLWOT/MOyTKsrqV/PYX8kzj/
	4JSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=oTm7x5xnhHT6Fv3QRLy8m7a+WYvke+m9HkT8exc/9nU=;
	b=I4pTeUJPBCAOUQ7COw770cOs3q1Ypj4eMteGaE2UpIWHzYp2QnNC5s305JlFx1EQPe
	ByWEm5iTCfdEeAwBNQw1+48xrCckpp1cfvYoM90fwQC2rjyY/8XsMVenQQ6ZUGOXag9i
	IOtXSnTb5rR9TJbDxWMVsB1ScJeRZv0q0rmL3axRX4aa7bkktSW1s4aHUq6PjrCLVec0
	wx7e3wRz4+MhtFtkiTtAO/3eHqpR63D0/D/9twNsAGf8rhfIoLVQq9xE7yZ3+DPAeZwB
	jVM7n/tA0WGmc8+f0ZO1nBrYKyguA5nL1LD/1SeXKeJQSi6Nrv8Hv9/dB5AXgwD6+eUR
	FQPg==
X-Gm-Message-State: AD7BkJIKfNkiY2YR/lVkfxnti7iMs2oKW9MOwfGVfXNeGbgWLGFuv07MyQRoC2ew975mcA==
X-Received: by 10.66.254.71 with SMTP id ag7mr23310900pad.121.1459442186343;
	Thu, 31 Mar 2016 09:36:26 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:e540:e244:156e:a048?
	([2601:646:8800:5a9a:e540:e244:156e:a048])
	by smtp.gmail.com with ESMTPSA id
	v74sm14643447pfa.7.2016.03.31.09.36.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2016 09:36:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20160331152604.GA23623@linux-yxv0>
Date: Thu, 31 Mar 2016 09:36:16 -0700
Message-Id: <655B9BF4-0067-4E41-9B09-BD74A530B79C@gmail.com>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
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
X-List-Received-Date: Thu, 31 Mar 2016 16:36:30 -0000
X-Groupsio-MsgNum: 29224
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4C9C57F6-D3E0-4FD6-859A-45476EA53B03";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_4C9C57F6-D3E0-4FD6-859A-45476EA53B03
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Mar 31, 2016, at 8:26 AM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
> On Fri 2016-03-18 @ 10:15:39 AM, David Weisgerber wrote:
>> Hi,
>> did anyone succeed in building an image that runs on Raspberry Pi 3? =
I set my
>> conf/local.conf to
>>=20
>> MACHINE ??=3D "raspberrypi3"
>> GPU_MEM =3D "128"
>> DISABLE_OVERSCAN =3D "1"
>>=20
>> and built rpi-basic-image but when booting the Pi 3 up I only see 4
>> raspberries in the top right but nothing else happens. The image =
works
>> perfectly on a Pi 2 though.
>=20
> I'm able to get a raspi3 image running on my Raspberry Pi 3, but my =
console is
> messed up. Everything works fine via the usb+hdmi ports, but plugging =
a
> console cable into the GPIO header is messed up.
>=20
> It looks like what happens when the baud rate is set incorrectly, but =
I've
> tried every baud rate in my terminal emulator and it all looks the =
same
> (messed up).
>=20
> Anyone got their console working? The same cable/setup works fine on =
the
> raspi2 (ttyAMA0) but doesn't work on my raspi3 (ttyS0).

did you try

https://www.mail-archive.com/yocto@yoctoproject.org/msg28476.html

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_4C9C57F6-D3E0-4FD6-859A-45476EA53B03
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlb9UggACgkQuwUzVZGdMxSBZwCdF4kfLGGvJyZIUHEwMdIGLa/a
e3oAn0AUWXuMLnvmukTJ4jMayz5nqsMM
=R9I4
-----END PGP SIGNATURE-----

--Apple-Mail=_4C9C57F6-D3E0-4FD6-859A-45476EA53B03--
