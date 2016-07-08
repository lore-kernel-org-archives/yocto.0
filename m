Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D928EE00E96; Fri,  8 Jul 2016 06:42:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DFB2E00E8F
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 06:42:12 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id m2so6766083qtd.1
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 06:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=yX77kBosnOtT2+mR8xR9d6mhlEH0ej/C8g1GTN/hZrE=;
	b=DK6eVgX0NA463VpoNoC+q1jz2+xGmuChHEB/m5c9IC77S8LvxMBp1MW77vf01CXPco
	u6zscneSjeWjdiaVHoXyuZifAY6eCq54At34pqeH+ZWx9LkWSygtKWBMne6acqGRMvug
	6exDbBLVWMF12/qOEUdZf3g2OQ+94w7J4K3AxxpcXZ42PTWqcHMM/jwmzOYgUEel2Vwo
	Q0wF/He4LdZoMPXOWJDYx++b5iEW+187sYWcZ9WleMM2r/Rl4tfK/LfvBxjOEi5abuV+
	vueD+0tBymT+ykR9EgdooIufcP9M0Gr1FgP3GWFom8uqW0KUHuOlgi8K3NW6/JC3+QJo
	mRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=yX77kBosnOtT2+mR8xR9d6mhlEH0ej/C8g1GTN/hZrE=;
	b=R3lTcF13ehEarypCEUFncMfi0rBwi91xIFwyHXy1XL8tZUkfu8xjcwa7Q2gjQJjRfI
	ykLcFEnae6EtBRhv/+tl4rMv9VPKxmoXbEBwJu0QS4kfvH7TB5XhG6bE4cC8Sg9sdl3u
	81X+PdKWTF7AyJ+8WGvgDONqIcsISqNWUgyo5QCf+j26SQWgMbF3qdu1x7buavF3qNCv
	0H+zHZ8OyV5iMIKn9/vjttiRncqKf7nfLlRVXkeYaEfXTFmM0TFtIH7UOK6OiyYv68Nm
	VI4XQ0q7x5wJLaKDbUi6ruDgCAtt7qG8wnqBEaHwtaoCmwwJm/aX44r9PaiysLl53Tn1
	nNpg==
X-Gm-Message-State: ALyK8tJrlQGp/DXvm/qnfQpoQOgCaGn2kCsdI8FEHtbz4RRYMxuOh+ARWImtoZZELHMNDQ==
X-Received: by 10.195.30.3 with SMTP id ka3mr5435057wjd.9.1467985331775;
	Fri, 08 Jul 2016 06:42:11 -0700 (PDT)
Received: from resin.home (host86-179-71-94.range86-179.btcentralplus.com.
	[86.179.71.94]) by smtp.gmail.com with ESMTPSA id
	ib10sm4204956wjb.31.2016.07.08.06.42.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jul 2016 06:42:11 -0700 (PDT)
Date: Fri, 8 Jul 2016 14:42:09 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Martin Bergek <martin@spotwise.com>
Message-ID: <20160708134209.GE20442@resin.home>
References: <D37DD58C-C544-4AAA-B130-5BA818C711E4@spotwise.com>
MIME-Version: 1.0
In-Reply-To: <D37DD58C-C544-4AAA-B130-5BA818C711E4@spotwise.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] PL2303 instability on RPi 3 but not on RPi 2
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
X-List-Received-Date: Fri, 08 Jul 2016 13:42:19 -0000
X-Groupsio-MsgNum: 30959
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4Epv4kl9IRBfg3rk"
Content-Disposition: inline

--4Epv4kl9IRBfg3rk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 13, 2016 at 11:24:08PM +0200, Martin Bergek wrote:
> Hi,
>
> I am testing an image on a system including a PL2303 (USB to serial bridg=
e) and have noticed an issue on the Raspberry Pi 3. The system will run fin=
e for an hour or two but then the kernel logs the following error:
>
> 	pl2303 ttyUSB0: usb_serial_generic_read_bulk_callback - urb stopped: -32
>
> After this there is no more data coming from the USB device and I have to=
 either reboot or disconnect/connect the USB device - neither of which is a=
cceptable in my application.
>
> This is on kernel 4.4.9 and it happens only on the Raspberry Pi 3. On Ras=
pberry Pi 2 the exact same firmware runs flawlessly.
>
> Has anyone else come across this or have some suggestions on how to solve=
 it? Or how to pinpoint the cause?
>
> Thanks,
> Martin Bergek
>

I'm usign exactly the same chipset and never saw this problem before.
There might be something related to
https://github.com/raspberrypi/firmware/issues/553 which you can test
with a core_freq=3D250

As well it might be connected to the USB power supply if you use the 5V pin
=66rom PL2303 to power up your board. I do and I experience no issue but
it might be something there.

--
Andrei Gherzan

--4Epv4kl9IRBfg3rk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXf62xAAoJEHO76Gt+erfPvC4QAJvc1Fl3p/PZMMgLgTpjXVMw
nd1x+k5gGUg9cy0CwpBhyAgwtjYStu14afpBYrHPYb4im3umK3wpNU14i+JvOWy6
8E8anIMY4p330wBxnvcB2LFVE3h9BcZbFhCNsKbCcdmAakxZR1ehVpDWhCTVXtTh
w6NkKIMzar7o6jLKYs1bCxSmzDoxz5hevoRUTXz+t0uZUJmCYOzXhF6u0Z2Mj9NL
zVUMSer3Yg9FsF9dEHW74Lq51wzCNaka3tz3Wy/ncsWbLIIrSVJLLWqVknLiVjE6
1jgyzdkSZAn9z0zaL+jvJxUbAvaKoikNQBHKoKwPo7eZWuEEn0G9xCNZz3MVKBeD
iQ094B7cd0MMgDB/SOBN68dRhRZFxtk4Pdxgd6MfFnUvRn/kt3EN686oDBa8CMFc
Kp1hMDZ8lEB1LuazNYUcMEqKnVUIY/8mt/tyca8KHMN/VGtV5qerFiFOvbptSOyQ
iKOLPAZHaK9fOZ+rGPeRe1NpQFWULNM6ZeiZnMege5AAtPc1aQaHquR0mZFW+0FN
VIrSJsJOrBuf8zz55/TI/J0YFFP549rPiGTJ/Jw0vf8vKEuCXprpiuXBvMJXZuPp
xSO87JNaP0Q9N0eIOfnimPZ/9e5KwumNYMieZFe7w1SeHIKX2ImslngjC1jrJWdo
6dSpKQeHLWlvjw3ZZacv
=jhdW
-----END PGP SIGNATURE-----

--4Epv4kl9IRBfg3rk--
