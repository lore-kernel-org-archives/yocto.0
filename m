Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9698EE00C2C; Mon, 31 Jul 2017 06:50:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF591E00B01
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 06:50:13 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 Jul 2017 06:50:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,442,1496127600"; d="scan'208";a="134052956"
Received: from msanabr1-mobl1.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.51.199])
	by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2017 06:50:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Russell Peterson <bluehills7@comcast.net>
Date: Mon, 31 Jul 2017 15:50:08 +0200
Message-ID: <20571187.vhiZQWh1oz@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
References: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: extensible SDK build failure
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
X-List-Received-Date: Mon, 31 Jul 2017 13:50:15 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Russell,

It looks to me like you have added kernel-devsrc to the TOOLCHAIN_*_TASK va=
riable at the global level, which you really don't want to do if you're goi=
ng to be building buildtools-tarball (which eSDK will build as a dependency=
). I'd suggest moving that setting to your image recipe.

Cheers,
Paul

On Sunday, 30 July 2017 4:22:24 PM CEST Russell Peterson wrote:
> Hello, all.
>=20
> I=E2=80=99m trying to build the eSDK for my platform and I just can=E2=80=
=99t figure out why dnf can=E2=80=99t find kernel-devsrc.  It=E2=80=99s the=
re, I added it.  The =E2=80=9Cnormal SDK=E2=80=9D uses it and builds fine. =
 Just no luck with the eSDK.
> Any help out there?  Poky is pyro.  aarch64 SoC target platform with an x=
86 build host (CentOS 7.3).  Basically I just bitbake -c do_populate_sdk_ex=
t core-image-full.  I do have a linux kernel recipe that pulls the kernel f=
rom the standard kernel.org <http://kernel.org/> repo.
>=20
> ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not invoke dnf. C=
ommand '/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux=
/buildtools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /scratch=
/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarb=
all/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/etc/dnf/dnf.conf --setopt=
=3Dreposdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk=
=2Dlinux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/e=
tc/yum.repos.d --repofrompath=3Doe-repo,/scratch/russell/yocto-00dc025f/wor=
k/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo -=
=2Dinstallroot=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-poky=
sdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none =
=2D-setopt=3Dlogdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk=
=2Dpokysdk-linux/buildtools-tarball/1.0-r0/temp --nogpgcheck install kernel=
=2Ddevsrc' returned 1:
> Added oe-repo repo from file:///scratch/russell/yocto-00dc025f/work/x86_6=
4-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo <file://=
/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildto=
ols-tarball/1.0-r0/oe-rootfs-repo>
> Last metadata expiration check: 0:00:01 ago on Sun Jul 30 01:38:48 2017 U=
TC.
> No package kernel-devsrc available.
> Error: Unable to find a match
> =20
> ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed: do_pop=
ulate_sdk
> ERROR: Logfile of failure stored in: /scratch/russell/yocto-00dc025f/work=
/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp/log.do_popul=
ate_sdk.4836
> ERROR: Task (/labhome/russell/src/bf/poky/meta/recipes-core/meta/buildtoo=
ls-tarball.bb:do_populate_sdk) failed with exit code '1'


=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

