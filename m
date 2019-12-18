Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.8969.1576667017564014151
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 03:03:38 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47dBvV65nsz5tl9;
	Wed, 18 Dec 2019 12:03:34 +0100 (CET)
Date: Wed, 18 Dec 2019 12:03:33 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Pull a single file using git lfs
Message-ID: <20191218110333.mkx2h74chsbxuzco@qschulz>
References: <em3b7fa0e4-1cdc-424d-86c1-6d055dd9ee59@andys-imac.leeshillfarm.local>
MIME-Version: 1.0
In-Reply-To: <em3b7fa0e4-1cdc-424d-86c1-6d055dd9ee59@andys-imac.leeshillfarm.local>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andy,

On Wed, Dec 18, 2019 at 10:46:17AM +0000, Andy Pont wrote:
> Hello,
>=20
> I have a private git repo on our GitLab server that contains a bunch of
> source files that came as part of a commercial product and the final bi=
nary
> executable is also stored there using =E2=80=9Cgit lfs=E2=80=9D.
>=20
> I=E2=80=99m trying to figure out how to create a bitbake recipe so that=
 in the
> do_fetch() stage it just pulls the single binary file.  I think the fil=
e can
> be got using =E2=80=9Cgit lfs checkout path/to/file=E2=80=9D but I=E2=80=
=99m not sure how to make it
> connect to the repo and not do a regular =E2=80=9Cgit pull=E2=80=9D.
>=20

I unfortunately don't have experience with git lfs.

I'm thinking about the subpath argument to SRC_URI git fetcher.

https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-use=
r-manual.html#git-fetcher

""subpath": Limits the checkout to a specific subpath of the tree. By
default, the whole tree is checked out."

So maybe by giving the path to the file you'll be able to get it without
the whole repo. Provided you're able to get those files with git pull
and not git lfs.

The other thing could be to use a do_fetch_append() with the call to git
lfs in there. I think the git used in that task will be the host one, so
you should then have support for git lfs provided you installed it on
the build machine.

Hopefully I'm not answering with complete non-sense, and giving you some
hints on what to test a bit more :)

Good luck,
Quentin
