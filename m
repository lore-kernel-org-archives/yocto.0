Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65457E00B83; Fri, 15 Sep 2017 13:01:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BA87E0091D
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 13:01:26 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 15 Sep 2017 13:01:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,398,1500966000"; d="scan'208";a="149707876"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga005.jf.intel.com with ESMTP; 15 Sep 2017 13:01:25 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Fri, 15 Sep 2017 13:01:25 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.240]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.88]) with mapi id
	14.03.0319.002; Fri, 15 Sep 2017 13:01:24 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: QA cycle report for 2.2.2 rc2
Thread-Index: AdMttJRRajU0rb3wR/ymuQyZT931vQAyOEcA//+blaD//+vIcIAAN0cK
Date: Fri, 15 Sep 2017 20:01:22 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B611A1589E@ORSMSX112.amr.corp.intel.com>
References: <58D9E2E50A021A45AD740492365FCDC532A24F9C@fmsmsx107.amr.corp.intel.com>,
	<1505494250.18640.102.camel@linuxfoundation.org>
	<6E51916E4A1F32428260031F4C7CD2B611A157E5@ORSMSX112.amr.corp.intel.com>,
	<58D9E2E50A021A45AD740492365FCDC532A25272@fmsmsx107.amr.corp.intel.com>
In-Reply-To: <58D9E2E50A021A45AD740492365FCDC532A25272@fmsmsx107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
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
X-List-Received-Date: Fri, 15 Sep 2017 20:01:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

The commit is for 2.4 M3 (5f6945f5031e1a4ca116cc1eccf4c2f9dc228547)=0A=
2.4 does contain the ptests for gzip, slang and flex. (Although there are s=
ome other mysteries, like sed-ptest is missing)=0A=
It would seem that 2.2 had never contained (or lost a while ago) those ptes=
ts.=0A=
=0A=
Juro=0A=
________________________________________=0A=
From: Cruz, Libertad=0A=
Sent: Friday, September 15, 2017 12:50 PM=0A=
To: Bystricky, Juro; Richard Purdie; yocto@yoctoproject.org; Jolley, Stephe=
n K; Zhang, Jessica=0A=
Cc: Perez Carranza, Jose; Cruz Alcaraz, Juan M; Jordan, Robin L=0A=
Subject: RE: QA cycle report for 2.2.2 rc2=0A=
=0A=
Hello,=0A=
=0A=
=0A=
Regarding 12080: this was a QA documentation error on the test steps, verif=
ied it again and changed the bug to not a bug, documented the correct steps=
 for the QA.=0A=
=0A=
Regarding 12081: To open bugs on ptest we make a comparison from the last r=
un in this case the comparison was made with 2.2.2 rc1 Ptest 5f6945f5031e1a=
4ca116cc1eccf4c2f9dc228547 which in turn was compared with Ptest 9ed748a542=
b520c1cb763d981969233c0f5efd4e which was compared with  Ptest 8e15e9b6e478f=
6368034519b2a8fd3c7ea71d23b which was compared with Ptest 6bd890d9e011014cf=
323e61267f8b256949d44aa, they all hold this packages.=0A=
=0A=
=0A=
=0A=
=0A=
Best Regards=0A=
Libertad G.=0A=
=0A=
-----Original Message-----=0A=
From: Bystricky, Juro=0A=
Sent: Friday, September 15, 2017 1:04 PM=0A=
To: Richard Purdie <richard.purdie@linuxfoundation.org>; Cruz, Libertad <li=
bertad.cruz@intel.com>; yocto@yoctoproject.org; Jolley, Stephen K <stephen.=
k.jolley@intel.com>; Zhang, Jessica <jessica.zhang@intel.com>=0A=
Cc: Perez Carranza, Jose <jose.perez.carranza@intel.com>; Cruz Alcaraz, Jua=
n M <juan.m.cruz.alcaraz@intel.com>; Jordan, Robin L <robin.l.jordan@intel.=
com>=0A=
Subject: RE: QA cycle report for 2.2.2 rc2=0A=
=0A=
=0A=
Regarding 12081:=0A=
Looking at some previous ptest results in:=0A=
https://wiki.yoctoproject.org/wiki/QA_sanity_history=0A=
we can see that the offending tests (gzip, flex, slang) were not present in=
:=0A=
https://wiki.yoctoproject.org/wiki/Ptest_62d7d4130202d8ede16abf9e7d779361ca=
70847e=0A=
but started to appear after=0A=
https://wiki.yoctoproject.org/wiki/Ptest_6e20b31d5d17133e0fca086e12a0ad06ab=
5c4cc8 (flex)=0A=
=0A=
Also checking the manifest file, the offending test were also missing in ht=
tp://downloads.yoctoproject.org/releases/yocto/yocto-2.2.1/machines/generic=
x86-64/core-image-sato-sdk-ptest-genericx86-64.manifest=0A=
=0A=
So this is not a regression issue.=0A=
=0A=
Juro=0A=
=0A=
From: Richard Purdie [richard.purdie@linuxfoundation.org]=0A=
Sent: Friday, September 15, 2017 9:50 AM=0A=
To: Cruz, Libertad; yocto@yoctoproject.org; Jolley, Stephen K; Zhang, Jessi=
ca; Bystricky, Juro=0A=
Cc: Perez Carranza, Jose; Cruz Alcaraz, Juan M; Jordan, Robin L=0A=
Subject: Re: QA cycle report for 2.2.2 rc2=0A=
=0A=
This is a tricky one to evaluate. Going through the bugs in the QA=0A=
report:=0A=
=0A=
Bug 12075 - think this is ok to fix on the branch and release note=0A=
Bug 12080 - we think minimal eSDK never worked in morty therefore this=0A=
            is a QA testing error?=0A=
Bug 12073 - we continue to see various gpg errors even with master,=0A=
            propose not to block release on this and only fix master=0A=
Bug 12009 - resolved and already fixed in 2.2.2 (I marked it resolved)=0A=
 Bug 11150 - was a bug with 2.2.1 but should be fixed in 2.2.2?=0A=
Bug 11611 - was this found in 2.2.2?=0A=
Bug 11064 - marked as resolved as per QA comment, fix was in 2.2.2=0A=
Bug 11597 - fix was added to 2.2.2 (marked as resolved)=0A=
Bug 10460 - open and unresolved with master but not release blocker IMO=0A=
Bug 11797 - can't see any backport but not a release blocker as the=0A=
            source mirrors work=0A=
Bug 11109 - No backport afaict but not release blocker=0A=
=0A=
Which leave us with 12081 to understand before we can decide whether to rel=
ease this or not.=0A=
=0A=
So the decision to release or not depends on QA agreeing with the resolutio=
n of 12080 and figuring out what happened with 12081.=0A=
=0A=
[Thanks to Ross for helping with some of this]=0A=
=0A=
Cheers,=0A=
=0A=
Richard=0A=
=0A=
=0A=
=0A=
=0A=
On Thu, 2017-09-14 at 16:53 -0700, Cruz, Libertad wrote:=0A=
> Here is the report for the 2.2.2 point release test cycle.=0A=
> Full Report :  https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-13_-=0A=
> _Full_Point_Release_Test_Cycle_2.2.2_rc2=0A=
> =3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D=0A=
> The QA cycle for point release 2.2.2 rc2 is complete.  There are 3 new=0A=
> bugs: bug 12080[2]  blocks testing to the eSDK component since eSDK=0A=
> functionalities cannot be executed. Bugs 12075[1], 12073[3], 12081[4]=0A=
> don=92t block full functionalities.=0A=
>=0A=
> LPT results are waiting to be updated by Windriver.=0A=
>=0A=
> Performance=0A=
> Compared with 2.2.2 rc1 there was a regression of 14.71 while building=0A=
> rootfs on Ubuntu, there was also a regression on Fedora while building=0A=
> sato of 7.46% and a regression on kernel of 12.12%.=0A=
>=0A=
>=0A=
> Ubuntu                 Test       2.2.2_rc1=0A=
> 2.2.2_rc2             %=0A=
>                               sato       1:00:42=0A=
> 1:01:16               0.93=0A=
>                               rootfs    2:16=0A=
> 2:36                     14.71=0A=
>                               rmwork 0:59:29              0:59:51=0A=
>             0.62=0A=
>                               kernel    5:01=0A=
> 5:00                     -0.33=0A=
>                               eSDK      3:22=0A=
> 3:19                     -1.49=0A=
>=0A=
>=0A=
>=0A=
>=0A=
> Fedora                 Test       2.2.2_rc1=0A=
> 2.2.2_rc2             %=0A=
>                               sato       1:01:55=0A=
> 1:06:32               7.46=0A=
>                               rootfs    2:49=0A=
> 2:51                     1.18=0A=
>                               rmwork 0:59:52              1:01:32=0A=
>             2.78=0A=
>                               kernel    6:03=0A=
> 6:47                     12.12=0A=
>                               eSDK      3:44=0A=
> 3:54                     4.46=0A=
>=0A=
>=0A=
> ptest=0A=
> There was an improvement on the pass rate in the following packages in=0A=
> comparison with 2.2.2 rc1:=0A=
> gdk-pixbuf with 5%=0A=
> libxml2 with 4.20%=0A=
> lttng-tools with 3.20%=0A=
>=0A=
> On the other side there was a regression on the pass rate in=0A=
> comparison with 2.2.2 rc1:=0A=
> acl with 6.80%=0A=
> e2fsprogs with 100% regression=0A=
> gawk with .10%=0A=
> quilt with 1.80%=0A=
> valgrind of 53.10%=0A=
>=0A=
>=0A=
> Compliance=0A=
> Results are yet to be documented by Windriver.=0A=
>=0A=
> =3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D=0A=
>=0A=
> There is only one concern on the eSDK component it cannot execute. QA=0A=
> recommends an 2.2.2 rc3 to only verify the eSDK component.=0A=
>=0A=
> =3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D=0A=
>=0A=
>        New Bugs=0A=
>             -12075[1]  [morty] testimage quemux86/qemux86-64 lsb=0A=
> tcgetattr: Input/output error^M=0A=
>             -12080[2] [Morty][Test Case 1605]=0A=
> TCTEMP_2.3_AUTO_sdkext_eSDK_devtool_build_make=0A=
>             -12073[3] selftest: setUpClass failed failing on ubuntu=0A=
> 17.04 (oeqa.selftest.signing.Signing)=0A=
>             -12081[4] [morty] PTEST: Package Name flex, gzip, slang,=0A=
> do not appear in 2.2.2 rc2=0A=
>=0A=
> Full Bug Report : https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-1=0A=
> 3_-_Full_Point_Release_Test_Cycle_2.2.2_rc2#Bugs_Found_during_QA_Test=0A=
>=0A=
>=0A=
> =3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D=0A=
>=0A=
>     1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12075 [1]=
=0A=
>     2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12080 [2]=
=0A=
>     3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12073 [3]=
=0A=
>     4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12081 [4]=
=0A=
>=0A=
>=0A=
>=0A=
> Regards=0A=
> Libertad G.=0A=

