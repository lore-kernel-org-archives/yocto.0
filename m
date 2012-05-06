Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D66B6E0137A
	for <yocto@yoctoproject.org>; Sat,  5 May 2012 21:53:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q464rLOf022668
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 5 May 2012 21:53:21 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.139) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 5 May 2012 21:53:20 -0700
Message-ID: <4FA603BF.5060506@windriver.com>
Date: Sun, 6 May 2012 00:53:19 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1336167660.git.tom.zanussi@intel.com>
	<4FA4608D.3000803@linux.intel.com>
	<1336176413.21923.23.camel@elmorro>
	<4FA47B9A.1090109@linux.intel.com>
In-Reply-To: <4FA47B9A.1090109@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/7][KERNEL] add usb and mei features
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
X-List-Received-Date: Sun, 06 May 2012 04:53:23 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-04 9:00 PM, Darren Hart wrote:
>
>
> On 05/04/2012 05:06 PM, Tom Zanussi wrote:
>> On Fri, 2012-05-04 at 16:04 -0700, Darren Hart wrote:
>>>
>>> On 05/04/2012 03:07 PM, tom.zanussi@intel.com wrote:
>>>> From: Tom Zanussi<tom.zanussi@intel.com>
>>>>
>>>> This adds a few new features, one each for usb/[xeou]hci-hcd and
>>>> another for amt/mei, and refactors existing config options into a new
>>>> usb/base, which are then used in crownbay.
>>>>
>>>> v2: after suggestions from Bruce and Darren of a preference for a more
>>>> flattened feature tree structure, moved all the features into a single
>>>> usb/ feature dir.  I did however retain the common 'base' feature
>>>> because inlining that in each feature would mean that the same common
>>>> set would be repeated in multiple config fragments if more than one usb
>>>> feature was included in a BSP.
>>>
>>> As things stand now, a BSP would have to include both the base and the
>>> *hcd right?
>>>
>>> include usb/base.scc
>>> include ehci-hcd.scc
>>>
>>> Seems to me we should manage the dependencies wherever we can. When I've
>>> created fragments I've been including their requirements as well to make
>>> it easier on the integrator. Since you've put the dependencies in their
>>> own fragment, why not include the fragment in the *hcd.scc files?
>>>
>>> +++ b/meta/cfg/kernel-cache/features/usb/ehci-hcd.scc
>>> @@ -0,0 +1,4 @@
>>> +define KFEATURE_DESCRIPTION "Enable options for ehci (USB 2.0)"
>>> +define KFEATURE_COMPATIBILITY board
>>> +
>>> + include base.scc
>>> +kconf hardware ehci-hcd.cfg
>>>
>>> Now if someone need only include the one line for the *hcd. Since it's
>>> only a total of 3 lines of CONFIG settings we're packaging up here, it
>>> seems to me we should be able to enable it with only 1 line of meta data.
>>>
>>
>> Yes, this is exactly what I did in the previous patchset.
>>
>> The problem is that if we do this for each of the *hcd fragments, we end
>> up with the options in base.cfg repeated for each, which may or may not
>> produce a config-check warning.
>
> "May or may not"? If our tools complain about setting a config to the
> same value, I would prefer to address that in the tools.
>
> Bruce, any comment on the intended behavior of the tools?

That warning is supposed to only trigger if you literally are in the
same fragment. The switch to a new fragment should allow the duplication.

There is a secondary warning that yells if an option is redefined by
ANY fragment. That mode is to support a configuration scheme that says
all fragments should be exclusive and additive. I made that into a
flag some time ago.

That being said, the switch to merge_config (the upstream script), caused
a few things to be more difficult. This is one of them. I have some
changes to this already queued, and I'm not seeing anything like this
in my tests. I've got something that allows the multiple includes to
work fine (and stops short of a new keyword (although that it tempting
to reduce complexity)).

I'll run some configuration tests here when I merge the series, and see
if a regression snuck in.

Cheers,

Bruce

>
> --
> Darren
>
>>
>> To avoid that, we need to be able to add the base.cfg items once
>> followed by the individual *hcd items as I did with the crownbay
>> example:
>>
>> +include features/usb/base.scc
>> +include features/usb/ehci-hcd.scc
>> +include features/usb/ohci-hcd.scc
>> +include features/usb/uhci-hcd.scc
>>
>>
>> Tom
>>
>>> --
>>> Darren
>>>
>>>>
>>>> Please pull into linux-yocto-3.2.
>>>>
>>>> Thanks,
>>>>
>>>> Tom
>>>>
>>>> The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:
>>>>    Yang Shi (1):
>>>>          meta: Clean up BSPs kernel config
>>>>
>>>> are available in the git repository at:
>>>>
>>>>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/xhcd-mei-features
>>>>    http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/xhcd-mei-features
>>>>
>>>> Tom Zanussi (7):
>>>>    meta: add usb/base feature
>>>>    meta: add usb/xhci-hcd feature
>>>>    meta: add usb/ehci-hcd feature
>>>>    meta: add usb/ohci-hcd feature
>>>>    meta: add usb/uhci-hcd feature
>>>>    meta/crownbay: use usb features
>>>>    meta: add mei feature
>>>>
>>>>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |    6 ------
>>>>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    5 +++++
>>>>   meta/cfg/kernel-cache/features/amt/mei/mei.cfg  |    3 +++
>>>>   meta/cfg/kernel-cache/features/amt/mei/mei.scc  |    4 ++++
>>>>   meta/cfg/kernel-cache/features/usb/base.cfg     |    3 +++
>>>>   meta/cfg/kernel-cache/features/usb/base.scc     |    4 ++++
>>>>   meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg |    1 +
>>>>   meta/cfg/kernel-cache/features/usb/ehci-hcd.scc |    4 ++++
>>>>   meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg |    1 +
>>>>   meta/cfg/kernel-cache/features/usb/ohci-hcd.scc |    4 ++++
>>>>   meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg |    1 +
>>>>   meta/cfg/kernel-cache/features/usb/uhci-hcd.scc |    4 ++++
>>>>   meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg |    1 +
>>>>   meta/cfg/kernel-cache/features/usb/xhci-hcd.scc |    4 ++++
>>>>   14 files changed, 39 insertions(+), 6 deletions(-)
>>>>   create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.cfg
>>>>   create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.scc
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/base.cfg
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/base.scc
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd.scc
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.cfg
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/ohci-hcd.scc
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.cfg
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/uhci-hcd.scc
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.cfg
>>>>   create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd.scc
>>>>
>>>
>>
>>
>


