Return-Path: <sonia.leon.bautista@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72556E00CFF; Tue, 24 Oct 2017 12:24:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56BC2E00CF6
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 12:24:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Oct 2017 12:24:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,429,1503385200"; d="scan'208";a="1234764015"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by fmsmga002.fm.intel.com with ESMTP; 24 Oct 2017 12:24:27 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 24 Oct 2017 12:24:26 -0700
Received: from fmsmsx104.amr.corp.intel.com ([169.254.3.185]) by
	FMSMSX154.amr.corp.intel.com ([169.254.6.161]) with mapi id
	14.03.0319.002; Tue, 24 Oct 2017 12:24:26 -0700
From: "Leon Bautista, Sonia" <sonia.leon.bautista@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>
Thread-Topic: QA cycle report for 2.4 RC3
Thread-Index: AdNM8qY6/IZIXTYxQt2aiANb8+Y7qg==
Date: Tue, 24 Oct 2017 19:24:25 +0000
Message-ID: <CE4025378936D741ABFF42E049A6D16F2BE6AF52@fmsmsx104.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "Jordan, Robin L" <robin.l.jordan@intel.com>
Subject: QA cycle report for 2.4 RC3
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
X-List-Received-Date: Tue, 24 Oct 2017 19:24:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hello All, I'm sending the report on behalf of Libertad G.

Enjoy reading the full Report for 2.4 RC3:=A0 https://wiki.yoctoproject.org=
/wiki/WW43_-_2017-10-23_-_Full_Test_Cycle_2.4_RC3  =20

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle for release 2.4 RC3 is complete.=A0 There are 7 new bugs, 5 To=
aster related; other one is related with LSB test to update to use a newest=
 binary.  Also we have an eclipse plugin bug about not able to launch qemu.=
 None of the 7 bugs are blocking functionality.


ptest=20
Results are same as RC2, there are no changes in the pass rates,  and no hi=
gh priority bugs.=20


Posix
2.4 RC3 Posix results are very similar to last QA cycle 2.4 RC2. Now the Ed=
gerouter test were executed.

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Failures=A0=A0=A0=A0=A0=
=A0=A0=A0 =A0=A0=A0=A0=A0=A0=A0=A0 2.4 RC3 =A0=A0=A0 =A0=A0=A0=A0=A0=A02.4 =
RC2
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Generic86-64=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 46=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 46
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Beaglebone=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 45=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 45
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Edgerouter=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 47=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=20
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Mpc8315e-rdb=A0=A0=A0=
=A0=A0=A0=A0 =A045=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 45

For more details visit:=A0 https://wiki.yoctoproject.org/wiki/Posix_result =
and https://wiki.yoctoproject.org/wiki/POSIX-results


LTP
2.4 RC3 LTP results show that, Edgerouter was not able to run Windriver wil=
l update the results soon. For currently executed LTP test, =A0QA has not f=
ound bugs.=20

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
=A0=A0=A0=A0=A0=A02.4 RC2		   2.4 RC3
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 =A0Total =A0=A0|=A0 Failures	Total	| Failures
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0Genericx86-64=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 1391=A0=A0 |=A0=A0=A0 =A027		1391	|    26
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0Beaglebone=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1353 =A0=A0|=A0=A0=A0=A0 17		1353	|    18
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0Edgerouter=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1353=A0 =A0|=A0=A0=A0=A0 		1353	|
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0=A0Mpc8315e-rdb=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 1353=A0 =A0|=A0=A0=A0=A0 30		1353	|    29

For more details: https://wiki.yoctoproject.org/wiki/LTP_result


Performance
Measurements =A0form 2.4rc3 are the same as observed on previous rc2. =A0


  Ubuntu           Test        2.4_rc2                2.4_rc3              =
  %
                          sato       1:16:32                1:15:28        =
        -1.39
                          rootfs    2:45                     2:45          =
            0.00
                          rmwork 1:08:20                1:08:58            =
    0.93
                          kernel    5:45                     5:44          =
            -0.29
                          eSDK      2:42                     2:37          =
            -3.09                    =20
                                                                          =
=20
Fedora		Test        2.4_rc2                2.4_rc3                %
                          sato       1:17:23                1:17:22        =
        -0.02
                          rootfs    2:40                     2:40          =
            0.00
                          rmwork 1:10:30                1:10:36            =
    0.14
                          kernel    6:05                     6:01          =
            -1.10
                          eSDK      2:39                     2:41          =
            1.26


=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D

The QA cycle is complete and the team hasn't found blocking issues. The rel=
ease candidate is stable hence QA does not opposed for candidate to be rele=
ased, however there are still 2 bugs on Current community Open bugs targete=
d to be fixed for 2.4 M4 (11385[1]  and 11757[2]) , they need to be moved.=
=20


=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D

=A0=A0=A0=A0=A0=A0 New Bugs
	- 12270	[3] Cannot launch QEMU from Eclipse using eSDK
	- 12240	[4] LSB-test: package list should be updated to use latest binary =
available
	- 12259	[5] when building 3 or more images left hand summary is not shown =
correctly
	- 12260	[6] why arent the meta-qt3 and meta-qt4 present in the compatible =
layers for poky
	- 12261	[7] Importing layers, confirmation label is misleading
	- 12262	[8] Layer details page: optional layers can't be blank when import=
ing a layer
	- 12263	[9] project layers can be duplicated

=A0=A0=A0=A0=A0=A0 Not new M+ bugs
	- 12131	[10] Kernel traceback when reboot beaglebone black
	- 12185	[11] devtool_modify_native test failure in ross/rocko
	- 11994	[12] Graphical qemu doesn't work over remote X on Fedora 26



Full Bug Report:=20
	- https://wiki.yoctoproject.org/wiki/WW43_-_2017-10-23_-_Full_Test_Cycle_2=
.4_RC3#Bugs_Found_during_QA_Test

=3D=3D=3D=3D=3D=3D=3D=3D Links =3D=3D=3D=3D=3D=3D=3D=3D=3D
1. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11385	[1]
2. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11757	[2]
3. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12270	[3]
4. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12240	[4]
5. Https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12259	[5]
6. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12260	[6]
7. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12261	[7]
8. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12262	[8]
9. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12263	[9]
10. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12131	[10]
11. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12185	[11]
12. https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11994	[12]


Regards
Sonia Leon

