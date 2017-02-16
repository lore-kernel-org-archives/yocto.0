Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA248E00510; Thu, 16 Feb 2017 11:37:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B963EE004A0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 11:36:56 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 5so2746858pgj.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 11:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=wEAgoRS0svLpbqImqz0rzfFi1837f5CCTDDMBG8WGdw=;
	b=QvywKfhGjt+ATXEF0rQNqsTvjoIErJU6X4VdUJWlL6/kiDIbYn7DkYt1nAy+4Up57q
	6EOrGMFwnHUwKAW0eCUcouEwSm6hnMMWIeGw4KCn/fVquqIENklq5+rR18vxSFzu4zKG
	1RCeftezyh7gAOE02kEM2t5Fd9zUbOlz2tnVh/+4n7o/p31BjVRFFrFzqjincR1y7CWw
	TP6tmZuKWfXzJTbY3kF2RRnz4wqhtKv188bXZ5r8PxYExMWYlfQLuLAI8osX7WN6jFgb
	gI6LZZwMkvheUXXD9Dda6kheyNUYQF5BVLfRV2vFk6PHZI6FhuCG5YaM6zVbRF3NnGJ7
	1naw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=wEAgoRS0svLpbqImqz0rzfFi1837f5CCTDDMBG8WGdw=;
	b=AUzXyqFp3zV8UHLpFz1Ew2kzE2hqmw5lE5xhOhBgP712tThE8hrQ+S8NEk4m7L7XfR
	UFVqVOS/lC5GsPhaB8QnQUIUUquacuPJqK5ZJprZRGRcRRwMz7P8Ti1FAw2C6e7eKIKv
	w23kwhOzB5M2cOlxEEblkBhB23Z6tTK5koTSXUwCymhect0pCGNEMM8OwlZuPXcAR8GS
	AJFE+hcw29fNFoKuDXdNEGV2wOJ+O9pttJNO1l39847SRD/ED67jqd3gsqT52UEWTpZM
	mOcCjUWHgNEYpiiaqnIHk+Gc09LPweIdmjNZK00QOgu+Kr3DJIHtqRHKrG95km5aAOu3
	lOyg==
X-Gm-Message-State: AMke39mFsdlR8NAgGDwxDK3u26OhUtNjN0GPFShMm2E2PACj+TLuZHrGl14Mk9c7aNd9Rw==
X-Received: by 10.84.143.165 with SMTP id 34mr5586155plz.2.1487273816013;
	Thu, 16 Feb 2017 11:36:56 -0800 (PST)
Received: from carbonA ([2603:3023:807:fbe0:ab77:6fd:9c01:1923])
	by smtp.gmail.com with ESMTPSA id
	a25sm15236656pgd.26.2017.02.16.11.36.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 11:36:54 -0800 (PST)
Date: Thu, 16 Feb 2017 11:36:40 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170216193640.GA29416@carbonA>
References: <CAK18fxE4+8s3QAWm9mVQQjimvAQ1FSL44yWwuGEyDcWki5Tbpw@mail.gmail.com>
	<CAHUNapT4KhdpWB2EecbjcDCP-qQv+t6-JYfmt9NPB31btU6k-Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapT4KhdpWB2EecbjcDCP-qQv+t6-JYfmt9NPB31btU6k-Q@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Change ssh key for meta-raspberrypi
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
X-List-Received-Date: Thu, 16 Feb 2017 19:37:00 -0000
X-Groupsio-MsgNum: 34543
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ikeVEW9yuYc//A+q"
Content-Disposition: inline

--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 16, 2017 at 09:36:47AM -0500, Trevor Woerner wrote:
> On Wed, Feb 15, 2017 at 7:11 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Who do
> > I have to talk to get this configured?
>
>
> Michael Halstead (CC'ed)

Thanks Trevor. Already sorted.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--ikeVEW9yuYc//A+q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlil/0AACgkQJrqo2vax
FPagshAAjEVIUl6FsXxMYQsodjlb6Wgwg6x6Zxm55yfpVXnbk55NkRs6+A3dMWLA
tZoKC35+w7uI9pgMI63w0bsFxqWMw5ELT7d1CS8+DBaoI30mNoyM8fs34Vlr6i9K
sgJmLv3GXvYpl1p3XX2UwIi2GZNXmmxmY8dafcYWZgstn2XL7TjR1X8BdVQHjGow
0lT9XclIKy6E+ojpuGAg1lzMRjyCHf0pmE2cW15dfjqaFlIlRpxVL4ODMidAlaVK
Vg6vKRa327V2g4LS/xxjAkFEdSU2Ui3QgYx7wJtqIGTBHDB+0/W+SIa19kA8ZI/f
fajjk7vszIilnyRw31zZb3nrG5fd9BzdBnsxRtkW4r2mOce9fBR9HvP5tQ1s3fvD
E2+W0Wk4vL6d0bDGYXHDWuVp/E/k5Z1IvqUni27vPoba2x5xtmKaplvZhK8i6Wu5
nNphlMzL9CIgXYlTO0MCJdBTftVYvDMTOCxbs7Wuwu1olJ9eX93k5+zna4p7gJWR
40Tvd0rTWNb3qjnITuN7spGvxlmNRPFQ5SxZBuLw/5vYCiYVI7L9UaKvZvJtEVpe
MRWmOcvrYSjK5sxzbwDVbig3vQZkxufRd/CUqfcM2Uj/UzNIG5+BJXTvN9420Bwq
hwk7mKTuI90M2qwl1s/icwfH1B7zfaN9Uy8q7PtXg5c+y1Tyjkw=
=UIol
-----END PGP SIGNATURE-----

--ikeVEW9yuYc//A+q--
