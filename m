Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA7F5E0086B; Mon, 22 Sep 2014 06:36:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69137E00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 06:36:05 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id rp18so5419379iec.17
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 06:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=x1AKn+xElrVZT6k906GJ20isV/AUbEmCUYxiiPY0baE=;
	b=iXmQu+z06rf9MA6446aRb5+6f6n0yGiyV9ssE9vrsaZwEe4i0gr2TqVwzRhlaqTo78
	to9HT7vMO9MiCovpr3kCGzWTCuRUJ+nqvR8vRaj8YRYM3k1gz/vn7V4vNBfiPXKEYyWr
	YZqwughS5gtwxQu/2CvE1QjJGyAT63RakkGcRdlZe28zBb0VGsCEHDpcbXHnzqTBN/RZ
	zBM4irvR7B3b8OoAbnIv57SuyqSLQ+v3xeI9K3N5NcKIIOCjiB95Q6cRaEiVqRcDGzRO
	SBko0XH9/HIdHxAP2uhllq3JPVfI7CrgxQPwjjPr1ZBQsd/NBfexbGASWD0HHgwRjeVa
	9nKQ==
X-Gm-Message-State: ALoCoQlo7Sd7tV/J3CpjTHg3GUt8YjAEgIhxnfRqQ8l471BnIr6tWa4VEmMo8kyi/AGJfODY19et
X-Received: by 10.50.79.165 with SMTP id k5mr14631839igx.16.1411392964270;
	Mon, 22 Sep 2014 06:36:04 -0700 (PDT)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id
	lq10sm8776374igb.22.2014.09.22.06.36.01 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 22 Sep 2014 06:36:01 -0700 (PDT)
Date: Mon, 22 Sep 2014 09:35:59 -0400
From: Joe MacDonald <joe@deserted.net>
To: Pascal Ouyang <xin.ouyang@windriver.com>
Message-ID: <20140922133559.GA28255@deserted.net>
References: <20140918195737.GB6322@mentor.com> <541B3B4E.30300@windriver.com>
	<20140919211717.GB5036@mentor.com> <541FDDEF.5050600@windriver.com>
MIME-Version: 1.0
In-Reply-To: <541FDDEF.5050600@windriver.com>
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
X-List-Received-Date: Mon, 22 Sep 2014 13:36:15 -0000
X-Groupsio-MsgNum: 21555
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Pascal,

[Re: [yocto] [meta-selinux] refpolicy update in master-next] On 14.09.22 (M=
on 16:29) Pascal Ouyang wrote:

> =E4=BA=8E 14-9-20 =E4=B8=8A=E5=8D=885:17, Joe MacDonald =E5=86=99=E9=81=
=93:
> >[Re: [meta-selinux] refpolicy update in master-next] On 14.09.18 (Thu 15=
:06) Mark Hatle wrote:
> >
> >>On 9/18/14, 2:57 PM, Joe MacDonald wrote:
> >>>Hey all,
> >>>
> >>>As we'd all discussed at different times in the past, we're well behind
> >>>the curve on a refpolicy update for meta-selinux.  With the 1.7 release
> >>>of Yocto coming up, we thought it was important to update the policy
> >>>sooner rather than later, so I'm starting that work now.
> >>>
> >>>It's being done in master-next and currently the only recipe that has
> >>>been updated is the -mls one.  Over the next few days I'll be updating
> >>>the others, then working through testing and trying to make sure they'=
re
> >>>all sane.  It would help me out immensely if you had time to kick the
> >>>tires as well on your favourite policy variant.
> >>>
> >>>Depending on how long this takes, the next step is updating the
> >>>userspace.  Fortunately this time around, though, the current userspace
> >>>is still officially up to the task of managing the current policy, so a
> >>>full update isn't strictly required.  It'd be a really nice thing to
> >>>have done, though.  :-)
> >>>
> >>
> >>I spoke with Joe about this work this morning, and I think
> >>master-next is the right place to do this.  So if you have immediate
> >>bug fixes, we'll try to apply them to both master and master-next.
> >>And then continue to use master-next to stage the policy changes (or
> >>anything else that requires a bit more 'soak' time) before merging.
> >>
> >>I'd like to try to get 'master' of meta-selinux fully synced and
> >>working with the 'master' of Poky around the time of Poky's release
> >>(within a week or so of the release at least)..  then we can branch
> >>and let the master continue to flow with any "new" work.  (It's a
> >>plan, I'm not sure if it'll happen or not.)
> >>
> >>If anyone has any concerns let me know.. otherwise I think this is the =
plan!
> >
> >The plan proceeds!  :-)
> >
> >Anyway, so I've now updated all of the policies in refpolicy/ and I'm
> >starting in on the testing.
> >
> >Pascal:  Can you pay particular attention to refpolicy-minimum?  The
> >straight forward-port of it failed to install the unconfined module
> >(obviously kind of important to r-min) due to some failure inside
> >prepare_policy_store().  I started debugging it, then saw that there was
> >a copy in the refpolicy-minimum recipe as well as one in
> >refpolicy_common.inc.  Both of them need to be cleaned up, but they both
> >appeared to be doing the same thing in slightly different ways.  Given
> >that, I turfed the one from refpolicy-minimum and it looks like the
> >unconfined.pp is installed properly using the version from
> >refpolicy_common.  It wasn't clear looking at either the function or the
> >commit log why a duplicate version of the function was placed in
> >refpolicy-minimum, so please have a look to see why it was there and if
> >it's still needed.
>=20
> Hi Joe,
>=20
> The original prepare_policy_store() has a naming bug for
> compressed_policy, and I have fixed it.
> A "clear compressed_policy distro feature" commit is also pushed, as
> I have mentioned to you.

Actually, I had a look at what you pushed and it wasn't quite what we
talked about, I don't think.  I said I'd thought there was still value
in having the uncompressed policy installed on the target, but that
changing the default (and obviously correcting the bug you'd mentioned
where uncompressed policies were not actually being installed regardless
of the flag) was fine.

Here's my thinking on this.

core-image-selinux contains all the tools necessary to install, create
and manage policy on a system.  Therefore you don't actually have to
have anything except the core-image-selinux system to do anything with
it.  If you need to refer back to the existing policy, though, you need
to either have an editor that uncompresses on the fly (which we don't
actually have on the system, though I imagine something like SLIDE or
SEEdit can do that, I don't know) uncompress the policy then load it
into something like semodule_unpack.  That's necessary because (last I
checked, at least, I can go double-check now that I'm thinking about it)
semodule_unpack doesn't know how to managed bzip compressed modules.
And since the compressed modules are still named '*.pp', uncompressing
them is kind of a pain, requiring a bit of shell dancing either dealing
with 'foo.pp.out' or moving the modules around before uncompressing
them.

So I do think it's worth having a switch that lets you decide whether
you think it's likely you'd want to unpack and manipulate module
components on the system.  But I'm all for the default being "no, that's
not likely".

Unrelated, please don't push to master-next right now, with my current
debug and update workflow if you hadn't told me you'd pushed a change to
master-next that hadn't been sent through the list, there's a good
chance it would've gotten lost.  There is a *lot* of churn in
master-next right now and, as always with these branches, nothing is
expected to be fast-forward for the time-being.

-J.

>=20
> Thanks. :)
>=20
> - Pascal
>=20
> >
> >Thanks.
> >
>=20
>=20
> --=20
> - Pascal
--=20
-Joe MacDonald.
:wq

--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlQgJbIACgkQwFvcllog0XwaAQCdGFKhaXdxpQ/2XfSnapF8zPQX
Gj0AoKNcUnN+iJ8DhAfKjvaS+QU53a8W
=4vc8
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--
