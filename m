Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73140E00596
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 14:45:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Feb 2012 14:45:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="112404331"
Received: from unknown (HELO [10.7.198.148]) ([10.7.198.148])
	by orsmga001.jf.intel.com with ESMTP; 27 Feb 2012 14:44:31 -0800
Message-ID: <4F4C074F.9040801@linux.intel.com>
Date: Mon, 27 Feb 2012 14:44:31 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Andrea Galbusera <gizero@gmail.com>
References: <CAC+thW1xz0eWYh3wHdFDZWRTUgqjKPe5XKEsbzwKLrwMFKZfUA@mail.gmail.com>
	<4F4842AB.1070006@linux.intel.com>
	<CAC+thW1KYtoHs6cjBOHycYWxGyaJkuOEk5AGMNxW+ZUJpGXcLA@mail.gmail.com>
In-Reply-To: <CAC+thW1KYtoHs6cjBOHycYWxGyaJkuOEk5AGMNxW+ZUJpGXcLA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: adt-installer: cannot install package autoconf-nativesdk
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
X-List-Received-Date: Mon, 27 Feb 2012 22:45:31 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 25/02/12 01:41, Andrea Galbusera wrote:
> Hi Joshua,
>
> On Sat, Feb 25, 2012 at 3:08 AM, Joshua Lock<josh@linux.intel.com>  wrote:
>> Hi Andrea,
>>
>>
>> On 24/02/12 05:40, Andrea Galbusera wrote:
>>>
>>> The installer was built against the latest version of its recipe as
>>> per commit c6ec5a0d9e31a1694aba25e2ff76f1c933e556d5,
>>> adt-installer-0.1.8+svnr596-r6. I guess a change was made with commit
>>> de68393270d5455b4861d38cef3f081b9667d25f which requires installing
>>> autoconf/automake-nativesdk but relevant ipks are missing from
>>> http://adtrepo.yoctoproject.org/1.1/adt-ipk/, which is still default
>>> in latest adt_installer.conf.
>>>
>>> Am I guessing right? First time digging into the adt_installer so I
>>> might be completely out of track! Is this a known limit if building
>>> adt_installer with latest edison branch? Should I file a bug for this?
>>> If so, what's the best solution right now? Maybe using the edison
>>> original adt_installer from the yocto downloads...
>>
>>
>> This sounds like you've correctly deduced the issue - it looks like there
>> may be required changes which need backporting to the edison repository -
>> I'm currently running some builds to verify this.
>>
>> Please do report this information on bugzilla so that we can track it. It's
>> my first time digging into the ADT installer too so it may take a couple of
>> days to pull together all of the required fixes.
>
> Submitted to shiny new bugzilla with #2031. I left the ADT version
> unspecified, since I believe we are somewhere between 1.1 and 1.1.1
> with current edison.

Thanks - the issue is restricted to Edison so far as I can tell so the 
bug has been marked thus.

> After looking a little closer at the adt_installer.conf generated from
> my build tree I noticed the following diffs wrt 1.1. First line looks
> pretty strange to me. Hope this helps

This is definitely a bug but not preventing you from installing the ADT. 
I've created a patch for this whilst I'm in this area of code though, 
thanks.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

