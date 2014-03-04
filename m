Return-Path: <joelparker27@yahoo.com>
Received: from nm7.bullet.mail.bf1.yahoo.com (nm7.bullet.mail.bf1.yahoo.com
	[98.139.212.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4121DE009A5
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 06:47:25 -0800 (PST)
Received: from [98.139.212.153] by nm7.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 14:47:24 -0000
Received: from [98.139.213.8] by tm10.bullet.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 14:47:24 -0000
Received: from [127.0.0.1] by smtp108.mail.bf1.yahoo.com with NNFMP;
	04 Mar 2014 14:47:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1393944444; bh=5IFNjHBth0WOym1Cy4zGqOHb68uqS7FpZerl+NojnxA=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:X-Rocket-Received:References:Mime-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Cc:X-Mailer:From:Subject:Date:To;
	b=zY3zC20foZRVCNtkCRkfVYEUYE71y6q6azTzQqATzULQylpAlFNayPELc6Kwz67BU/kagMLaBX5S70brtnjK3IjwkyoFasHM07YaS755cEF896l1VwhFQs6YkkOtIMWiVnCkmeHJJ8+vmjNz/5A+o1JqFYzcnWsZn4fk2YwvA20=
X-Yahoo-Newman-Id: 340843.75054.bm@smtp108.mail.bf1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: c6kf52MVM1mZuMB3r.gZxb1xnnMk4fUlxzos4vtkC5Q3m8e
	.nV_TR2rBo.7YDKHuRP8dgVtKm17Rmb_QxZcJ9_px2zQ1ourL5WzzoTOQzgd
	nLToJS49jSD0KKOb_J4Ap2mwle1tIjBZDuMrxZ90Fz9Ngkuh3MD_jySL9KXw
	vF5mi_nqQKr7fkxMiaCTx1mho1shUDr0raGmk_UtE14kjtwLNSpueYkTRiv0
	8mN8FBoZLx5BQUqMbiIDcsPDfQbAYS8m15Lt..VTWH6em17o58AjWWYNwSZ2
	sgfOBHjnGKGen5rUOQqZ3euZNGrD3NvKTscDiuH__w8QJPkhbyvOFURT7O2l
	s3Amy71f.7jthApRlX0IB3Y9TFXXBGF2ZkshSP1f4vvPW7vbE1zHOkG1X0t3
	2uIW9EwDENHlQ0h026Mxy6KFqiC1KyxMhX9Zl.Gl.UAYgXyAotgtmEPgUCpf
	s.u1ihh9C4a9AhZcYM.Z6OjysOXYIVpln.FBOw0.6x9l2SSlApwx4P1.qHXz
	5hECBluBtIAs.d5hzw7EKKpWZvQuC.Jd3C2L3KQ_jHNzNOUFzZ24TcoBltu1
	HB_kdMa3p914lScaUCmKGPY4GNVvJ1ct1cDaN7Wu1XqZCCUuKi.Lf6DSn3FI
	OAaq9rrv5HawCzAHYcHMjg0U7oaU06rCzUDtZcbmfKzo9W9pi42047r1eNsM
	cjXrwin4XDJhymCQ55FS4NX7By1M8IcNSxqaMIvCmkBh3yd6Ikz7leYTO1X7
	Dqkxyvpb.f68RSLj16TwdHsUgAKypLAB9mX4NhC6bMono239BlnOIjK.ZxgC
	SLCRpohRHQruoCJf9qhXO7GHOVurdzNxjmoNOnoxME1mz2fA-
X-Yahoo-SMTP: lT3qEyaswBD.NhksljU3z3rB3q3zHNHuuw--
X-Rocket-Received: from [192.168.22.199] (joelparker27@71.41.161.30 with
	xymcookie [98.138.86.130])
	by smtp108.mail.bf1.yahoo.com with SMTP; 04 Mar 2014 06:47:24 -0800 PST
References: <1393941002.38518.YahooMailNeo@web163105.mail.bf1.yahoo.com>
	<5315DC71.3080904@dynamicdevices.co.uk>
	<1393942977.87424.YahooMailNeo@web163101.mail.bf1.yahoo.com>
	<CANyK_8fGoQe1XaeU+Kt_CAiba2bUb9kKyu4KDCvXWXuzj5SBvg@mail.gmail.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <CANyK_8fGoQe1XaeU+Kt_CAiba2bUb9kKyu4KDCvXWXuzj5SBvg@mail.gmail.com>
Message-Id: <26D5BB52-5D73-4746-ACEE-4A21BD130B77@yahoo.com>
X-Mailer: iPhone Mail (11B651)
From: Joel Parker <joelparker27@yahoo.com>
Date: Tue, 4 Mar 2014 08:47:23 -0600
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add Packages to Recipie
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
X-List-Received-Date: Tue, 04 Mar 2014 14:47:28 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Ok, thanks for that but what do you do for things that aren't in the extende=
d recipes list ? Specifically, I need sqlite3, sqlite3-devel and iconv

Joel Parker

> On Mar 4, 2014, at 8:37 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
>=20
>> On 4 March 2014 14:22, Joel Parker <joelparker27@yahoo.com> wrote:
>>=20
>> Yeah, that is what I tried but it gave me this :
>>=20
>> ERROR: 'httpd' in IMAGE_FEATURES is not a valid image feature.
>>=20
>> -- Joel Parker
>=20
> IMAGE_FEATURES is for features (basically collections of packages put
> together in a certain way), IMAGE_INSTALL is for packages and
> packagegroups. You can use IMAGE_INSTALL_append to add to
> IMAGE_INSTALL from your local.conf, but you're far better off creating
> a new image recipe and setting IMAGE_INSTALL there.
>=20
> You may want to read the relevant section of the documentation at
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingp=
oky-extend-customimage.
>=20
> To find the names to add to IMAGE_INSTALL, you can search the recipe
> index at http://layers.openembedded.org/layerindex/branch/master/recipes/.=

> Note that you may need to change the "Branch" selector to whatever
> version of The Yocto Project you're using.
>=20
> Hope this helps,
>=20
> --=20
> Paul Barker
>=20
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk

