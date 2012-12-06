Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D86AE0141C
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 14:49:14 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 253EEF811F7; Thu,  6 Dec 2012 15:49:14 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 53951F811D9;
	Thu,  6 Dec 2012 15:49:13 -0700 (MST)
Message-ID: <50C120F1.2020004@mlbassoc.com>
Date: Thu, 06 Dec 2012 15:49:21 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
	<CABcZAN=JuymHBYdL8kZUjcYjScfjKAJwYJibP6R=7Xkto1Gh1g@mail.gmail.com>
	<alpine.DEB.2.02.1212061731550.4523@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212061731550.4523@oneiric>
Subject: Re: FILESEXTRAPATHS needs to be explained *way* better
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
X-List-Received-Date: Thu, 06 Dec 2012 22:49:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-12-06 15:32, Robert P. J. Day wrote:
> On Thu, 6 Dec 2012, Chris Larson wrote:
>
>>
>>
>> On Thu, Dec 6, 2012 at 2:59 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>>          in addition, there is absolutely no need to add a ":" to the value
>>        as the processing adds that for you, so the many, many examples of
>>
>>        FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>>        is potentially confusing to folks reading the code.  (that trailing
>>        ":" doesn't hurt, but it has no value.)
>>
>>
>> This is wrong. You only don't need the leading : if FILESEXTRAPATHS
>> was empty to begin with, which is only the case if that is the first
>> and only bbappend adding to it. As soon as you get more than one,
>> you'll end up with concatenated values and no separator.
>
>    i'm confused, not sure what this means.  what is the *proper* usage
> of that variable?

I think Chris means you don't need ":=", you should just use "="

Bottom line, what you are trying to create is something that looks like this:
   FILESEXTRAPATHS = "some_path:some_other_path:even_another_path:"
so the ":" at the end of the expression should always be there.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

