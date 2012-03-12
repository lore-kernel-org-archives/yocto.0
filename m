Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55E4FE0030B
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 03:25:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B86D1F8126C; Mon, 12 Mar 2012 04:25:30 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 93B92F8123A;
	Mon, 12 Mar 2012 04:25:29 -0600 (MDT)
Message-ID: <4F5DCF19.5000200@mlbassoc.com>
Date: Mon, 12 Mar 2012 04:25:29 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <alpine.DEB.2.02.1203100438340.24798@oneiric>
	<2830925.MktUsbZfsZ@helios> <4F5C9E99.5010509@mlbassoc.com>
	<1503814.Y6Q9bri6nF@helios>
In-Reply-To: <1503814.Y6Q9bri6nF@helios>
Cc: yocto@yoctoproject.org
Subject: Re: is yocto based on oe-core *as-is*?
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
X-List-Received-Date: Mon, 12 Mar 2012 10:25:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-11 16:38, Paul Eggleton wrote:
> On Sunday 11 March 2012 06:46:17 Gary Thomas wrote:
>> On 2012-03-11 06:33, Paul Eggleton wrote:
>>> This is correct, and you can verify it by doing a diff of the OE-Core
>>> meta/
>>> subdirectory against Poky's meta/ - the only difference is that Poky does
>>> not include the sample configs (it provides its own in meta-yocto).
>>
>> Have you actually done such a comparison?
>
> Yes, I did so before sending the above message.
>
>> I just compared them like this:
>>     poky/yocto:
>>        commit 320558f494c618f53e0c773db3ea0109476e8359
>>        Author: Paul Eggleton<paul.eggleton@linux.intel.com>
>>        Date:   Wed Feb 29 12:59:14 2012 +0000
>>
>>     openembedded-core:
>>        commit 50dc8bfbac42b9a9b52a2f7d0568740c41790c13
>>        Author: Richard Purdie<richard.purdie@linuxfoundation.org>
>>        Date:   Fri Mar 9 14:14:04 2012 +0800
>>
>> These are the up-to-date master branches, as of 2012-03-11 12:40 GMT
>
> I don't think you'll find they are. Your poky branch is behind OE-Core by quite
> a number of commits - in fact 320558f494c618f53e0c773db3ea0109476e8359 is
> where the 1.2_M3 branch HEAD is currently, are you sure you aren't on that
> branch instead of master?

You're right, but I sure don't know how that happened!  I never have
anything but master checked out, but somehow this time I did.  Sorry
for the noise.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

