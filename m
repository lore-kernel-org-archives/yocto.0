Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0BB0E01472;
	Thu, 14 Mar 2013 23:46:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2F6kWtW007643
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Mar 2013 23:46:32 -0700 (PDT)
Received: from [128.224.22.84] (128.224.22.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 14 Mar 2013 23:46:31 -0700
Message-ID: <5142C3C5.7030302@windriver.com>
Date: Thu, 14 Mar 2013 23:46:29 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: "Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
References: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
	<5142AE66.8010105@windriver.com>
	<CACzyEJ9VV89cDL3YB2ru-FAiAwjtOjs_An9gRjoUW5oHe93uaA@mail.gmail.com>
	<CADkTA4PJkFwNshUgcYTKKM+GDHTevMGPTj7t-M1eNeAL+XE_Zg@mail.gmail.com>
	<CACzyEJ_mjkVe-zo=uKug=m+NHjhr3YJeOY0F46L8pYzmhfXgzg@mail.gmail.com>
	<5142C353.8020209@windriver.com>
In-Reply-To: <5142C353.8020209@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8 kernel
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
X-List-Received-Date: Fri, 15 Mar 2013 06:46:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-14 11:44 PM, Bruce Ashfield wrote:
> On 13-03-14 11:36 PM, Insop Song wrote:
>> On Thu, Mar 14, 2013 at 11:13 PM, Bruce Ashfield
>> <bruce.ashfield@gmail.com> wrote:
>>
>>
>>>
>>> Hmm. One of the arbiters is me .. if it doesn't work this time, let
>>> me know
>>> and I'll check the list membership.
>>
>> I've just signed up and got a confirmation email.
>>
>>
>>>>
>>>> I was do some testing on "make localmodconfig", which will gets me the
>>>> using module build .config.
>>>> So let me me ask you this before I send out an updated patch.
>>>>
>>>> I ran "lsmod > /tmp/lsmod" on my qemux86
>>>> On dev host, run "make LSMOD=/tmp/lsmod localmodconfig" to get this
>>>> localmodconfig_qemux86.cfg file, which has less module configurations.
>>>>
>>>> Then I use this in bbappend file like below:
>>>>
>>>> ---
>>>> SRC_URI =
>>>> "git://git.yoctoproject.org/linux-yocto-3.8.git;protocol=git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta
>>>>
>>>> \
>>>>          file://localmodconfig_qemux86.cfg \
>>>>          "
>>>> ----
>>>>
>>>> what do you think?
>>>
>>> We want to track the modules and policies of the main qemu BSP,
>>> not override them all here. Extra layers should be only changing board
>>> functionality that is specific to their functionality, not the base
>>> board
>>> configuration.
>>>
>>> If you think there are modules that are enabled that shouldn't be, we
>>> can address that by looking at the base policy and deciding if that
>>> base policy is wrong.
>>>
>>> Cheers,
>>>
>>
>> I see, let me follow up the current patch update and do some more look
>> on qemu bsp and deal with a separate patch.
>>
>> Here are the update patches 2/2.
>>
>> And let me know if you want to see in different ways of patch
>> delivery? since, I haven't set up my gmail smtp set up yet (due to
>> application specific athentication), so I manually copy and paste and
>> attach the files.
>
> Are you trying to send via git send-email ? The following is the
> way that I'd relay through gmail:
>
>    > git send-email --smtp-server smtp.gmail.com --smtp-user
> bruce.ashfield@gmail.com --smtp-pass <paswd> --smtp-ssl ~/rr/
>
> And to generate the patches and introductory email, look at
> the oe-core scripts/create-pull-request.
>
> That's the best and easiest way to send patches.
>
>> ------
>>
>>
>> Subject: [meta-realtime][PATCH 2/2] remove edf.cfg and follow up review
>>   feedback
>>
>> ---
>>   recipes-kernel/linux/linux-yocto/edf.cfg      |    4 ----
>>   recipes-kernel/linux/linux-yocto_3.8.bbappend |    5 -----
>>   2 files changed, 9 deletions(-)
>>   delete mode 100644 recipes-kernel/linux/linux-yocto/edf.cfg
>
> This looks good. I'll stage it locally and do a quick test build.

I hit send too soon, I meant to point out that in a situation such
as this, you can ammend your original commit with your second set
of change and re-submit just the single patch. I can squash the
commits here, but it's easier to do on your end.

Just summarize the v2 in your new patch email when you ammend/squash
changes, so we won't forget what was changed :)

Cheers,

Bruce

>
> Cheers,
>
> Bruce
>
>>
>> diff --git a/recipes-kernel/linux/linux-yocto/edf.cfg
>> b/recipes-kernel/linux/linux-yocto/edf.cfg
>> deleted file mode 100644
>> index ccf004f..0000000
>> --- a/recipes-kernel/linux/linux-yocto/edf.cfg
>> +++ /dev/null
>> @@ -1,4 +0,0 @@
>> -CONFIG_CGROUPS=y
>> -CONFIG_CGROUP_SCHED=y
>> -CONFIG_DEADLINE_GROUP_SCHED=y
>> -
>> diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> b/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> index c6a969f..175ab91 100644
>> --- a/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> +++ b/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> @@ -1,13 +1,8 @@
>>   FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> -COMPATIBLE_MACHINE_qemux86 = "qemux86"
>> -COMPATIBLE_MACHINE_fri2 = "fri2"
>>
>>   KBRANCH_qemux86 = "standard/edf"
>>   KBRANCH_fri2 = "standard/edf"
>>
>> -KMACHINE_qemux86 = "qemux86"
>> -KMACHINE_fri2 = "fri2"
>> -
>>   SRCREV_machine_qemux86 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
>>   SRCREV_machine_fri2 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> _______________________________________________
> linux-yocto mailing list
> linux-yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/linux-yocto


