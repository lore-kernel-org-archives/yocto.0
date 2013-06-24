Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47582E0152A
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 06:08:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5OD8P9s016012
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 24 Jun 2013 06:08:25 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 24 Jun 2013 06:08:25 -0700
Message-ID: <51C844C3.6040505@windriver.com>
Date: Mon, 24 Jun 2013 09:08:19 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <05209F2D24AD48348599D707CB5F659F@PAULD>
	<51C7BC42.7010304@windriver.com>
	<ECD2F1B71F2647AE85B7BDC7B89D84ED@PAULD>
In-Reply-To: <ECD2F1B71F2647AE85B7BDC7B89D84ED@PAULD>
Cc: yocto@yoctoproject.org
Subject: Re: linux-yocto-rt and cgroups
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
X-List-Received-Date: Mon, 24 Jun 2013 13:08:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-24 03:09 AM, Paul D. DeRocco wrote:
>> From: Bruce Ashfield
>>
>> There's no technical reason at all. In fact, pre 3.8 the -rt
>> kernel used
>> to inherit more of the standard kernel's configuration and
>> hence enabled
>> cgroups. In 3.8, we defined a new policy for the -rt kernel, that used
>> parts of the standard kernel's configuration, but not all.
>>
>> We can definitely add functionality to this baseline, and
>> I'll be adding
>> more in the upcoming dev cycle for yocto 1.5.
>>
>> In the meantime you can enable it, and let me know how it
>> goes. I can then
>> update the -rt baseline config, knowing that someone else is
>> testing it
>> too.
>>
>> To enable it, create a linux-yocto_3.8.bbappend, and add:
>>
>>    KERNEL_FEATURES_append = " features/cgroups/cgroups.scc"
>>
>> And you'll get the same cgroups config that you have with the standard
>> linux-yocto kernel.
>
> Yes, that builds and boots fine (except it's linux-yocto-rt_3.8.bbappend).

Hah. Indeed!

> Thanks a million.

Great news.

Cheers,

Bruce

>


