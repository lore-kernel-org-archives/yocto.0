Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6C84E00769; Mon, 16 Feb 2015 08:30:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 634C5E00754
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 08:30:49 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Feb 2015 08:30:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,588,1418112000"; d="scan'208";a="678718024"
Received: from mmettala-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.7.57])
	by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2015 08:30:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Date: Mon, 16 Feb 2015 16:30:40 +0000
Message-ID: <2922360.nUjqgNe86s@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.5-101.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D7B2084@SESTOEX04.enea.se>
References: <1423890031-5704-1-git-send-email-akuster808@gmail.com>
	<CABcZANnOS=DoQspvKv1P5YVPv4Z_woTqJP4H9QENbb5Q+Z+2hA@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D7B2084@SESTOEX04.enea.se>
MIME-Version: 1.0
Cc: "lars@linbit.com" <lars@linbit.com>,
	Christopher Larson <clarson@kergoth.com>, yocto@yoctoproject.org
Subject: Re: [meta-cgl][PATCH] heartbeat: fix license issue
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
X-List-Received-Date: Mon, 16 Feb 2015 16:30:52 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Monday 16 February 2015 09:18:29 Alexandru Vaduva wrote:
> After a quick inspection I observed the following:
>=20
>                     Inside heartbeat-suse.spec the next information:
> License:        GPL v2 only; LGPL v2.1 or later Link here:
> http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbe=
at-sus
> e.spec=20
>                     Inside heartbeat-fedora.spec the next information=
:
> License:          GPLv2 and LGPLv2+ =20
> Link here:
> http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbe=
at-fed
> ora.spec=20
> I added Lars Ellenberg one of the authors behind heartbeat or drbd to=
 the
> discussion.
> Hello Lars, sorry for disturbing you but maybe you could help
> us with our little problem.=20
> If anyone from the Yocto Project community has any input on this matt=
er
> please help.
> For me at least this problem is not clear. Should the =E2=80=9C|=E2=80=
=9D
> sign remain or should it be replaced with the =E2=80=9C&=E2=80=9D one=
 between the licenses.

What you have found above correlates with what Chris was saying - both=20=

licenses apply, therefore you must use &.
=20
Cheers,
Paul
=20

> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproje=
ct.org]
> On Behalf Of Christopher Larson
> Sent: Sunday, February 15, 2015 4:01 PM
> To: Armin Kuster
> Cc: yocto
> Subject: Re: [yocto] [meta-cgl][PATCH] heartbeat: fix license issue
>=20
>=20
> On Fri, Feb 13, 2015 at 10:00 PM, Armin Kuster
> <akuster808@gmail.com<mailto:akuster808@gmail.com>> wrote:
> -LICENSE =3D "GPLv2 LGPLv2+"
> +LICENSE =3D "GPLv2 | LGPLv2+"
>=20
> Are you sure this is correct? Afaict this is wrong, as there are part=
s of
> the source tree under the GPL, and parts under LGPL, which means it's=
 an
> AND relationship -- both apply, not an OR relationship, where you can=

> choose which to use.

--=20

Paul Eggleton
Intel Open Source Technology Centre

