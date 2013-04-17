Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55EDCE013CA
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:12:40 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 12502F811F5; Wed, 17 Apr 2013 09:12:40 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3E277F811F3;
	Wed, 17 Apr 2013 09:12:39 -0600 (MDT)
Message-ID: <516EBBE7.8060201@mlbassoc.com>
Date: Wed, 17 Apr 2013 09:12:39 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios>
In-Reply-To: <2155264.hXQStR7GGJ@helios>
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Wed, 17 Apr 2013 15:12:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-04-17 09:03, Paul Eggleton wrote:
> On Wednesday 17 April 2013 10:24:42 Robert P. J. Day wrote:
>>    a while back, i dug into how FILESEXTRAPATHS worked with respect to
>> .bbappend files and i wrote it up, just updated it a bit here:
>>
>> http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_files
>>
>> do i have it about right? it seemed that the underlying details
>> weren't really explained well in any of the current yocto docs, and i
>> wanted something i could point students at.
>
> It looks OK to me although if you're going to point students at it I might
> suggest moving the "don't look here!" stuff elsewhere ;)
>
> Also as I believe I mentioned before, FILESEXTRAPATHS adds not just one
> directory but an "entire list of directories" is it allows bbappend file path
> behaviour to match that of the recipe itself.

I also think it would be good to point out the use of := in the FILESEXTRAPATHS
assignment and why it's important.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

