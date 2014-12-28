Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 778B3E00902; Sat, 27 Dec 2014 23:16:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5813EE00756
	for <yocto@yoctoproject.org>; Sat, 27 Dec 2014 23:16:31 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 27 Dec 2014 23:16:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,654,1413270000"; d="scan'208";a="643630252"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
	by fmsmga001.fm.intel.com with ESMTP; 27 Dec 2014 23:16:29 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.55]) by
	IRSMSX153.ger.corp.intel.com ([163.33.192.75]) with mapi id
	14.03.0195.001; Sun, 28 Dec 2014 07:16:29 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: William Mills <wmills@ti.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] My config got stuck in the toaster
Thread-Index: AQHQIm4yZyP3+8CuHE6m1dkRI5T9dA==
Date: Sun, 28 Dec 2014 07:16:27 +0000
Message-ID: <D0C5AB88.50A09%belen.barros.pena@intel.com>
References: <EC0CC42105A97F4A81EA36CDF61DDAD45CA40387@DLEE11.ent.ti.com>
	<549EFEF1.1040604@ti.com>
In-Reply-To: <549EFEF1.1040604@ti.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.6.141106
x-originating-ip: [10.252.171.53]
MIME-Version: 1.0
Subject: Re: My config got stuck in the toaster
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
X-List-Received-Date: Sun, 28 Dec 2014 07:16:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7D82669D6A011A4E9383F19B60D828E3@intel.com>
Content-Transfer-Encoding: quoted-printable

On 28/12/2014 00:18, "William Mills" <wmills@ti.com> wrote:

>BTW: Building "world" does not look nice in toaster.  It list 100s of
>build targets instead of just "world".

Anything with "does not look nice in toaster" is probably my problem.

Can I ask you to open an issue in Bugzilla for this, so that we can put
some thought into how to present 'world' builds?

Thanks!

Bel=E9n


