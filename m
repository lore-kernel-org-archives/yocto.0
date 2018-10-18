Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D2DAE00A54; Thu, 18 Oct 2018 09:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4464E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 09:15:32 -0700 (PDT)
Received: from [10.80.45.152] (unknown [71.69.156.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 45B57208E4;
	Thu, 18 Oct 2018 16:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1539879332;
	bh=Lf8vlPRjoEdpvYl71NXzdczQdvHF/15Azl1QlBNNtUo=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=tFdkoLtWKOlCAhWFCZCiatcXhuP3jQT+2YId3TO0WkLksnVuI+vAoGNRlz/hizeFi
	TkB5kb+hrS+3bnicVn8aHC00hRk91Eys+ZEkGLHcHE5V5duWC5T9SdI/1PJZggTpG6
	YOBHIhKU+pI4jverIo95eD6BBsnLNKLWD64y7GBQ=
To: sscott@san.rr.com, 'Stefano Cappa' <stefano.cappa.ks89@gmail.com>
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<895d95f5-3624-4ec5-80ca-e8fac42ac2d6@kernel.org>
	<006901d466f9$b86b0be0$294123a0$@san.rr.com>
From: Sinan Kaya <okaya@kernel.org>
Message-ID: <0be242c4-86ab-e9d9-fb22-9150e41621fa@kernel.org>
Date: Thu, 18 Oct 2018 12:15:31 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <006901d466f9$b86b0be0$294123a0$@san.rr.com>
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Thu, 18 Oct 2018 16:15:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Thanks Steve,

We'll give it a try.

On 10/18/2018 11:46 AM, Steve Scott wrote:
> You may also need
>      PREFERRED_PROVIDER_virtual/refpolicy = "refpolicy-standard"
> in local.conf.
> 
> -steve
> 
>> -----Original Message-----
>> From: Sinan Kaya [mailto:okaya@kernel.org]
>> Sent: Thursday, October 18, 2018 8:06 AM
>> To: sscott@san.rr.com; 'Stefano Cappa' <stefano.cappa.ks89@gmail.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] [selinux] sumo compilation
>>
>> Sorry for confusing names, not enough coffee yet...
>>
>> I was trying to say that Steve's suggestion to use
>>
>> PREFERRED_VERSION_refpolicy-standard = "2.20170204"
>>
>> didn't work on sumo branch.
>>
>> On 10/18/2018 10:49 AM, Sinan Kaya wrote:
>>> CC'ing the selinux maintainers:
>>>
>>> I was told that using the master branch and reverting the e2fs change
>>> (http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?id=78e
>>> ca8242ea5397c4dc0654d62244453b4260151)
>>> works on sumo.
>>>
>>> Stefano's suggestion unfortunately didn't work.
>>>
>>> Maybe, it is time to create the sumo branch?
>>>
>>> On 10/18/2018 9:48 AM, Steve Scott wrote:
>>>> I did not try it on sumo.
>>>>
>>>>
>>>> From: Stefano Cappa [mailto:stefano.cappa.ks89@gmail.com]
>>>> Sent: Wednesday, October 17, 2018 11:15 PM
>>>> To: sscott@san.rr.com
>>>> Cc: Sinan Kaya <okaya@kernel.org>; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] [selinux] sumo compilation
>>>>
>>>>
>>>> Exactly the same issue since September.
>>>>
>>>>
>>>> Here is my discussion
>>>> https://lists.yoctoproject.org/pipermail/yocto/2018-
>> September/042711.html.
>>>> With that trick did you find a solution also on sumo?
>>>>
>>>>
>>>> Il gio 18 ott 2018, 01:42 <sscott@san.rr.com
>>>> <mailto:sscott@san.rr.com> > ha
>>>> scritto:
>>>>
>>>>
>>>> It was broken in rocko too. I added this to local.conf to workaround the
>> problem:
>>>>
>>>> PREFERRED_VERSION_refpolicy-standard = "2.20170204"
>>>>
>>>> -steve
>>>>
>>>> ---- Sinan Kaya <okaya@kernel.org <mailto:okaya@kernel.org> > wrote:
>>>>> Hi,
>>>>>
>>>>> We realized today that SELinux does not compile on sumo branch.
>>>>>
>>>>> Is it possible for someone to branch the last working version to a sumo
>> branch?
>>>>>
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs/
>>>>>
>>>>> NOTE: Running task 352 of 2707
>>>>> (virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/e2fspr
>>>>> ogs_1.43.8.bb <http://e2fsprogs_1.43.8.bb> :do_patch)
>>>>> NOTE: recipe e2fsprogs-native-1.43.8-r0: task do_patch: Started
>>>>> NOTE: Running task 1413 of 2707
>>>>> (/sources/poky/meta/recipes-
>> devtools/e2fsprogs/e2fsprogs_1.43.8.bb:d
>>>>> o_patch)
>>>>> NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: Started
>>>>> ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt
>>>>> --quiltrc Applying patch misc_create_inode.c-label_rootfs.patch
>>>>> patching file misc/create_inode.c
>>>>> Hunk #1 FAILED at 979.
>>>>> Hunk #2 FAILED at 987.
>>>>>
>>>>> Sinan
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
> 
> 


