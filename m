Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EB45E00596
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 14:35:38 -0800 (PST)
Received: by vbjk17 with SMTP id k17so1233645vbj.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 14:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=rce4jUIqp36IcBbmZfo0pmi+yPWPKvq7EfSv/9bbYLE=;
	b=ZQGABJKptCjmmBG0DpmpAhtXK5mdFGF0PbwM4+nnJZn1Cb3i/a4YzyFc7dlpV7hq5T
	wosTqUz9+gE3cATo9pB9BKcPpACH/GqBoUzAdkFMKdhjey3Kkad0+ddNCbEFYz9pU/CX
	5oDxmUBZ1EPOXa86zO5M9Ch6ceezYRz+U84Twg/4ZuET01ed7HE5i8eUS2ABYi7zKG/f
	l6PgMkXraxviDgveBtuj1EOCnnQKZKhbqcL96t8+lUYSOx6F2NIuVreGxaG/FYb37oS3
	x27BSUDTYU35m6sK6nfeDWTlgDHbCCl8HH0DUr+zfacCJj4yDgiQ9R5GLzIB5SJveLC/
	rJHg==
Received: by 10.52.96.70 with SMTP id dq6mr13074042vdb.124.1331246137820;
	Thu, 08 Mar 2012 14:35:37 -0800 (PST)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id fg5sm6403026vdc.13.2012.03.08.14.35.37
	(version=SSLv3 cipher=OTHER); Thu, 08 Mar 2012 14:35:37 -0800 (PST)
Message-ID: <4F593439.7050805@gmail.com>
Date: Thu, 08 Mar 2012 17:35:37 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
	<CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
	<4F59280A.9010603@gmail.com>
	<CADzUK1J+EdCkjRsFRdTYZY3HiLwmWxnEd1s3tNDVFDaHKuSnmQ@mail.gmail.com>
	<4F593209.6040309@gmail.com> <4F593365.4060904@mlbassoc.com>
In-Reply-To: <4F593365.4060904@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Thu, 08 Mar 2012 22:35:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/08/2012 05:32 PM, Gary Thomas wrote:
> On 2012-03-08 15:26, jfabernathy wrote:
>> On 03/08/2012 05:07 PM, Autif Khan wrote:
>>> On Thu, Mar 8, 2012 at 4:43 PM, jfabernathy<jfabernathy@gmail.com> 
>>> wrote:
>>>> On 03/08/2012 04:33 PM, Rudolf Streif wrote:
>>>>> Jeff,
>>>>>
>>>>> Use hyphen instead of underscore for the subdirectory SRC_URI:
>>>>>
>>>>> SRC_URI = "file://myvideos-1.0/myvideos-1.0.tar.gz"
>>>>>
>>>>> and of course for the subdirectory in the subdirectory where the 
>>>>> recipe is
>>>>> located. The file fetcher copies the entire path
>>>>> myvideos-1.0/myvideos-1.0.tar.gz to ${WORKDIR}.
>>>>>
>>>>> Rudi
>>>> that didn't solve the problem. I still get file not found errors. The
>>>> videos are unpack to WORKDIR, but the do_install is looking for 
>>>> them in S.
>>>>
>>>>
>>>> install -d
>>>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos 
>>>>
>>>> install -m 0644
>>>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/myvideos-1.0/* 
>>>>
>>>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos 
>>>>
>>>>
>>>> I think I need to control where the do_unpack puts the files.
>>>>
>>> Just a dumb thought, but I have been bitten many times by it.
>>>
>>> please try bitbake myvideos -c cleansstate
>>>
>>> then bitbake myvideos to build the recipe.
>>>
>>> Alternatively, you can of course rev up the PR everytime you change
>>> the recipe. But that is cumbersome.
>>>
>>> And yes, I forgot to mention in my previous mail that the
>>> mypics-1.0.tar.gz is located in
>>> meta-autif/recipes-autif/mypics/mypics-1.0/mypics-1.0.tar.gz
>>>
>>> As Rudolf suggested - bitbake is a bit finickey about '-' and '_'
>> I was doing a "bitbake -c cleanall myvideos" before each run of 
>> bitbake myvideos, but I just now tried bitbake myvideos -c 
>> cleansstate with no change in behavior.
>>
>> It seems clear to me that do_unpack unpacks the tar.gz file to the
>>
>> ${WORKDIR}
>>
>> but install is looking for them in
>>
>> ${WORKDIR}/${PN}-${PV}
>>
>>
>> Since S is not defined, I think the default is ${WORKDIR}/${PN}-${PV}
>>
>> Not sure how to fix that.
>
> Set S to be what you need in the recipe, e.g.
>   S = "${WORKDIR}/jfabernathy-${PV}"
> or whatever it is you need
>
Thanks,  I know I can change S, but I need to change where do_unpack 
puts the files.  with them in WORKDIR, I can't just say WORKDIR/* 
because there are a lot of other files and directories at that level.

I need do_unpack to put the files from tar.gz into S for example.

Jim A

