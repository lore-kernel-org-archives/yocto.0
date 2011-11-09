Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A4C1E00307
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 11:10:14 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Nov 2011 11:10:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="72980267"
Received: from unknown (HELO envy.home) ([10.255.15.140])
	by orsmga001.jf.intel.com with ESMTP; 09 Nov 2011 11:10:13 -0800
Message-ID: <4EBAD015.6040901@intel.com>
Date: Wed, 09 Nov 2011 11:10:13 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Tom Rini <tom.rini@gmail.com>
References: <CAPhnLPCKxivJQtQJ23=f4Y7GmPAoHZ2FncB0KT4GUu+t-qiUtA@mail.gmail.com>
	<CA+M6bXkgwL53FytKNc78UxAYd24tKM_s3P4t46Bc6Ncm82fMuA@mail.gmail.com>
In-Reply-To: <CA+M6bXkgwL53FytKNc78UxAYd24tKM_s3P4t46Bc6Ncm82fMuA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: New ways of keeping up with the status of the build.
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
X-List-Received-Date: Wed, 09 Nov 2011 19:10:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/09/2011 08:00 AM, Tom Rini wrote:
> On Tue, Nov 8, 2011 at 2:17 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> I've implemented two new ways of keeping up with the yocto
>> autobuilder's build status (other than the obvious way of looking at
>> autobuilder.yoctoproject.org:8010 of course)
>>
>> First is through the yocto-builds@yoctoproject.org email list. If you
>> haven't joined it yet, please do. It's in testing phase right now and
>> only sends out the last 20 lines of the autobuilder log on a failure
>> and the URL to the steps that failed.
>> The second is through the #yoctobuildstatus irc channel. yocto-ab-bot
>> is the yocto-autobuilder IRC bot which announces build events to the
>> channel or via PM. I'm keeping it off of #yocto to keep it from
>> spamming the channel but it should be relatively low traffic. Again,
>> this is all still in testing phase, so things may change.
> 
> There's also http://autobuilder.yoctoproject.org:8010/rss which I
> suspect is under-utilized by people.
> 

Nice. Added to my feed, with a filter on "failed". The subjects are
really long and difficult to parse. Could these be massaged a bit? Just
dropping 75% of the commit hash would help a lot :)

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

