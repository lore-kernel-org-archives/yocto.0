Return-Path: <costin.c.constantin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD58FE0076F; Tue, 10 Mar 2015 01:15:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92408E00750
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 01:15:43 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 10 Mar 2015 01:15:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,373,1422950400"; d="scan'208";a="696389620"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2015 01:15:44 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.32]) by
	irsmsx110.ger.corp.intel.com ([169.254.15.236]) with mapi id
	14.03.0195.001; Tue, 10 Mar 2015 08:15:42 +0000
From: "Constantin, Costin C" <costin.c.constantin@intel.com>
To: Albert K <alberk@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Intel BSP for Rangeley
Thread-Index: AQHQWu0OY9hY1UcqX0KZ5Hqz/nUT0J0VXakA
Date: Tue, 10 Mar 2015 08:15:41 +0000
Message-ID: <2B8B4B6BB45F5242AFEC714E022A4B4A276D2A5F@IRSMSX101.ger.corp.intel.com>
References: <CACjDgAN4pFt7Q-gm6dt-AMTryio_dsA8m_ARbssdc6QNktK8yQ@mail.gmail.com>
In-Reply-To: <CACjDgAN4pFt7Q-gm6dt-AMTryio_dsA8m_ARbssdc6QNktK8yQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: Intel BSP for Rangeley
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
X-List-Received-Date: Tue, 10 Mar 2015 08:15:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear Albert,

A good starting point would be the genericX86 or genericX86_64. We use thes=
e BSP images to test on an Atom PC.

Regards,

Costin

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Albert K
Sent: Tuesday, March 10, 2015 6:45 AM
To: yocto@yoctoproject.org
Subject: [yocto] Intel BSP for Rangeley

Dear all,

May I know which BSP to use for Intel Atom C2000 Rangeley?  I do not see th=
at Intel BSP has the mohon peak bsp.  I am trying out the Dizzy
1.7 branch.  Thanks.

Regards,
Albert.
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

