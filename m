Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 767A24C80052
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 03:51:00 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4088F16608A0; Wed, 24 Nov 2010 02:51:00 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 18E921660782;
	Wed, 24 Nov 2010 02:50:57 -0700 (MST)
Message-ID: <4CECE001.6050201@mlbassoc.com>
Date: Wed, 24 Nov 2010 02:50:57 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A302EA40F@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A302EA40F@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: [oe] BitBake parallel parsing testing
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
X-List-Received-Date: Wed, 24 Nov 2010 09:51:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2010 01:45 AM, Xu, Dongxiao wrote:
> FYI, bitbake parallel parsing is enabled, which can greatly reduce the file parsing time.
> There are some data test result in OE's following mails.
>
> Bitbake 1.10: 3m2.185s
> parallel-parsing (BB_NUM_PARSE_THREADS=num_cpu): 1m48.232s parallel-parsing (BB_NUM_PARSE_THREADS=2*num_cpu): 1m1.869s

To be clear - this is in the Poky main tree?  since what commit?

Thanks

> Chris Larson wrote:
>> Greetings all,
>> This is a request for further testers for the parallel parsing branch
>> of bitbake, as well as for review of the code.  I'm fairly certain
>> that the last real issue with it was resolved yesterday, and I
>> haven't gotten any reports of problems from those testing it since
>> last week, so I'm opening it up to more public testing, so we can be
>> absolutely certain that we can merge it to master in the near future
>> without risking problems.
>>
>> For code review:
>> Either follow the below steps, then git log master..parallel-parsing
>> or git diff master..parallel-parsing, or use the web interface at
>> https://github.com/kergoth/bitbake/commits/parallel-parsing.
>>
>> For testing from scratch:
>>
>> git clone git://github.com/kergoth/bitbake cd bitbake git checkout -b
>> parallel-parsing origin/parallel-parsing
>>
>>  From an existing bitbake repository:
>>
>> git remote add kergoth git://github.com/kergoth/bitbake git remote
>> update git checkout -b parallel-parsing kergoth/parallel-parsing
>>
>> Thanks for your time, and do let me know what you think, either of
>> the code, performance in general, or the new progress bar (shows an
>> ETA), or anything else :)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

