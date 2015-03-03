Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AF7FE00777; Tue,  3 Mar 2015 08:31:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D59DBE00750
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 08:30:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t23GUnDf023702
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Mar 2015 08:30:49 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 3 Mar 2015 08:30:49 -0800
Message-ID: <54F5E194.5010404@windriver.com>
Date: Tue, 3 Mar 2015 11:30:12 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.LFD.2.11.1503030407310.18866@localhost>
	<alpine.LFD.2.11.1503030537270.24261@localhost>
	<54F5C552.5000406@windriver.com>
	<alpine.LFD.2.11.1503031124590.15385@Device-040570>
In-Reply-To: <alpine.LFD.2.11.1503031124590.15385@Device-040570>
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 03 Mar 2015 16:31:01 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-03-03 11:27 AM, Robert P. J. Day wrote:
> On Tue, 3 Mar 2015, Bruce Ashfield wrote:
>
>> On 15-03-03 05:39 AM, Robert P. J. Day wrote:
>>> On Tue, 3 Mar 2015, Robert P. J. Day wrote:
>>>
>>>>
>>>>     kernel dev manual uses the KERNEL_FEATURES format of:
>>>>
>>>>        KERNEL_FEATURES += "features/netfilter.scc"
>>>>
>>>> while ref manual variable glossary uses
>>>>
>>>>        KERNEL_FEATURES="features/netfilter"
>>>>
>>>> is there a preference for the usage of the .scc suffix? (i'm assuming
>>>> they're both valid, i didn't actually check that. maybe i should check
>>>> that ...)
>>>
>>>     hang on, i think there's an error in the docs ... if i check the
>>> meta branch, i see that the actual structure for the netfilter feature
>>> is "features/netfilter/netfilter.scc", so "features/netfilter.scc"
>>> shouldn't even work, should it? historical remnant?
>>
>> It works, but it is an old shortcut that isn't emphasized or used.
>> So yes, its a historical remnant, and explicit .scc references are
>> preferred.
>
>    wait ... just to be clear, you're saying that referring to a
> features *directory* is a historical remnant? note above that i'm
> asking about what appears to be a historical remnant where it looks
> like netfilter used to be a .scc file directly under features/, now
> it's in a subdirectory.

This format:  KERNEL_FEATURES="features/netfilter"

Is the historical remnant. The tools can convert that to
features/netfilter/netfiler.scc internally. It was a shortcut to
make the features more human readable when they followed that
defined form "<dirname>/<dirname>.scc"

>
>    as it stands now, it would *appear* that the statement:
>
>    KERNEL_FEATURES += "features/netfilter.scc"
>
> is simply wrong and can't possibly work, correct?

That one is wrong, but the tools can also do a basename before
running the test, which converts it to that other format, and
then it can be expanded to find the feature description.

Both are non-obvious, and error prone .. hence why they are not
used anymore.

So the answer is that the docs should be updated to purge the
old references.

Bruce

>
> rday
>


