Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F28D3E00CEC; Wed,  8 Jun 2016 04:59:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A42DBE00CE5
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 04:59:09 -0700 (PDT)
Received: from mfilter31-d.gandi.net (mfilter31-d.gandi.net [217.70.178.162])
	by relay3-d.mail.gandi.net (Postfix) with ESMTP id 11F40A80DD
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 13:59:08 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter31-d.gandi.net
Received: from relay3-d.mail.gandi.net ([IPv6:::ffff:217.70.183.195])
	by mfilter31-d.gandi.net (mfilter31-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id jlYqyP7Lz6Z3 for <yocto@yoctoproject.org>;
	Wed,  8 Jun 2016 13:59:06 +0200 (CEST)
X-Originating-IP: 92.90.16.2
Received: from [192.168.43.244] (2.16.90.92.rev.sfr.net [92.90.16.2])
	(Authenticated sender: contact@jgueytat.fr)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3BBC4A80D7
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 13:59:05 +0200 (CEST)
To: yocto@yoctoproject.org
References: <575456D5.4080800@mlbassoc.com>
	<CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
	<CAJTo0La74HkwkgqQZwECS2ruzSe-guCCBJFG0_u=e1FBT8q3CA@mail.gmail.com>
	<2350549.ml0Nc00s8v@peggleto-mobl.ger.corp.intel.com>
	<1465338026.13979.88.camel@linuxfoundation.org>
	<5757E081.7000402@topic.nl> <5757E2CD.3000107@mlbassoc.com>
From: Julien Gueytat <contact@jgueytat.fr>
Message-ID: <57580889.60606@jgueytat.fr>
Date: Wed, 8 Jun 2016 13:59:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <5757E2CD.3000107@mlbassoc.com>
Subject: Re: What's this
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
X-List-Received-Date: Wed, 08 Jun 2016 11:59:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

I got that taskhash mismatch too and much more often than once per 
million. ;) I'm quite happy that you're discussing it here as I did not 
know what it was.

Re-running the task a second time in a row makes the warning disappearing.

Regards,

Le 08/06/2016 11:18, Gary Thomas a écrit :
> On 2016-06-08 11:08, Mike Looijmans wrote:
>> On 08-06-16 00:20, Richard Purdie wrote:
>>> On Wed, 2016-06-08 at 09:24 +1200, Paul Eggleton wrote:
>>>> On Tue, 07 Jun 2016 17:20:12 Burton, Ross wrote:
>>>>> On 7 June 2016 at 17:02, Burton, Ross <ross.burton@intel.com>
>>>>> wrote:
>>>>>> It means the hash calculated my the bitbake master was different
>>>>>> to the
>>>>>> hash calculated when the worker started up.  This usually means
>>>>>> that
>>>>>> you're
>>>>>> using something like ${TIME} in the recipe but not marking it
>>>>>> appropriatly
>>>>>> so the cache ignores it.  Do you have a base-files bbappend that
>>>>>> writes a
>>>>>> timestamp?
>>>>>
>>>>> The always wise Joshua reminds me that if your DISTRO_VERSION
>>>>> contains
>>>>> ${DATETIME} then this happens.  If you're doing this then you'll
>>>>> want to
>>>>> set [vardepsexclude] on DISTRO_VERSION to stop the DATETIME from
>>>>> getting
>>>>> into the cache (or not put the current date/time into the distro
>>>>> version).
>>>>
>>>> I think we need to handle this situation better - if it's really
>>>> worth
>>>> producing an error about then it's worth producing an error message
>>>> that
>>>> people can actually understand, particularly as it's recently added
>>>> validation.
>>>
>>> It was silently running into problems due to this all along but not
>>> reporting it. Its now reporting it which is better than silently things
>>> behaving strangely.
>>>
>>> Its very hard for bitbake to know why the hashes differ, it only knows
>>> the values afterwards and hence that they've changed, the information
>>> about how that hash was constructed is not present in any of bitbake's
>>> caches. That implies to have better messages we need to write out more
>>> data.
>>>
>>> I did add a patch to make bitbake write out data to allow
>>> reconstruction of basehash (which is part of taskhash). Sadly the
>>> parsing performance was diabolical (10 times slower). I think that
>>> could perhaps be improved if the files don't require an atomic move
>>> during creation but I haven't had time to look further at it.
>>>
>>> So whilst I do agree, what is the price people are willing to pay to
>>> have those better messages?
>>
>> I have a build machine that every so often runs into "basehash 
>> mismatch" problems (but never when you want it to, such
>> as now), so getting some information on what might cause it would be 
>> "priceless". I'd happily let the machine run for 10
>> days straight if at the end I get a message that I can work with.
>>
>> Which implies that any performance hit is acceptable, if there's a 
>> switch to enable and disable that extra diagnostic.
>> Oh dear, just what we need, yet another switch...
>>
>
> I wonder if it could be something as simple as an NTP time update
> which happens periodically on my build machine?  Since I've only
> ever seen this message _once_ after literally thousands of builds,
> it is a rare bird indeed!
>


