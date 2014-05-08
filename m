Return-Path: <bob.feretich@rafresearch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23FE3E00B62; Thu,  8 May 2014 16:27:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_NONE,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.109.115.200 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 149 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 16:27:53 PDT
Received: from nm25-vm9.access.bullet.mail.bf1.yahoo.com (unknown
	[216.109.115.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2274E00B47
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 16:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1399591523; bh=cxPQiDYbX+WmRt7Qek6+HtIoWUii/wzknN3NydBUzBE=;
	h=Received:Received:Received:X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:X-Rocket-Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=Y/EB8vkZOEEIGwIBUmrxv7iWybBSPcJT1OI8GaXAFOdaJnUh+qew7R/+7wWr8AIexPHW3ouxe6sJtXNafBMLy6qKB1mcEsAR3fmFgEROwu0BYNGaXt341Z0a70YsAIX1EAToU2p4warGBz5uiNjCvjLg4raEfM5Sd0sVheAbA8rZLJdthKVnMKz/f8AbEGbK4z6nLLHGW84H4D6yCIz1moOrSlE2UT1ZFcnZHp4qLmJDPCe56uwrl6ypT8p9+dnFwZSV9St/UpLX5fti+8WMXOY6OEdCxZGCVC6iflxOf+Bc+9515SPP3eyGJI4aFI2Ul3YC/ot9ZOejvpqVNdtRkg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=YTsHXQWVY0ZTCPZY1uadyS4KPsYQg71bZ54nog5EJY/KssFh/9SRlhwlEbw0hTJflKdKV68A6gEe+rTXq8MFHly41tm/q+DTyJG9d3P4fPbeMwvmwPDTr/8eliGG0Mu1W7FdR3dkRgzU7mFOgGT4stKaKGE6GKnv2xToQHZD37TYm4o+XrV+WvC1FASlt565/JIGCDKx0TLT+O6BahrNZYAFHSRC1c83ruM1R1WOU5J2k2sPsmB4ug6P4iaNmEO/GnsYql0eZf28r49SrHp6wKVno3tNsy80S0UAcVP8TKL9Sji+Zr755DnYmD7YzEsg+OY3AlpHpeZfnjKJN16jkw==;
Received: from [66.196.81.163] by nm25.access.bullet.mail.bf1.yahoo.com with
	NNFMP; 08 May 2014 23:25:23 -0000
Received: from [98.138.226.241] by tm9.access.bullet.mail.bf1.yahoo.com with
	NNFMP; 08 May 2014 23:25:23 -0000
Received: from [127.0.0.1] by smtp112.sbc.mail.ne1.yahoo.com with NNFMP;
	08 May 2014 23:25:23 -0000
X-Yahoo-Newman-Id: 313257.53280.bm@smtp112.sbc.mail.ne1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: hBXzDqEVM1k_1pINpqYA9n21inxJqPXjMniemSE_6Wj88jd
	P4hP6cfQ_rvg2fCP.uGfh.I_7MFdS41W7oYEZ3Y7jk4LhP5Wn3tkTvLpyoxH
	eTxQTaBThoOIeztjvEBRPX77ErZhvmxrRdQUAr_5OGeTM7_fFIiISAZeSZ1M
	Gj5QMdgbFA4MjEupkpZRwpEw1immskiSSvUYmQxBXLvCfuUCdV86bqoCfeDS
	XVQX_lIfGdpgKdd664X.FSBFTDLzB9MREDjk7UGtnHRu9mNzCr4RIYUTqBc1
	pixhtiVbQHlINrTwCI5Z7G.O2.1tKKGADFywPDqpfwOqsIGoy_4aIHRxNuDZ
	2NgUfegX3QKwLFEfz72rRDYYzDFA_pU8nO_EdyWylZ4OOLw0dKAYLBEETmKv
	TsXQzmuvoHjryzkmu9un1Q47g8YE3OYcz11bFjKzNF0_1xeQPYaZccSRWqLj
	p_7XTp1Bp.d3HyvbM.r5vPp7.JFWunbnYZZwt3JXN3wM7_guTulBC0z1DDzY
	0hBEjTY7GA_xKEL_cBfL7NQPbN8KgjglgbTbea6zzO.2kIJeaymCcBipI7Tt
	jedUddWjPSbhaNdxJJLV5mtYZiR_5tj.wvZUOakGLRy1rLsm5otlucBb4QBe
	XCPZ15uXKio4GmvEhkqzsrqxguEE0chUB94T.yXFN7RVJFyjDwbJBd4A1J59
	C8ICVuZEg1A--
X-Yahoo-SMTP: jHZ71LyswBA8vPppSFebFmPnYvk1gIPKrFjcBqA_GiVlfXPeew--
X-Rocket-Received: from [192.168.1.101] (bob.feretich@71.131.8.205 with plain
	[98.138.84.52]) by smtp112.sbc.mail.ne1.yahoo.com with SMTP;
	08 May 2014 16:25:23 -0700 PDT
Message-ID: <536C1265.4090603@rafresearch.com>
Date: Thu, 08 May 2014 16:25:25 -0700
From: Bob Feretich <bob.feretich@rafresearch.com>
User-Agent: Mozilla/5.0 (Windows NT 6.0;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <53682429.6070103@rafresearch.com>
	<14430763.86LsjAOQil@peggleto-mobl5.ger.corp.intel.com>
	<536960F1.90609@rafresearch.com>
	<21534393.ViuvyeE1Gr@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <21534393.ViuvyeE1Gr@peggleto-mobl5.ger.corp.intel.com>
Subject: Re: Definition of Yocto tasks
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
X-List-Received-Date: Thu, 08 May 2014 23:27:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 5/7/2014 5:58 AM, Paul Eggleton wrote:
> On Tuesday 06 May 2014 15:23:45 Bob Feretich wrote:
>> On 5/6/2014 2:38 AM, Paul Eggleton wrote:
>>> On Tuesday 06 May 2014 06:47:08 Rifenbark, Scott M wrote:
>>>>> -----Original Message-----
>>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>>> bounces@yoctoproject.org] On Behalf Of Bob Feretich
>>>>> Sent: Monday, May 05, 2014 4:52 PM
>>>>> To: yocto@yoctoproject.org
>>>>> Subject: [yocto] Definition of Yocto tasks
>>>>>
>>>>> Is there a document that provides a detailed definition of what each
>>>>> these
>>>>> tasks do?
>>>>> Yocto, OE, and bitbake manuals tell us how to command a specific task to
>>>>> be
>>>>> run, but not what they do.
>>>>>
>>>>> The task name provides a good hint sometimes, but often that is not
>>>>> enough.
>>>>> Users shouldn't have to read the python code for this information. These
>>>>> descriptions should be a part of the yocto manual.
>>>>>
>>>>> Sections 5.3.4 to 5.3.11 of the Yocto mega-manual provide a good
>>>>> overview
>>>>> of some of these tasks in the context of a workflow, but doesn't mention
>>>>> most of these tasks and doesn't go into enough detail on the tasks it
>>>>> discusses.
>>>>>
>>>>> It wouldn't be appropriate to add more detail at that point in the
>>>>> manual,
>>>>> but it would be appropriate to include details regarding all of the
>>>>> tasks
>>>>> in an appendix.
>>>>>
>>>>> Examples...
>>>>> The manual states that do_fetch fetches source, but doesn't state that
>>>>> when
>>>>> git is used whether it performs a pull, fetch, or clone. What are the
>>>>> common failure conditions of do_fetch? And what should the user do to
>>>>> fix
>>>>> the problem?
>>>>>
>>>>> do_build is mentioned a few times, but there is no reference to it being
>>>>> the default task or what tasks are invoked by do_build and which are
>>>>> omitted.
>>>>>
>>>>> do_rm_work and do_wm_work_all are not mentioned at all.
>>>>>
>>>>> Result of listtasks:
>>>>> do_fetchall
>>>>> ... snipped ...
>>>>> do_rm_work_all
>>>>>
>>>>> I don't have the knowledge to create such an appendix, but I volunteer
>>>>> to be a proofreader.
>>>> An appendix for a reference of these tasks seems like a good idea.
>>> FYI, you may already have seen it but we have a bit of coverage for the
>>> common>
>>> tasks in the following section of the manual:
>>>     http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#clo
>>>     ser-look
>> This section seems to be a more polished version of the mega manual
>> Sections 5.3.4 to 5.3.11.
> They should be identical. The mega manual is simply the other manuals combined
> together...
>
>> It provides an overview to the build process, but its still at a very high
>> level (few details).
> Could you expand on the details are you looking for that you're not finding
> there?
I was looking for more detailed information because I was trying to 
trouble shoot failures that occurred during the "do_fetch" of some source.
The most common failure was the inability to access any of the servers 
that contained the source. This was probably due to those servers being 
temporarily down for maintenance. Simply restarting the bitbake fixed 
those problems.
(A common failure that users should be told not to be concerned about. I 
did read that somewhere, but I don't remember where.)

The next problem was a recipe error effecting "do_install" of some 
recipe. I troubleshot this and got a fix from the Angstrom people. while 
troubleshooting (doing lots of double Control-Cs), I believe that I hung 
the "do_fetch" mechanism. (some "do_fetch" tasks were being executed in 
parallel with the broken "do_install"). After the "do_install" problem 
was fixed, "do_fetch" seemed to run, but didn't transfer any data (no 
network traffic), and it would eventually time out.

That raised the question regarding the use of lock files. (Did my 
Control-Cs leave a Yocto lock file intact that needed to be cleaned up? 
Did "do_fetch" use any locking mechanism? How could I do a partial 
"clean" that would fix the problem without setting my progress back 
further than necessary?)

During my search for info, I found e-mail discussions of  clean, 
cleanstate, and cleanall.  My "do_fetch" failure was occurring at about 
step 6900 of 8100 build steps. With my internet connection, restarting 
would have set me back 48 hrs, with no guarantee that the restart would 
result in a fix. I was looking for ways to "clean" the condition without 
having to completely start over. Eventually, I gave up and did the 
cleanall... it did not fix the problem.
Even though none of cleanxxx tasks worked for me in fixing the 
"do_fetch" hang, info about them should have been easier to find.

I fixed the problem with a shotgun approach.
I erased the entire Yocto build directory, rebooted my host build 
system, and power cycled my network router and DSL modem. This worked, 
but was probably more than I needed to do. (I now think that my 
"do_fetch" hang was do to not properly reinitializing a firewall port.)

My searches also led me to the "do_fetchall" task, as I has just visited 
with a friend whose network connection was 10x better than mine. Had I 
know about fetchall, I would have used it during the visit.

In general, the appendix should contain a description of the program 
logic of the task, the task's intended use, and a discussion of common 
errors (and fixes) that can occur during execution of the task.

The most probable readers of the appendix would be:
* someone trying to troubleshoot a problem that is occuring during the task.
* someone who saw an e-mail reference for a use for the task and wants 
to understand it better.

Regards,
Bob
>
>>> If we wanted to add an appendix to list them all (and it might be worth us
>>> doing so) a good starting point would be the task descriptions in
>>>
>>> documentation.conf:
>>>     http://cgit.openembedded.org/openembedded-core/tree/meta/conf/documenta
>>>     tion.conf
>> This file at least provides one sentence on most tasks. (do_setscene is
>> missing, maybe more).
> do_setscene itself isn't a task that we have. Setscene equivalents exist for
> all of the sstate-enabled tasks that we have i.e. do_populate_sysroot_setscene
> is the setscene equivalent of do_populate_sysroot. We should touch on it
> elsewhere as well, but FYI we do have an explanation of the setscene process in
> the BitBake manual:
>
> http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#setscene
>
> Cheers,
> Paul
>


