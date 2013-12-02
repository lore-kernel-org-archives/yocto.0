Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B67FE006D2
	for <yocto@yoctoproject.org>; Mon,  2 Dec 2013 07:00:02 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A9DFDF811E5; Mon,  2 Dec 2013 08:00:01 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 00F08F811D9;
	Mon,  2 Dec 2013 07:59:59 -0700 (MST)
Message-ID: <529CA093.3080406@mlbassoc.com>
Date: Mon, 02 Dec 2013 08:00:35 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <529B4140.2040801@mlbassoc.com>	<CAP71Wjw=Zaf9n_yiXG1-=Fp5rNSPYV9xEsEN6HEwO841xwWneA@mail.gmail.com>	<529B4CC6.8090501@mlbassoc.com>	<CAP71Wjz9zTEczjEwyy-gpTo6YA3oju-LBVxvxXSx9aNyN+-wkw@mail.gmail.com>	<529B53AC.3050309@mlbassoc.com>
	<285d7595-af9a-41b3-9e4f-f7f083ae4be2@CO1EHSMHS031.ehs.local>
In-Reply-To: <285d7595-af9a-41b3-9e4f-f7f083ae4be2@CO1EHSMHS031.ehs.local>
Subject: Re: Very strange append issue
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
X-List-Received-Date: Mon, 02 Dec 2013 15:00:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-12-01 18:02, Nathan Rossi wrote:
> Hi Gary,
>
> Just a heads up. This issue should now be resolved in the current master of poky. A patch went into bitbake to fix up the double appending of bbappends.
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=f91a3f46a1ee586e330be0868e8fbc4d2e78d361

Confirmed - the problem is fixed in master fabdf2f57a8e0ebe8ab7e82f92f3b298e113fcc0
(presumably by the mentioned change)

Thanks

>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Gary Thomas
>> Sent: Monday, December 02, 2013 1:20 AM
>> To: Nicolas Dechesne
>> Cc: Yocto Project
>> Subject: Re: [yocto] Very strange append issue
>>
>> On 2013-12-01 07:59, Nicolas Dechesne wrote:
>>>
>>> On Sun, Dec 1, 2013 at 3:50 PM, Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>> wrote:
>>>
>>>      Yes, I am using master: 937663bdeca6d6479e0db2a9578588__b1aa20222c
>>>
>>>      At least I am not hallucinating!
>>>
>>>
>>> can you try to revert the same commit as in the other thread?
>>>
>>> commit 381d5920188398bc53b2454843054c8690bca243
>>> Author: Saul Wold <s...@linux.intel.com <mailto:s...@linux.intel.com>>
>>> Date:   Thu Nov 21 09:50:41 2013 -0800
>>>
>>>       bitbake: cooker: add support for using % as a wildcard in bbappend
>> filename
>>>
>>
>> Reverting that change does eliminate my problem.
>>
>> Thanks
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

