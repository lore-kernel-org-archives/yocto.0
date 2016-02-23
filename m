Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB2BE00D6C; Tue, 23 Feb 2016 13:51:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69218E00D62
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:51:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u1NLpUpn019082
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:51:30 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 23 Feb 2016 13:51:29 -0800
To: <yocto@yoctoproject.org>
References: <1456255515.10581.2.camel@sierrawireless.com>
	<CAMKF1srU_Ewx1HzMHv+AQNhHeoy3b1L1bRvBaZ8556a8+7NLew@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56CCD461.1060505@windriver.com>
Date: Tue, 23 Feb 2016 15:51:29 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1srU_Ewx1HzMHv+AQNhHeoy3b1L1bRvBaZ8556a8+7NLew@mail.gmail.com>
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
X-List-Received-Date: Tue, 23 Feb 2016 21:51:39 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 2/23/16 1:53 PM, Khem Raj wrote:
> On Tue, Feb 23, 2016 at 2:25 PM, Darcy Watkins
> <dwatkins@sierrawireless.com> wrote:
>> Hi,
>>
>> CVE-2015-7547 glibc vulnerability has been published as affecting glibc
>> since ver 2.9 (fixed in 2.23 and patched in 2.22 and 2.21).
>>
>> Anyone know if we need the same security fixes in eglibc?
> 
> yes you do. Eglibc was nothing but glibc+few fixes.

Yes this affects all eglibc version 2.9 and newer up to glibc 2.23.

As far as I'm aware, this affects all Yocto Project versions up to 2.0.


(The patch referenced by the security announcement applies to all of the
versions of glibc I've needed to apply it to for my customers.  A few per-line
tweaks might be necessary, but it was fairly easy.)

--Mark

>>
>> --
>>
>> Regards,
>>
>> Darcy
>>
>> ---
>>
>> Darcy Watkins
>> Staff Engineer, Firmware
>> Sierra Wireless
>> 13811 Wireless Way, Richmond, BC
>> Canada, V6V 3A4
>> [P1]
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


