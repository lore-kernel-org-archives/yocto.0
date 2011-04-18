Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDD844C80052
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2011 14:28:10 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Apr 2011 12:28:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,234,1301900400"; d="scan'208";a="630644065"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.50]) ([10.7.198.50])
	by orsmga002.jf.intel.com with ESMTP; 18 Apr 2011 12:28:10 -0700
Message-ID: <4DAC90D3.3050905@intel.com>
Date: Mon, 18 Apr 2011 12:28:19 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <inpi0q$617$1@dough.gmane.org> <4DA127F6.3010006@intel.com>
	<20110410082442.28B18142E08A@gemini.denx.de>
In-Reply-To: <20110410082442.28B18142E08A@gemini.denx.de>
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
X-List-Received-Date: Mon, 18 Apr 2011 19:28:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 04/10/2011 01:24 AM, Wolfgang Denk wrote:
> Dear Scott Garman,
>
> In message<4DA127F6.3010006@intel.com>  you wrote:
>>
>> This suggests to me that your local git repository isn't up to date. The
>> tag has been moved at least once since it was created, and it sounds
>> like your repository is behind the most recent move of the tag.
>
> You are ...  moving release tags?  Grrrgh!!!
>
> Could you please stop doing this?  Nobody ever expects such a thing.
> And while we are at it:  It would also be great if you could
> GPG-sign the tags.
>
> Thanks.
>
> Wolfgang Denk
>

Wolfgang,

Yes, there was a problem with what I assumed would be our bernard-5.0 release and the tag needed to be moved, which, 
while a messy practice, was the only available option at the time. The tag shouldn't have been created until after 
verification of the RC. I'll make sure that this is captured in our release process. If you want, please feel free to 
open up a bug in bugzilla and assign it to me. As this was a relatively new process, I knew we'd hit some snags. This 
was one of them, and I'll make sure this is captured in our process so that we don't hit it again.

Thanks for the feedback.

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

