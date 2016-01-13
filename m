Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D69B9E00B66; Wed, 13 Jan 2016 12:03:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13450E00B46
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 12:03:17 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 13 Jan 2016 12:03:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,290,1449561600"; d="scan'208";a="632956347"
Received: from ykung-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.151.13])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2016 12:03:11 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org,
	=?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Thu, 14 Jan 2016 09:03:08 +1300
Message-ID: <1597083.J1Q8K4j3y3@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.8-300.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <56968498.5070207@linux.intel.com>
References: <37b747fd-ad90-45e9-b3cc-4595c4d83661@fmsmsx108.amr.corp.intel.com>
	<CAHiDW_GGH6X3vyFXe5+JCZz3pn8L0HPDfxN3BsjT3nbYC_oj_w@mail.gmail.com>
	<56968498.5070207@linux.intel.com>
MIME-Version: 1.0
Cc: Anibal Limon <anibal.limon@intel.com>
Subject: Re: [AUH] gpgme: upgrading to 1.6.0 SUCCEEDED
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
X-List-Received-Date: Wed, 13 Jan 2016 20:03:20 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wed, 13 Jan 2016 11:08:40 An=EDbal Lim=F3n wrote:
> On 01/13/2016 07:42 AM, Jussi Kukkonen wrote:
> > On 11 January 2016 at 06:21, <auh@auh.yoctoproject.org> wrote:
> >> You are receiving this email because you are the maintainer
> >> of *gpgme* recipe and this is to let you know that the automatic a=
ttempt
> >> to upgrade the recipe to *1.6.0* has Succeeded.
> >=20
> > First, thanks for the effort Anibal, the upgrade helper is looking =
very
> > useful: I'm certainly going to use it.
> >=20
> > Couple of small issues:
> > * The license diffs do not seem correct: they look like like diffs =
between
> > an empty file and the new license file version (see the parent gpgm=
e post
> > for example)
>=20
> Yes i see, i'll review/fix the problem.
>=20
> > * Is the decision to use "buildhistory-diff -a" intentional? I'm no=
t 100%
> > sure what exactly "-a" option brings with it but I've usually avoid=
ed it
> > on
> > upgrades because the path changes in  -dbg package are so verbose a=
s to
> > hide everything else...
>=20
> It was mine decision for provide more output for the maintainers but =
if
> you think that's enough without -a that's ok.
>=20
> May be a good idea will be to sent two files one,
>=20
> =09- buildhistory-diff.txt: Without -a.
> =09- buildhistory-diff-all.txt: With -a/
>=20
> Comments?

I'd question the value of -a as well; the tool is supposed to be smart =
enough=20
to show you the things that matter and hide everything else by default.=
 If=20
it's not doing that effectively then we should fix it.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

