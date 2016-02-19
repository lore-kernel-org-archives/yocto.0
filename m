Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5507E00CB9; Fri, 19 Feb 2016 01:41:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FB79E00C60
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 01:41:46 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 19 Feb 2016 01:41:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,469,1449561600"; d="scan'208";a="50775042"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
	by fmsmga004.fm.intel.com with ESMTP; 19 Feb 2016 01:41:44 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.31]) by
	IRSMSX108.ger.corp.intel.com ([169.254.11.102]) with mapi id
	14.03.0248.002; Fri, 19 Feb 2016 09:41:43 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: =?iso-8859-1?Q?Andreas_M=FCller?= <schnitzeltony@googlemail.com>, "Paul
	Eggleton" <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] OpenEmbedded Metadata: Recipe update broken
Thread-Index: AQHRavm9UhV/vyAuykO1mBvBGIMWvQ==
Date: Fri, 19 Feb 2016 09:41:42 +0000
Message-ID: <D2ECA08E.74361%belen.barros.pena@intel.com>
References: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
	<4771189.YZVmszphZV@peggleto-mobl.ger.corp.intel.com>
	<CALbNGRSJKT+9wSKE-mSZbeEo4bWpw3XfpBnpenP7vSvtkMXFqg@mail.gmail.com>
	<CALbNGRRL6-9S_a3r-R=Qtv+_yUbYEW2spNz_v7YT4cPuoy6k1g@mail.gmail.com>
In-Reply-To: <CALbNGRRL6-9S_a3r-R=Qtv+_yUbYEW2spNz_v7YT4cPuoy6k1g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.1.160122
x-originating-ip: [10.252.14.154]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded Metadata: Recipe update broken
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
X-List-Received-Date: Fri, 19 Feb 2016 09:41:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <101A83E2F1955D45A53CC2E5B6A85BCB@intel.com>
Content-Transfer-Encoding: quoted-printable



On 19/02/2016 08:05, "yocto-bounces@yoctoproject.org on behalf of Andreas
M=FCller" <yocto-bounces@yoctoproject.org on behalf of
schnitzeltony@googlemail.com> wrote:

>On Wed, Feb 3, 2016 at 9:06 PM, Andreas M=FCller
><schnitzeltony@googlemail.com> wrote:
>> On Wed, Feb 3, 2016 at 8:10 PM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>>> Hi Andreas,
>>>
>>> On Wed, 03 Feb 2016 14:41:42 Andreas M=FCller wrote:
>>>> FAQ for layerindex says recipes are updated every 3 hours but I think
>>>> it does not work. E.g meta-oe geis/grail/frame are not mentioned but
>>>> were committed few days ago.
>>>
>>> I do know there's a problem, but I'm honestly not sure what's causing
>>>it.
>>> Unfortunately I don't have time to dig into it now but let me see if I
>>>can
>>> resync meta-oe at least.
>>>
>>> Cheers,
>>> Paul
>>>
>> No need for manual update - it was just a heads up. I was not sure
>> that it is a known issue.
>>
>I checked in history:
>
>meta-openwrt added 4 weeks ago is the last layer for that was
>analyzed. meta-cpan and all published after that were not analysed
>anymore - they are reported having no recipes.
>
>As this is a strong tool I have at daily use: Is there something I can
>do to get this working again?

+1. Toaster relies on the layer index to bootstrap metadata information,
which is critical to everything Toaster does.

Hopefully we can do something about it.

Cheers

Bel=E9n

>
>Andreas
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


