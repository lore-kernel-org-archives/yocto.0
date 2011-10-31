Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79E29E00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 10:39:16 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D1CC7166019C; Mon, 31 Oct 2011 11:39:07 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 64B171660106;
	Mon, 31 Oct 2011 11:39:06 -0600 (MDT)
Message-ID: <4EAEDD3A.9070601@mlbassoc.com>
Date: Mon, 31 Oct 2011 11:39:06 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1110301131040.522@localhost6.localdomain6>
	<4EAD7542.4070204@gna.org>
	<alpine.DEB.2.02.1110301214180.915@localhost6.localdomain6>
	<4EAED7B0.4050909@windriver.com>
	<alpine.DEB.2.02.1110311323050.8545@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1110311323050.8545@localhost6.localdomain6>
Cc: yocto@yoctoproject.org
Subject: Re: what's the proper value for BB_NUMBER_THREADS?
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
X-List-Received-Date: Mon, 31 Oct 2011 17:39:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-31 11:25, Robert P. J. Day wrote:
> On Mon, 31 Oct 2011, Mark Hatle wrote:
>
>> On 10/30/11 11:15 AM, Robert P. J. Day wrote:
>>> On Sun, 30 Oct 2011, Christian Gagneraud wrote:
>>>
>>>> On 30/10/11 15:32, Robert P. J. Day wrote:
>>>>>
>>>>>     all the docs recommend twice the number of cores (AFAICT), yet the
>>>>> template local.conf file suggests that, for a quad core, the value of
>>>>> 4 would be appropriate.  shouldn't that say 8?  same with
>>>>> PARALLEL_MAKE?
>>>>
>>>> Hi Robert,
>>>>
>>>> The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THREADS,
>>>> and x1.5 for PARALLEL_MAKE.
>>>
>>>    if that's the case, anyone object to my submitting a patch to
>>> update local.conf.sample appropriately?
>>>
>>> rday
>>>
>>
>> I agree the manual and local.conf files should match.  The issue
>> seems to be that the perfect values are subjective.  Things like
>> memory, disk speed, chipset latency, and of course processor
>> speed/cores all affect the optimal setting. But we do need a
>> consistent rule of thumb..  I myself usually use x2 for both THREADS
>> and MAKE.
>
>    that's what i would normally use, assuming that having an overly
> high value for either of those settings can't possibly hurt.  if
> that's the consensus, i can adjust the references to say 2x everywhere
> that i know of.  just let me know.

Look back in the archives - I think it was Richard that did a fairly
extensive study of this and he (whoever it was) found that there were
saturation points and trying to get beyond them had a negative impact.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

