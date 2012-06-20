Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B1ACE0070B
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 08:49:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jun 2012 08:49:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="160093706"
Received: from unknown (HELO [10.255.12.124]) ([10.255.12.124])
	by orsmga002.jf.intel.com with ESMTP; 20 Jun 2012 08:48:59 -0700
Message-ID: <4FE1F0EB.9060806@linux.intel.com>
Date: Wed, 20 Jun 2012 08:48:59 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1914D426@IRSMSX102.ger.corp.intel.com>
	<4FE109C4.1010906@linux.intel.com>
	<CAJTo0Lb3kD-LsZkAbgqkgN82E2wN61C5yEZBDu80D3VA1jzf5g@mail.gmail.com>
	<CAMKF1spPQ2nJqJPj7fG0rWKqQ1v0xZoahx03a8W66yXzKCcSsA@mail.gmail.com>
In-Reply-To: <CAMKF1spPQ2nJqJPj7fG0rWKqQ1v0xZoahx03a8W66yXzKCcSsA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: VERIFIED vs CLOSED in yocto bugzilla
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Jun 2012 15:49:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/20/2012 08:27 AM, Khem Raj wrote:
> On Wed, Jun 20, 2012 at 2:18 AM, Burton, Ross<ross.burton@intel.com>  wrote:
>>
>> Agreed -- hiding CLOSED would be my proposal as it doesn't add any
>> meaning, just complicates the lifecycle.
>
> I think yes hiding closed it ok since it does not change much in fix.
> I wouldnt say it complicates but it completes the life cycle
> since the owner for closing action is submitter. it closes the life
> cycle nicely.

The bug verification is the responsibility of the submitter, not the 
assignee/owner. So there could be 2 actions here, one is the submitter 
has verified this (added any test cases to testoipa for future 
regression testing. The second is, as Laurentiu suggests, marking closed 
by the QA team when releases does it's final regression testing.

So yes, I could see hiding CLOSED and leaving the final state as 
VERIFIED, but I can see further value of using the CLOSED state to 
indicate that it passed regression at the end of the release cycle.

So this should also act as a reminder to submitters to "verify" there bugs!


Sau!


> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

