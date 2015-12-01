Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3356E009D7; Mon, 30 Nov 2015 21:24:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CBC6E00978
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 21:24:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tB15OFfp020490
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 21:24:15 -0800
Received: from server.local (128.224.20.101) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 30 Nov 2015 21:24:14 -0800
To: Rongqing Li <rongqing.li@windriver.com>, <yocto@yoctoproject.org>
References: <1448515549-24417-1-git-send-email-rongqing.li@windriver.com>
	<565BDCFD.5060103@windriver.com> <565CF306.3050300@windriver.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <565D2EFE.4040508@windriver.com>
Date: Tue, 1 Dec 2015 00:24:14 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <565CF306.3050300@windriver.com>
Subject: Re: [PATCH][yocto-kernel-cache] netfilter: enable several netfilter options
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Dec 2015 05:24:22 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-11-30 8:08 PM, Rongqing Li wrote:
>
>
> On 2015年11月30日 13:22, Bruce Ashfield wrote:
>> On 2015-11-26 12:25 AM, rongqing.li@windriver.com wrote:
>>> From: Roy Li <rongqing.li@windriver.com>
>>>
>>> the below kernel options are enabled:
>>>      LOG target support
>>>      IPv6 connection tracking support,
>>>      "addrtype" address type match support
>>>      "recent" match support
>>>
>>> the default configuration of ufw(Uncomplicated Firewall) asked them.
>>
>> Like the other patch you submitted, this should go to the linux-yocto
>> list, but I'll reply here, since this one needs a bit more tweaking.
>>
>>>
>>> Signed-off-by: Roy Li <rongqing.li@windriver.com>
>>> ---
>>>   features/netfilter/netfilter.cfg | 4 ++++
>>>   1 file changed, 4 insertions(+)
>>>
>>> diff --git a/features/netfilter/netfilter.cfg
>>> b/features/netfilter/netfilter.cfg
>>> index 8ecef4a..7bb8490 100644
>>> --- a/features/netfilter/netfilter.cfg
>>> +++ b/features/netfilter/netfilter.cfg
>>> @@ -62,12 +62,16 @@ CONFIG_NETFILTER_XT_MATCH_STATISTIC=m
>>>   CONFIG_NETFILTER_XT_MATCH_STRING=m
>>>   CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
>>>   CONFIG_NETFILTER_XT_MATCH_U32=m
>>> +CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
>>> +CONFIG_NETFILTER_XT_MATCH_RECENT=m
>>> +CONFIG_NETFILTER_XT_TARGET_LOG=m
>>
>> Adding these are fine, but if ufw needs these extra options, we should
>> also have a ufw.scc/.cfg fragment that can be triggered when ufw is
>> being built.
>>
>> So either create that fragment and inside it, document the NF options
>> it needs, and have ufw include netfilter.scc to get the options you
>> are adding above.
>>
>> or .. at the very least, put comments in the .cfg file above the
>> options indicating that they are required for ufw.
>
> I think the below two configurations are more basic, not special to
> ufw, and netfiler.cfg lost them.
> CONFIG_NETFILTER_XT_TARGET_LOG=m
> CONFIG_NF_CONNTRACK_IPV6=m

Sure, but we still don't have anything within the fragments or
their descriptions that document what ufw is looking for, which
means we could remove them in the feature and unknowingly break
that functionality.

You can still add those options to the netfilter config, but we'd
be wise to add those comments, or create a ufw.scc file that (for
now), simply includes netfilter.scc and indicates that ufw requires
the options as they are in that config.

Bruce

>
>
> since this change has entered wrlinux kernel cache, I hope we do not
> add the comment on .cfg
>
>
> -Roy
>
>
>
>>
>> Bruce
>>
>>>
>>>   #
>>>   # IP: Netfilter Configuration
>>>   #
>>>   CONFIG_NF_DEFRAG_IPV4=m
>>>   CONFIG_NF_CONNTRACK_IPV4=m
>>> +CONFIG_NF_CONNTRACK_IPV6=m
>>>   CONFIG_NF_CONNTRACK_PROC_COMPAT=y
>>>   CONFIG_IP_NF_IPTABLES=m
>>>   CONFIG_IP_NF_MATCH_AH=m
>>>
>>
>>
>


