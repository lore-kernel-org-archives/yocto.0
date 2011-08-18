Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19BDEE011B7
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 06:40:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7IDeo9N028426
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Aug 2011 06:40:50 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 18 Aug 2011 06:40:50 -0700
Message-ID: <4E4D1660.6050803@windriver.com>
Date: Thu, 18 Aug 2011 09:40:48 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4E4C85B8.3000301@linux.intel.com>	
	<4E4C90F2.7040904@windriver.com> <1313672567.2394.35.camel@elmorro>
In-Reply-To: <1313672567.2394.35.camel@elmorro>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: linux-yocto 3.0.1 upgrade broke PREFERRED_VERSION setting in BSPs
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
X-List-Received-Date: Thu, 18 Aug 2011 13:40:41 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-18 09:02 AM, Tom Zanussi wrote:
> On Wed, 2011-08-17 at 21:11 -0700, Bruce Ashfield wrote:
>> On 11-08-17 11:23 PM, Darren Hart wrote:
>>> We have just rolled out PREFERRED_VERSION="3.0+git%", and these now fail
>>> with messages like:
>>>
>>> NOTE: preferred version 3.0+git% of linux-yocto not available (for item
>>> virtual/kernel)
>>>
>>> I could patch everything really quick to use 3.0.1+git%... but 3.0.2 was
>>> just released and I'd have to do it again tomorrow. For 2.6.37, the
>>> LINUX_VERSION remained the same across point releases. I recommend we do
>>> the same for 3.0. I really don't want to have to go through and update
>>> all the PREFERRED_VERSIONs in addition to all the SRCREVs everytime a
>>> point release comes out.
>>
>> I made this change due to some other explicit requests about the
>> kernel version not being obvious. I don't really see this as a big
>> deal, I'm already updating SRCREVs, we are already updating the
>> SRCREVs in the meta-* layers .. so I fail to see how this is much
>> more load.
>>
>
> Maybe the extra load isn't a big deal, but at least the SRCREVs can
> change most of the time without breaking everything like this does.
>
>> I'd argue that 2.6.37 was a mistake, and you shouldn't even need
>> to set the preferred version anymore once the latest kernel works
>> for your machines. It will always be selected and you shouldn't
>> need to force it. We only needed this during the transition phase,
>> and I'm about to change the default in meta-yocto .. so you definitely
>> won't need it.
>>
>
> It would be great not to have to set the preferred version at all - how
> do I get that to work?

We can get away from it without setting preferred version by
either the default preference scheme, or by virtue of removing
the default preferred version from poky.conf. I'm working on
the latter right now (some final builds of boards are problematic).

Once we are in a stable state, this won't be required at all, since
it is the default. But when we bump to the next kernel version, the
same thing happens. The newest is picked by bitbake and you'd need
to set the preferred version to what you want all over again. That's
where default_preference comes into play and saves us any wildcard
issues.

That all being said, I'm going to revert the part of the change
that bumped the version string and send it out for merge. So leave
your preferred version strings as they currently are. Post 1.1 we'll
move to a scheme that makes more sense (and at a time when we can
properly think about it).

Bruce

>
> Tom
>
>> Cheers,
>>
>> Bruce
>>
>>>
>>
>
>


