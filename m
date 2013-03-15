Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f174.google.com (mail-we0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E14E01460;
	Thu, 14 Mar 2013 23:00:01 -0700 (PDT)
Received: by mail-we0-f174.google.com with SMTP id r6so2810948wey.33
	for <multiple recipients>; Thu, 14 Mar 2013 23:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=t8a2Zl9IcGHr++H+Hp7Whw0FpoQ/kzOebpJfeCK37EI=;
	b=biHqYY7tEtwRW+PkJH6/R020brdqf41yqY5WpUxPoHr1D713DONm2MXTI5NFoPpEDy
	9xb4d2P766/VzwIadxuiGKT4WEYVf60+lyAT+Wiw3BjCNErn/Rb4/pqDvP5fn+qtm86/
	JguJ43og67NPGc2bt1va0J0VVp4VdJg3TL+2u/uR5/gi/kkPJVVa+wEwl69id2q5ZE8Q
	PIolPR15Pwfw2MGHDffxelnayz6HGoygKx2gojNGiDfuomkrK6coX2+QPNYmFjOB3U/W
	oOXnUI/pXi6fzH1LjvsYlWE7SeR6mDnxQlpMkmtYcNgTnxQV4XepB4xMoFmGEiEDTRZ+
	347Q==
X-Received: by 10.194.76.37 with SMTP id h5mr8685163wjw.21.1363327201039; Thu,
	14 Mar 2013 23:00:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Thu, 14 Mar 2013 22:59:40 -0700 (PDT)
In-Reply-To: <5142AE66.8010105@windriver.com>
References: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
	<5142AE66.8010105@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Thu, 14 Mar 2013 22:59:40 -0700
Message-ID: <CACzyEJ9VV89cDL3YB2ru-FAiAwjtOjs_An9gRjoUW5oHe93uaA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8 kernel
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
X-List-Received-Date: Fri, 15 Mar 2013 06:00:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 10:15 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:

>
> FYI: your email keeps bouncing from the linux-yocto mailing list,
> check to be sure you signed up with your gmail account, I keep
> approving them for now :)
>

I've signed up last time you suggested, I will try one more and send a
separate email to the arbiter.
Thank you for reminding me.

>
>>
>> - tested on qemux86
>> ===========================================
>>
>> root@qemux86:~# uname -a
>> Linux qemux86 3.8.1-yocto-standard #1 SMP PREEMPT Thu Mar 14 21:57:12
>> PDT 2013 i686 GNU/Linux
>> root@qemux86:~# rt-app -t 100000:35000:d -D 2
>> [rt-app] <notice> [0] Using SCHED_DEADLINE policy:
>> [rt-app] <notice> [0] starting thread with period: 100000, exec:
>> 35000,deadline: 100000, priority: 10
>> [rt-app] <notice> [0] Locking pages in memory
>> #idx    period  min_et  max_et  rel_st  start           end
>> deadline        dur.    slack   Budget  Used
>> Budget
>> 0       100000  35000   35000   65466   354577907       354612918
>> 354677899       35011   64981
>> 0       100000  35000   35000   165585  354678026       354713105
>> 354777899       35079   64794
>> ...
>> 0       100000  35000   35000   1965672 356478113       356513126
>> 356577899       35014   64772
>> [rt-app] <notice> [0] Exiting.
>> root@qemux86:~#
>>
>> ===========================================
>>
>> Let me know what you think.
>>
>> Regards,
>>
>> Insop
>>
>> ===========================================
>>
>>
>> Subject: [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8
>>   kernel
>>
>> ---
>>   recipes-kernel/linux/linux-yocto/edf.cfg      |    4 ++++
>>   recipes-kernel/linux/linux-yocto_3.8.bbappend |   14 ++++++++++++++
>>   2 files changed, 18 insertions(+)
>>   create mode 100644 recipes-kernel/linux/linux-yocto/edf.cfg
>>   create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend
>>
>> diff --git a/recipes-kernel/linux/linux-yocto/edf.cfg
>> b/recipes-kernel/linux/linux-yocto/edf.cfg
>> new file mode 100644
>> index 0000000..ccf004f
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto/edf.cfg
>> @@ -0,0 +1,4 @@
>> +CONFIG_CGROUPS=y
>> +CONFIG_CGROUP_SCHED=y
>> +CONFIG_DEADLINE_GROUP_SCHED=y
>
>
> We don't need this fragment in recipe space, it's already in the
> kernel tree itself.
>
> I've already sent the pull request for the meta SRCREVs to be updated,
> so it's available for all builds now.
>
>

removed.

>> +
>> diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> b/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> new file mode 100644
>> index 0000000..c6a969f
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-yocto_3.8.bbappend
>> @@ -0,0 +1,14 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +COMPATIBLE_MACHINE_qemux86 = "qemux86"
>> +COMPATIBLE_MACHINE_fri2 = "fri2"
>
>
> These are already taken care of by meta-intel, we don't need to
> duplicate them here.
>
>

You meant two lines of "COMPATIBLE_MACHINE..."?
removed.

>> +
>> +KBRANCH_qemux86 = "standard/edf"
>> +KBRANCH_fri2 = "standard/edf"
>> +
>> +KMACHINE_qemux86 = "qemux86"
>> +KMACHINE_fri2 = "fri2"
>
>
> We don't need these two KMACHINE lines, this is the default.
>

removed.

I was do some testing on "make localmodconfig", which will gets me the
using module build .config.
So let me me ask you this before I send out an updated patch.

I ran "lsmod > /tmp/lsmod" on my qemux86
On dev host, run "make LSMOD=/tmp/lsmod localmodconfig" to get this
localmodconfig_qemux86.cfg file, which has less module configurations.

Then I use this in bbappend file like below:

---
SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.8.git;protocol=git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta
\
	file://localmodconfig_qemux86.cfg \
	"
----

what do you think?
let me know, I can either just fix the current patch and add new patch or
just do the current patch fix.

Thank you.

Insop

