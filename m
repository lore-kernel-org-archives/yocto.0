Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8D68E009D9; Wed, 21 Oct 2015 05:42:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F368CE00985
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:42:40 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 21 Oct 2015 05:42:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,711,1437462000"; d="scan'208";a="668756191"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga003.jf.intel.com with ESMTP; 21 Oct 2015 05:42:39 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.151]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.150]) with mapi id
	14.03.0248.002; Wed, 21 Oct 2015 13:42:38 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Meta layer for Cavium CNS3xxx ARM processor
Thread-Index: AQHRC/33OH0/9QM7uUafEkFSeCA2zQ==
Date: Wed, 21 Oct 2015 12:42:37 +0000
Message-ID: <D24D4681.68AC5%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.6.150930
x-originating-ip: [10.237.224.31]
MIME-Version: 1.0
Subject: Re: Meta layer for Cavium CNS3xxx ARM processor
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
X-List-Received-Date: Wed, 21 Oct 2015 12:42:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E1F963E46126BA4596A4535492EBB1B3@intel.com>
Content-Transfer-Encoding: quoted-printable



On 21/10/2015 10:01, "yocto-bounces@yoctoproject.org on behalf of Bipnesh,
Abhinav (Abhinav)" <yocto-bounces@yoctoproject.org on behalf of
abhinavbipnesh@avaya.com> wrote:

>Hi,
>=20
>I am looking for an meta layer which provide support for Cavium CNS3xxx
>SOC as need to build some application on that platform. Below is the
>output from the board when I check for the release and CPU information
>=20
>$ cat /etc/*release
>MontaVista Linux 6, (.dev-snapshot-20130726)
>=20
>=20
>$ cat /proc/cpuinfoProcessor       : ARMv6-compatible processor rev 4
>(v6l)BogoMIPS        : 279.34Features        : swp half thumb fastmult
>vfp edsp javaCPU implementer : 0x41CPU architecture: 7CPU variant     :
>0x0CPU part        : 0xb02CPU revision    : 4 Hardware        : Cavium
>Networks CNS3420 Validation BoardRevision        : 0000Serial          :
>0000000000000000=20
>=20
>So is there any meta layer which supports above SOC.

You can find out about such things in the layer index:

http://layers.openembedded.org/layerindex/branch/master/machines/

Make sure to select the correct branch on the left side of the menu.

Cheers

Bel=E9n

>=20
>Thanks,
>Abhinav
>


