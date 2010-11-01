Return-Path: <david.c.stewart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96E414C80100
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 08:35:47 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Nov 2010 06:35:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,273,1286175600"; d="scan'208";a="343023586"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 01 Nov 2010 06:35:36 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Mon, 1 Nov 2010 06:35:36 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, "Garman, Scott A"
	<scott.a.garman@intel.com>
Date: Mon, 1 Nov 2010 06:35:35 -0700
Thread-Topic: [yocto] nightly-release takes more than 24 hours to build.
Thread-Index: Act5tGyu8CdE2gkqQVWUN0snalUTggAFGGOg
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC34F068@orsmsx501.amr.corp.intel.com>
References: <4CCE8A82.7070000@intel.com> <1288609394.22875.133.camel@rex>
In-Reply-To: <1288609394.22875.133.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: nightly-release takes more than 24 hours to build.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 13:35:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Richard Purdie
>Sent: Monday, November 01, 2010 4:03 AM
>
>On Mon, 2010-11-01 at 02:38 -0700, Scott Garman wrote:
>>
>> Our buildserver hardware is a dual quad-core Xeon server with 12 GB of
>> RAM. Throwing hardware at the problem is another solution, but not an
>> inexpensive one (we'd be looking at a 4-socket machine filled with
>> quad-cores and 32 GB of RAM).
>
>There doesn't just have to be one build machine, we are going to end up
>needing multiple machines and we can split the load between them quite
>easily. I think there is going to be a second machine needed alongside
>the existing one regardless of what other optimisations we make.

I can buy another server and contribute it to the build effort. I had inten=
ded to buy one this quarter to begin hosting yoctoproject.org and a source =
mirror, but we could offload part of the builds to it as well.

As you know, I want us to get to the root of the problem, which is efficien=
cy of the build process. Since RP has already committed to addressing this,=
 I'm fine with a short-term fix if it will help. :-)

Scott - please put in an order, will tell you the max amount today when we'=
re f2f.

Dave

