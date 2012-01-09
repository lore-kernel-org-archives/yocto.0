Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C1FAE006E9
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 13:31:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jan 2012 13:31:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="94546329"
Received: from unknown (HELO [10.7.199.172]) ([10.7.199.172])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2012 13:31:39 -0800
Message-ID: <4F0B5CBA.2090407@linux.intel.com>
Date: Mon, 09 Jan 2012 13:31:38 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Kang Kai <Kai.Kang@windriver.com>
References: <4F06C43D.3090102@windriver.com> <4F074923.7030402@linux.intel.com>
	<4F0A7FD4.20103@windriver.com>
In-Reply-To: <4F0A7FD4.20103@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Design Document of "Yocto 1656 Recipe creation/import script"
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
X-List-Received-Date: Mon, 09 Jan 2012 21:31:39 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 08/01/12 21:49, Kang Kai wrote:
> On 2012年01月07日 03:18, Joshua Lock wrote:
>
> Hi Joshua,
>
>> Hi Kai,
>>
>> On 06/01/12 01:51, Kang Kai wrote:
>>> This is the design document of "Yocto 1656 Recipe creation/import
>>> script". Please help to review it.
>>> Any suggestion is appreciate.
>>
>> You should check out autospectacle[1] that I linked to in the bug
>> report. It does a lot of guessing using clever tricks like searching
>> Freshmeat, doap files, READMES etc to get a description[2] and
>> analysing configure.ac[3], qmake[4], etc. to determine dependencies.
>
> Thanks for your reply.
> I have checked out and read the autospectacle, and show me the direction.
> Right now I want to get the NAME, description, license and checksum,
> depends and some simple inheritance, do you think that is enough for
> this feature? If not, what's more?

I think that would be a very good start, yes.

Thanks,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

