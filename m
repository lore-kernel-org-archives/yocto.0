Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 755A7E01422
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 04:56:28 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B8E95F8120F; Fri, 18 May 2012 05:56:27 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 85678F81206;
	Fri, 18 May 2012 05:56:16 -0600 (MDT)
Message-ID: <4FB638E0.1010109@mlbassoc.com>
Date: Fri, 18 May 2012 05:56:16 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFqH_53V8xEibzh7H5m-LEAm1N1-VmDubM4qrb2GBmF2Tc6G9g@mail.gmail.com>
	<4FB60FDF.3040504@communistcode.co.uk>
	<CAFqH_52_fvqXtF5x_-6o84MZBA7LsGm4X87JVA4VftmWUihunw@mail.gmail.com>
In-Reply-To: <CAFqH_52_fvqXtF5x_-6o84MZBA7LsGm4X87JVA4VftmWUihunw@mail.gmail.com>
Subject: Re: meta-ti layer and tag 2012.05-yocto1.2
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
X-List-Received-Date: Fri, 18 May 2012 11:56:28 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2012-05-18 04:36, Enric Balletbò i Serra wrote:
> Hi Jack
>
> 2012/5/18 Jack Mitchell<ml@communistcode.co.uk>:
>> On 18/05/12 08:48, Enric Balletbò i Serra wrote:
>>>
>>> Hi all,
>>>
>>> Just to be sure, should the tag 2012.05-yocto1.2 from meta-ti layer be
>>> compatible with yocto-1.2 (denzil) branch ? Or also depends on other
>>> layers. Adding only the meta-ti layer to the yocto 1.2 seems is not
>>> working, there is an unmet dependency on systemd.bbclass.
>>>
>>>    yocto-1.2$ bitbake core-image-minimal
>>>    ERROR: ParseError at
>>>
>>> /home/eballetbo/Workspace/poky/yocto-1.2/meta-ti/recipes-misc/payload/bonescript.bb:5:
>>> Could not inherit file classes/systemd.bbclass
>>>    ERROR: Command execution failed: Exited with 1
>>>
>>> Cheers,
>>>     Enric
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> Hi Enric, to quote Denys from a patch to meta-ti earlier:
>>
>> README: by popular demand add comment on how to avoid systemd breakage
>>
>> Signed-off-by: Denys Dmytriyenko<denys@ti.com>
>>
>> ---
>>
>>   README |    6 ++++++
>>   1 files changed, 6 insertions(+), 0 deletions(-)
>>
>> diff --git a/README b/README
>> index b376695..0df391f 100644
>> --- a/README
>> +++ b/README
>> @@ -11,6 +11,12 @@ layers: meta
>>   branch: master
>>
>>
>> +When not depending on meta-openembedded and not using systemd, you may need
>> to
>> +mask few miscellaneous recipes requiring systemd, by adding this to
>> local.conf:
>> +
>> +BBMASK = "meta-ti/recipes-misc"
>> +
>> +
>>   The base BSP part of meta-ti should work with different OpenEmbedded/Yocto
>>   distributions and layer stacks, such as:
>>   distro-less (only with OE-Core), with Yocto/Poky, with Angstrom or Arago.
>>
>
> Thanks, that works.
>
> I'm a bit confusing because the README of meta-ti layer says that this
> layer can only work with OE-core/Yocto but not sure that anyone has
> tested. For example bitbaking ti-dsplink recipe results on
>
>      | make[1]: /arm-poky-linux-gnueabi-gcc: Command not found
>
> The problem seems that a lot of meta-ti recipes uses the
> TOOLCHAIN_PATH variable that is not defined in OE-core/Yocto or I'm
> wrong?. This don't look difficult to solve but are more surprises
> waiting for me after solve this ? Someone has tried this layer with
> only OE-core/Yocto ?

Yes, I have used it this way, however I'm using the master/tip, not the
mentioned tag.

I just built ti-dsplink using
   meta              = "master:38da655788361e949d605bebfab45cf5830df613"
   meta-ti           = "master:fa87ca0b1a1890d262a591aee50f082194f45317"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

