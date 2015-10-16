Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85B3DE00BC4; Fri, 16 Oct 2015 00:10:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DEE7E00B57
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 00:10:04 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 16 Oct 2015 00:10:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,687,1437462000"; d="scan'208";a="665539371"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.9.47])
	by orsmga003.jf.intel.com with ESMTP; 16 Oct 2015 00:10:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Carlos =?ISO-8859-1?Q?S=E1nchez?= de La Lama <csanchezdll@gmail.com>
Date: Fri, 16 Oct 2015 08:10:02 +0100
Message-ID: <3362826.ZZ4Dx4hM6A@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <7tvba8jf0e.fsf@gmail.com>
References: <7tvba8jf0e.fsf@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Package inclusion
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
X-List-Received-Date: Fri, 16 Oct 2015 07:10:11 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Thursday 15 October 2015 18:03:13 Carlos S=E1nchez de La Lama wrote:=

> Hi all,
>=20
> I have some doubts on how package inclusion in images is determined. =
For
> example, when building core-image-base, I would say that both
>=20
> kernel-module-uvesafb
> kernel-module-input
>=20
> are recommended (through RRECOMENDS in packagegroup-base).
>=20
> However, -uvesafb makes it to the final image, whereas -input does no=
t.

I don't see a reference to kernel-module-uvesafb in packagegroup-base.

> I double-checked on the running system under QEMU *and* reading the
> image manifest at
> tmp/deploy/images/qemux86/core-image-base-qemux86.manifest
>=20
> I must be missing something. Can someone give me a pointer?

If you would like to analyse the package dependency tree for an image o=
ne way
that works is to use buildhistory:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#mai=
ntaining-build-output-quality

Among other things this will give you a .dot dependency graph file (for=
 which=20
I can recommend xdot.py as a viewer).

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

