Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65A11E00EA0; Wed, 23 Sep 2015 06:49:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C44FDE00BAA
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 06:49:34 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 53D01F811E0; Wed, 23 Sep 2015 07:49:34 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AED96F81188;
	Wed, 23 Sep 2015 07:49:33 -0600 (MDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <55FFF9AA.2020402@mlbassoc.com>
	<2165861.gxy7TRHp8B@peggleto-mobl.ger.corp.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5602ADEE.2000803@mlbassoc.com>
Date: Wed, 23 Sep 2015 07:49:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <2165861.gxy7TRHp8B@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Change in bitbake behaviour?
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
X-List-Received-Date: Wed, 23 Sep 2015 13:49:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-23 07:46, Paul Eggleton wrote:
> Hi Gary,
>
> On Monday 21 September 2015 06:35:54 Gary Thomas wrote:
>> I just updated to the latest Poky/Yocto master
>> and I noticed this change in behaviour when I tried to stop
>> a build:
>>     Keyboard Interrupt, closing down...
>>
>>     NOTE: Tasks Summary: Attempted 86 tasks of which 36 didn't need to be
>> rerun and all succeeded. ERROR: Command execution failed: Stopped build
>>
>>     Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>> Execution was interrupted, returning a non-zero exit code.
>>     timed out
>>
>> It took more than a minute between the last two lines at which time
>> I thought it might be hung.  I left it and then found the "timed out"
>> line somewhat later.
>>
>> Is this to be expected?
>
> No, this sounds like a bug - but was this somehow related to your other build
> issue or do you still see this?

No, I'm still seeing it, but only occasionally.  It's most
pronounced if I try and abort a build, but I have seen it
also with a successful run (it hangs when seemingly complete
the prints 'timed out' after a fairly long time)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

