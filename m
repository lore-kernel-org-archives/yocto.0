Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B501E00E61; Thu, 19 May 2016 07:39:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A36BE00DAA
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:39:24 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id w143so21504348wmw.3
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=NBTGAQZLbRMRraA2XXAKomyDNyIkrI3FQ/CPYdSDFws=;
	b=HJUsNEh2r1CEV+Mkv9/h24ZT0rUCnAHXRL96xQEO7dUXx/UeVUhbC8GGNBfupGyxfo
	52R2TdAXIYNrdbszej4yTViDTgkGo8gP3LaXf+Qv4uhCwWqCErhO1RYNAqVuBMw0E3Hu
	TYgCc8q6wGzcdgdlVptQUPVTK6BMQniUTfcOqJ8OKouycfEpWdTJFLkWO2YPjMVAmQ5G
	8bQpF3eAL2GQwdvPOex65rdCZ1ZBdQBSX84hd7RQn/YUS6EagS7KUtU902lkJXv7MvLI
	pJ/m6dWGxXUu8K6/SzBG7+KQZzjjMsRpOY4rZZUCHziU2ibBSvD4FUP/rmUL6Vz7cMBw
	hShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=NBTGAQZLbRMRraA2XXAKomyDNyIkrI3FQ/CPYdSDFws=;
	b=EjDEKtIK6ak7dTpSLFKePpnUKxvbWEuTgPx5cFe/gvQ1vhef9bKyO/285s17WWK0l3
	quXr0Uu8AbJkquv5wQ0/RRsAnAtZIHilGkzUGgII9zKR1zNFUiCBlOJ+sDOonYMUY8nx
	RNNTG7iq9Bq7/uLoQNZp0ZN2i44uwZUTJMmIRPjnReq91YlxMelFF9VH4d9q/Tfeo4PR
	r427/a786Iop2JYdqh38hBp/cw3e7vba+4rFA7M3YV+GRYXHswXgMzj5j3xqgjC2q5X6
	nMCoH6FcOqOSeRAtFJGkl7S6bjxcLCNjMz3xABNlwCmBqyIbkUiXdq/VceU/kyGGPPg7
	8Ogw==
X-Gm-Message-State: AOPr4FWPGThtMuBZXuI6nV43vGmlXe1ul0TWYH+JHawiwGf6V5oOYCk3U57GufErlU3SNQ==
X-Received: by 10.194.249.36 with SMTP id yr4mr15995221wjc.59.1463668763162;
	Thu, 19 May 2016 07:39:23 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188])
	by smtp.gmail.com with ESMTPSA id w3sm14782999wjt.0.2016.05.19.07.39.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 07:39:21 -0700 (PDT)
Date: Thu, 19 May 2016 16:39:14 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <20160519143914.GA3601@resin.home>
References: <573DAE5A.6000707@elfin.de>
MIME-Version: 1.0
In-Reply-To: <573DAE5A.6000707@elfin.de>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][Question] How to build an hwup image for raspberrypi3
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
X-List-Received-Date: Thu, 19 May 2016 14:39:28 -0000
X-Groupsio-MsgNum: 30070
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline

--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 19, 2016 at 02:15:22PM +0200, piotr.lewicki wrote:
> Hello,
> I'm trying to build a Yocto image for raspberrypi3.
> I'm using only two layers:
> - poky (krogoth: rev eff84a76acea1a0842194106a66684511f409842)
> - meta-raspberrypi (master: rev 9912d38e97671704822d1aa05312a0439cb650d3)
>
> I have built it by cloning both layers from git (and changing poky branch),
> then I sourced poky (source poky/oe-init-build-env), added meta-raspberrypi
> layer in conf/bblayers.conf and in conf/local.conf changed MACHINE to
> raspberrypi3.
>

I just tested the same revisions as you mentioned and the board boot for
me. How do you test the board? Over serial?

If you are using serial I suspecte you are not setting the serial
console. if you are using tty1 (hdmi) you need to add the specific
console argument to cmdline.

> Then I have built "rpi-hwup-image" using bitbake and dd'd it to an SD card.
>
> Unfortunately rpi-hwup-image does not work on raspberry pi 3.
> Boot screen halts when 4 raspberry logos show up and that's it.
>
> On the other hand I have tried the same SD card with raspberry pi 2 and it
> booted up (!?).
>
> Can you tell me if there is still support for meta-raspberrypi layer?
> I found that this layer does not follow Yocto project naming convention for
> branches (I think that the latest is "jethro", but nothing newer besides
> "master").
> Does this mean that there is no stable and up-to-date branch apart from
> master?
>

What do you mean rpi is not following the yocto project naming
convention? It does miss a branch for the last yocto release but there
are already for the old ones.

> Has anybody built a raspberrypi3 image?
> Could you tell me which layers and which branches should I use?
>
>
> Thanks,
> Piotr Lewicki
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--X1bOJ3K7DJ5YkBrT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdAPAAoJEHO76Gt+erfPkGAP/RDvyg9SEryEidZP0IoUvCy6
/yxk7djEaQelQxRX0UJzwpSRMQZUdKqKg9BOo25/7rli2xMj+EGWy70hlKGCUJrB
ird4C5ZwfrL4+/iRGT5ELbUcLvGCQhLXSeJ5IMbsmNfCUEAWjulQ8h+gdaZ2PXTZ
1shDHnzXgxOPhEF97or/G/t9itkTxgnuxu4BCdhs4UBDK9/55JZwRwMZS1E1zndq
T3k2wrsp+K7dzTIgGKaVHeqZ5ye3j5tQx+nMDq2eB3GesflXq13iTappxBOx1Zup
GosYUxJtlCLimuptMz70oVgEsToHqSmm4kzS0VN5FoECP0GYAZio+aCnoTIAruWk
R0SLePm4hGW1aJ1PD62eEvmugbpVL3JlRhqdu4RgsQdSQVqTMFIjyQ0JJQ2QCyVB
dEaz7TOgagbYeSNkZ7J412nqykmA+iw/CJEo1p3dtnd7zLXqNgCHQ5LEENEfz+HQ
z2dLy+UtNYtbkRch+AQ8mSSIuhYO59BDS9X/qanOip9xHc7SXxx+9nmaFGNEIYo3
cyW5wsNvyULzECEZYbHg2rm+pJvnXoOsZ0hB8jtGH9NamE8uBLrOyt2VtIenKT90
+ppydvolw+CjEA3n5DEXPmll6DFW0CYZC98eDHW91AZlUvY3N2276ysZ3pT4OPii
OiHUSEDZMKPt034pggv4
=svf3
-----END PGP SIGNATURE-----

--X1bOJ3K7DJ5YkBrT--
