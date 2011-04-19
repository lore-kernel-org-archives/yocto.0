Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 340784C800A2
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2011 11:27:32 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Apr 2011 09:27:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,240,1301900400"; d="scan'208";a="631041602"
Received: from unknown (HELO [10.255.13.56]) ([10.255.13.56])
	by orsmga002.jf.intel.com with ESMTP; 19 Apr 2011 09:27:22 -0700
Message-ID: <4DADB7E9.9020103@intel.com>
Date: Tue, 19 Apr 2011 09:27:21 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <inpi0q$617$1@dough.gmane.org> <4DA127F6.3010006@intel.com>
	<20110410082442.28B18142E08A@gemini.denx.de>
	<4DAC90D3.3050905@intel.com>
	<20110419073008.974DCD5269B@gemini.denx.de>
In-Reply-To: <20110419073008.974DCD5269B@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky release is 5.0 "Bernard" confusion
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
X-List-Received-Date: Tue, 19 Apr 2011 16:27:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 04/19/2011 12:30 AM, Wolfgang Denk wrote:
> Dear Elizabeth Flanagan,
>
> In message<4DAC90D3.3050905@intel.com>  you wrote:
>>
>>
>> Yes, there was a problem with what I assumed would be our bernard-5.0 release and the tag needed to be moved, which,
>> while a messy practice, was the only available option at the time. The tag shouldn't have been created until after
>> verification of the RC. I'll make sure that this is captured in our release process. If you want, please feel free to
>> open up a bug in bugzilla and assign it to me. As this was a relatively new process, I knew we'd hit some snags. This
>> was one of them, and I'll make sure this is captured in our process so that we don't hit it again.
>
> I know that such things happen, but then it would have been at least a
> good idea to post some information about this - as mentioned, nobody
> expects that git tags get moved.
>
>
> Do you also plan to GPG-sign the tags?

We certainly should be doing this. I have some automation of release process tasks coming up, and will make sure that 
that is part of it. I want to think about how this is going to be done, process wise, and implement an automated process 
that takes gpg signing and tag annotation into account, instead of doing it one way (manually) and switching midstream 
to an automated process that may be different. So, short answer, is yes, we should be doing that. Long answer is "Let's 
do it via the automated release process so we can ensure it's repeatable."

-b

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

