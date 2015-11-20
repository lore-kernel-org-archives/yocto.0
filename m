Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3181E00B5E; Fri, 20 Nov 2015 07:18:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A749AE00B30
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 07:18:17 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D3911F811E7; Fri, 20 Nov 2015 08:18:16 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A08D1F811E5;
	Fri, 20 Nov 2015 08:18:15 -0700 (MST)
To: yocto@yoctoproject.org
References: <564F3276.10602@mlbassoc.com> <564F34B8.9020801@balister.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <564F39C9.9070201@mlbassoc.com>
Date: Fri, 20 Nov 2015 08:18:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <564F34B8.9020801@balister.org>
Subject: Re: Change in behaviour
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
X-List-Received-Date: Fri, 20 Nov 2015 15:18:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-11-20 07:56, Philip Balister wrote:
> On 11/20/2015 09:47 AM, Gary Thomas wrote:
>> This commit:
>>    commit 536b73f55f51fcea555338f9a557fe86c09d00cb
>>    Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>>    Date:   Sun Oct 11 10:21:20 2015 +0100
>>      bitbake: data_smart: Only support lowercase OVERRIDES
>> breaks the use of capital letters, specifically in MACHINE names.
>> I use this a lot, along with COMPATIBLE_MACHINE, to share recipes
>> amongst similar machines.
>>
>> The commit says it could be conditional.  How hard (and how)
>> would it be to do that?
>>
>
> A little background:
>
> http://openembedded.org/wiki/OEDEM_2015#Metadata

Fair enough + I missed the RFC for the patch that eventually went in.

That said, maybe a warning could be issued if overrides (at least MACHINEOVERRIDES)
are being defined with any upper-case letters rather than the [very silent
and hard to find] new behaviour causing issues?

I'll set off to rework all of my recipes that use upper case
letters in any way - a lot of work I'm sad to say...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

