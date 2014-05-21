Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 676EAE00B70; Wed, 21 May 2014 05:46:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A6FCE00AFD
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 05:46:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4LCjwqD009766
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 21 May 2014 05:45:58 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 21 May 2014 05:45:57 -0700
Message-ID: <537C9FFC.7060400@windriver.com>
Date: Wed, 21 May 2014 08:45:48 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>, <yocto@yoctoproject.org>
References: <20140521123334.3B0AA3803F4@gemini.denx.de>
	<537C9FA9.5090703@windriver.com>
In-Reply-To: <537C9FA9.5090703@windriver.com>
Subject: Re: kernel-yocto.bbclass ignoring SRCREV?
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
X-List-Received-Date: Wed, 21 May 2014 12:46:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-05-21 08:44 AM, Bruce Ashfield wrote:
> On 14-05-21 08:33 AM, Wolfgang Denk wrote:
>> Hi,
>>
>> is my understanding of kernel-yocto.bbclass correct that it
>> effectively completely ignores any specific git commit ID that was
>> gien in SRCREV, but instead always checks out and uses the HEAD of the
>> respective branch?
>>
>> Or am I missing something here?  My expectation was that we specify a
>> git commit ID (as the only reliable, truly unique identifier for a
>> specific source code version) in SRCREV, but instead it appears that
>> this information is effectively being ignored?
>
> kernel-yocto does respect SRCREV. It uses the routine do_validate_branches
> to reset to a specific SRCREV as a baseline, it then starts processing
> and applying BSP descriptions on top of that point.

And I forgot to point out that do_validate_branches() has been nearly
completely removed/rewritten as part of the upcoming yocto 1.7
development cycle. So what I mention above is more clear in the new
versions.

Bruce

>
> We test SRCREV specific builds on a ongoing basis, so they do work,
> and if a different behaviour is being seen .. that's a bug.
>
> Cheers,
>
> Bruce
>
>>
>> I can understand that there are situations where automatically using
>> the top commit of a branch (say, the latest stable version of some
>> package) may be useful, but should there not be some different way to
>> do that?
>>
>> I mean, how can we make sure to ever be able to reproduce the very
>> same build if the git commit ID specified in SRCREV will not be used
>> for the checkout?
>>
>> Thanks in advance.
>>
>> Best regards,
>>
>> Wolfgang Denk
>>
>


