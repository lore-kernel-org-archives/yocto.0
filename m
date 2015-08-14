Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3479E00A31; Thu, 13 Aug 2015 17:39:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02FAFE00767
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 17:38:52 -0700 (PDT)
Received: from svr-orw-fem-04.mgc.mentorg.com ([147.34.97.41])
	by relay1.mentorg.com with esmtp 
	id 1ZQ31G-0007WG-PU from Joe_MacDonald@mentor.com ;
	Thu, 13 Aug 2015 17:38:50 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 13 Aug 2015 17:38:50 -0700
Received: by burninator (Postfix, from userid 1000)	id 5AFE3581A72; Thu, 13
	Aug 2015 20:38:06 -0400 (EDT)
Date: Thu, 13 Aug 2015 20:38:06 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <20150814003806.GA8204@mentor.com>
References: <55BB022B.6050800@windriver.com> <20150731173331.GC5208@mentor.com>
	<55CD0E05.4070801@windriver.com>
MIME-Version: 1.0
In-Reply-To: <55CD0E05.4070801@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "Radzykewycz, T \(Radzy\)" <radzy@windriver.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [oe] [meta-selinux] Re: meta-selinux updates for oe-core-1.9 -- resend to right list.
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
X-List-Received-Date: Fri, 14 Aug 2015 00:39:05 -0000
X-Groupsio-MsgNum: 26094
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7JfCtLOvnd9MIVvH"
Content-Disposition: inline

--7JfCtLOvnd9MIVvH
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[oe] [meta-selinux] Re: meta-selinux updates for oe-core-1.9 -- resend to =
right list.] On 15.08.13 (Thu 17:37) Randy MacLeod wrote:

>=20
> Resending to the right list.
> (yocto@yoctoproject.org rather than
>  openembedded-devel@lists.openembedded.org )
>=20
> Radzy will be working on meta-selinux and
> I've suggested that the start with a package uprev or two
> once the upstream selinux release intentions are known.

Well, the backlog is cleared out (not quite true, but I'm waiting on a
final verification from my autobuilders before merging the last couple
of patches) and it looks like I didn't destroy Phil's work on the
filesystem labelling bits when rebasing them, so I expect I'll merge
those tomorrow too.  Let's say everything after that is negotiable.  :-)

-J.

>=20
> ../Randy
>=20
> ---
>=20
> Going on-list like I should have originally.
>=20
> On 2015-07-31 01:33 PM, Joe MacDonald wrote:
> >Hey Randy,
> >
> >Good to hear from you.
> >
> >[meta-selinux updates for oe-core-1.9] On 15.07.31 (Fri 01:05) Randy Mac=
Leod wrote:
> >
> >>What's the plan for meta-selinux in the next 2 months?
>=20
> Roy dug up the current meta-selinux, upstream versions:
>=20
> swig             2.0.10        3.0.6
> python-ipy         0.81         0.83
> audit             2.3.2        2.4.3
> refpolicy-mls 2.20140311=E3=80=80=E3=80=80=E3=80=80=E3=80=802.20141203
> libcap-ng         0.7.3        0.7.7
> setools           3.3.8        3.3.8
> sepolgen            git        1.2.2
> libsemanage         git          2.4
> checkpolicy         2.3          2.4
> policycoreutils     git          2.4
> selinux-config      0.1          0.1
> libsepol            git          2.4
> libsemanage         2.3          2.4
> sepolgen          1.2.1        1.2.2
> libsepol            2.3          2.4
> libselinux          git          2.4
> policycoreutils     2.3          2.4
> libselinux          2.3          2.4
> ustr              1.0.4        1.0.4
>=20
>=20
> >
> >There's a backlog of meta-selinux patches to integrate that have been in
> >my merge queue for rather a long time now.  I expect to clear that out,
> >which will include an update to the most recent (not the current, any
> >longer, I don't think) refpolicy and a new recipe that will build from
> >the refpolicy git repository rather than release tarballs.  I think
> >this'll be a significant benefit to everyone in that it'll make it much
> >easier to migrate patches and to try out a new release without waiting
> >for a full update.  Those are the big things on the horizon.
> >
> >The other one is the filesystem labelling work being done by the
> >community.  It looks quite good and as soon as I get a few minutes to
> >try it out a bit more on some oddball configurations to ensure we aren't
> >bringing in any new dependencies (after having just scrubbed a bunch of
> >bashisms and hidden deps), it'll likely get merged.
> >
> >There's nothing on the radar in the short term that hasn't already been
> >discussed on the mailing list, though, AFAIK.
> >
> >-J.
>=20
> So when Radzy is back in a week from being OOO, hopefully Joe's backlog
> will be cleared and we all can update pkgs as needed. We can split
> up that work however it makes sense; just tell the list
> if you start working on a package.
>=20
> My quick review of git logs and my memory of selinux releases
> tells me that there tends to be an late fall release.
> I looked at the Changelog for a few of the components of:
>     https://github.com/SELinuxProject/selinux
> and things seem to be moving along more quickly than usual
> so that pattern might not hold. Is anyone subscribed to the list:
>     https://www.nsa.gov/research/selinux/list.shtml
> if so is there talk of an approximate release date that
> would help us decide if we went to update now or in a month or so?
>=20
> Oh and is selinux happy under gcc-5.2+?
>=20
> ../Randy
>=20
>=20
> >
> >>
> >>Roy can you summarize the state of each recipe?
> >>i.e. current version and upstream version?
> >>I'd like to make sure that we're up to date when
> >>oe-core-1.9 is released.
> >>
>=20
>=20
> --=20
> # Randy MacLeod. SMTS, Linux, Wind River
> Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, Canada,
> K2K 2W5
--=20
-Joe MacDonald.
:wq

--7JfCtLOvnd9MIVvH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVzThuAAoJEEn8ffcsOfaW+4YIAK+vSybe3NdH7GWyRqSEwEAQ
Wav997SnwG4u8EcfTVozCS0B3BaccKzxCXv1x83XLwQLHxkDmbMdQ5087Qo4wDY2
A/NJ1ZORgw0Pqhqy5e0aJS10Roa05NFHC7UiwXOTS/t/QXMq4bhFb1HRgkf5XtUw
l/mAVVxynI3yAsEj2ZXNL01lzFT5zriPU5obXCQsFtmIJhTF+IHohD5SSehCWkvs
jM/We1ndNHmrcc7LFox4lyEtMWPXQucEEeSwpvOKC5XGjn4neVJndSep7RtcIhYs
WBmditmv2O1BrlRrkuWbJB6Bgd7i6H4KcjhBlNNssMgjzcbx7Q9nyr96OaUCDZw=
=8uuK
-----END PGP SIGNATURE-----

--7JfCtLOvnd9MIVvH--
