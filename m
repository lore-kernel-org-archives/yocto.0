Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF33E0070C
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 06:57:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q43DvVw7021874
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 May 2012 06:57:31 -0700 (PDT)
Received: from [128.224.208.134] (128.224.208.134) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 3 May 2012 06:57:31 -0700
Message-ID: <4FA28EC9.1050607@windriver.com>
Date: Thu, 3 May 2012 09:57:29 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1336015630.git.tom.zanussi@intel.com>
	<4FA27CAF.8020205@windriver.com> <1336053044.2450.86.camel@elmorro>
In-Reply-To: <1336053044.2450.86.camel@elmorro>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 0/5][KERNEL] add x/ehci-hcd and mei features
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
X-List-Received-Date: Thu, 03 May 2012 13:57:33 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-03 09:50 AM, Tom Zanussi wrote:
> On Thu, 2012-05-03 at 08:40 -0400, Bruce Ashfield wrote:
>> On 12-05-02 11:35 PM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi<tom.zanussi@intel.com>
>>>
>>> This adds a few new features, one for xhci-hcd and another for
>>> amt/mei, and refactors some existing config options into a new
>>> echi-hcd, which is then used in crownbay.
>>>
>>> If this looks like the way to go, I'll add similar USB features
>>> for ohci and uhci and fix up all the meta-intel BSPs to use
>>> them.
>>
>> I had a look, and while at first I thought it was perhaps an over
>> splitting and categorization. It does make things very clear, and
>> gets us a split that can be used to keep configs minimal and reusable.
>>
>> I also wasn't sure about directory splitting, since we do end up
>> with the names both in .scc/.cfg and the directory name. We could
>> flatten the directory down to just 'usb' and keep the names of the
>> files as the differentiator. And if we don't think we'll have to
>> carry any patches, we could put it under cfg/usb/<Tom's stuff>.
>>
>> I don't have a really strong opinion (but gave my preference) on this
>> split (several directories vs single), and I'd bet that you considered
>> the same thing. Comments ?
>>
>
> The directory splitting is definitely a result of personal preference on
> my part i.e. directories are cheap and I hate having bunches of files in
> a single directory.  This is actually the reason I tend to
> avoid /cfg. ;-)

Aha! A valid point :)

>
> In this case and most others, I find the directory splitting maps more
> cleanly 'at-a-glance' for me to the split in functionality, but as I
> said it's a personal preference and if most people prefer a more
> flattened tree, then I don't have a problem making that change...

Nope. I'd rather not have you re-do it for just that minor change, when
there's a valid reason on both sides.

I tossed the email .. and something has happened to my IMAP connection,
so I can't find them now. Can you resend just the pull request ? or
just the patches to me.

We can wait to see if Darren has a strong opinion one way or the other
as well.

Bruce

>
> Tom
>
>
>> But definitely, this is the way to go, just a minor question about the
>> organization of the files.
>>
>> Bruce
>>
>>
>>>
>>> Please pull into linux-yocto-3.2.
>>>
>>> Thanks,
>>>
>>> Tom
>>>
>>> The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:
>>>     Yang Shi (1):
>>>           meta: Clean up BSPs kernel config
>>>
>>> are available in the git repository at:
>>>
>>>     git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/xhcd-mei-features
>>>     http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/xhcd-mei-features
>>>
>>> Tom Zanussi (5):
>>>     meta: add usb/host/base feature
>>>     meta: add usb/xhci-hcd feature
>>>     meta: add usb/ehci-hcd feature
>>>     meta/crownbay: use ehci-hcd feature
>>>     meta: add mei feature
>>>
>>>    meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |    4 ----
>>>    meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    2 ++
>>>    meta/cfg/kernel-cache/features/amt/mei/mei.cfg     |    3 +++
>>>    meta/cfg/kernel-cache/features/amt/mei/mei.scc     |    4 ++++
>>>    .../features/usb/ehci-hcd/ehci-hcd.cfg             |    1 +
>>>    .../features/usb/ehci-hcd/ehci-hcd.scc             |    6 ++++++
>>>    meta/cfg/kernel-cache/features/usb/host/base.cfg   |    3 +++
>>>    meta/cfg/kernel-cache/features/usb/host/base.scc   |    4 ++++
>>>    .../features/usb/xhci-hcd/xhci-hcd.cfg             |    1 +
>>>    .../features/usb/xhci-hcd/xhci-hcd.scc             |    6 ++++++
>>>    10 files changed, 30 insertions(+), 4 deletions(-)
>>>    create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.cfg
>>>    create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.scc
>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.cfg
>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.scc
>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.cfg
>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.scc
>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.cfg
>>>    create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.scc
>>>
>>
>
>


