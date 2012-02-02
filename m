Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4DCEE00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 11:24:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2012 11:24:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="105562689"
Received: from unknown (HELO [10.7.199.78]) ([10.7.199.78])
	by orsmga002.jf.intel.com with ESMTP; 02 Feb 2012 11:24:37 -0800
Message-ID: <4F2AE2F4.2010307@linux.intel.com>
Date: Thu, 02 Feb 2012 11:24:36 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<6c598896584af47478c75ec08f3b4e8fd954b5fb.1328135056.git.dvhart@linux.intel.com>
	<4F29BF45.8060008@linux.intel.com>
	<4F2AD4ED.3090409@linux.intel.com>
In-Reply-To: <4F2AD4ED.3090409@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [pull-sys940x 2/4] ranpwd: Add ranpwd recipe
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
X-List-Received-Date: Thu, 02 Feb 2012 19:24:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 02/02/12 10:24, Darren Hart wrote:
>
>
> On 02/01/2012 02:40 PM, Joshua Lock wrote:
>>
>>
>> On 01/02/12 14:26, Darren Hart wrote:
>>> ranpwd is used to generate random strings of various types, including
>>> passwords, UUIDs, and MAC addresses.
>>>
>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>> ---
>>>    meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb |   23 ++++++++++++++++++++
>>>    1 files changed, 23 insertions(+), 0 deletions(-)
>>>    create mode 100644 meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
>>>
>>> diff --git a/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb b/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
>>> new file mode 100644
>>> index 0000000..66fcc26
>>> --- /dev/null
>>> +++ b/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
>>> @@ -0,0 +1,23 @@
>>> +DESCRIPTION = "Random password generator"
>>> +#SECTION = "utilities"
>>
>> We may as well delete this line, no?
>
> Oops. I didn't intend to leave it commented. I'm also no sure how to
> decide which "SECTION" to put it in. Is there some definitive list from
> which to select an appropriate SECTION? Uncommented in my local branch
> for now.

I think there was an agreement to drop this field. It's not especially 
useful and there's not definitive list that I'm aware of.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

