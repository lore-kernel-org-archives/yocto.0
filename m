Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E074E00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 10:15:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9VHFVJC012751
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 10:15:31 -0700 (PDT)
Received: from Macintosh-5.local (172.25.34.21) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 31 Oct 2011 10:15:30 -0700
Message-ID: <4EAED7B0.4050909@windriver.com>
Date: Mon, 31 Oct 2011 12:15:28 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1110301131040.522@localhost6.localdomain6>
	<4EAD7542.4070204@gna.org>
	<alpine.DEB.2.02.1110301214180.915@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1110301214180.915@localhost6.localdomain6>
Subject: Re: what's the proper value for BB_NUMBER_THREADS?
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
X-List-Received-Date: Mon, 31 Oct 2011 17:15:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 10/30/11 11:15 AM, Robert P. J. Day wrote:
> On Sun, 30 Oct 2011, Christian Gagneraud wrote:
> 
>> On 30/10/11 15:32, Robert P. J. Day wrote:
>>>
>>>    all the docs recommend twice the number of cores (AFAICT), yet the
>>> template local.conf file suggests that, for a quad core, the value of
>>> 4 would be appropriate.  shouldn't that say 8?  same with
>>> PARALLEL_MAKE?
>>
>> Hi Robert,
>>
>> The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THREADS,
>> and x1.5 for PARALLEL_MAKE.
> 
>   if that's the case, anyone object to my submitting a patch to
> update local.conf.sample appropriately?
> 
> rday
> 

I agree the manual and local.conf files should match.  The issue seems to be
that the perfect values are subjective.  Things like memory, disk speed, chipset
latency, and of course processor speed/cores all affect the optimal setting.
But we do need a consistent rule of thumb..  I myself usually use x2 for both
THREADS and MAKE.

--Mark

