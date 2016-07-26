Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3229EE00CEC; Mon, 25 Jul 2016 20:34:45 -0700 (PDT)
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
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E0E8E00CE5
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 20:34:44 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id pp5so67358240pac.3
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 20:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=SuoivK6lJRT+DIaxvLKJ9xALUmEpOW+Rg2WPgYM/AHE=;
	b=k4Pex/l2XfDb+jUE1NO5gROAOXqaBmqU8Gc77SLqDr6DhmCLI2k1tfrh4frctKm/y/
	pqmx6dIU1MA1cdURm3HWoOJMVQCDlpUMgAUmHI92bcmdGb0VJuBbU5PPOSKroleBMgFt
	P+H5w1ABx9ZND5hm2PJYQgdCZOV7yu0b5rzKbvvYYtK/8zoUQxrU19+H5MqTdJm77lvo
	IFO33DJ6TBm7Bp8zrqZbeOBgK3P1MFFIOQUt7VYRFrUzPChXVs5WSV2B47raLgAzZ5MH
	/K6+Q9NhDWcCEFwy82WDXxGGIGq/hIMBLy6FhD28UPLJc8iM0LT3KWCbd9Y/KmF0wEFF
	qtFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=SuoivK6lJRT+DIaxvLKJ9xALUmEpOW+Rg2WPgYM/AHE=;
	b=h4wfPgTwzdE3JGiHpLekswtPnt2uYhSr6BmirCuAR3dyCazYenZrcLJw8FwCXKOddy
	WbRJcmSJxiXQmoZ+r6jBQ3U4+WMByTTdfwE8oF0vq5RV+JcEOWXGcszOMW/dFQrLQO42
	aQdlXkz/F/M1xIaE6ljsMI6WVydP01BzIhqUkMjvsABj2c6WTJcTnc8LkEdS4+/JGkUE
	Eeu5A/rhTdFJ7FeC+d8oxnLCx64CJ9xRBuVfe2YbQL3Bmx3hwsBA5x4nqENUbP9xcLRu
	Y4s/L0c4lG+iopwHX+Y/+1WAM2iGs+O6B6DNHj33tqSbhw/JRlLqOuDTzMDjFhcL3QS+
	UsOg==
X-Gm-Message-State: AEkooutP/XqrljbBG7XgXxGvf9yP0RSvJY4gem0PKCefnPwE6TSdVZgvY/X8gEkPnUMEUQ==
X-Received: by 10.66.76.9 with SMTP id g9mr35115903paw.51.1469504078570;
	Mon, 25 Jul 2016 20:34:38 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:9e8:29a8:4600:f2d9?
	([2601:646:8882:b8c:9e8:29a8:4600:f2d9])
	by smtp.gmail.com with ESMTPSA id
	u1sm43310871pfu.12.2016.07.25.20.34.37
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 25 Jul 2016 20:34:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAGMdoFmxkfLMO0nDqFQOkor2xmzhegGnYJvj4VnYXiwUy_3jbg@mail.gmail.com>
Date: Mon, 25 Jul 2016 20:34:32 -0700
Message-Id: <9A639589-3943-4E8B-B172-523AF03E038A@gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
	<CAMKF1sqUWtfx46-sYuGo+s8ynR24JdA_EH92BZVH+3Gh_WM=NA@mail.gmail.com>
	<CAGMdoF=Jhd=42QcmvLgtsMt+G5kkTg8urQhG-8TryOdG-5Kw3A@mail.gmail.com>
	<CAGMdoF=HzcT+of5D09Yv49AB1OkbSzLZnf6mEF4wyQ_N=kYy3Q@mail.gmail.com>
	<CAMKF1srfGGE29S1qNYDmg+OqGWVgUSbuz5ODu0Rw+q2uYr+34g@mail.gmail.com>
	<CAGMdoFmv_bWWtNB1QMz+G24Ezd_Y1bdx15sR_9qkHX5GK_yVCA@mail.gmail.com>
	<CAP71WjwJ7MZSjT70shU7Y3HiZhHQZS6_bQ=UXQH+DX7We672xQ@mail.gmail.com>
	<CAGMdoFmxkfLMO0nDqFQOkor2xmzhegGnYJvj4VnYXiwUy_3jbg@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with DISTRO settings
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
X-List-Received-Date: Tue, 26 Jul 2016 03:34:45 -0000
X-Groupsio-MsgNum: 31230
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9A59155F-7C30-4376-B146-8A0257162B95";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9A59155F-7C30-4376-B146-8A0257162B95
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 25, 2016, at 8:31 PM, Edward Wingate <edwingate8@gmail.com> =
wrote:
>=20
> On Mon, Jul 25, 2016 at 1:27 AM, Nicolas Dechesne
> <nicolas.dechesne@linaro.org> wrote:
>> hmm. you shouldn't set DISTRO in conf/layer.conf, that doesn't sound
>> right. DISTRO needs to be set in local.conf (or any of the other =
build
>> specific conf files).
>=20
> I agree, I don't know why I had it in conf/layer.conf.  Just
> beginner's mistake.
>=20
> I moved DISTRO to local.conf (changed the existing DISTRO ?=3D "poky" =
to
> DISTRO ?=3D "mydistro") and it still works.  But if I remove DISTRO =
from
> conf/distro/mydistro.conf, DISTRO will revert to "poky", even though
> it is set to my "mydistro" in local.conf.  So it seems I have to have
> it in both places.

in your mydistro.conf you should first set the settings that you want to =
customize
then include conf/distro/poky.conf not other way around. May be we =
should change poky.conf
to use ??=3D so the substitution happens at the end of parsing. but =
thats for another time.

--Apple-Mail=_9A59155F-7C30-4376-B146-8A0257162B95
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleW2kwACgkQuwUzVZGdMxTLaQCggsGqM11iuKUfkZblhpaLpp78
fz8An2HjroCl/uGPlgxUQzex28yTU/4B
=t7Jf
-----END PGP SIGNATURE-----

--Apple-Mail=_9A59155F-7C30-4376-B146-8A0257162B95--
