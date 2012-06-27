Return-Path: <martin.jansa@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32F46E013E5
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 06:32:56 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so1132583bkc.35
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 06:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=sqs88Dm7KsOOA5tW3+YFW7mcDpNun80XvyABmi6H7VY=;
	b=qNsRLZzKWesauEJXGacbku/slriQMEOkux52oWX88vqpV5oaaBJKp7f2dmXKuFrYZj
	tbcrDVdanpS+q7P0j4VIRWSTzZcmoWQbz7D4XxK0J6eeNwUymHKcVt+0Ty+LNmG7+ZzJ
	O3+V8uKelMiVBCrPtT/nRGQwOv3akdAJyiw+IpSRyDUBfxJk5y1TYwcbhH7tR+RMqjN1
	NcjGIfcIvt85BePG7D12fdi+jj4KcbtUn95f1uE4YPJxt5+ELPZgu6+jOJzpSIGiBzQW
	baQrpulGiO9HFQUouO8eRHcJ4+vMbXCSt5ypvR1sgEK6tNXpalBhM3R9I5aFcacNzdQS
	g73w==
Received: by 10.204.129.17 with SMTP id m17mr7240916bks.4.1340803975153;
	Wed, 27 Jun 2012 06:32:55 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id o4sm54976181bkv.15.2012.06.27.06.32.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Jun 2012 06:32:53 -0700 (PDT)
Date: Wed, 27 Jun 2012 15:32:52 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20120627133252.GB11927@jama.jama.net>
References: <alpine.DEB.2.02.1206270927460.18752@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1206270927460.18752@oneiric>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: fetch log file errors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Jun 2012 13:32:56 -0000
X-Groupsio-MsgNum: 7550
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gj572EiMnwbLXET9"
Content-Disposition: inline

--gj572EiMnwbLXET9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 27, 2012 at 09:30:59AM -0400, Robert P. J. Day wrote:
>=20
>   here's the log file for one of the tarballs that should have been
> fetched from my local mirror:
>=20
> DEBUG: Executing python function do_fetch
> DEBUG: Executing python function base_do_fetch
> DEBUG: Trying PREMIRRORS
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['cvs', '.*', '/.*=
', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['svn', '.*', '/.*=
', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['git', '.*', '/.*=
', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['hg', '.*', '/.*'=
, '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['bzr', '.*', '/.*=
', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['svk', '.*', '/.*=
', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['p4', '.*', '/.*'=
, '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['osc', '.*', '/.*=
', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['https?$', '.*', =
'/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-conf=
ig/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['ftp', '.*', '/.*=
', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
> DEBUG: Trying Upstream
> NOTE: fetch http://downloads.yoctoproject.org/releases/gnu-config/gnu-con=
fig-yocto-20111111.tgz
> DEBUG: executing /usr/bin/env wget  -t 2 -T 30 -nv --passive-ftp --no-che=
ck-certificate -P /home/rpjday/yocto/builds/bbc4/downloads 'http://download=
s.yoctoproject.org/releases/gnu-config/gnu-config-yocto-20111111.tgz'
> DEBUG: Python function base_do_fetch finished
> DEBUG: Python function do_fetch finished
> ERROR: Function failed: Network access disabled through BB_NO_NETWORK but=
 access requested with command /usr/bin/env wget  -t 2 -T 30 -nv --passive-=
ftp --no-check-certificate -P /home/rpjday/yocto/builds/bbc4/downloads 'htt=
p://downloads.yoctoproject.org/releases/gnu-config/gnu-config-yocto-2011111=
1.tgz' (for url None)
>=20
>   not sure what i should be seeing here, and i can guarantee that the
> tarball gnu-config-yocto-20111111.tgz is in my ~/dl directory, as are
> numerous others that are now being fetched from the net rather than my
> local mirror.

see
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-June/024465.html

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--gj572EiMnwbLXET9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/rC4QACgkQN1Ujt2V2gBxcoACbBV93eWBmOyl7alOh985+GnUh
QMMAnRrS0ln3D15ae7LaSxeiGohxdYbR
=SKfC
-----END PGP SIGNATURE-----

--gj572EiMnwbLXET9--
