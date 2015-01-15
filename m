Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65A32E0086E; Thu, 15 Jan 2015 07:47:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ACCBE004D6
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 07:47:07 -0800 (PST)
Received: from [192.168.1.10] (c-73-194-208-34.hsd1.nj.comcast.net
	[73.194.208.34])
	by smtp.webfaction.com (Postfix) with ESMTP id 8898D20D0C1C;
	Thu, 15 Jan 2015 15:47:05 +0000 (UTC)
Message-ID: <54B7E0F8.4010501@mindchasers.com>
Date: Thu, 15 Jan 2015 10:47:04 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>, 
	"Robert P. J. Day" <rpjday@crashcourse.ca>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1407311737480.19552@localhost>
	<D001254A.72DD%alexandru.c.georgescu@intel.com>
In-Reply-To: <D001254A.72DD%alexandru.c.georgescu@intel.com>
Subject: Re: will yocto 1.7 work with eclipse luna?
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
X-List-Received-Date: Thu, 15 Jan 2015 15:47:16 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/01/2014 04:09 AM, Georgescu, Alexandru C wrote:
> Hi Robert,
>
> The upgrade to Luna is expected to happen during the 1.7 timeframe as
> shown here: https://bugzilla.yoctoproject.org/show_bug.cgi?id=6251.
> After the upgrade will happen, it will merge into our QA flow to make sure
> that the core functionality exist.


Hi,

I'm looking for feedback on whether it's a good idea to try working with 
the Eclipse plugin on Luna with the Luna patch applied, which can be 
found in the 6251 bug report.   Are users / developers already using it?

I'm also wrestling with Luna in general being sluggish on my Ubuntu 
Linux boxes.  I have seen various reports of this by others with 
suggestions on trying alternate JVM (e.g., Oracle) - so far, I'm having 
the best results with Oracle jdk1.8.

Any guidance on moving to Luna (on Linux) at this point will be greatly 
appreciated.

Bob


>
> Regards,
> --
> Alexandru Georgescu
> Yocto QA Engineer
> SSG/SSD Open Source Technology Center Romania
>
>
>
>
> On 01/08/14 00:41, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:
>
>>
>>   already dropped scott rifenbark a note about this, but current dev
>> manual recommends eclipse kepler, while eclipse luna is out, and
>> fedora 22 appears to use that as the yum-installable version. so any
>> issues with eclipse luna?
>>
>> rday
>>
>> --
>>
>> ========================================================================
>> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>>                         http://crashcourse.ca
>>
>> Twitter:                                       http://twitter.com/rpjday
>> LinkedIn:                               http://ca.linkedin.com/in/rpjday
>> ========================================================================
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


