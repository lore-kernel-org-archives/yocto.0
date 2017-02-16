Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85C36E00A0C; Wed, 15 Feb 2017 22:01:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51A10E009CF
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 22:01:47 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id o64so799019pfb.1
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 22:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Y3tAZoTmjp7g/3VGN+nqV3maPmSXADEcN5HorG52+U0=;
	b=EreDXn1S3P+MqWMqifXzw2Sj7124YcXyPY3ohaCCs2egB7R+Q8iGdDZ0YQ6mb7cvvs
	Wt2mKLfXawq0aPcLPnLhYjZ/Pui0JAXyIWnlgW5JODFhWmnML/tE8Vi0VPCELCc3ryzy
	2E7y6yvFJikqjlwQgvKTDw7znUXH7OhcNgsPda5WKBeBTkLolQLY3LtUOlYLf0tZHypd
	6aKAJR6RCJc1Z+CQOSzJakDK9IOZeIahlOgnzVYxgdGGRJxggSyibJsmnTcwYe0b//s/
	WHG/gKJ64A+kP4G2NQ4R/QgfNA5kpIVFJK388eKFA8FAQ/PpTzv4pGS68nYCtzA8DWLJ
	G4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Y3tAZoTmjp7g/3VGN+nqV3maPmSXADEcN5HorG52+U0=;
	b=h0XIdaASXCLj0OyCC2pnhFp+LqPR9W///XfcNBomeyy3qfSn65pJMSfuHfHOOl4C1b
	EH0GnOEYR0/05bUbFJ4FwYkPMqHK5lP9bM4XFHTqcYcC4m67glSUXrcv5AcOC64TEuVE
	joiG4IrtDFPnr4nKkmgxLx/i8U3rHkBFjmzjVdAJQZpTbIT6lTkfVqGKXgvvV0jjJzKf
	+ye5Eg0bVbinf7ITDw4+MmjRZdrPE8OBkwROUdk2I1BORwu1LqiZXTyLaiMwFzZca+/C
	utXlbEgEfulESw1Eek8Qz0iC151EgEq0w4BFF2wek1OQDUMNA1TMN66dVpI9xzmTXTbp
	OGhg==
X-Gm-Message-State: AMke39nreXCGruktIAFuC9EvNaqCqKho3K+k1wY96OowOfEtKtlPDia71KPAZji4KQYY0g==
X-Received: by 10.84.231.2 with SMTP id f2mr800129plk.117.1487224906710;
	Wed, 15 Feb 2017 22:01:46 -0800 (PST)
Received: from carbonA ([2601:602:9a00:eabb:6d00:499:970f:8480])
	by smtp.gmail.com with ESMTPSA id
	d78sm10795129pfb.43.2017.02.15.22.01.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 22:01:45 -0800 (PST)
Date: Wed, 15 Feb 2017 22:01:29 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170216060129.GA25376@carbonA>
References: <20170212052655.12342-1-raj.khem@gmail.com>
	<20170212052655.12342-3-raj.khem@gmail.com>
	<20170216020918.GE31588@carbonA>
	<CAMKF1srjMUswSDM8eUUd1jLT_knfKhRjtde88pwt7H22X+z6ZQ@mail.gmail.com>
	<CAMKF1so5J-hMdxUPp15c+xgpnZRpcAikiuRMhzQ12MGFOsWWSg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1so5J-hMdxUPp15c+xgpnZRpcAikiuRMhzQ12MGFOsWWSg@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 03/11] raspberrypi3-64.conf: Use 4.9 as default kernel
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
X-List-Received-Date: Thu, 16 Feb 2017 06:01:51 -0000
X-Groupsio-MsgNum: 34509
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline

--/04w6evG8XlLl3ft
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 15, 2017 at 06:47:17PM -0800, Khem Raj wrote:
> On Wed, Feb 15, 2017 at 6:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
> > On Wed, Feb 15, 2017 at 6:09 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >> On Sat, Feb 11, 2017 at 09:26:47PM -0800, Khem Raj wrote:
> >>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >>> ---
> >>>  conf/machine/raspberrypi3-64.conf | 2 ++
> >>>  1 file changed, 2 insertions(+)
> >>>
> >>> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
> >>> index 5598e50..cdcd726 100644
> >>> --- a/conf/machine/raspberrypi3-64.conf
> >>> +++ b/conf/machine/raspberrypi3-64.conf
> >>> @@ -13,3 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
> >>>  VC4_CMA_SIZE ?= "cma-256"
> >>>
> >>>  UBOOT_MACHINE = "rpi_3_config"
> >>> +
> >>> +PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
> >>
> >> This doesn't really work as rpi-default-versions.inc already sets the
> >> version and this will not overwrite. Maybe have this before including
> >> rpi-base.inc?
> >
> > actually I realized that I set the PREFERRED_VERSION_linux-raspberrypi
> > in my local.conf and that overrides all. I will send a followup for
> > this.
> >
>
> just sent a series of 3 patches which should take care of this problem
> please apply it on top of this series.

As well omxplayer compilation fails on this machine:

| ERROR: oe_runmake failed
| aarch64-poky-linux-gcc is unable to create an executable file.
| C compiler test failed.

Can you take a look on this?

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--/04w6evG8XlLl3ft
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlilQC8ACgkQJrqo2vax
FPZKBw//Xj4kViobjNMvwpzOuvXflhrxjIzmYEld4fIkY7JBMVU6BmjNHHyg978Y
KIB6AEsHp0Q5sIQjJADMZVDN6nHB7sfnVEVkWMh09d/ox4rX+MtDKuGR42JWwJYN
YOYGJZVgPkyEbBx2ltNLsS7kO9e5zRNE/4m34PJ6ZRCfWDKLvc5lZFKaJlkvMPiJ
OcfyicrHY05PmRZKJnyJ1FzwdtmyyHBORxaiIcjU4q1U9or/RnOi3KrMArCZKHnF
1LiD2MouXQvALESrVR7+7O8GlUHuwoQuUFlFI46YugHQ53dvWGU3SShU/f2Ik55X
oZRCREx9OMwN4NInOAt2ruqXJOb5mVk6zJdnnJhVQGEq1l+69ispcIwaCPF7/8kI
eW45NLgKSA1AuA68smrgFYN94kS2pFL7aKmMHTFgliGkCn4McH+9400QII7IrvpH
kPZdYkO4sjceDmtn5sdXvA3bTk00HpnbRV+AYcsCqZE4I0htW2NABwhcr0oPfjaq
S83E0vu+6dYCNBeZcR8A/e0CKkVgCg5SmFcxCy1rZj+jhTtLJqqE7/dGf0mVxN3y
bkkV0SajkaMYVL4olxsIjOyyvDGq4OFteKTGaKWfo17mLLwu1ob8UBRVJ5q4j9ZC
N7CLtltcc0RmF0/U6yKyvK+jGzEGKiTNVEmNZCqOHArDgDMdYZI=
=fvYL
-----END PGP SIGNATURE-----

--/04w6evG8XlLl3ft--
