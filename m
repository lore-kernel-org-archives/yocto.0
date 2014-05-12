Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B7D6E00B00; Mon, 12 May 2014 08:37:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DC5CE00985
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 08:37:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s4CFaxKo007508
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 08:37:39 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Mon, 12 May 2014 08:37:01 -0700
Message-ID: <5370EAA2.8060104@windriver.com>
Date: Mon, 12 May 2014 10:37:06 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>	<CAMKF1spVm46k7s+xm0BKCu6=sHR4npEbHLfAUVfQDOve9thc0A@mail.gmail.com>	<CAMCfZKGF=dftUZ2AEwmUBCaGjBLOn5PAnrWuf4hDviu_3anNrw@mail.gmail.com>	<CAMKF1sqfnZnMVufmitCS-C1QU6PCzOcqqJWmNrYE1J7JnBf5fg@mail.gmail.com>	<CAMCfZKEZgu_o1fqK3jR8kTxmMKVVStuskM7AcmQJXzdkaP7Z-A@mail.gmail.com>	<CAMCfZKFHkaAHV0mUZeYoDuS1V5VvBx_7z4BRO27UoGqpO=vJ0w@mail.gmail.com>
	<536D0CF4.6030107@windriver.com>
In-Reply-To: <536D0CF4.6030107@windriver.com>
Subject: Re: RPM to Verify Installed Packages
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
X-List-Received-Date: Mon, 12 May 2014 15:37:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 5/9/14, 12:14 PM, Mark Hatle wrote:
> On 5/7/14, 7:46 AM, Diego Sueiro wrote:
>> Folks,
>
> I'm looking at this issue.  I'd suggest you open a bug in the Yocto Project
> bugzilla.  Feel free to assign it to me.  (I'll end up with it anyway...)

I opened a bug, 6309.  I've sent a fix for master, and we can work it back into 
previous versions once approved by oe-core.

--Mark

> --Mark
>
>> On Tue, May 6, 2014 at 3:48 PM, Diego Sueiro <diego.sueiro@gmail.com
>> <mailto:diego.sueiro@gmail.com>> wrote:
>>
>>      On Tue, May 6, 2014 at 3:39 PM, Khem Raj <raj.khem@gmail.com
>>      <mailto:raj.khem@gmail.com>> wrote:
>>
>>          On Tue, May 6, 2014 at 11:34 AM, Diego Sueiro <diego.sueiro@gmail.com
>>          <mailto:diego.sueiro@gmail.com>> wrote:
>>           >
>>           > It's hard to say. But when I try to execute it I receive: "cannot execute
>>           > binary file".
>>           > And the output of "file" command is: "data".
>>           >
>>           > My bet is that the system was powered down during the update process.
>>
>>          what happens if you reinstall it ?
>>
>>
>>      It works.
>>      But the problem is that --verify option is not working.
>>      Even if I remove a file from the installed package it did not point for a
>>      missing file.
>>
>>
>> Any thoughts?
>>
>>
>>
>> Regards,
>>
>> --
>> *dS
>> Diego Sueiro
>>
>> Administrador do Embarcados
>> www.embarcados.com.br
>> <http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>
>>
>> /*long live rock 'n roll*/
>>
>>
>


