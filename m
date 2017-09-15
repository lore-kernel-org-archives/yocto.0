Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 649BBE00B83; Fri, 15 Sep 2017 12:50:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82DACE00D24
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 12:50:33 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Sep 2017 12:50:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,398,1500966000"; d="scan'208";a="151854180"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga005.fm.intel.com with ESMTP; 15 Sep 2017 12:50:32 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Fri, 15 Sep 2017 12:50:32 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.9]) by
	fmsmsx123.amr.corp.intel.com ([169.254.7.170]) with mapi id
	14.03.0319.002; Fri, 15 Sep 2017 12:50:32 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "Bystricky, Juro" <juro.bystricky@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: QA cycle report for 2.2.2 rc2
Thread-Index: AdMttJRRajU0rb3wR/ymuQyZT931vQAyOEcA//+blaD//+vIcA==
Date: Fri, 15 Sep 2017 19:50:31 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A25272@fmsmsx107.amr.corp.intel.com>
References: <58D9E2E50A021A45AD740492365FCDC532A24F9C@fmsmsx107.amr.corp.intel.com>,
	<1505494250.18640.102.camel@linuxfoundation.org>
	<6E51916E4A1F32428260031F4C7CD2B611A157E5@ORSMSX112.amr.corp.intel.com>
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B611A157E5@ORSMSX112.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Cc: "Cruz Alcaraz, Juan M" <juan.m.cruz.alcaraz@intel.com>, "Jordan,
	Robin L" <robin.l.jordan@intel.com>
Subject: Re: QA cycle report for 2.2.2 rc2
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
X-List-Received-Date: Fri, 15 Sep 2017 19:50:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,


Regarding 12080: this was a QA documentation error on the test steps, verif=
ied it again and changed the bug to not a bug, documented the correct steps=
 for the QA.=20

Regarding 12081: To open bugs on ptest we make a comparison from the last r=
un in this case the comparison was made with 2.2.2 rc1 Ptest 5f6945f5031e1a=
4ca116cc1eccf4c2f9dc228547 which in turn was compared with Ptest 9ed748a542=
b520c1cb763d981969233c0f5efd4e which was compared with  Ptest 8e15e9b6e478f=
6368034519b2a8fd3c7ea71d23b which was compared with Ptest 6bd890d9e011014cf=
323e61267f8b256949d44aa, they all hold this packages.=20




Best Regards
Libertad G.=20

-----Original Message-----
From: Bystricky, Juro=20
Sent: Friday, September 15, 2017 1:04 PM
To: Richard Purdie <richard.purdie@linuxfoundation.org>; Cruz, Libertad <li=
bertad.cruz@intel.com>; yocto@yoctoproject.org; Jolley, Stephen K <stephen.=
k.jolley@intel.com>; Zhang, Jessica <jessica.zhang@intel.com>
Cc: Perez Carranza, Jose <jose.perez.carranza@intel.com>; Cruz Alcaraz, Jua=
n M <juan.m.cruz.alcaraz@intel.com>; Jordan, Robin L <robin.l.jordan@intel.=
com>
Subject: RE: QA cycle report for 2.2.2 rc2


Regarding 12081:
Looking at some previous ptest results in:
https://wiki.yoctoproject.org/wiki/QA_sanity_history
we can see that the offending tests (gzip, flex, slang) were not present in=
:
https://wiki.yoctoproject.org/wiki/Ptest_62d7d4130202d8ede16abf9e7d779361ca=
70847e
but started to appear after
https://wiki.yoctoproject.org/wiki/Ptest_6e20b31d5d17133e0fca086e12a0ad06ab=
5c4cc8 (flex)

Also checking the manifest file, the offending test were also missing in ht=
tp://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/machines/generic=
x86-64/core-image-sato-sdk-ptest-genericx86-64.manifest

So this is not a regression issue.

Juro

From: Richard Purdie [richard.purdie@linuxfoundation.org]
Sent: Friday, September 15, 2017 9:50 AM
To: Cruz, Libertad; yocto@yoctoproject.org; Jolley, Stephen K; Zhang, Jessi=
ca; Bystricky, Juro
Cc: Perez Carranza, Jose; Cruz Alcaraz, Juan M; Jordan, Robin L
Subject: Re: QA cycle report for 2.2.2 rc2

This is a tricky one to evaluate. Going through the bugs in the QA
report:

Bug 12075 - think this is ok to fix on the branch and release note=20
Bug 12080 - we think minimal eSDK never worked in morty therefore this
            is a QA testing error?
Bug 12073 - we continue to see various gpg errors even with master,
            propose not to block release on this and only fix master=20
Bug 12009 - resolved and already fixed in 2.2.2 (I marked it resolved)
 Bug 11150 - was a bug with 2.2.1 but should be fixed in 2.2.2?
Bug 11611 - was this found in 2.2.2?
Bug 11064 - marked as resolved as per QA comment, fix was in 2.2.2=20
Bug 11597 - fix was added to 2.2.2 (marked as resolved)=20
Bug 10460 - open and unresolved with master but not release blocker IMO=20
Bug 11797 - can't see any backport but not a release blocker as the
            source mirrors work
Bug 11109 - No backport afaict but not release blocker

Which leave us with 12081 to understand before we can decide whether to rel=
ease this or not.

So the decision to release or not depends on QA agreeing with the resolutio=
n of 12080 and figuring out what happened with 12081.

[Thanks to Ross for helping with some of this]

Cheers,

Richard




On Thu, 2017-09-14 at 16:53 -0700, Cruz, Libertad wrote:
> Here is the report for the 2.2.2 point release test cycle.
> Full Report :  https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-13_-
> _Full_Point_Release_Test_Cycle_2.2.2_rc2
> =3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
> The QA cycle for point release 2.2.2 rc2 is complete.  There are 3 new=20
> bugs: bug 12080[2]  blocks testing to the eSDK component since eSDK=20
> functionalities cannot be executed. Bugs 12075[1], 12073[3], 12081[4]=20
> don't block full functionalities.
>
> LPT results are waiting to be updated by Windriver.
>
> Performance
> Compared with 2.2.2 rc1 there was a regression of 14.71 while building=20
> rootfs on Ubuntu, there was also a regression on Fedora while building=20
> sato of 7.46% and a regression on kernel of 12.12%.
>
>
> Ubuntu                 Test       2.2.2_rc1
> 2.2.2_rc2             %
>                               sato       1:00:42
> 1:01:16               0.93
>                               rootfs    2:16
> 2:36                     14.71
>                               rmwork 0:59:29              0:59:51
>             0.62
>                               kernel    5:01
> 5:00                     -0.33
>                               eSDK      3:22
> 3:19                     -1.49
>
>
>
>
> Fedora                 Test       2.2.2_rc1
> 2.2.2_rc2             %
>                               sato       1:01:55
> 1:06:32               7.46
>                               rootfs    2:49
> 2:51                     1.18
>                               rmwork 0:59:52              1:01:32
>             2.78
>                               kernel    6:03
> 6:47                     12.12
>                               eSDK      3:44
> 3:54                     4.46
>
>
> ptest
> There was an improvement on the pass rate in the following packages in=20
> comparison with 2.2.2 rc1:
> gdk-pixbuf with 5%
> libxml2 with 4.20%
> lttng-tools with 3.20%
>
> On the other side there was a regression on the pass rate in=20
> comparison with 2.2.2 rc1:
> acl with 6.80%
> e2fsprogs with 100% regression
> gawk with .10%
> quilt with 1.80%
> valgrind of 53.10%
>
>
> Compliance
> Results are yet to be documented by Windriver.
>
> =3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D
>
> There is only one concern on the eSDK component it cannot execute. QA=20
> recommends an 2.2.2 rc3 to only verify the eSDK component.
>
> =3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
>
>        New Bugs
>             -12075[1]  [morty] testimage quemux86/qemux86-64 lsb
> tcgetattr: Input/output error^M
>             -12080[2] [Morty][Test Case 1605]=20
> TCTEMP_2.3_AUTO_sdkext_eSDK_devtool_build_make
>             -12073[3] selftest: setUpClass failed failing on ubuntu
> 17.04 (oeqa.selftest.signing.Signing)
>             -12081[4] [morty] PTEST: Package Name flex, gzip, slang,=20
> do not appear in 2.2.2 rc2
>
> Full Bug Report : https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-1
> 3_-_Full_Point_Release_Test_Cycle_2.2.2_rc2#Bugs_Found_during_QA_Test
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>     1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12075 [1]
>     2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12080 [2]
>     3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12073 [3]
>     4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12081 [4]
>
>
>
> Regards
> Libertad G.

