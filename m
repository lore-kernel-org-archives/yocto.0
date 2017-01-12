Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A623FE00953; Thu, 12 Jan 2017 07:27:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03104E0088B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 07:27:30 -0800 (PST)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1cRhHl-0005pW-P1 from Joe_MacDonald@mentor.com ;
	Thu, 12 Jan 2017 07:27:29 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 12 Jan 2017 07:27:28 -0800
Received: by burninator (Postfix, from userid 1000)	id 28E105804F3; Thu, 12
	Jan 2017 10:27:28 -0500 (EST)
Date: Thu, 12 Jan 2017 10:27:28 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <20170112152727.GB8392@mentor.com>
References: <20170110144821.GC8258@mentor.com>
	<5fe24a37-12c7-13f1-c2a4-5c1f2dffef3c@windriver.com>
MIME-Version: 1.0
In-Reply-To: <5fe24a37-12c7-13f1-c2a4-5c1f2dffef3c@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, shrikant_bobade@mentor.com
Subject: Re: [meta-selinux] What's the point of refpolicy-minimum?
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
X-List-Received-Date: Thu, 12 Jan 2017 15:27:33 -0000
X-Groupsio-MsgNum: 33783
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jho1yZJdad60DJr+"
Content-Disposition: inline

--jho1yZJdad60DJr+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi guys,

[Re: [meta-selinux] What's the point of refpolicy-minimum?] On 17.01.12 (Th=
u 12:57) wenzong fan wrote:

> On 01/10/2017 10:48 PM, Joe MacDonald wrote:
> >Wenzong / Shrikant,
> >
> >I thought I knew the answer to the above question, and maybe my
> >understanding is still correct, but I think I need to ask it now anyway.
> >
> >I don't use refpolicy-minimum for anything, so when I did the updates to
> >refpolicy*_git I didn't even glance at refpolicy-minimum_git.  Wenzong's
> >change to refpolicy-minimum_2.20161023 (in the same thread as the uprev
> >of the recipe) piqued my curiosity, so I had a look.  Of course,
> >refpolicy-minimum_git.bb also needs to be updated (or thrown out), but
> >now that I'm looking at the recipe I see what seems like conflicting
> >statements in the recipe:
> >
> >   recipes-security/refpolicy/refpolicy-minimum_2.20161023.bb:
> >
> >     1 include refpolicy-targeted_${PV}.bb
> >     2
> >     3 SUMMARY =3D "SELinux minimum policy"
> >     4 DESCRIPTION =3D "\
> >     5 This is a minimum reference policy with just core policy modules,=
 and \
> >     6 could be used as a base for customizing targeted policy. \
> >     7 Pretty much everything runs as initrc_t or unconfined_t so all of=
 the \
> >     8 domains are unconfined. \
> >     9 "
> >
> >and:
> >
> >   recipes-security/refpolicy/refpolicy-targeted_2.20161023.bb:
> >
> >     1 SUMMARY =3D "SELinux targeted policy"
> >     2 DESCRIPTION =3D "\
> >     3 This is the targeted variant of the SELinux reference policy.  Mo=
st service \
> >     4 domains are locked down. Users and admins will login in with unco=
nfined_t \
> >     5 domain, so they have the same access to the system as if SELinux =
was not \
> >     6 enabled. \
> >     7 "
> >
> >So now I'm trying to understand what the point of refpolicy-minimum
> >really is here.  Those of you who are using it, what are you using it
> >for and what do you expect would be the correct behaviour of a system
> >running that policy?
> >
>=20
> I don't have much experience on using the refpolicy-minimum as well.
>=20
> But from the original logs it should be "minimum targeted policy".
>=20
> commit 65675f02e33f5da31ec5dbac7a45849f4952569b
> Author: Wenzong Fan <wenzong.fan@windriver.com>
> Date:   Mon Mar 24 21:07:50 2014 -0400
>=20
>     refpolicy: add minimum targeted policy
>=20
>     This is a minimum targeted policy with just core policy modules, and
>     could be used as a base for customizing targeted policy.
>     Pretty much everything runs as initrc_t or unconfined_t so all of the
>     domains are unconfined.
>=20
>     Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>     Signed-off-by: Joe MacDonald <joe@deserted.net>
>=20
>=20
> >At the very least, I'm going to remove the 'include [...].bb' from both
> >'minimum' recipes, as that's completely incorrect, but when I do that I
> >want to know what anyone using this recipe wants to see from it, so
> >whatever the 'include' gets replaced with is doing the right thing
> >(which isn't necessarily what it's doing today).
>=20
> I won't object to make the changes, if you think there should be a differ=
ent
> minimum policy with targeted.

I'm not proposing an alternative, I'm just saying that the statements in
the descriptions of the recipes seem to conflict.  (And do note that the
git log you quoted is precisely the text in DESCRIPTION for
refpolicy-minimum.

What I'm confused by is this in minimum:

>     Pretty much everything runs as initrc_t or unconfined_t so all of the
>     domains are unconfined.

and this in targeted:

> >     Most service domains are locked down.

So I guess my question is what is the desired behaviour out of this
recipe?  If nobody knows and it's not being used, I'm leaning toward a
'git rm'-based solution.  :-)

It sounds, though, like Shrikant is using it, so it's of some use, I
guess.  Shrikant, on the systems you've used the minimum policy, what
does the policy look like on your running system?  In the current world
refpolicy-minimum inherits POLICY_TYPE and POLICY_MLS_SENS from
refpolicy-targeted, is that good / bad / irrelevant to what you're doing
with it?  If I just rework minimum to remove the include and bring in
the minimal number of changes to get the policy to load again, is that
good enough for your purposes?  Do you want to volunteer to test my
changes for me before I commit them?  :-)

--=20
-Joe MacDonald.
:wq

--jho1yZJdad60DJr+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYd6BfAAoJEEn8ffcsOfaW9dwIANXjI0SHEYed8SygjuD7ztW7
YR38hWC4dQZp25IeyXqzzUdTdVhrCailkVlyBaBiYdX/HTC2+egau+K8oinN1il+
5ICEZUwOCvTYhqpb7tfUFUn1sy17XFThCyxPEZLU54qCvflB/CZzyt5mziz+nfDA
XIRWzqJMJnb+HfgBCfmbrR6CIcnIxcBAoJbZ/Y7CC71RsVKeI5pzdz5c5TlK9n/8
dDay51IQ87FZ8LelnBhgPOrQcbVh4l0bdwEB4Ro1P8sxzpz40HHd2PuT9YmH2WDY
WRW+XiloAnDsTrxVP2xYDiMULIml9bp+z/Vigcq6COfEJO+s9NaHQjf9UBp+Z+I=
=3Y5/
-----END PGP SIGNATURE-----

--jho1yZJdad60DJr+--
