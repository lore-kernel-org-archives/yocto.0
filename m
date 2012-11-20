Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 423FFE01438
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 13:14:06 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 87B3FF81238; Tue, 20 Nov 2012 14:14:05 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 352C6F811F7;
	Tue, 20 Nov 2012 14:14:04 -0700 (MST)
Message-ID: <50ABF2B7.8060006@mlbassoc.com>
Date: Tue, 20 Nov 2012 14:14:31 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1211201525020.27021@oneiric>
	<1353445350.7717.7.camel@empanada>
	<alpine.DEB.2.02.1211201605110.30424@oneiric>
In-Reply-To: <alpine.DEB.2.02.1211201605110.30424@oneiric>
Subject: Re: is anyone getting pathetic git download from the new kmod SRC_URI?
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
X-List-Received-Date: Tue, 20 Nov 2012 21:14:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-11-20 14:08, Robert P. J. Day wrote:
> On Tue, 20 Nov 2012, Tom Zanussi wrote:
>
>> On Tue, 2012-11-20 at 15:27 -0500, Robert P. J. Day wrote:
>>> maybe it's something i'm doing, but oe-core just changed the SRC_URI
>>> for kmod to git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git,
>>> and the response from the URL couldn't suck any worse than if it
>>> sucked totally.  i've yet to get a successful clone.
>>>
>>>    thoughts?  is that working fine for others?
>>>
>>
>> No problems here:
>>
>> [trz@empanada tmp]$ time git clone git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
>> Cloning into 'kmod'...
>> remote: Counting objects: 4003, done.
>> remote: Compressing objects: 100% (1599/1599), done.
>> remote: Total 4003 (delta 2811), reused 3196 (delta 2264)
>> Receiving objects: 100% (4003/4003), 4.59 MiB | 850 KiB/s, done.
>> Resolving deltas: 100% (2811/2811), done.
>>
>> real	0m7.183s
>> user	0m0.361s
>> sys	0m0.429s
>
>    i can't explain it -- i've yet to have a successful clone from that
> URL.  hangs partway through every time.

Maybe it's a routing thing - where are you located?

n.b. it just worked for me - in about the same <10 seconds

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

