Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83DBFE00C14; Fri, 28 Aug 2015 03:06:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F6F4E00474
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 03:06:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 28 Aug 2015 03:06:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,424,1437462000"; d="scan'208";a="792638560"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.13.245])
	by orsmga002.jf.intel.com with ESMTP; 28 Aug 2015 03:06:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>
Date: Fri, 28 Aug 2015 11:06:50 +0100
Message-ID: <5075633.xNTnaMU5g6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.5-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <c3b592dd4c494830a1259662eb37bfa1@E2013a.CORP.ICS.COM.UA>
References: <c3b592dd4c494830a1259662eb37bfa1@E2013a.CORP.ICS.COM.UA>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to recreate rootfs image
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
X-List-Received-Date: Fri, 28 Aug 2015 10:06:58 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Viktor,

On Thursday 27 August 2015 08:25:38 Lenivyy Viktor wrote:
> > In your kernel recipe are you using SRC_URI to fetch from a git
> > repository (e.g. git:// URI) or from a local directory?
>=20
> This kernel is fetched from local directory.
>=20
> > I guess that if you're using a local path, there can be either some=

> > uncommitted changes, or a stale git index.
>=20
> No, because kernel built from sources in local directory doesn=E2=80=99=
t have
> =E2=80=9C-dirty=E2=80=9D in version string.
> > You can try just for the experiment to add your current kernel sour=
ces
> > to a test git repo and point the SRC_URI to it, so bitbake can clon=
e
> > the repo by git revision (SRCREV =3D "${AUTOREV}" will skip the nee=
d to
> > update the recipe revision constantly during development). This sho=
uld
> > work fine, without the "-dirty" version suffix.
>=20
> I can try this, but it doesn't answer main question:
> how can I recreate rootfs image starting from the point after fetchin=
g Linux
> sources, so Yocto=E2=80=99s copy will remain intact?

Well one way would be:

 bitbake -C compile virtual/kernel <imagename>

(note the capital -C, not -c).

In the near future "devtool modify" should support the kind of workflow=
 that it=20
looks like you're attempting to get (where you want to modify the kerne=
l=20
sources locally and then build them and/or incorporate them in an image=
) - it=20
already works well for non-kernel recipes.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

