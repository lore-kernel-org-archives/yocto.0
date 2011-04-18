Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F37804C8016A
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2011 12:22:39 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Apr 2011 10:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,233,1301900400"; d="scan'208";a="735138061"
Received: from doubt.jf.intel.com (HELO [10.24.5.31]) ([10.24.5.31])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2011 10:22:39 -0700
Message-ID: <4DAC7362.1020109@intel.com>
Date: Mon, 18 Apr 2011 10:22:42 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <inpi0q$617$1@dough.gmane.org> <4DA127F6.3010006@intel.com>
	<20110410082442.28B18142E08A@gemini.denx.de>
In-Reply-To: <20110410082442.28B18142E08A@gemini.denx.de>
X-Mailman-Approved-At: Tue, 19 Apr 2011 11:01:36 -0500
Cc: yocto@yoctoproject.org, Scott Garman <scott.a.garman@intel.com>
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
X-List-Received-Date: Mon, 18 Apr 2011 17:22:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/10/2011 01:24 AM, Wolfgang Denk wrote:
> Dear Scott Garman,
> 
> In message <4DA127F6.3010006@intel.com> you wrote:
>>
>> This suggests to me that your local git repository isn't up to date. The 
>> tag has been moved at least once since it was created, and it sounds 
>> like your repository is behind the most recent move of the tag.
> 
> You are ...  moving release tags?  Grrrgh!!!

Oh, that surprises me as well. What is the justification here? Generally
speaking, I'd expect the tags to be static.

--
Darren

> 
> Could you please stop doing this?  Nobody ever expects such a thing.
> And while we are at it:  It would also be great if you could
> GPG-sign the tags.
> 
> Thanks.
> 
> Wolfgang Denk
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

