Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0F4BE013D4
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 08:03:56 -0700 (PDT)
Received: from [192.168.0.54] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 47247462FA
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 15:59:43 +0100 (BST)
Message-ID: <4FFAF323.4040201@communistcode.co.uk>
Date: Mon, 09 Jul 2012 16:05:07 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120616 Thunderbird/13.0.1
MIME-Version: 1.0
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4FFAEBFC.2090603@communistcode.co.uk>
	<20120709143736.GE6308@jama.jama.net>
	<4FFAEFE7.4000303@communistcode.co.uk>
	<20120709145320.GF6308@jama.jama.net>
In-Reply-To: <20120709145320.GF6308@jama.jama.net>
Subject: Re: m4 build failure - master && denzil branch
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
X-List-Received-Date: Mon, 09 Jul 2012 15:03:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/07/12 15:53, Martin Jansa wrote:
> On Mon, Jul 09, 2012 at 03:51:19PM +0100, Jack Mitchell wrote:
>> On 09/07/12 15:37, Martin Jansa wrote:
>>> On Mon, Jul 09, 2012 at 03:34:36PM +0100, Jack Mitchell wrote:
>>>> So, I'm fairly sure this is a real build failure this time, again on the
>>>> poky master and denzil branch.
>>>>
>>>> Please see attached file as the log is too big to paste.
>>>
>>> does your host use (e)glibc-2.16?
>>>
>>> if it's so, then you need this patch for m4
>>> http://patchwork.openembedded.org/patch/31377/
>>>
>>> Cheers,
>>>
>>
>> Yes it does, I saw this issue when building for the Rapsberry Pi the
>> other day and I pulled your patches in which worked. I had assumed it
>
> Those are Khem's patches..
Apologies to you both.
>
>
>> was eglibc 2.16 on target that was causing issues not eglibc 2.16 on the
>> host - hence my confusion to why the Denzil branch not building. I
>> wonder if Saul looking into pulling these in soon?
>
> Well -native packages are using host libs.. so target recipes are fine
> until you manually switch to eglibc-2.16, but -native are affected
> immediately when your host distro upgrades (e)glibc.
Thanks!
>
>
> Cheers,
>



-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


