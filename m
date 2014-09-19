Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4834E00851; Fri, 19 Sep 2014 14:17:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DA33E007C1
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 14:17:21 -0700 (PDT)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1XV5YN-0002eJ-TF from Joe_MacDonald@mentor.com ;
	Fri, 19 Sep 2014 14:17:19 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.181.6;
	Fri, 19 Sep 2014 14:17:19 -0700
Received: by burninator (Postfix, from userid 1000)	id 657E95812BA; Fri, 19
	Sep 2014 17:17:18 -0400 (EDT)
Date: Fri, 19 Sep 2014 17:17:18 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <xin.ouyang@windriver.com>, Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20140919211717.GB5036@mentor.com>
References: <20140918195737.GB6322@mentor.com> <541B3B4E.30300@windriver.com>
MIME-Version: 1.0
In-Reply-To: <541B3B4E.30300@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] refpolicy update in master-next
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
X-List-Received-Date: Fri, 19 Sep 2014 21:17:34 -0000
X-Groupsio-MsgNum: 21518
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5/uDoXvLw7AC5HRs"
Content-Disposition: inline

--5/uDoXvLw7AC5HRs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [meta-selinux] refpolicy update in master-next] On 14.09.18 (Thu 15:06=
) Mark Hatle wrote:

> On 9/18/14, 2:57 PM, Joe MacDonald wrote:
> >Hey all,
> >
> >As we'd all discussed at different times in the past, we're well behind
> >the curve on a refpolicy update for meta-selinux.  With the 1.7 release
> >of Yocto coming up, we thought it was important to update the policy
> >sooner rather than later, so I'm starting that work now.
> >
> >It's being done in master-next and currently the only recipe that has
> >been updated is the -mls one.  Over the next few days I'll be updating
> >the others, then working through testing and trying to make sure they're
> >all sane.  It would help me out immensely if you had time to kick the
> >tires as well on your favourite policy variant.
> >
> >Depending on how long this takes, the next step is updating the
> >userspace.  Fortunately this time around, though, the current userspace
> >is still officially up to the task of managing the current policy, so a
> >full update isn't strictly required.  It'd be a really nice thing to
> >have done, though.  :-)
> >
>=20
> I spoke with Joe about this work this morning, and I think
> master-next is the right place to do this.  So if you have immediate
> bug fixes, we'll try to apply them to both master and master-next.
> And then continue to use master-next to stage the policy changes (or
> anything else that requires a bit more 'soak' time) before merging.
>=20
> I'd like to try to get 'master' of meta-selinux fully synced and
> working with the 'master' of Poky around the time of Poky's release
> (within a week or so of the release at least)..  then we can branch
> and let the master continue to flow with any "new" work.  (It's a
> plan, I'm not sure if it'll happen or not.)
>=20
> If anyone has any concerns let me know.. otherwise I think this is the pl=
an!

The plan proceeds!  :-)

Anyway, so I've now updated all of the policies in refpolicy/ and I'm
starting in on the testing.

Pascal:  Can you pay particular attention to refpolicy-minimum?  The
straight forward-port of it failed to install the unconfined module
(obviously kind of important to r-min) due to some failure inside
prepare_policy_store().  I started debugging it, then saw that there was
a copy in the refpolicy-minimum recipe as well as one in
refpolicy_common.inc.  Both of them need to be cleaned up, but they both
appeared to be doing the same thing in slightly different ways.  Given
that, I turfed the one from refpolicy-minimum and it looks like the
unconfined.pp is installed properly using the version from
refpolicy_common.  It wasn't clear looking at either the function or the
commit log why a duplicate version of the function was placed in
refpolicy-minimum, so please have a look to see why it was there and if
it's still needed.

Thanks.

--=20
-Joe MacDonald.
:wq

--5/uDoXvLw7AC5HRs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUHJ1dAAoJEEn8ffcsOfaWVtcH/0yLq69ju/xy69uCDDHVzT5J
jOx7BLGM+RoAMNWKKIiNKQKzl/ycF9lAfLLbE/LCUGd0pg5zj0i8OPT3L/4PK+7J
bhiKhEMAb5ErwU7pf3w1ymgepFpvcdv6F9pAwJm/VrLYVWbpYd4pTGLez2wLFUcI
oixIqST2BdVJgJS9g+O48eU7O4sNwvaG7OToMEa2fYerSCmjvFOum4Ic+oTTlctA
z6smPohmysBMpTDe2tOM8VZ2kzCCcepUEC56YlnE2AOQVQRjleez3HF2xoMDGl01
JxT/kTi2BZ2qHOUxREryrsr6A9541J1GK2lHqy3Nqcd3va8//hGmR8lxLPfsyoY=
=Owrw
-----END PGP SIGNATURE-----

--5/uDoXvLw7AC5HRs--
