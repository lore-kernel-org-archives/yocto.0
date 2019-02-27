Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A9CBE00CEE; Wed, 27 Feb 2019 13:46:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27E1BE00AB0
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 13:46:10 -0800 (PST)
Received: by mail-ed1-f68.google.com with SMTP id 10so15220627eds.7
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 13:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=toTzATuJhcXhOYX8MUrPw3i+NS0kGEcgCnfx9MHqKrI=;
	b=BTSCZbh+E/+oX8AKn8ypfeedk5yTEw58MJXaQMqVdi7kEbWboqWyLzo6f+2bx1XZH8
	homD70tsbp2jkAekaNmTUNk9FqkYEZ5uTO9FbmMm6GIfS9Joy+hO+0vr6Jbt4ExsDkJS
	VGHV9glMVrZITpM/4vKCw+HPHNziwNA6Ol0WU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=toTzATuJhcXhOYX8MUrPw3i+NS0kGEcgCnfx9MHqKrI=;
	b=HivQXXsMFBSm58WyWb2nsJOY8s9DA436BJmPNeuKjTEBuY7AIEOkwFBRbnTrJ4ugt+
	ujalKot7bfSUWjH5eX/xso0Zj+P+hiWIOpKfX0ub3kWJoZ9EM8OszqISjwG5bNZ9xyrT
	n2w2Ncbu7K7ZU7CxNN6ho14Ygqxbsn3g/xncgWICc5exh4v7Mad/kn/gjQGA71Iv3zlP
	hIH055kBu25OVXOf+ewT9midjyZgAAMXqicURNDZbnHW5LbF2TW7epYBtFt0RXfFknba
	4uzZar7Pt0NYl/uxJvOvX/vSkQBkbJLmo4MwM54LtYBaIMbfgQaKNxiFNPVPpTit5v7o
	A1dw==
X-Gm-Message-State: AHQUAuYKoYHxk7/x4jmqBWAKgNxGxMZ9wi/dYaPeio0+Nj2CVTwynk8z
	Mp0n9dURsMyVUPfnEnGVoe/yDg==
X-Google-Smtp-Source: AHgI3IbTlFRQsUw4uyZEps29YmJX8djx1EsqhYFhRAWRrzK1RZk9BM81cStalfj06uX1DGa2ZGZZCA==
X-Received: by 2002:a50:9908:: with SMTP id k8mr3827490edb.246.1551303970168; 
	Wed, 27 Feb 2019 13:46:10 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-344A-8475-F632-B81B.dyn6.twc.com.
	[2606:a000:1401:880d:344a:8475:f632:b81b])
	by smtp.gmail.com with ESMTPSA id d5sm2872767ejj.26.2019.02.27.13.46.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Feb 2019 13:46:08 -0800 (PST)
Date: Wed, 27 Feb 2019 16:46:05 -0500
From: Tom Rini <trini@konsulko.com>
To: Adrian Bunk <bunk@stusta.de>
Message-ID: <20190227214605.GI12046@bill-the-cat>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
MIME-Version: 1.0
In-Reply-To: <20190227214037.GA11051@localhost>
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
X-List-Received-Date: Wed, 27 Feb 2019 21:46:12 -0000
X-Groupsio-MsgNum: 44258
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SbbROFN+SMqu6LKU"
Content-Disposition: inline

--SbbROFN+SMqu6LKU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 27, 2019 at 11:40:37PM +0200, Adrian Bunk wrote:
> On Wed, Feb 27, 2019 at 03:09:02PM -0500, Tom Rini wrote:
> > On Wed, Feb 27, 2019 at 09:06:38PM +0100, Jean-Christian de Rivaz wrote:
> >...
> > > So as expected systemd is there and busybox is not. But there is a lo=
t of
> > > useful commands missing on the resulting QEMU image:
> > >=20
> > > root@qemux86:~# ps
> > > ~sh: ps: command not found
> > > root@qemux86:~# w
> > > ~sh: w: command not found
> > > root@qemux86:~# find
> > > ~sh: find: command not found
> > > root@qemux86:~# grep
> > > ~sh: grep: command not found
> > > root@qemux86:~# ip addr
> > > ~sh: ip: command not found
> > >=20
> > > I expected that all the limited busybox commands would be replaced by
> > > the full
> > > featured commands. How to fix that ?
> >=20
> > Correct, you're missing a lot of stuff.  Somewhere on my (and other
> > folks too) TODO list is a packagegroup that includes procps and psmisc
> > and grep and tar and various network packages and less and more and...
>=20
> "all the limited busybox commands would be replaced" would be a huge=20
> list from dc through gawk, minicom and wget to vim.
>=20
> And would vim-tiny qualify as "the full featured command" of busybox vi,
> or should this include vim with full features?

What to suggest in the busybox-replacement group is a bit of a challenge
as to how far you want to really push things, yes.

> The nice thing about busybox is that it is so small,
> in many cases one full featured command alone
> is bigger than busybox.
>=20
> It is not obvious to me what usecases people have in mind for
> getting rid of busybox, and whether everyone is aware that
> something like "all busybox commands replaced" is *very*
> expensive regarding filesystem size.

The use case for not having busybox installed is something like the
project I'm doing where I have 4G of disk space to dedicate to "give me
something like a standard Linux environment".  Since I need to replace
less (doesn't work with systemd PAGER), and I want my usual arguments to
'ps' to work, and then a handful of other things, I want the full
regular versions of utils, and at that point, I want "command not found"
as a reminder to grab what I really want not busybox doing it for me.

All that said, I am a huge fan of busybox when I need to save space.  I
have and continue to push back when customers ask about dropping busybox
for non-technical grounds.  It's also just true that not every case of
an OE use is somewhere that busybox is the best fit.

--=20
Tom

--SbbROFN+SMqu6LKU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcdwUdAAoJEIf59jXTHXZS8wUP/iiBBkAuBnDSvdQcr0K5ylw6
irUCS77BaanP9ALyLLOMuiqeu8Xprv39Jlc/0FWQEtiu5CUZJPaBBjSClXPjyaYR
wlDUuy9PIMIAxRx5czXCBBTEM/dDTC5tydPeEmT+AwAnEFcrmY/S01Xc/owB3jYg
9eb9hqvOvwCSThK5gwHBh61+i5GSTreHuV24F+oQEawfHxbndjh09nYbbBJhSC4m
UbNAFtzBeWI+CUGK24NsuOdv0BdimqUZyzBNhzW5X71mFAJ24+cSq8DlWfKFVdVn
Kg1OlYWqfzvLmjSGzfEe6FH2mhYdkWlT1n6r4NgY8XncaURAXHHfTJKZ3iJJE57d
UbWxAv6xfZ1MTflwYgvE8DGMDID2WFziAp1z104mTqVl/n+mB22Fc28mSiQQ39v0
kF8F3NPGqWJthnvug+3uVFY56/6oAJU8qXxhDFuKQ/KlVldHe7FJazMdCHaCJJCC
wYaBm2WVoc+rv82jRFUoCBwbIrxJQuTB0U0bB1zQ9DisuniXxlBB4dbsf3B+IZK6
ONxoDfs/LE7jvDxhJoIVwPcLqJtiSiVhjiuaCBHFOiwJiwzcFmjad/dA28kqe90e
kcRO+OTDA376fu0kt6uglh9184P9KFlcAQM6uoLWJDCvvEmip5yYrfacOz2IAKLm
ztcKOye2hJg42jVA/MOQ
=XAXi
-----END PGP SIGNATURE-----

--SbbROFN+SMqu6LKU--
