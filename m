Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41B7AE00D26; Mon, 29 Feb 2016 03:27:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD93EE00CB9
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 03:27:19 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 29 Feb 2016 03:27:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,520,1449561600"; d="scan'208";a="923343226"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 29 Feb 2016 03:27:18 -0800
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 29 Feb 2016 11:27:16 +0000
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.31]) by
	irsmsx155.ger.corp.intel.com ([169.254.14.201]) with mapi id
	14.03.0248.002; Mon, 29 Feb 2016 11:27:16 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Gary Thomas
	<gary@mlbassoc.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [Openembedded-architecture] Standalone image writer
Thread-Index: AQHRcuQkPOd+qbcIFkCObOj9X2AtZQ==
Date: Mon, 29 Feb 2016 11:27:15 +0000
Message-ID: <D2F9DB3A.7513C%belen.barros.pena@intel.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<56D3BB9C.8090105@gmail.com> <56D3BFA9.9080200@mlbassoc.com>
	<3845777.DZXZ3IeRVd@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3845777.DZXZ3IeRVd@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.1.160122
x-originating-ip: [10.237.224.36]
MIME-Version: 1.0
Subject: Re: [Openembedded-architecture] Standalone image writer
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
X-List-Received-Date: Mon, 29 Feb 2016 11:27:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <2B5501678767B24F9471917A45ACF7C7@intel.com>
Content-Transfer-Encoding: quoted-printable



On 29/02/2016 08:12, "yocto-bounces@yoctoproject.org on behalf of Paul
Eggleton" <yocto-bounces@yoctoproject.org on behalf of
paul.eggleton@linux.intel.com> wrote:

>There isn't a frontend UI for wic that I am aware of though - as I
>mentioned=20
>earlier image-writer has no support for it, it's just doing a straight dd
>to=20
>the device.

We would really like to add support for wic at some point.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8769

Maybe 2.1?

Cheers

Bel=E9n


