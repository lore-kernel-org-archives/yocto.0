Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9FF7E00E8B; Fri,  8 Jul 2016 04:36:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D6D7E00D52
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 04:36:43 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 08 Jul 2016 04:36:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,329,1464678000"; d="scan'208";a="731382937"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Jul 2016 04:36:42 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.97]) by
	IRSMSX104.ger.corp.intel.com ([163.33.3.159]) with mapi id
	14.03.0248.002; Fri, 8 Jul 2016 12:36:41 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Sambaran Ghosh <sambaran.mail@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Toaster build fails on Master branch Yocto
Thread-Index: AQHR2Qz/lyvSbeuXhEKNr8IfKLfPnA==
Date: Fri, 8 Jul 2016 11:36:41 +0000
Message-ID: <D3A54D5C.80A25%belen.barros.pena@intel.com>
References: <CADXrkTNJDZ_hgu_WNXOamSFE_iQcudB6G0Y8cB_coe0WFfM7Hw@mail.gmail.com>
In-Reply-To: <CADXrkTNJDZ_hgu_WNXOamSFE_iQcudB6G0Y8cB_coe0WFfM7Hw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.5.160527
x-originating-ip: [10.252.10.168]
MIME-Version: 1.0
Subject: Re: Toaster build fails on Master branch Yocto
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
X-List-Received-Date: Fri, 08 Jul 2016 11:36:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <559AB7C247CFE14B82BEAC33E2B34E3C@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Sambaran,

On 07/07/2016 10:43, "yocto-bounces@yoctoproject.org on behalf of Sambaran
Ghosh" <yocto-bounces@yoctoproject.org on behalf of
sambaran.mail@gmail.com> wrote:

>While creating a toaster project with the Master Yocto branch,  build
>always fails. But if I select Krogoth or Jethro branch then builds
>succeeds. The major problem with sub-branches like Krogoth is that there
>few layers supported. Is everyone having
> similar problem?=20

If you are using the Krogoth release of Yocto Project, Toaster will no
longer build the master branch. The project as a whole has migrated to
python3, and that has broken compatibility between Krogoth and master. So
with the Toaster from Krogoth you will only be able to build krogoth and
jethro.=20

>And do you have any solution?

There is, although it is a bit clunky. You will need to manually import
any layers you want to build into your krogoth Toaster project. In the
project page, select the "import layer" tab, and fill the git repository
information, which you can get from https://layers.yoctoproject.org. As
the revision, enter "master".

That will add the layer to the list of compatible layers for the project,
and add it to the project configuration, so that you can build recipes
from it.=20

I hope this helps.

Cheers

Bel=E9n


>=20


