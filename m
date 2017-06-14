Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66766E00B8F; Wed, 14 Jun 2017 14:16:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80D78E00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 14:16:06 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Jun 2017 14:16:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,341,1493708400"; d="scan'208";a="980932322"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by orsmga003.jf.intel.com with ESMTP; 14 Jun 2017 14:16:05 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
	FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Wed, 14 Jun 2017 14:16:04 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.237]) by
	FMSMSX125.amr.corp.intel.com ([169.254.2.234]) with mapi id
	14.03.0319.002; Wed, 14 Jun 2017 14:16:04 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Purdie, Richard" <richard.purdie@intel.com>
Thread-Topic: QA cycle report for 2.1.3 rc1
Thread-Index: AQHS5VMvN1BLCnJQg0Sfl4/tbVEsTA==
Date: Wed, 14 Jun 2017 21:16:02 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC531EAEABF@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.139]
MIME-Version: 1.0
Cc: "Cobbley, David A" <david.a.cobbley@intel.com>
Subject: QA cycle report for 2.1.3 rc1
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
X-List-Received-Date: Wed, 14 Jun 2017 21:16:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello All,



Here is the report for the 2.1.3 rc1 full point release test cycle.



Full Report : https://wiki.yoctoproject.org/wiki/WW24_-_2017-14-06_-_Full_P=
ass_2.1.3_rc1





=3D=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



The QA cycle for release 2.1.3 rc1 is complete, there were 4 new issues rel=
ated to the configuration of the new autobuilder server that provided the i=
mages.



Performance measurements showed a regression of 20% on Ubuntu and 11% on Fe=
dora compared with 2.1.2, 11655[3] bug was raised.



=3D=3D=3D=3D=3D=3D=3D=3D Details =3D=3D=3D=3D=3D=3D=3D=3D



QA Hints



The 2.1.3 QA test cycle had difficulties with the new autobuilder server, b=
ecause it was the first time this server provided images it was missing con=
figurations therefore some images were not created bugs 11644[2] and 11637[=
1]. There will be a 2.1.3 rc2 where we will test the integrity of the image=
s and the test cases that were blocked or failed.



Bugs

       * New

            - 11637 [krogoth] No WIC images present in autobuilder[1]

            - 11644 [Yocto 2.1.3] missing toolchian sdk for armv5e[2]

            - 11655 [krogoth] build-perf:time for build "rootfs" is increas=
ed on 2.1.3 compared to 2.1.2[3]

            - 11646 [krogoth] WIC image does not load in graphical environm=
ent[5]

            - 11654 [krogoth] ERROR: setUpClass (oeqa.selftest.signing.Sign=
ing) [4]

            - 11658 [krogoth] testimage multiple errors and skipped test pr=
esent in WIC image (Minnowmax64/NUC) [6]

            - 11659 [krogoth] genericx86 fails to boot after install from U=
SB on MMAX32[7]







Full Bug Report : https://wiki.yoctoproject.org/wiki/WW24_-_2017-14-06_-_Fu=
ll_Pass_2.1.3_rc1#Bugs_Found_during_QA_Test





=3D=3D=3D=3D=3D=3D Performance =3D=3D=3D=3D=3D=3D



Performance measurements showed a regression compared with 2.1.2 when build=
ing rootfs of 20% (around 20 seconds) on Ubuntu machine and 11% (around 15 =
seconds) on Fedora, all other measurements are on the same levels without s=
howing any important change.



Ubuntu    Test    2.1.2_rc1    2.1.3_rc1    %

          sato    0:56:22      0:55:57      -0.74

          rootfs  1:59         2:26         22.69

          rmwork  0:55:10      0:55:43      1.00

          kernel  4:18         4:26         3.10

          eSDK    2:36         2:28         -5.13





Fedora    Test    2.1.2_rc1    2.1.3_rc1    %

          sato    0:55:48      0:55:59      0.33

          rootfs  2:01         2:15         11.57

          rmwork  0:55:23      0:56:18      1.66

          kernel  4:41         4:41         0.00

          eSDK    2:35         2:41         3.87



Performance Charts :  https://wiki.yoctoproject.org/charts/perf_milestone_G=
DC/performance_test.html





=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D



    1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11637

    2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11644

    3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11655

    4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11654

    5.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11646

    6.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11658

    7.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11659





Regards

Libertad G.

