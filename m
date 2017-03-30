Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A57DE009B9; Thu, 30 Mar 2017 15:21:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C521E00992
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 15:20:59 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id w43so15824135wrb.1
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 15:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=NcAGWgU78Tye/uuJBx3uS3SNm4i0SmD5wM7Kb/yFeaA=;
	b=YAI3INUeKqsmqOfCtiQLfzg65F1sKS+dTpYfsxCD2v0zXpc+v8vWLBhn9ho2Ne8ZvO
	9RETiyKOan1kDpRSZv3vmVgdLibCCyC+6FEaQmjxY/fRiquULOGEdputQfNiLojfNh6a
	8BxqIqk6T9YMIW1QpLcActDxCzn/J/L+fWbnqOmhq/W++OgkriNcdVlRONmkudk/rn0G
	vxphDWdkrXkzgjC7YJ4+EpRiNj9GTiZWf599QVfg8TKhFh9oFpOPRb1Vv8CN5YQ+MKWo
	/uBi6xDnh6RvBBvTiSn82+DcKOcIeKE3SoYEy70Qqh6bT8q5NjX5BsgM3EkDdQo7DZsc
	YrOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=NcAGWgU78Tye/uuJBx3uS3SNm4i0SmD5wM7Kb/yFeaA=;
	b=Ql4eF1XG8QhwxH+yQpv/VEzH8hDIOTqUaY+XcS3jTz14knfW95prtGdZTgWwXeaSG5
	5fS9Uio0541Zr9AcMmPeVn4Pga27zP8l4kvw1Puldw+2uVRiMiouGeQWFZxT+9VYtjth
	QZWFemvYSi+/Y1psCox36wotnB3DhX9ci3M3aJ9f/km9Q1kYM3fe5VBfQBRdd/YhE+uc
	HNFjFOL1Xk42IcEK9kR9cgadBJnXkQUTfgzEyTGzo9Eq+EQzj71di6TBRICrVXgWFgT2
	Ig87PWK7zf+t3/xq0gu90L90IzfsW4Zf73bCA/EwpWoEYwcWzZ5Ve13m10CsfS6Vvewy
	bTxQ==
X-Gm-Message-State: AFeK/H0PGNUaeeZXK7Gfnvbf0kV8+lHLvsSoBudnClr3g9bCc1vHwrc0xYcR7iy4DNe9xg==
X-Received: by 10.28.60.195 with SMTP id j186mr329653wma.82.1490912459038;
	Thu, 30 Mar 2017 15:20:59 -0700 (PDT)
Received: from carbonA (host109-159-26-35.range109-159.btcentralplus.com.
	[109.159.26.35])
	by smtp.gmail.com with ESMTPSA id m90sm469143wmi.34.2017.03.30.15.20.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Mar 2017 15:20:58 -0700 (PDT)
Date: Thu, 30 Mar 2017 23:20:39 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <pbarker@toganlabs.com>
Message-ID: <20170330222039.GA4773@carbonA>
References: <20170314103237.9533-1-pbarker@toganlabs.com>
	<20170330074707.73ed5ace@host0.betafive.co.uk>
MIME-Version: 1.0
In-Reply-To: <20170330074707.73ed5ace@host0.betafive.co.uk>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH 0/3] Stable branch kernel updates
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
X-List-Received-Date: Thu, 30 Mar 2017 22:21:04 -0000
X-Groupsio-MsgNum: 35343
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gBBFr7Ir9EOA20Yy"
Content-Disposition: inline

--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 30, 2017 at 07:47:07AM +0100, Paul Barker wrote:
> On Tue, 14 Mar 2017 10:32:34 +0000
> Paul Barker <pbarker@toganlabs.com> wrote:
>
> > This series contains backports of patches from Khem's latest combined pull
> > request. I've boot tested a raspberrypi3 (4.4.y and 4.9.y kernels) and a
> > raspberrypi (4.9.y kernel) using these patches and all looks good.
> >
> > Khem Raj (1):
> >   linux-raspberrypi_4.9.bb: Update to 4.9.13
> >
> > Paul Barker (2):
> >   linux-raspberrypi: Fix uImage build on 4.9.y and later
> >   linux-raspberrypi_4.4: Update to 4.4.50
> >
> >  ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 ----------------------
> >  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  5 ++--
> >  recipes-kernel/linux/linux-raspberrypi_4.9.bb      | 10 +++++---
> >  3 files changed, 10 insertions(+), 34 deletions(-)
> >  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
> >
>
> Ping on these.

Hi Paul. I'm going to test and merge tomorrow. Sorry for being late.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--gBBFr7Ir9EOA20Yy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljdhLEACgkQJrqo2vax
FPY2AxAAiOk06YTvzI8ohB9mVWuVfVu8dWOkuIT3HsAmjqeqW9XAJ4p6054EnO6+
1fkMQZplNu2kAeNPLZgV+61ytLJJriHGvm4JEzGdPyBRkheo3/lh3jA405Z9IpuS
DRmtHoDPXPs71T3KtvHJV/R0KXgbCcYvhedSQ583x/GhxAAiZJUNhmlyZBb5YQsn
bMM571nw2lyQVjmy5BFl6XqfjF6vYuVaHMWxyKCcI0adhdcgCBNdWbfZGLWr80Rp
yxLb21f5/tuA32/gCc92N9TL9KWDRRs4nMYgKNOmyObkBSQlnH+j+O/tRCK6B/CC
1eIvc1sgSOmOrjXxnQvvZJ/7oRotaEyB7kYBE/RtmN7rKM0A0HB3pMGjiICDleCj
Hp7/JV17OzttmjyKjhw0pzWL97/uO5hj30lka9simhxrlHY3Roe/x8D1AjrKRPEL
y8SMcFEhBspE0oLGHhJU4R0evSd3JoGr3vym0nkZWyQEcuf3lysha6+r1+UHEVUl
otC2NUaY5iRPllcEuKOiwmqdduC5XlHT0v89LmFMIaiOhM+e6VwmpttOvlWMaxeM
cIzwt+KrowjNrUk9C2MAcru4k1/L5PnazNL7m4eVpv2ib44NFKMLKZzDjaWP4kfH
bnzkTR3VMsLW2x/fsmFTxZQBkxJG5wmDTlF0WpvehFkNMtCIklQ=
=m7DZ
-----END PGP SIGNATURE-----

--gBBFr7Ir9EOA20Yy--
