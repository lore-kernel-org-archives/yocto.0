Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13D51E013EF
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 13:59:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Sep 2012 13:59:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,450,1344236400"; d="scan'208";a="208144765"
Received: from unknown (HELO [10.255.13.229]) ([10.255.13.229])
	by orsmga002.jf.intel.com with ESMTP; 19 Sep 2012 13:59:50 -0700
Message-ID: <505A3245.7070503@linux.intel.com>
Date: Wed, 19 Sep 2012 13:59:49 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Marc Ferland <ferlandm@sonatest.com>
References: <87ipb9d9u8.fsf@sonatest.com> <505A2FAF.60609@linux.intel.com>
	<87r4px91jy.fsf@sonatest.com>
In-Reply-To: <87r4px91jy.fsf@sonatest.com>
Cc: yocto@yoctoproject.org
Subject: Re: About bug 2331
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
X-List-Received-Date: Wed, 19 Sep 2012 20:59:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/19/2012 01:53 PM, Marc Ferland wrote:
> Saul Wold <sgw@linux.intel.com> writes:
>
>> On 09/19/2012 01:41 PM, Marc Ferland wrote:
>>> Hi,
>>>
>>> I'm currently trying to create a "live" system with squashfs+unionfs and
>>> I stumbled on the same bug described here:
>>>
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2331
>>>
>>> I was wondering if there was a plan to resolve this issue for 1.3?
>>>
>> Marc,
>>
>> It seems to be marked as resolved and verified, is there still and
>> issue?  If so we need to reopen this bug.  Or are you referring to the
>> underlying issue?
>>
> I was referring to the underlying issue.
>
>
No, unfortunately it seems that did not have visibility, I think bug 
1487 is open against that issue, at least with an ISO image, which is 
what got partially reverted.  I think the issue was upstream unionfs, do 
you know if any changes to resolve the problem upstream?

Sau!


