Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B765BE00810; Tue,  3 Mar 2015 06:30:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD5F8E003FA
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 06:30:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t23EUFr9023967
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Mar 2015 06:30:16 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 3 Mar 2015 06:30:15 -0800
Message-ID: <54F5C552.5000406@windriver.com>
Date: Tue, 3 Mar 2015 09:29:38 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1503030407310.18866@localhost>
	<alpine.LFD.2.11.1503030537270.24261@localhost>
In-Reply-To: <alpine.LFD.2.11.1503030537270.24261@localhost>
Subject: Re: preferred KERNEL_FEATURES format: netfilter or netfilter.scc?
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
X-List-Received-Date: Tue, 03 Mar 2015 14:30:30 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-03-03 05:39 AM, Robert P. J. Day wrote:
> On Tue, 3 Mar 2015, Robert P. J. Day wrote:
>
>>
>>    kernel dev manual uses the KERNEL_FEATURES format of:
>>
>>       KERNEL_FEATURES += "features/netfilter.scc"
>>
>> while ref manual variable glossary uses
>>
>>       KERNEL_FEATURES="features/netfilter"
>>
>> is there a preference for the usage of the .scc suffix? (i'm assuming
>> they're both valid, i didn't actually check that. maybe i should check
>> that ...)
>
>    hang on, i think there's an error in the docs ... if i check the
> meta branch, i see that the actual structure for the netfilter feature
> is "features/netfilter/netfilter.scc", so "features/netfilter.scc"
> shouldn't even work, should it? historical remnant?

It works, but it is an old shortcut that isn't emphasized or used.
So yes, its a historical remnant, and explicit .scc references are
preferred.

Cheers,

Bruce

>
> rday
>


