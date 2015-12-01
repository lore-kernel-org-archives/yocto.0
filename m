Return-Path: <Rongqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D752E00978; Mon, 30 Nov 2015 17:08:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EDC8E00888
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 17:08:25 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id tB118Osi010017
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 17:08:25 -0800 (PST)
Received: from [128.224.162.134] (128.224.162.134) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 30 Nov 2015 17:08:24 -0800
To: Bruce Ashfield <bruce.ashfield@windriver.com>, <yocto@yoctoproject.org>
References: <1448515549-24417-1-git-send-email-rongqing.li@windriver.com>
	<565BDCFD.5060103@windriver.com>
From: Rongqing Li <rongqing.li@windriver.com>
Message-ID: <565CF306.3050300@windriver.com>
Date: Tue, 1 Dec 2015 09:08:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <565BDCFD.5060103@windriver.com>
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
X-List-Received-Date: Tue, 01 Dec 2015 01:08:30 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit



On 2015年11月30日 13:22, Bruce Ashfield wrote:
> On 2015-11-26 12:25 AM, rongqing.li@windriver.com wrote:
>> From: Roy Li <rongqing.li@windriver.com>
>>
>> the below kernel options are enabled:
>>      LOG target support
>>      IPv6 connection tracking support,
>>      "addrtype" address type match support
>>      "recent" match support
>>
>> the default configuration of ufw(Uncomplicated Firewall) asked them.
>
> Like the other patch you submitted, this should go to the linux-yocto
> list, but I'll reply here, since this one needs a bit more tweaking.
>
>>
>> Signed-off-by: Roy Li <rongqing.li@windriver.com>
>> ---
>>   features/netfilter/netfilter.cfg | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/features/netfilter/netfilter.cfg
>> b/features/netfilter/netfilter.cfg
>> index 8ecef4a..7bb8490 100644
>> --- a/features/netfilter/netfilter.cfg
>> +++ b/features/netfilter/netfilter.cfg
>> @@ -62,12 +62,16 @@ CONFIG_NETFILTER_XT_MATCH_STATISTIC=m
>>   CONFIG_NETFILTER_XT_MATCH_STRING=m
>>   CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
>>   CONFIG_NETFILTER_XT_MATCH_U32=m
>> +CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
>> +CONFIG_NETFILTER_XT_MATCH_RECENT=m
>> +CONFIG_NETFILTER_XT_TARGET_LOG=m
>
> Adding these are fine, but if ufw needs these extra options, we should
> also have a ufw.scc/.cfg fragment that can be triggered when ufw is
> being built.
>
> So either create that fragment and inside it, document the NF options
> it needs, and have ufw include netfilter.scc to get the options you
> are adding above.
>
> or .. at the very least, put comments in the .cfg file above the
> options indicating that they are required for ufw.

I think the below two configurations are more basic, not special to
ufw, and netfiler.cfg lost them.
CONFIG_NETFILTER_XT_TARGET_LOG=m
CONFIG_NF_CONNTRACK_IPV6=m


since this change has entered wrlinux kernel cache, I hope we do not
add the comment on .cfg


-Roy



>
> Bruce
>
>>
>>   #
>>   # IP: Netfilter Configuration
>>   #
>>   CONFIG_NF_DEFRAG_IPV4=m
>>   CONFIG_NF_CONNTRACK_IPV4=m
>> +CONFIG_NF_CONNTRACK_IPV6=m
>>   CONFIG_NF_CONNTRACK_PROC_COMPAT=y
>>   CONFIG_IP_NF_IPTABLES=m
>>   CONFIG_IP_NF_MATCH_AH=m
>>
>
>

-- 
Best Reagrds,
Roy | RongQing Li

