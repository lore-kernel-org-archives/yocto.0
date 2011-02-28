Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C3A14C800B1
	for <yocto@yoctoproject.org>; Sun, 27 Feb 2011 21:14:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Feb 2011 19:14:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,237,1297065600"; d="scan'208";a="713945988"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 27 Feb 2011 19:14:23 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 28 Feb 2011 11:14:05 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 28 Feb 2011 11:14:04 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 28 Feb 2011 11:14:02 +0800
Thread-Topic: [yocto] Status of release candidate: bernard-1.0rc1
Thread-Index: AcvW82WwoYng16etQlioQ7Z0028QAwAAX0cQ
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F216C10F0CF@shsmsx502.ccr.corp.intel.com>
References: <4D6B0F2C.9080401@intel.com>
In-Reply-To: <4D6B0F2C.9080401@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Status of release candidate: bernard-1.0rc1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 Feb 2011 03:14:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Elizabeth Flanagan wrote on 2011-02-28:
>=20
> Summary
> =3D=3D=3D=3D=3D=3D=3D
>=20
> This weekend, we generated a release candidate for bernard based on the
> bernard branch of master at commit:
> e08dc5aaaeba61e332caab4a3df5750df6b49ac1
>=20
> and for BSPs based on the bernard branch of meta-intel at commit:
> 16f47f04a2baaeaf9b5a9b381fc7a3c7755d6ff6
>=20
> Issues seen:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Build Infrastructure issues:
> ----------------------------
>=20
> - We had an issue with builder02 running out of disk space, so some of th=
e build
>   copying was done post-build. This did not effect the build and was deal=
t with
>   manually after cleaning up the partition.
> - There is an issue with how package-index is being run. I will need to s=
ync up
>   with Jessica to verify how this should be incorporated into the build.

I think it'd better to run "bitbake package-index" after the "bitbake meta-=
toolchain-sdk", using the same configuration as meta-toolchain-sdk. It will=
 generate repository index files under the directories relevant to meta-too=
lchain-sdk tarball generations in ${TMPDIR}/deploy/ipk.

> - The sanity tests on builder02 failed because builder02 was unable to re=
solve
>   "localhost". This has been corrected and the sanity tests re-run
> incrementally:
>=20
> http://autobuilder.pokylinux.org:8010/builders/nightly-internal-sanity
> /builds/3
>=20
> - The tarball generation buildstep is not branch aware. This will be
> fixed this week.
>   In the meantime it was run manually.
>=20
> Sanity Test Issues:
> ----------------------------
>=20
> - zypper-search failed on qemux-x86_64 on poky-image-lsb and
> poky-image-sato
>=20
>=20
> Build Issues:
> ----------------------------
>=20
> - BSPs did not complete successfully. There were some issue in the
> actual build mostly centering around:
>    - Failing to do_kernel_checkout
>    - Unpack issues around svn://svn.o-hand.com/repos
> - Beagleboard failed doing runstrip on uboot during do_populate_sysroot
>=20
>=20
> Build statistic:
> ----------------------------
>=20
> Using RP__'s machine as a baseline, our current build stats for
> poky-image-sato is:
>=20
> real	109m52.400s
> user	393m58.840s
> sys	59m25.380s
>=20
> Build statistics for nightly-external are available at:
>=20
> http://autobuilder.pokylinux.org/nightly/20110226-1/buildstats/buildst
> ats/
>=20
> Open Defects:
> ----------------------------
>=20
> As of right now we have:
> 76 total open defects targeted for 1.0
>=20
> Critical: 0
> High: 14
> Medium: 53
> Low: 7
> Undetermined: 2
>=20
>=20
> Thanks for all those who helped with this weekends RC generation,
> especially sgw and RP__
>=20
> ------------------
> Elizabeth Flanagan
> Yocto Project
> Release Engineer
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Best Regards,
Lianhao



