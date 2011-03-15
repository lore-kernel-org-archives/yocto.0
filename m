Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0D6474C80050
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2011 21:33:50 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Mar 2011 19:33:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,320,1297065600"; d="scan'208";a="402638243"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 14 Mar 2011 19:33:49 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Mar 2011 10:33:27 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 15 Mar 2011 10:33:26 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 15 Mar 2011 10:33:26 +0800
Thread-Topic: [yocto] Race condition when building a recipe and
	poky-image-minimal-initramfs
Thread-Index: Acvit6gSn1y34wAJSKyRgVm38wzZpAAAMYQA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A3364644E@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A336463B0@shsmsx501.ccr.corp.intel.com>
	<4D7ECD0A.6020406@windriver.com>
In-Reply-To: <4D7ECD0A.6020406@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Race condition when building a recipe and	poky-image-minimal-initramfs
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
X-List-Received-Date: Tue, 15 Mar 2011 02:33:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Mark Hatle wrote:
> On 3/14/11 8:47 PM, Xu, Dongxiao wrote:
>> Hi Richard,
>=20
> There was already a defect covering this.  The bug number is "797".
>=20
> In order to fix the problem a lock was added to the RPM generation.=20
> This lock should be preventing both RPM package generation and rootfs
> construction from running at the same time. =20
>=20
> The code was checked into Bernard on 2011-03-10.  If your image is
> from after that date, please reopen the defect and add the details
> below. =20

Yes, thanks for pointing it out. The phenomenon is similar as bug 797. I wi=
ll mark it as a duplication.

Just checked that, your fixing patch for 797 is already in my build. Theref=
ore I will re-open the bug.

My build is based on commit 43a2d098008eee711399b8d64594d84ae034b9bf.

In my side, the race condition is happened in manifest generation while exe=
cuting "package_update_index_rpm()".

Thanks,
Dongxiao

>=20
> --Mark
>=20
>> These days I found a race condition between building a recipe and
>> poky-image-minimal-initramfs, to reproduce it, you can try as:=20
>>=20
>> 1) Run "bitbake poky-image-sato-live". Build the full sato-live
>> image until it is successful. 2) Bump connman's PR (or some other
>> sato recipe's PR). 3) Rebuild the sato live image by "bitbake
>> poky-image-sato-live".=20
>>=20
>> Sometimes, I meet build error like the following, however it does
>> not happen every time.=20
>>=20
>> -------------------------------------------------------
>> Generating solve db for
>>    /distro/dongxiao/build-qemux86/tmp/deploy/rpm/qemux86... total: =20
>>    1      0.000000 MB      1.424841 secs fingerprint:      1020    =20
>>    0.006796 MB      0.033057 secs install:           340    =20
>>    0.000000 MB      0.371773 secs dbadd:             340    =20
>>    0.000000 MB      0.362746 secs dbget:            2196    =20
>>    0.000000 MB      0.004278 secs dbput:             340    =20
>>    1.504908 MB      0.308950 secs readhdr:          3401    =20
>>    2.961280 MB      0.005603 secs hdrload:          1700    =20
>>    4.389932 MB      0.007001 secs hdrget:          57535    =20
>> 0.000000 MB      0.043769 secs=20
>> Generating solve db for
>> /distro/dongxiao/build-qemux86/tmp/deploy/rpm/i586...=20
>> error: open of
>> /distro/dongxiao/build-qemux86/tmp/deploy/rpm/i586/connman-plugin-ethe
>> rnet-0.65-r4.i586.rpm failed: No such file or directory
>> rpm.real: ./rpmio_internal.h:190: fdGetOPath: Assertion `fd !=3D
>> ((void *)0) && fd->magic =3D=3D 0x04463138' failed.
>> /distro/dongxiao/build-qemux86/tmp/work/qemux86-poky-linux/poky-image-mi=
nimal-initramfs-1.0-r0/temp/run.do_rootfs.468:
>> line 375:   669 Aborted                 rpm --dbpath /var/lib/rpm
>> --define=3D'_openall_before_chroot 1' -i --replacepkgs --replacefiles
>> --oldpackage -D "_dbpath $pkgdir/solvedb" --justdb --noaid --nodeps
>> --noorder --noscripts --notriggers --noparentdirs --nolinktos
>> --stats --ignoresize --nosignature --nodigest -D "__dbi_txn create
>> nofsync" $pkgdir/solvedb/manifest ERROR: Function 'do_rootfs' failed
>> (see
>> /distro/dongxiao/build-qemux86/tmp/work/qemux86-poky-linux/poky-image-
>> minimal-initramfs-1.0-r0/temp/log.do_rootfs.468 for further
>> information)
>> -------------------------------------------------------
>>=20
>> The root cause for this issue should be,
>> poky-image-minimal-initramfs's do_rootfs task doesn't have
>> dependency on connman, thus their tasks will be run simultaneously.
>> Poky-image-minimal-initramfs's do_rootfs will call
>> "rootfs_rpm_do_rootfs" --> "package_update_index_rpm", where it will
>> update all the packages depsolver db in ${DEPLOY_DIR_RPM}.    =20
>>=20
>> When the package_update_index_rpm function is handling connman's rpm
>> package, and at the same time, connman is removing old rpm and
>> trying to generate a new one (e.x, from r4 to r5), then the build
>> error will occur, saying that it could not find r4 version of
>> connman-plugin-ethernet...   =20
>>=20
>> One choice may be to force poky-image-minimal-initramfs's do_rootfs
>> to depends on all recipe's do_package to ensure correctness, even
>> though it only depends on some basic recipes. =20
>>=20
>> However I think it is not such elegant.
>>=20
>> Do you have ideas on it?
>>=20
>> BTW, I will file a bug 867 to track this issue.
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D867
>>=20
>> Thanks,
>> Dongxiao
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


