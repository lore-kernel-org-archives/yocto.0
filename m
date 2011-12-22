Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 851A3E00720
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 15:00:44 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 22 Dec 2011 15:00:43 -0800
Received: by iazz13 with SMTP id z13so12172381iaz.25
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 15:00:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.222.233 with SMTP id qp9mr10884132igc.1.1324594842729; Thu,
	22 Dec 2011 15:00:42 -0800 (PST)
Received: by 10.50.208.98 with HTTP; Thu, 22 Dec 2011 15:00:42 -0800 (PST)
Date: Thu, 22 Dec 2011 15:00:42 -0800
Message-ID: <CAPhnLPB60Qje0wKiOLWmO=fcpz=VoM9N9+KDA=YAEiqYL9spKA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto 1.2 Milestone 1 released
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
X-List-Received-Date: Thu, 22 Dec 2011 23:00:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

All,

We are pleased to announce the first milestone of the coming release
of Yocto 1.2. This milestone release is available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/poky-edison-6.1.0-m1.tar.bz2
or
http://mirrors.kernel.org/yocto/yocto/milestones/poky-edison-6.1.0-m1.tar.bz2

Additional tarballs for the meta-intel, meta-qt3 and eclipse plugin are
available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/meta-intel-edison-6.1.0-m1.tar.bz2
http://downloads.yoctoproject.org/releases/yocto/milestones/meta-qt3-edison-6.1.0-m1.tar.bz2
http://downloads.yoctoproject.org/releases/yocto/milestones/eclipse-poky-edison-6.1.0-m1.tar.bz2

with mirror locations at:

http://mirrors.kernel.org/yocto/yocto/milestones/meta-intel-edison-6.1.0-m1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/meta-qt3-edison-6.1.0-m1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/eclipse-poky-edison-6.1.0-m1.tar.bz2

For information on 1.2 M1 test results see:
http://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Report

Thanks you everyone for all the hard work.

- ------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

- --------------------
edison 6.1.0-m1 Errata
- --------------------
Release Name: eclipse-poky-edison-6.1.0-m1
Branch:  1.2_M1
Tag:  1.2_M1.final
Hash:  0dc371803a6407afbb9eecadc23bad787f106d56
md5:  309d1b759df05d6a7c2ab77f12b7c481
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/eclipse-poky-edison-6.1.0-m1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/eclipse-poky-edison-6.1.0-m1.tar.bz2

Release Name: meta-intel-edison-6.1.0-m1
Branch:  1.2_M1
Tag:  1.2_M1.final
Hash:  b6d5d9a3b06caf578103a04dc5fcf5e476343205
md5:  d242de81499d900c12b4a74fec2a35a7
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/meta-intel-edison-6.1.0-m1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/meta-intel-edison-6.1.0-m1.tar.bz2

Release Name: meta-qt3-edison-6.1.0-m1
Branch:  1.2_M1
Tag:  1.2_M1.final
Hash:  0c3153242344e5113a50002939d36a2b739cc497
md5:  3aea385aac3b92f69eeaa9c84e849d1d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/meta-qt3-edison-6.1.0-m1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/meta-qt3-edison-6.1.0-m1.tar.bz2

Release Name: poky-edison-6.1.0-m1
Branch:  1.2_M1
Tag:  1.2_M1.final
Hash:  b806f726b1db2cb605869c1022ef727c1110255b
md5:  e3af1d43eeee369cc52d17932f133624
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/poky-edison-6.1.0-m1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/poky-edison-6.1.0-m1.tar.bz2

- --------------------
Features
- --------------------

- - Build history tracking
- - 50% of package upgrades complete
- - Self hosted build appliance
- - Beginnings of HOB2

- --------------------
Known Issues
- --------------------

The following HIGH bugs have been identified and are currently fixed
within master:

1841 1.2_M1 build broken for meta-toolchain-sdk with opkg
1835 [multilib] no provider for lib32-shadow-sysroot


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iQEcBAEBAgAGBQJO87YHAAoJEEyK+E/MEkQPQKcIAIEVqAbjsT9nc8V1MwNyST/1
GU1VLo9Kb31Cs2ipTZdH93qtTiFaMh8KYU7zBjSxALtKKvwEaJJvFh5hUkqgZd/7
EDYELebi/mxOfhdFlL2ot5X864sjhV6HBs+BE133gqkPwOFXseJHT7v2j08cYo3v
vE9k/RsNs23qqjpVrRXib2IaWDNDPVybBfDCVVgVyLsHW5elg8wnpUKsRbfEnr7l
aZRdUFTnM+QhCQaJdPql4nzm1/FQsr5lOHqDutdEEf+0xBojkAt5Qto27kzuY94Y
VUxjXh8qZOF5jEYJEuljrGrLBUH7KpiQvi5sdfUpE5ENTM7y6sOB91bdxdg3EMU=
=0oKc
-----END PGP SIGNATURE-----

