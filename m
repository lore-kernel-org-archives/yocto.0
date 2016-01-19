Return-Path: <rebecca.swee.fun.chang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8079AE0045F; Mon, 18 Jan 2016 22:09:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 205D8E0045F
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 22:09:27 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 18 Jan 2016 22:09:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,316,1449561600"; d="scan'208";a="729934086"
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
	by orsmga003.jf.intel.com with ESMTP; 18 Jan 2016 22:09:26 -0800
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.187]) by
	KMSMSX152.gar.corp.intel.com ([169.254.11.170]) with mapi id
	14.03.0248.002; Tue, 19 Jan 2016 14:09:17 +0800
From: "Chang, Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-java] failed to bitbake openjdk-8
Thread-Index: AdFSf4F2XmNh9GpSTx6vzToS5OZjQQAABUJg
Date: Tue, 19 Jan 2016 06:09:16 +0000
Message-ID: <50B33AC5ED75F74F991980326F1C438D191449FD@PGSMSX103.gar.corp.intel.com>
References: <50B33AC5ED75F74F991980326F1C438D191449E8@PGSMSX103.gar.corp.intel.com>
In-Reply-To: <50B33AC5ED75F74F991980326F1C438D191449E8@PGSMSX103.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Chang, Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>, "Ng, Mei
	Yeen" <mei.yeen.ng@intel.com>
Subject: [meta-java] failed to bitbake openjdk-8
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
X-List-Received-Date: Tue, 19 Jan 2016 06:09:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying to integrate meta-java into Common BSP. My intention is to inte=
grate mraa from meta-intel-iot-devkit and meta-intel-iot-middleware.
MRAA is having dependency on openjdk-8 provided by meta-java.

The poky version that I'm using is Poky on branch Jethro.
meta-java on master branch.

I have this source fetching error when bitbake openjdk-8.
From the logs, it mentioned the source checksum are mismatched. However, th=
e checksum are the same by manual download using wget.

I have also done modifying the SRC_URI checksum in openjdk-8-release-72b05.=
inc file in meta-java/recipes-core/openjdk.
Cleaned the build directory and rebuild.
But bitbake just doesn't get pass do_fetch stage.

Thanks in advance.

I hereby paste the error logs:

WARNING: Checksum failure encountered with download of http://hg.openjdk.ja=
va.net/jdk8u/jdk8u/jdk/archive/39baa472e20c.tar.bz2;name=3Djdk;unpack=3Dfal=
se - will attempt other sources if available
WARNING: Renaming /home/ilab/development/yocto_build/build/downloads/39baa4=
72e20c.tar.bz2 to /home/ilab/development/yocto_build/build/downloads/39baa4=
72e20c.tar.bz2_bad-checksum_746e4d38fa3d31a22239d160688ed447
ERROR: Fetcher failure for URL: 'http://hg.openjdk.java.net/jdk8u/jdk8u/jdk=
/archive/39baa472e20c.tar.bz2;name=3Djdk;unpack=3Dfalse'. Checksum mismatch=
!
File: '/home/ilab/development/yocto_build/build/downloads/39baa472e20c.tar.=
bz2' has sha256 checksum e3587fa57eec72c561f0695723649a745966bb2a74803ff8a4=
51b80fd2079f99 when "e3587fa57eec72c561f0695723649a745966bb2a74803ff8a451b8=
0fd2079f99" was expected If this change is expected (e.g. you have upgraded=
 to a new version without updating the checksums) then you can use these li=
nes within the recipe:
SRC_URI[jdk.md5sum] =3D "746e4d38fa3d31a22239d160688ed447"
SRC_URI[jdk.sha256sum] =3D "e3587fa57eec72c561f0695723649a745966bb2a74803ff=
8a451b80fd2079f99"
Otherwise you should retry the download and/or check with upstream to deter=
mine if the file has become corrupted or otherwise unexpectedly modified.

ERROR: Function failed: Fetcher failure for URL: 'http://hg.openjdk.java.ne=
t/jdk8u/jdk8u/jdk/archive/39baa472e20c.tar.bz2;name=3Djdk;unpack=3Dfalse'. =
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/ilab/development/yocto_build/bui=
ld/tmp/work/corei7-64-poky-linux/openjdk-8/72b05-r0/temp/log.do_fetch.30297
ERROR: Task 4 (/home/ilab/development/yocto_build/meta-java/recipes-core/op=
enjdk/openjdk-8_72b05.bb, do_fetch) failed with exit code '1'
WARNING: Checksum failure encountered with download of http://hg.openjdk.ja=
va.net/jdk8u/jdk8u/jdk/archive/39baa472e20c.tar.bz2;name=3Djdk;unpack=3Dfal=
se - will attempt other sources if available
WARNING: Renaming /home/ilab/development/yocto_build/build/downloads/39baa4=
72e20c.tar.bz2 to /home/ilab/development/yocto_build/build/downloads/39baa4=
72e20c.tar.bz2_bad-checksum_746e4d38fa3d31a22239d160688ed447
ERROR: Fetcher failure for URL: 'http://hg.openjdk.java.net/jdk8u/jdk8u/jdk=
/archive/39baa472e20c.tar.bz2;name=3Djdk;unpack=3Dfalse'. Checksum mismatch=
!
File: '/home/ilab/development/yocto_build/build/downloads/39baa472e20c.tar.=
bz2' has sha256 checksum e3587fa57eec72c561f0695723649a745966bb2a74803ff8a4=
51b80fd2079f99 when "e3587fa57eec72c561f0695723649a745966bb2a74803ff8a451b8=
0fd2079f99" was expected If this change is expected (e.g. you have upgraded=
 to a new version without updating the checksums) then you can use these li=
nes within the recipe:
SRC_URI[jdk.md5sum] =3D "746e4d38fa3d31a22239d160688ed447"
SRC_URI[jdk.sha256sum] =3D "e3587fa57eec72c561f0695723649a745966bb2a74803ff=
8a451b80fd2079f99"
Otherwise you should retry the download and/or check with upstream to deter=
mine if the file has become corrupted or otherwise unexpectedly modified.

ERROR: Function failed: Fetcher failure for URL: 'http://hg.openjdk.java.ne=
t/jdk8u/jdk8u/jdk/archive/39baa472e20c.tar.bz2;name=3Djdk;unpack=3Dfalse'. =
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/ilab/development/yocto_build/bui=
ld/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/temp/log.do_fetch.30299
ERROR: Task 130 (/home/ilab/development/yocto_build/meta-java/recipes-core/=
openjdk/openjdk-8-native_72b05.bb, do_fetch) failed with exit code '1'

Regards,
Rebecca

