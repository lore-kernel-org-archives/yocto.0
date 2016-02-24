Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51841E00D87; Wed, 24 Feb 2016 08:38:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCCD0E00D84
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 08:38:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u1OGcFbG011516
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 08:38:15 -0800
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 24 Feb 2016 08:38:12 -0800
To: <yocto@yoctoproject.org>
References: <1456255515.10581.2.camel@sierrawireless.com>
	<CAMKF1srU_Ewx1HzMHv+AQNhHeoy3b1L1bRvBaZ8556a8+7NLew@mail.gmail.com>
	<56CCD461.1060505@windriver.com>
	<1456267969.27839.3.camel@sierrawireless.com>
	<56CCF5E8.3000005@gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56CDDC73.1000000@windriver.com>
Date: Wed, 24 Feb 2016 10:38:11 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <56CCF5E8.3000005@gmail.com>
Subject: Re: Does CVE-2015-7547 affect eglibc?
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
X-List-Received-Date: Wed, 24 Feb 2016 16:38:20 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 2/23/16 6:14 PM, akuster808 wrote:
> 
> 
> On 02/23/2016 02:52 PM, Darcy Watkins wrote:
>> On Tue, 2016-02-23 at 13:51 -0800, Mark Hatle wrote:
>>> On 2/23/16 1:53 PM, Khem Raj wrote:
>>>> On Tue, Feb 23, 2016 at 2:25 PM, Darcy Watkins
>>>>> CVE-2015-7547 glibc vulnerability has been published as affecting glibc
>>>>> since ver 2.9 (fixed in 2.23 and patched in 2.22 and 2.21).
>>>>>
>>>>> Anyone know if we need the same security fixes in eglibc?
>>>>
>>>> yes you do. Eglibc was nothing but glibc+few fixes.
>>>
>>> Yes this affects all eglibc version 2.9 and newer up to glibc 2.23.
>>>
>>> As far as I'm aware, this affects all Yocto Project versions up to 2.0.
>>
>> I will be interested in knowing which Yocto Project versions will
>> receive the fixes. 
> 
> Master, 2.0 and 1.8 all have the fixes.
> How far back do we go in matters like this?

Official support is current (in development) and the last two releases.  So up
to about a year and a half of support.

After this point, it becomes community support.  This really means, if someone
in the community wants to continue support past the YP's support guidelines they
are welcome to do so -- but there won't be any official releases, only checkins
to the repository.

We have done this on some OpenSSL fixes in the past, but it was based on
specific requests and people submitting the fixes to be included with older
versions.

> 1.7 (dizzy) I plan on doing soon. beyond that I do not know. those are
> all community supported.
> 
> - armin
>>
>> Thanks in advance!
>>
>>> (The patch referenced by the security announcement applies to all of the
>>> versions of glibc I've needed to apply it to for my customers.  A few per-line
>>> tweaks might be necessary, but it was fairly easy.)
>>
>>


