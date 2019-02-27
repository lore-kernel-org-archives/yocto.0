Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A820E00D15; Wed, 27 Feb 2019 10:45:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.65 listed in list.dnswl.org]
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7AA9E00A54
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:45:48 -0800 (PST)
Received: by mail-ed1-f65.google.com with SMTP id g19so14827191edp.2
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=429w0A522XhHu4zDKzMGbgxfxYffMLgyuhCNcKAyBlc=;
	b=EvEA2UtjLhhiE4qVgsBi1nw22mEWFWVCIUIKTCdSzmezTzI5upDpP23YNrWXThsf5p
	irw/jcrluEO22Idh/29b5XihCSS0rbQyec5qTGOR+x9sb470KQN48lBWykEE03r5zlnj
	vjk/yvDdMCxVG26+St912a7igWeHbo684DiKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=429w0A522XhHu4zDKzMGbgxfxYffMLgyuhCNcKAyBlc=;
	b=tx31R+UbGTYDCb1Y+nrZ/fu6XNsX1qfb1N+pAwu2Xuv581mVeLe0mI/vNExJeuEwFH
	l1wyaoUPCNw2CxpZshQZmdf+GFt8A5Eg6YfuRUYSFVJRbXsZpNtGUxGxD5lB0E+DsBzc
	Gk5p4tGgJzr788QfAOncvbD+Zhj1+v1CHBDNj7DJv5wV1VM/eABkDvSc9CNVV3RVSqUh
	FViNrzTtjm2abl+B7SHkbdMCOOhLiMOjVEPFutJGZku+5zPHILJ2Wlq3sItr3uhIUnJ/
	o6lrLNnB5HV+w468X5/QsZwGfhPW1NIgXUaC8Yz0xG2YvHZ9OIEYTht3V28aUNPrvz9b
	Ylug==
X-Gm-Message-State: AHQUAuaWIsUhcWuC145k0H3FF1TL9ULEBdYwzp5oWg3FsloyJWD5Ztyl
	+omcCOQ05EbzfinggHnb/Dumww==
X-Google-Smtp-Source: AHgI3IaRZsZX6ybjo2bKWvvG9DSUf/3Y/B2Dg2kaylTTWOkse1lEllHCInAH3AZrglIz+Rg9BzwkqQ==
X-Received: by 2002:a17:906:1103:: with SMTP id
	h3mr2614921eja.41.1551293147833; 
	Wed, 27 Feb 2019 10:45:47 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-344A-8475-F632-B81B.dyn6.twc.com.
	[2606:a000:1401:880d:344a:8475:f632:b81b])
	by smtp.gmail.com with ESMTPSA id f2sm2054079ede.97.2019.02.27.10.45.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Feb 2019 10:45:46 -0800 (PST)
Date: Wed, 27 Feb 2019 13:45:42 -0500
From: Tom Rini <trini@konsulko.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20190227184542.GB12046@bill-the-cat>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
	<CAJTo0LbJUurHkyTz1EuOHnxkYK1MOX8MxUXzzSmPFZBqd_=qcQ@mail.gmail.com>
	<20190227175814.GW12046@bill-the-cat>
	<CAJTo0Lboemkg2+rxxBqgj7K1LLQGEioDqsJUQx1AtCzMgrGHrg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lboemkg2+rxxBqgj7K1LLQGEioDqsJUQx1AtCzMgrGHrg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 18:45:51 -0000
X-Groupsio-MsgNum: 44247
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="z8OPzjJiggy3JOV2"
Content-Disposition: inline

--z8OPzjJiggy3JOV2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 27, 2019 at 06:35:10PM +0000, Burton, Ross wrote:
> On Wed, 27 Feb 2019 at 17:58, Tom Rini <trini@konsulko.com> wrote:
> > I'm not sure we can blacklist busybox from the build at this time
> > (hddimg requires initramfs that requires busybox) but instead only force
> > remove it from the image and ensure it still builds.
>=20
> Don't build an image with a initramfs?

OK, so I've kicked things a bit harder again, and here's what I see as
the (small) rub.
$ git grep hddimg meta/conf/
meta/conf/machine/include/x86-base.inc:IMAGE_FSTYPES ?=3D "hddimg"

So yes, we can do a test with qemux86/qemux86-64 and documenting this in
local.conf.sample is good (and a packagegroup that gives more 1:1
functionality is on my TODO list somewhere).  But it's also true that
we'll get people with "I can't remove busybox and I tried what it says"
posts since blindly pulling in hddimg gives at least:
ERROR: Nothing RPROVIDES 'busybox-mdev' (but
/home/trini/work/OE/oe-core/meta/recipes-core/initrdscripts/initramfs-frame=
work_1.0.bb
RDEPENDS on or otherwise requires it)

That's the point I want to make, after throwing out a quick test build
dir.

--=20
Tom

--z8OPzjJiggy3JOV2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcdtrWAAoJEIf59jXTHXZS+LsP/2jRUyz4OMZsOVJbE5zI7xHX
U6nxo00aFzAfWF7m3qpAI+pubGBWL6QSKAB2afUHHG67Po1VqvK3sIRQaa+Sekbj
dE4XMjaCIvMy5KB2W5a8/CyCMRPj4lJ4v2U4Ptv5K4flfZ81mspdWWntGFZHUuL9
YidMDUr9C9g13G9KmEtYQU+LU33kb6clJfbsfYgJja5+9ngEf57gLFaL876PlxkL
4bIcvgDSnxN+mJDg/vN4ORMIQtdGyxnvmwJOdib0c+bfSZNXrUpT+s5q2bR4AsiE
NROfFuLdKX5UQyrrw8mKZSyNTwJ3k3Y/FiGGeZagVKY/b+XLThxQSMjYC5CUZ3KG
XhY1uFh/dxibdYlrhepIQRJ3o/AblfShEcmndHjFU4h1Xd9D2LIqxhW9gXsdkmP/
UBYnw2fgtyPVah0X+XTjDw464c5vyC0wxo35URVjgGdY3Ma2pbVNJ+eoQKFKbSyD
LI70RZh6Yf8By4JR14R81CHFj6B8KWho5AX+EgwrtMzwtfCQ4Y50gBumOnS7nKKZ
WULZdrx3vKK94FpEoIXHeKKBkUBlSAVUHjpoylExzUP5bP/GIhFSv6XMoJlBweQl
GVv1x3PeCr0yJDIibpT2me/60iCENvl/tGNHjRoCgh9HV7cRk7IaYYe3vhPIDP/X
EksDXnvPtWREuOULdAcn
=EKjq
-----END PGP SIGNATURE-----

--z8OPzjJiggy3JOV2--
