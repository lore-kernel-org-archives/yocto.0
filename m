Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 718B0E00BC0; Tue, 25 Jul 2017 07:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E0CCE00B76
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 07:40:06 -0700 (PDT)
Received: from oxbsltgw56.schlund.de ([172.19.249.203]) by
	mrelayeu.kundenserver.de (mreue001 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0MB6xw-1dQ9eG1TBE-00A0Ks; Tue, 25 Jul 2017 16:40:00 +0200
Date: Tue, 25 Jul 2017 15:39:59 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <838512139.316467.1500993599795@email.1and1.co.uk>
In-Reply-To: <CAJTo0LZDPfqeZhpg1uZ+s5tis_rPj-MN6D1jFc76aUA02LmSZQ@mail.gmail.com>
References: <097a01d3054f$89a3b940$9ceb2bc0$@ln-systems.com>
	<CAJTo0LZDPfqeZhpg1uZ+s5tis_rPj-MN6D1jFc76aUA02LmSZQ@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.2-Rev34
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:S+OHAZvfwaQCX08b/Z0Lr6pMCGWuoQvPGfiEQFuubegTDJJdgG1
	tVwfk/aom8ipExZRUlsEDSLEQG3u0L1mlCK6s+E8HAz6oq8rKQOicjH8HdkbLMpjnZsutBf
	bCET5gzZBlWluzepio1zR+6p/BRQ2obHp2p2aOOPzdjZqjr/K1ckhNQx7lvaybB4wSqr0Sc
	NBmPy94IiVXvhOol/Wk1w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:UUSJhV/qSxc=:SubCVFLp4ZHgderjLeF4Ji
	DKXXDJARYSgQHjxmFN91H/zxI0KrD9CKHvztAsU+gNReXwhi28TJWJxxCrNPfWpW43hWmoBNc
	wKInGIQlTs919tM+/qBA93HyPiP8syNsaz7ujc0V3dqFN4764SmOr+OVUeTZzJaCoG35TboI5
	+tySHCP1i7ZfM9kA62SjQprHJEfevtFF54qPDLqHZRjIsDp7kJJQpOy74ujeTd+gFkK55Wwt4
	UKuw6uxNWEGJM7tYJxqnDPagTPCj/+3k8q4hojmkSHLyxGvau35umm7YbB9/TFFgthnDq1CSS
	r7Vx3wLJi8HWntcykPrHgV+nbp83r1Lg88ww+mbibqlAYIKdPLjNj2RW3OfiRz4Iuh6mTGEJO
	RIhoMBreTSNxzRg+Ox0fQXi2rh7jZgzMwBnSci2wajt8npC5mMy8XsxXRscwBZO3vNH7suEx3
	Lq1p5lQk68j1r36yliARzCmKg10OOF4kK/GUCZja5ph+37X+UwGI1/MgRFSw5tlbfxvebS9j0
	gwMmWpaKYgWf2aoG2i7dxpWt6M1skcjsrV7JAWw/P+bM2GIH3dqa3lGvgi1Zc/nBj1csrSElZ
	lIs0aplBLQGw58C+HqUTjWYLiR4/DsrFmGdXLkYHV+EBQ163dg0TQuWYNPk7cX4GomRmWND9V
	xqh4DtXV4xpTcY+PFZHOMa4d1DxvHTY4VD8tiuAU+XAONgosthX15xGAEiltjfCMgiatHPcrq
	axwFHVql2FLarYnbBC1IGPmUBpUHYennvHfHTBt0wX5xQcOQNa75cbZZ73c=
Cc: yocto@yoctoproject.org
Subject: Re: Problems with 'configure' on own recipe [after moving to morty]
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Jul 2017 14:40:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


> On 25 July 2017 at 15:20 "Burton, Ross" <ross.burton@intel.com> wrote:
>=20
> On 25 July 2017 at 15:08, <colin.helliwell@ln-systems.com> wrote:
>=20
> > This is gonna be a bit of a hard one to describe concisely, but hoping
> >  someone can advise me on solving it....
> >  I have a recipe of my own for an app (NetworkManager) which fetches th=
e
> >  source from its git repo. This recipe works on krogoth, but is throwin=
g up
> >  configure errors on morty.
>=20
> For a start, why not use the recipe from meta-oe?
>=20

That is in fact what I blagged as the starting point for 'my' recipe, but t=
hen evolved it so as to use the github head. For my particular [embedded] p=
latform I also need to switch off some of the configure options.

> > The recipe has a
> >  do_configure_prepend() {
> >  =C2=A0 =C2=A0 ( cd ${S} ; NOCONFIGURE=3Dyes ./autogen.sh )
> >  }
> >  =C2=A0 - I seemed to need this because the git source has no ABOUT-NLS=
; not sure
> >  if that's the correct fix, but 'it seemed to work' before.
>=20
> If the only thing that is missing is an ABOUT-NLS file (sounds like somet=
hing gettext should have installed?) then I'd just have a prepend that touc=
hes that file, and let autotools.bbclass invoke autoreconf for you.

I'll try that

>=20
> > I'm also getting a lot of:
> >  | NOTE: Skipping setscene dependency
> >  virtual:native:/home/colin/100051-trunk/fsl-community-bsp/sources/poky=
/meta/
> >  recipes-devtools/pseudo/pseudo_1.8.1.bb:do_populate_sysroot for m4 mac=
ro
> >  copying
> >=20
> >  =C2=A0 - not sure if this is relevant/important
> >=20
> >  Freely admit I'm no autotools expert, so any suggestions welcome! Than=
ks
>=20
> That's just verbose logging from the recipe-specific-sysroot code, you ca=
n ignore it.
>=20

Ok, ta

