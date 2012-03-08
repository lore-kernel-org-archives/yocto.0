Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A7CDE00596
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 14:38:42 -0800 (PST)
Received: by vbjk17 with SMTP id k17so1236808vbj.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 14:38:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=i2Y7GD9wcXOgaugQPXyfnFEl/zzGMSf2/7aH4iyHrJg=;
	b=f6Aos/OzgDm+vrad1caikUQCNY9w+olbKjYdQ1X3ph2ZTaTIwMM/mHj07e64xb7TUe
	p+5GUlTEagIw+gTPbU6pWESAC/yC5RCmuuGERXgDdlwMni2vXX/0Yo3HYboaMHyTPpVQ
	aq7GfoE4RBMtniXWBcn1xA5UvTzikCuk61R4YD5KS3Ks4RuGXFrXuERDP+YUSO7zz55c
	EpaknZ1/yoA0bWmmN26oGF+A34q8wVBFxWhoAaKWzsQ/T+5C0TpcUJNJAoioT5MVG6lQ
	1BMzPZmCg1k6DR4OLwuMZrN7DDp4n89Wm4Unuh6VSRTNEcyoRrK7eY4fzt5C/SluatIc
	RYRw==
Received: by 10.52.94.148 with SMTP id dc20mr12940628vdb.100.1331246321507;
	Thu, 08 Mar 2012 14:38:41 -0800 (PST)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id o18sm6440293vdi.5.2012.03.08.14.38.40
	(version=SSLv3 cipher=OTHER); Thu, 08 Mar 2012 14:38:40 -0800 (PST)
Message-ID: <4F5934F0.6090600@gmail.com>
Date: Thu, 08 Mar 2012 17:38:40 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
	<CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
	<4F59280A.9010603@gmail.com>
	<CADzUK1J+EdCkjRsFRdTYZY3HiLwmWxnEd1s3tNDVFDaHKuSnmQ@mail.gmail.com>
	<4F593209.6040309@gmail.com> <4F593365.4060904@mlbassoc.com>
In-Reply-To: <4F593365.4060904@mlbassoc.com>
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
X-List-Received-Date: Thu, 08 Mar 2012 22:38:42 -0000
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
So what I can get to work is the following recipe, but what I want is 
not o have to specify the file extension:

DESCRIPTION = "my video test files"
SECTION = "examples"
LICENSE = "CLOSED"

MY_DESTINATION = "/home/root/myvideos"

SRC_URI = "file://myvideos-1.0/myvideos-1.0.tar.gz"

do_install_append() {
         install -d ${D}${MY_DESTINATION}
#        install -m 0644 ${S}/* ${D}${MY_DESTINATION}
         install -m 0644 ${WORKDIR}/*.mp4 ${D}${MY_DESTINATION}
}

PR = "r0"

FILES_${PN} += "${MY_DESTINATION}/*"


