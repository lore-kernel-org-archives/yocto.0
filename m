Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CDFE006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 12:22:53 -0700 (PDT)
Received: by vcbfo14 with SMTP id fo14so247811vcb.35
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 12:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=5k20kJ2eF+OXoIsHRf0oNdVX6SEN/cAHub1VmUoKrq4=;
	b=omO+ZxvDrpLx7snfVFBHWm0B/IvbdvefGVwM0mhdDEUGscYwPUE01dWqAgzhkvOPte
	leJzIko5eShamBKRiTpJfa741gl9PtyND3rYm6qpMKyr/ptFLCS3MXnROyrPIHL0dG/4
	ZKrWqA+RXnCsGUCbQzJtHSR0wQ+jvhfdRxf/oYN3ADbVXu5SlEAa5vpXwwN/tKsYaJFq
	42mV47qq72oI3WuqLTnlcfoTu0eaPN7MTkEZVwg1LHR97NzOWvjfGuKXVT82BDrdhjyW
	osj7muSAOac0bVrlq6a+ddpSSiNK0qdEKZ9ouX9ufCWcNDFv+w+xf5NCdSfpmP+Ut3jL
	d3PA==
Received: by 10.52.24.179 with SMTP id v19mr10146986vdf.127.1340738572656;
	Tue, 26 Jun 2012 12:22:52 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	by2sm56067544vdb.22.2012.06.26.12.22.51 (version=SSLv3 cipher=OTHER);
	Tue, 26 Jun 2012 12:22:52 -0700 (PDT)
Message-ID: <4FEA0C0D.5030809@gmail.com>
Date: Tue, 26 Jun 2012 15:22:53 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
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
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A132A5@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 26 Jun 2012 19:22:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/26/2012 02:07 PM, Rifenbark, Scott M wrote:
> When I attempted to rebuild minimal I hit the same error you did Jim regarding kern-tools-native.  This would be expected as Bruce pointed out that problem is alive in denzil.  I am going to set the poky-extras branch to 'denzil' and retry that part of the example.
>
> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
> Sent: Tuesday, June 26, 2012 10:44 AM
> To: Bruce Ashfield
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>
> I am on task 1507 of 1606 of a minimal build (from the example).  No issues so far.

I just finished testing with Denzil branch on poky and poky-extra. I 
made the Hello printk mods and used the new bbappend that Bruce setup in 
poky-extra for denzil.  I think he had already uncommented the SRC_URI 
and all I had to do was put in the statement from the Appendix B about 
KSRC. and mod the bblayer.conf to include poky-extra.

Everything compiled and worked as expected.

Jim A

> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Tuesday, June 26, 2012 10:42 AM
> To: Rifenbark, Scott M
> Cc: jfabernathy; yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>
> On 12-06-26 12:30 PM, Rifenbark, Scott M wrote:
>> I am going to run through the B.1 example verbatim from the "current" version of the manual and see what happens.
> Fixing the license check was just a matter of me locking the SRCREV
> for the tools to a value that works for denzil. I just pushed a denzil
> branch to poky-extras that built and booted the yocto kernel for
> me.
>
> Cheers,
>
> Bruce
>
>> Scott
>>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Tuesday, June 26, 2012 9:28 AM
>> To: Rifenbark, Scott M
>> Cc: jfabernathy; yocto@yoctoproject.org
>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>
>> On 12-06-26 12:26 PM, Rifenbark, Scott M wrote:
>>> This is a good point.  In looking at the example it does not say what branch you should be dealing with for poky-extras.
>> And I'm configuring a test right now and will create a denzil
>> branch, once I see it works.
>>
>> Cheers,
>>
>> Bruce
>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Tuesday, June 26, 2012 9:24 AM
>>> To: jfabernathy
>>> Cc: Rifenbark, Scott M; yocto@yoctoproject.org
>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>
>>> On 12-06-26 12:11 PM, jfabernathy wrote:
>>>> On 06/26/2012 12:04 PM, Bruce Ashfield wrote:
>>>>> On 12-06-26 12:00 PM, jfabernathy wrote:
>>>>>> On 06/26/2012 10:56 AM, Rifenbark, Scott M wrote:
>>>>>>> Bruce,
>>>>>>>
>>>>>>> Should the example note this? Would it be best to specifically say to
>>>>>>> uncomment that SRC_URI line?
>>>>>>>
>>>>>>> Scott
>>>>>> I think some text needs to be added. I uncommented the SRC_URI line and
>>>>>> I still fail building the image. The failure is related to kernel tools:
>>>>>>
>>>>>> ERROR: kern-tools-native: md5 data is not matching for
>>>>>> file://git/tools/kgit;beginline=5;endline=9;md5=e2bf4415f3d843f43d2e22b0d91a6fee
>>>>>>
>>>>>>
>>>>>> ERROR: kern-tools-native: The new md5 checksum is
>>>>>> d8d1d729a70cd5f52972f8884b80743d
>>>>>> ERROR: kern-tools-native: Check if the license information has
>>>>>> changed in
>>>>>> ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
>>>>>> ERROR: Function failed: do_qa_configure
>>>>> This one is actually fixed on master, but poky-extras .. is just that
>>>>> 'extra', so this may still be alive in that repo.
>>>>>
>>>>> This wouldn't need to be documented, since it's a bug/issue, and not
>>>>> something that would persist.
>>>>>
>>>>> What release are you pairing poky extras with ? I can always create a
>>>>> branch to make sure they are consistent.
>>>>>
>>>> I was using Denzil because the snapshot noted in the example does not
>>>> exist. So there is another doc issue.
>>> Aha. In this case, we could note that the poky-extras repo branch should
>>> match the main repository branch .. and I could ensure that meta-kernel-dev
>>> works in that configuration.
>>>
>>> That's likely the right solution, rather than forcing you to switch to
>>> master (unless you want to :)
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>> I can always test on Master, but the docs need to be update to reflect
>>>> something that will work to completion without errors, IMHO.
>>>>
>>>> Jim A
>>>>
>>>>> Cheers,
>>>>>
>>>>> Bruce
>>>>>
>>>>>>
>>>>>> Jim A
>>>>>>
>>>>>>> -----Original Message-----
>>>>>>> From: yocto-bounces@yoctoproject.org
>>>>>>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Bruce Ashfield
>>>>>>> Sent: Tuesday, June 26, 2012 7:54 AM
>>>>>>> To: jfabernathy
>>>>>>> Cc: yocto@yoctoproject.org
>>>>>>> Subject: Re: [yocto] Yocto Development Manual Appendix B question
>>>>>>>
>>>>>>> On 12-06-26 10:52 AM, jfabernathy wrote:
>>>>>>>> In the example in The Developement Manual v1.2 in Appendix B Section
>>>>>>>> B.1.7, it states that you need to put in the statement:
>>>>>>>>
>>>>>>>> KSRC_linux_yocto_3_2 ?="/home/scottrif/linux-yocto-3.2.git"
>>>>>>>>
>>>>>>>> into the appropriate .bbappend file way now in the poky-extra
>>>>>>>> directory
>>>>>>>> structure. If I look at that file, |linux-yocto_3.2.bbappend| , I
>>>>>>>> seen a
>>>>>>>> SRC_URI line, immediately after our inserted KSRC statement, that is
>>>>>>>> commented out:
>>>>>>>>
>>>>>>>> # SRC_URI =
>>>>>>>> "git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> Should that line be uncommented or is the SRC_URI already defaulted
>>>>>>>> somewhere to use the newly defined KSRC_linux_yocto_3_2 variable?
>>>>>>> It should be uncommented. I commented them by default, since the extras
>>>>>>> repository is a bit of a collection ground. If they are uncommented,
>>>>>>> and
>>>>>>> combined with the AUTOREV also set in the file, you are forced to fix
>>>>>>> all files, versus just the one you want.
>>>>>>>
>>>>>>> Cheers,
>>>>>>>
>>>>>>> Bruce
>>>>>>>
>>>>>>>> Jim A
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>
>>>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



