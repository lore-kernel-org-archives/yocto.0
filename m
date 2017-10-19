Return-Path: <sancelot@numalliance.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CDE7E00D3A; Thu, 19 Oct 2017 03:35:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.numalliance.com (mail.numalliance.com [194.2.198.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70C3CE00C96
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 03:35:01 -0700 (PDT)
Received: from [192.168.0.78] (unknown [192.168.0.78])
	(Authenticated sender: sancelot@numalliance.com)
	by mail.numalliance.com (Postfix) with ESMTPSA id D878321B0472;
	Thu, 19 Oct 2017 12:35:00 +0200 (CEST)
To: Ayoub Zaki <ayoub.zaki@embexus.com>, yocto@yoctoproject.org
References: <bc2a1b00-29ca-e3e7-3e54-51f8f88650e7@numalliance.com>
	<7d046f0a-a71a-27d5-c5a2-6fdf55b950ee@embexus.com>
	<c01a4416-8c30-d548-d23a-ca422ed534dc@numalliance.com>
	<e4f40bfb-402c-0a34-0b4e-46700849adb6@embexus.com>
From: =?UTF-8?Q?St=c3=a9phane_Ancelot?= <sancelot@numalliance.com>
Message-ID: <0f867617-3e03-955d-0ded-c4436d6b7ce8@numalliance.com>
Date: Thu, 19 Oct 2017 12:35:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <e4f40bfb-402c-0a34-0b4e-46700849adb6@embexus.com>
Subject: Re: sfdisk package
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
X-List-Received-Date: Thu, 19 Oct 2017 10:35:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr

Thanks


Le 19/10/2017 à 12:28, Ayoub Zaki a écrit :
>
>
> On 19.10.2017 12:26, Stéphane Ancelot wrote:
>> Hi,
>>
>> right, it might be this, but how can you retrieve this information ?
>>
>> searching in recipes I have not found it .
> find meta* -type f | xargs grep -e 'sfdisk'
> meta/recipes-core/util-linux/util-linux.inc:PACKAGES =+ 
> "util-linux-agetty util-linux-fdisk util-linux-cfdisk util-linux-sfdisk \
> meta/recipes-core/util-linux/util-linux.inc:FILES_util-linux-sfdisk = 
> "${sbindir}/sfdisk"
> meta/recipes-core/util-linux/util-linux.inc:RRECOMMENDS_${PN} = 
> "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-mount 
> util-linux-readprofile util-linux-mkfs util-linux-mountpoint 
> util-linux-prlimit"
>>
>> Regards,
>>
>> S.Ancelot
>>
>>
>> Le 19/10/2017 à 11:39, Ayoub Zaki a écrit :
>>>
>>>
>>> On 19.10.2017 11:36, Stéphane Ancelot wrote:
>>>> Hi,
>>>>
>>>> I would need sfdisk package, I have not found it.
>>>>
>>>> I suppose I must create it or are there any software forge where I 
>>>> could find it ?
>>> util-linux-sfdisk ?
>>>>
>>>> Regards,
>>>>
>>>> S.Ancelot
>>>>
>>>
>>
>


