Return-Path: <paul.eggleton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAEB7E00C87; Mon, 23 Sep 2019 16:06:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A414E00B33
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 16:06:14 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Sep 2019 16:06:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,542,1559545200"; d="scan'208";a="189196586"
Received: from arogani-mobl2.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.161.197])
	by fmsmga007.fm.intel.com with ESMTP; 23 Sep 2019 16:06:10 -0700
From: Paul Eggleton <paul.eggleton@intel.com>
To: Pranay Mankad <Pranay.Mankad@synopsys.com>
Date: Tue, 24 Sep 2019 11:06:08 +1200
Message-ID: <2920538.de2hu5c8aW@linux.fritz.box>
Organization: Intel Corporation
In-Reply-To: <2643E093-5797-443F-BC92-04355516688A@synopsys.com>
References: <2643E093-5797-443F-BC92-04355516688A@synopsys.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [layerindex-web] PR / PE in layer index
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
X-List-Received-Date: Mon, 23 Sep 2019 23:06:14 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Pranay

On Tuesday, 24 September 2019 10:00:46 AM NZST Pranay Mankad wrote:
> Thank you for supporting the recipesExtended view over the last couple of
> days. Here=E2=80=99s a small patch that includes values from two more var=
iables from
> the Bitbake cooker =E2=80=93 PR and PE.
>=20
> I read through Paul=E2=80=99s explanation of why PE made sense but not PR=
, and
> thinking about it, the PR in layerindexs=E2=80=99 case shows if the untou=
ched recipe
> had a revision associated with or not. Source metadata is important for
> information, and hence I=E2=80=99m submitting a change with the same.

I suppose so yes. Out of interest I did a search of OE-Core and there were=
=20
more recipes than I would have guessed that set PR, so it could perhaps be=
=20
useful. I'm not sure I'd bother adding it to the UI yet though (and you=20
haven't, that's fine.)
=20
> Here=E2=80=99s the patch (this is my first time submitting one, hopefully=
 it=E2=80=99s the
> right way to do it):

So unfortunately no, you need to send it as an actual patch and not just=20
pasted into an email - git-format-patch / git-send-email are the most=20
effective ways to do that (though it assumes you are able to send email=20
directly from your linux system). Here's some info:

http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

(Of course you'd need to change mailing lists / prefixes in the examples, a=
nd=20
some of the metadata requirements don't apply, but the basics are the same.)

One other thing - you're editing the initial migration (layerindex/migratio=
ns/
0001_initial.py) - that's not right. You need to undo the change to=20
0001_initial.py and then generate a new migration using the following comma=
nd:

=2E/manage.py createmigrations layerindex

That will give you a new migration in layerindex/migrations/. You can then=
=20
apply that migration to the database in the normal way:

=2E/manage.py migrate layerindex

Of course if your database already has those new fields the latter will fai=
l,=20
in this instance you could simply add --fake since the result would have be=
en=20
the same.

Cheers,
Paul

=2D-=20
Paul Eggleton
Intel Open Source Technology Centre



