Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 376B7E0030A
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 18:16:49 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Nov 2011 18:16:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,275,1320652800"; d="scan'208";a="97253293"
Received: from unknown (HELO [10.255.15.172]) ([10.255.15.172])
	by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2011 18:16:48 -0800
Message-ID: <4ED6E390.5020705@linux.intel.com>
Date: Wed, 30 Nov 2011 18:16:48 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <alpine.DEB.2.02.1111291759160.17235@oneiric>
	<1592821.2ngvXcyh81@helios>
	<alpine.DEB.2.02.1111300644120.18752@oneiric>
	<4ED6AED5.8070308@linux.intel.com>
	<20111130224717.709871828FD3@gemini.denx.de>
In-Reply-To: <20111130224717.709871828FD3@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: how to cleanly exit a QEMU session?
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
X-List-Received-Date: Thu, 01 Dec 2011 02:16:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 30/11/11 14:47, Wolfgang Denk wrote:
> Dear Joshua Lock,
> 
> In message <4ED6AED5.8070308@linux.intel.com> you wrote:
>>
>> What do people think to the idea of putting something into the image for
>> those two specific machines which aliases poweroff to reboot?
> 
> I consider it a really bad idea, as "poweroff" is actually a very
> different action than "reboot" - the former should shut down and halt
> the system, while the latter should actually restart it.

I understand the difference and I'm not proposing we set that for all
machines, however we already explicitly prevent all qemu machines booted
via our scripts from restarting - so I think in this case the alias
makes sense.

Having said that it was just a suggestion, I'll not lose sleep if folks
don't like the idea.

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

