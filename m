Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A7A2E0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 14:32:06 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 061D4F81222; Thu,  8 Mar 2012 15:32:05 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5336CF811E9;
	Thu,  8 Mar 2012 15:32:05 -0700 (MST)
Message-ID: <4F593365.4060904@mlbassoc.com>
Date: Thu, 08 Mar 2012 15:32:05 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
	<CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
	<4F59280A.9010603@gmail.com>
	<CADzUK1J+EdCkjRsFRdTYZY3HiLwmWxnEd1s3tNDVFDaHKuSnmQ@mail.gmail.com>
	<4F593209.6040309@gmail.com>
In-Reply-To: <4F593209.6040309@gmail.com>
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
X-List-Received-Date: Thu, 08 Mar 2012 22:32:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-08 15:26, jfabernathy wrote:
> On 03/08/2012 05:07 PM, Autif Khan wrote:
>> On Thu, Mar 8, 2012 at 4:43 PM, jfabernathy<jfabernathy@gmail.com> wrote:
>>> On 03/08/2012 04:33 PM, Rudolf Streif wrote:
>>>> Jeff,
>>>>
>>>> Use hyphen instead of underscore for the subdirectory SRC_URI:
>>>>
>>>> SRC_URI = "file://myvideos-1.0/myvideos-1.0.tar.gz"
>>>>
>>>> and of course for the subdirectory in the subdirectory where the recipe is
>>>> located. The file fetcher copies the entire path
>>>> myvideos-1.0/myvideos-1.0.tar.gz to ${WORKDIR}.
>>>>
>>>> Rudi
>>> that didn't solve the problem. I still get file not found errors. The
>>> videos are unpack to WORKDIR, but the do_install is looking for them in S.
>>>
>>>
>>> install -d
>>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos
>>> install -m 0644
>>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/myvideos-1.0/*
>>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos
>>>
>>> I think I need to control where the do_unpack puts the files.
>>>
>> Just a dumb thought, but I have been bitten many times by it.
>>
>> please try bitbake myvideos -c cleansstate
>>
>> then bitbake myvideos to build the recipe.
>>
>> Alternatively, you can of course rev up the PR everytime you change
>> the recipe. But that is cumbersome.
>>
>> And yes, I forgot to mention in my previous mail that the
>> mypics-1.0.tar.gz is located in
>> meta-autif/recipes-autif/mypics/mypics-1.0/mypics-1.0.tar.gz
>>
>> As Rudolf suggested - bitbake is a bit finickey about '-' and '_'
> I was doing a "bitbake -c cleanall myvideos" before each run of bitbake myvideos, but I just now tried bitbake myvideos -c cleansstate with no change in behavior.
>
> It seems clear to me that do_unpack unpacks the tar.gz file to the
>
> ${WORKDIR}
>
> but install is looking for them in
>
> ${WORKDIR}/${PN}-${PV}
>
>
> Since S is not defined, I think the default is ${WORKDIR}/${PN}-${PV}
>
> Not sure how to fix that.

Set S to be what you need in the recipe, e.g.
   S = "${WORKDIR}/jfabernathy-${PV}"
or whatever it is you need

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

