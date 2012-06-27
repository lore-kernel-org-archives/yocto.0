Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f53.google.com (mail-yw0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 316C7E00739
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 03:35:46 -0700 (PDT)
Received: by yhp26 with SMTP id 26so1033244yhp.12
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 03:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=JDxvMfv86UULs+0HFxTrmhxBZDSjBzcVXy36AJK5nZ4=;
	b=F2YJBRntI/IyC3HK1WYyp6NM4syPdGoSoj5cVfC8f+NkSOysOITszSw+nTLsE8DOjj
	8uxDL/q2aGaabpP3T6k/Rzo5xnImj3puNKj86FwJsz/acvgmW4yxaAqY75Nw0FGQ0I7F
	4csIPVqOX7RFd3gRSdLIUKr24/133xYppco8uEWyCjCYWajugyoXoOiJ4eq/hZefm9Rl
	WVWgmuzi+kv2npjra0C4qKDdhuGrLfMMvdnZg/ORZvYDW0f3J9cB4/gWH7qCcwdOaj4p
	KnpflqmLzQn1XiTd97gIRNJ2e2OU/gqSQXXDwfzzwqniUSo3owhY23Ni5o6wAtEg4Bkb
	s0vg==
Received: by 10.236.109.196 with SMTP id s44mr21809511yhg.35.1340793345274;
	Wed, 27 Jun 2012 03:35:45 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	c28sm109835697yhk.2.2012.06.27.03.35.44 (version=SSLv3 cipher=OTHER);
	Wed, 27 Jun 2012 03:35:44 -0700 (PDT)
Message-ID: <4FEAE1FF.6070006@gmail.com>
Date: Wed, 27 Jun 2012 06:35:43 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <4FE9CCAD.7080003@gmail.com> <4FE9CD04.60604@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A130B2@ORSMSX101.amr.corp.intel.com>
	<4FE9DC9B.2090104@gmail.com> <4FE9DD7F.2090402@windriver.com>
	<4FE9DF3B.8010104@gmail.com> <4FE9E22E.8080305@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A131AA@ORSMSX101.amr.corp.intel.com>
	<4FE9E30B.9080903@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A131CC@ORSMSX101.amr.corp.intel.com>
	<4FE9F47F.80306@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A13288@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A132A5@ORSMSX101.amr.corp.intel.com>
	<4FEA1265.1050408@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A13317@ORSMSX101.amr.corp.intel.com>
	<4FEA1E25.9080103@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A13340@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A13340@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Development Manual Appendix B question
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
X-List-Received-Date: Wed, 27 Jun 2012 10:35:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/26/2012 04:43 PM, Rifenbark, Scott M wrote:
> Jim,
>
> Did you cleansstate before building and using menuconfig?  There is a bug (2256) that prevents configurations made using menuconfig from sticking.
As I said from my iPhone last night, yes I did do cleansstate as stated 
in the manual.  I will reset and run a test of Apendix B.2 taking the 
path of not having done B.1 first.  Maybe the stuff related to setting 
up you local kernel and modifying the source had some impact.  More later.

JIm A

> Scott
>
> -----Original Message-----
> From: jfabernathy [mailto:jfabernathy@gmail.com]
> Sent: Tuesday, June 26, 2012 1:40 PM
> To: Rifenbark, Scott M
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>
> On 06/26/2012 04:21 PM, Rifenbark, Scott M wrote:
>> Jim,
>>
>> Yes - I am still running the very last part of my test.  If that is the change then I will make it to the 1.2 version of the manual and publish it to the website.
>>
>> Scott
> While I had this working I thought I'd complete the Appendix B example
> for the CONFIG_SMP change.  I'm finding problems with the compile step
> after menuconfig is run to turn off SMP.  I get a mismatch that I don't
> understand:
>
> Value requested for CONFIG_SMP not in final ".config"
> Requested value: "CONFIG_SMP=y"
> Actual value set: "# CONFIG_SMP is not set"
>
> There must be another setting of CONFIG_SMP that is conflicting with the
> .config file
>
> Jim A
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of jfabernathy
>> Sent: Tuesday, June 26, 2012 12:50 PM
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>
>> On 06/26/2012 02:07 PM, Rifenbark, Scott M wrote:
>>> When I attempted to rebuild minimal I hit the same error you did Jim regarding kern-tools-native.  This would be expected as Bruce pointed out that problem is alive in denzil.  I am going to set the poky-extras branch to 'denzil' and retry that part of the example.
>>>
>>> Scott
>>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
>>> Sent: Tuesday, June 26, 2012 10:44 AM
>>> To: Bruce Ashfield
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>
>>> I am on task 1507 of 1606 of a minimal build (from the example).  No issues so far.
>> So now that Denzil has a branch in poky-extra, the only doc change is to
>> add the checkout -b denzil statement for the poky-extra directory.
>> Everything else is correct.
>>
>> Jim A
>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Tuesday, June 26, 2012 10:42 AM
>>> To: Rifenbark, Scott M
>>> Cc: jfabernathy; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>
>>> On 12-06-26 12:30 PM, Rifenbark, Scott M wrote:
>>>> I am going to run through the B.1 example verbatim from the "current" version of the manual and see what happens.
>>> Fixing the license check was just a matter of me locking the SRCREV
>>> for the tools to a value that works for denzil. I just pushed a denzil
>>> branch to poky-extras that built and booted the yocto kernel for
>>> me.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>> Scott
>>>>
>>>> -----Original Message-----
>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>> Sent: Tuesday, June 26, 2012 9:28 AM
>>>> To: Rifenbark, Scott M
>>>> Cc: jfabernathy; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>
>>>> On 12-06-26 12:26 PM, Rifenbark, Scott M wrote:
>>>>> This is a good point.  In looking at the example it does not say what branch you should be dealing with for poky-extras.
>>>> And I'm configuring a test right now and will create a denzil
>>>> branch, once I see it works.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>> -----Original Message-----
>>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>>> Sent: Tuesday, June 26, 2012 9:24 AM
>>>>> To: jfabernathy
>>>>> Cc: Rifenbark, Scott M; yocto@yoctoproject.org
>>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>>
>>>>> On 12-06-26 12:11 PM, jfabernathy wrote:
>>>>>> On 06/26/2012 12:04 PM, Bruce Ashfield wrote:
>>>>>>> On 12-06-26 12:00 PM, jfabernathy wrote:
>>>>>>>> On 06/26/2012 10:56 AM, Rifenbark, Scott M wrote:
>>>>>>>>> Bruce,
>>>>>>>>>
>>>>>>>>> Should the example note this? Would it be best to specifically say to
>>>>>>>>> uncomment that SRC_URI line?
>>>>>>>>>
>>>>>>>>> Scott
>>>>>>>> I think some text needs to be added. I uncommented the SRC_URI line and
>>>>>>>> I still fail building the image. The failure is related to kernel tools:
>>>>>>>>
>>>>>>>> ERROR: kern-tools-native: md5 data is not matching for
>>>>>>>> file://git/tools/kgit;beginline=5;endline=9;md5=e2bf4415f3d843f43d2e22b0d91a6fee
>>>>>>>>
>>>>>>>>
>>>>>>>> ERROR: kern-tools-native: The new md5 checksum is
>>>>>>>> d8d1d729a70cd5f52972f8884b80743d
>>>>>>>> ERROR: kern-tools-native: Check if the license information has
>>>>>>>> changed in
>>>>>>>> ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
>>>>>>>> ERROR: Function failed: do_qa_configure
>>>>>>> This one is actually fixed on master, but poky-extras .. is just that
>>>>>>> 'extra', so this may still be alive in that repo.
>>>>>>>
>>>>>>> This wouldn't need to be documented, since it's a bug/issue, and not
>>>>>>> something that would persist.
>>>>>>>
>>>>>>> What release are you pairing poky extras with ? I can always create a
>>>>>>> branch to make sure they are consistent.
>>>>>>>
>>>>>> I was using Denzil because the snapshot noted in the example does not
>>>>>> exist. So there is another doc issue.
>>>>> Aha. In this case, we could note that the poky-extras repo branch should
>>>>> match the main repository branch .. and I could ensure that meta-kernel-dev
>>>>> works in that configuration.
>>>>>
>>>>> That's likely the right solution, rather than forcing you to switch to
>>>>> master (unless you want to :)
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Bruce
>>>>>
>>>>>> I can always test on Master, but the docs need to be update to reflect
>>>>>> something that will work to completion without errors, IMHO.
>>>>>>
>>>>>> Jim A
>>>>>>
>>>>>>> Cheers,
>>>>>>>
>>>>>>> Bruce
>>>>>>>
>>>>>>>> Jim A
>>>>>>>>
>>>>>>>>> -----Original Message-----
>>>>>>>>> From: yocto-bounces@yoctoproject.org
>>>>>>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Bruce Ashfield
>>>>>>>>> Sent: Tuesday, June 26, 2012 7:54 AM
>>>>>>>>> To: jfabernathy
>>>>>>>>> Cc: yocto@yoctoproject.org
>>>>>>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>>>>>>
>>>>>>>>> On 12-06-26 10:52 AM, jfabernathy wrote:
>>>>>>>>>> In the example in The Developement Manual v1.2 in Appendix B Section
>>>>>>>>>> B.1.7, it states that you need to put in the statement:
>>>>>>>>>>
>>>>>>>>>> KSRC_linux_yocto_3_2 ?="/home/scottrif/linux-yocto-3.2.git"
>>>>>>>>>>
>>>>>>>>>> into the appropriate .bbappend file way now in the poky-extra
>>>>>>>>>> directory
>>>>>>>>>> structure. If I look at that file, |linux-yocto_3.2.bbappend| , I
>>>>>>>>>> seen a
>>>>>>>>>> SRC_URI line, immediately after our inserted KSRC statement, that is
>>>>>>>>>> commented out:
>>>>>>>>>>
>>>>>>>>>> # SRC_URI =
>>>>>>>>>> "git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Should that line be uncommented or is the SRC_URI already defaulted
>>>>>>>>>> somewhere to use the newly defined KSRC_linux_yocto_3_2 variable?
>>>>>>>>> It should be uncommented. I commented them by default, since the extras
>>>>>>>>> repository is a bit of a collection ground. If they are uncommented,
>>>>>>>>> and
>>>>>>>>> combined with the AUTOREV also set in the file, you are forced to fix
>>>>>>>>> all files, versus just the one you want.
>>>>>>>>>
>>>>>>>>> Cheers,
>>>>>>>>>
>>>>>>>>> Bruce
>>>>>>>>>
>>>>>>>>>> Jim A
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> _______________________________________________
>>>>>>>>>> yocto mailing list
>>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>> _______________________________________________
>>>>>>>>> yocto mailing list
>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>



