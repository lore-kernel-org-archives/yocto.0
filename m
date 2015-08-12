Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FFB6E00A3B; Wed, 12 Aug 2015 02:54:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C730FE00A26
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 02:54:24 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9AB2F27E329;
	Wed, 12 Aug 2015 09:54:22 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 7bw5JQnjRDzL; Wed, 12 Aug 2015 09:54:21 +0000 (UTC)
Received: from [192.168.0.2] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 6C83527E30B;
	Wed, 12 Aug 2015 09:54:19 +0000 (UTC)
To: Joshua Lock <joshua.lock@collabora.co.uk>, yocto@yoctoproject.org
References: <55CB0F2C.3020403@dynamicdevices.co.uk>
	<1439371552.2733.1.camel@collabora.co.uk>
	<1439372740.2733.4.camel@collabora.co.uk>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <55CB17C2.1000201@dynamicdevices.co.uk>
Date: Wed, 12 Aug 2015 10:54:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <1439372740.2733.4.camel@collabora.co.uk>
Subject: Re: [meta-raspberrypi] RFC on choice of tool for patch review
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
X-List-Received-Date: Wed, 12 Aug 2015 09:54:27 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 12/08/2015 10:45, Joshua Lock wrote:
> On Wed, 2015-08-12 at 10:25 +0100, Joshua Lock wrote:
>> On Wed, 2015-08-12 at 10:17 +0100, Alex J Lennon wrote:
>>> We've been having a discussion on a way forward to manage patches 
>>> and
>>> code review and would like to open this up for discussion to agree 
>>> a 
>>> way
>>> forward.
>> There's http://patchwork.openembedded.org/. I'm not sure who 
>> maintains
>> it, nor if anyone uses it, but patches sent to the mailing list end 
>> up
>> there.
>>
>> OOI who are "we" in this context? What benefits would a change bring?
> I managed to miss both the [yocto] and [meta-raspberrypi] tags on this
> mail, apologies for that. I guess that "we" are the meta-raspberrypi
> maintainers.

Yes :)

Andrei (maintainer) was using Gerrit but that went away for reasons
outlined in the preceding email.

Some visibility and control of the review process has been lost as a
result and so it was suggested we kick off a conversation on what
tooling to use to restore that.

> Still, the patchwork instance may be an option? The meta-freescale
> layers appear to be using it.

Many thanks!

Cheers,

Alex

