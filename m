Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20BF7E009C7; Wed, 29 Apr 2015 06:34:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0C96E009AA
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 06:33:46 -0700 (PDT)
Received: by iejt8 with SMTP id t8so42002680iej.2
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 06:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=DZZXVIlMw1K3CfjRuv18Nac8s1l2I/9VzP9D3+pqOv4=;
	b=lmjtDL00J8QuWeLHIqsXfx47QytKpSpnSfn4sxz08Cu4pid6ikR6vAb07dxAv2oDp/
	KavSbcDgxo03cc60pLmZa79ltiudQ58y3UUYCpkVudWJ0X4d0sNU3Kslzgz2Vk3PZbXx
	9fEB16mlfFo9FukebHzTRkQnlfg5OHisCW2PZomOCDO8BAJ7+rIJ3FAlhlbN5g5DlbXb
	0dRzkM1WEYYNaHqyyodW+WPxf4hfMGhW+udlHi4EjtKb6e/6zpMcQ4X7651xqbjH8gPQ
	qYP9FL2mkaYqnqYqv7UGks0VqnrUZTghTZuAOjW/fvecADhbM5O9G9Ecy5BNCTxFLi0j
	/I6A==
X-Received: by 10.107.9.141 with SMTP id 13mr28507225ioj.71.1430314426168;
	Wed, 29 Apr 2015 06:33:46 -0700 (PDT)
Received: from [192.168.0.12]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.231.110.121])
	by mx.google.com with ESMTPSA id q10sm9241153ige.16.2015.04.29.06.33.44
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 29 Apr 2015 06:33:45 -0700 (PDT)
Message-ID: <5540DDB7.7070908@gmail.com>
Date: Wed, 29 Apr 2015 09:33:43 -0400
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
	Parthiban Kandasamy <parthiban@ulivesystems.com>, yocto@yoctoproject.org
References: <CABNKipL2O7mZgYXSjRPR_Y9wYK4amR_EBVQmkEumXgB30Acvww@mail.gmail.com>
	<5540DAAF.6040409@windriver.com>
In-Reply-To: <5540DAAF.6040409@windriver.com>
Subject: Re: Yocto linux-kernel
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
X-List-Received-Date: Wed, 29 Apr 2015 13:34:33 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2015-04-29 09:20 AM, Bruce Ashfield wrote:
> On 04/29/2015 08:38 AM, Parthiban Kandasamy wrote:
>> i am using beagleboard-xm like board for my custom use. for my
>> development i am using yocto-dora-1.5 as bsp and kernel-2.6.32(i
>> downgraded).
>>           while bitbaking kernel, i got error as follows:
>>
>> Log data follows:
>> | DEBUG: Executing shell function do_kernel_checkout
>> | Reinitialized existing Git repository in
>> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/linux-2.6.32/.git/
>> | On branch standard/base
>> | nothing to commit, working directory clean
>> | ERROR. The branch 'meta' is required and was not
>> | found. Ensure that the SRC_URI points to a valid linux-yocto
>> | kernel repository
>> | WARNING:
>> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/temp/run.do_kernel_checkout.32588:1
>> exit 1 from
>> |   exit 1
>> | ERROR: Function failed: do_kernel_checkout (log file is located at
>> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/temp/log.do_kernel_checkout.32588)
>>
>> due to this error i thought error can be cleared if kernel fetched from
>> yocto git repository, but i cat get from there,  so how do i get
>> kernel-2.6.32 for yocto project.
> 
> There isn't a released 2.6.32 linux-yocto version, so if you
> really want that old version, you'd need to create a linux-yocto-custom
> recipe for the version (unless that is what you already did).
> 
> Bruce
> 
>>
>> -- 
>> thanks and regards,
>> parthiban
>>        +919790329795
>>
>>
> 
The only reason to use such a old kernel is for one of two reasons in my experience either 
it's on custom hardware and written by a vendor supporting that hardware or people want to
run a long term supported kernel. I am wondering of the two which one are you under Parthiban.
Nick

