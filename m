Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 623DCE008BC; Fri, 13 Mar 2015 08:03:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC66E00871
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 08:03:20 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5AD4BF811DD; Fri, 13 Mar 2015 09:03:20 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E6164F811DC;
	Fri, 13 Mar 2015 09:03:19 -0600 (MDT)
Message-ID: <5502FC4B.6010802@mlbassoc.com>
Date: Fri, 13 Mar 2015 09:03:39 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAGKu3q+Ya040AHnfiRue03+OY9Yx4b4FXvPVYmgNLPCqMmDSxA@mail.gmail.com>
	<5502F87A.90208@windriver.com>
In-Reply-To: <5502F87A.90208@windriver.com>
Subject: Re: Using Pre Built Toolchain in Yocto Tree
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
X-List-Received-Date: Fri, 13 Mar 2015 15:03:24 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-13 08:47, Mark Hatle wrote:
> On 3/13/15 6:43 AM, Darshan Patel wrote:
>> Is there a way to configure Yocto to use Pre Built toolchain (like downloaded
>> from CodeSourcery, etc.). I want to avoid building toolchain because it takes
>> too much time and using new toolchain is not of my concern.
>
> If you wish to use the Mentor Sourcery toolchain, they have a layer available
> that allows you to incorporate it.
>
> https://github.com/MentorEmbedded/meta-sourcery
>
> I have not used this layer in a while (and I don't work for Mentor), so if you
> have questions you may need to find someone who is more familiar with the layer.
>
>
> There is another alternative though.  Build the toolchain once, store the
> sstate-cache files that were generated and use those on subsequent builds.
> There is a mechanism called the locked sstate-cache where you can feed into your
> configuration the hashes for the sstate-cache item you are interested in.  This
> will tell the system to simply re-use the components, and ignore any system
> changes that may have occurred.

Could you elaborate on this (locked sstate-cache)?  I don't see any
mention of it in the documentation.

>
> --Mark
>
>> I was using this feature in buildroot.
>>
>> Thanks in Advance!!!
>>
>> --
>> Regards
>> Darshan
>>
>>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

