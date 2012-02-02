Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D33AE00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 11:13:51 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2012 11:13:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103244553"
Received: from unknown (HELO [10.7.199.78]) ([10.7.199.78])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2012 11:13:51 -0800
Message-ID: <4F2AE06E.7090706@linux.intel.com>
Date: Thu, 02 Feb 2012 11:13:50 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<6c598896584af47478c75ec08f3b4e8fd954b5fb.1328135056.git.dvhart@linux.intel.com>
	<4F29BF45.8060008@linux.intel.com>
	<20120202072215.GA3697@jama.jama.net>
	<4F2AD53A.8010904@linux.intel.com>
In-Reply-To: <4F2AD53A.8010904@linux.intel.com>
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
X-List-Received-Date: Thu, 02 Feb 2012 19:13:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 02/02/12 10:26, Darren Hart wrote:
>
>
> On 02/01/2012 11:22 PM, Martin Jansa wrote:
>> On Wed, Feb 01, 2012 at 02:40:05PM -0800, Joshua Lock wrote:
>>>
>>>
>>> On 01/02/12 14:26, Darren Hart wrote:
>>>> ranpwd is used to generate random strings of various types, including
>>>> passwords, UUIDs, and MAC addresses.
>>>>
>>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>>> ---
>>>>    meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb |   23 ++++++++++++++++++++
>>>>    1 files changed, 23 insertions(+), 0 deletions(-)
>>>>    create mode 100644 meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
>>>>
>>>> diff --git a/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb b/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
>>>> new file mode 100644
>>>> index 0000000..66fcc26
>>>> --- /dev/null
>>>> +++ b/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
>>>> @@ -0,0 +1,23 @@
>>>> +DESCRIPTION = "Random password generator"
>>>> +#SECTION = "utilities"
>>>
>>> We may as well delete this line, no?
>>>
>>>> +LICENSE = "GPLv2+"
>>>> +LIC_FILES_CHKSUM = "file://ranpwd.c;beginline=1;endline=11;md5=0e8585e19117526efedfaeb50c345d7a"
>>>> +PR = "r0"
>>>> +
>>>> +inherit autotools
>>>> +
>>>> +SRC_URI = "git://git.zytor.com/utils/ranpwd.git"
>>>> +SRCREV = "b62aab579e288715b82d5575befaa2b8ff210c2b"
>>
>> What about PV? Do you really want just "git"?
>
> There is a 1.1 and 1.2 tag in the git repository. However, some of the
> MAC related features come well after 1.2 with no subsequent tag. For
> this reason I left it as "git". Is there a better way to do this? Should
> I call it 1.2+ or something?

The PV determined from the SRC_URI is simply git. Martin is suggesting 
you might want to set it to something different in the recipe to give a 
more meaningful (and useful) value i.e:

meta/recipes-connectivity/gypsy/gypsy_git.bb:PV = "0.8+git${SRCPV}"

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

