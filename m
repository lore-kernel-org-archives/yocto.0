Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BAC3E00B66; Thu,  8 May 2014 22:47:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga01.intel.com (unknown [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD090E00B60
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 22:47:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 May 2014 22:47:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1016,1389772800"; d="scan'208";a="528975051"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 08 May 2014 22:47:46 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 8 May 2014 22:47:46 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.192]) by
	ORSMSX112.amr.corp.intel.com ([169.254.12.115]) with mapi id
	14.03.0123.003; Thu, 8 May 2014 22:47:46 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bob Feretich <bob.feretich@rafresearch.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Definition of Yocto tasks
Thread-Index: AQHPaL0/p+rpJPLq0kaibU0YGUEnx5szHDeQgAClcYCAANXlgIAA9HyAgAJBaYD///T8UA==
Date: Fri, 9 May 2014 05:47:44 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F96FAE@ORSMSX101.amr.corp.intel.com>
References: <53682429.6070103@rafresearch.com>
	<14430763.86LsjAOQil@peggleto-mobl5.ger.corp.intel.com>
	<536960F1.90609@rafresearch.com>
	<21534393.ViuvyeE1Gr@peggleto-mobl5.ger.corp.intel.com>
	<536C1265.4090603@rafresearch.com>
In-Reply-To: <536C1265.4090603@rafresearch.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Eggleton, Paul" <paul.eggleton@intel.com>
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
X-List-Received-Date: Fri, 09 May 2014 05:47:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Bob,=20

This is good information regarding the process you had to go through and wh=
at would have helped along the way.  I am currently working on a new chapte=
r that documents the do_<task> tasks in the YP Reference Manual. =20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Bob Feretich
>Sent: Thursday, May 08, 2014 4:25 PM
>To: yocto@yoctoproject.org
>Subject: Re: [yocto] Definition of Yocto tasks
>
>
>On 5/7/2014 5:58 AM, Paul Eggleton wrote:
>> On Tuesday 06 May 2014 15:23:45 Bob Feretich wrote:
>>> On 5/6/2014 2:38 AM, Paul Eggleton wrote:
>>>> On Tuesday 06 May 2014 06:47:08 Rifenbark, Scott M wrote:
>>>>>> -----Original Message-----
>>>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>>>> bounces@yoctoproject.org] On Behalf Of Bob Feretich
>>>>>> Sent: Monday, May 05, 2014 4:52 PM
>>>>>> To: yocto@yoctoproject.org
>>>>>> Subject: [yocto] Definition of Yocto tasks
>>>>>>
>>>>>> Is there a document that provides a detailed definition of what
>>>>>> each these tasks do?
>>>>>> Yocto, OE, and bitbake manuals tell us how to command a specific
>>>>>> task to be run, but not what they do.
>>>>>>
>>>>>> The task name provides a good hint sometimes, but often that is
>>>>>> not enough.
>>>>>> Users shouldn't have to read the python code for this information.
>>>>>> These descriptions should be a part of the yocto manual.
>>>>>>
>>>>>> Sections 5.3.4 to 5.3.11 of the Yocto mega-manual provide a good
>>>>>> overview of some of these tasks in the context of a workflow, but
>>>>>> doesn't mention most of these tasks and doesn't go into enough
>>>>>> detail on the tasks it discusses.
>>>>>>
>>>>>> It wouldn't be appropriate to add more detail at that point in the
>>>>>> manual, but it would be appropriate to include details regarding
>>>>>> all of the tasks in an appendix.
>>>>>>
>>>>>> Examples...
>>>>>> The manual states that do_fetch fetches source, but doesn't state
>>>>>> that when git is used whether it performs a pull, fetch, or clone.
>>>>>> What are the common failure conditions of do_fetch? And what
>>>>>> should the user do to fix the problem?
>>>>>>
>>>>>> do_build is mentioned a few times, but there is no reference to it
>>>>>> being the default task or what tasks are invoked by do_build and
>>>>>> which are omitted.
>>>>>>
>>>>>> do_rm_work and do_wm_work_all are not mentioned at all.
>>>>>>
>>>>>> Result of listtasks:
>>>>>> do_fetchall
>>>>>> ... snipped ...
>>>>>> do_rm_work_all
>>>>>>
>>>>>> I don't have the knowledge to create such an appendix, but I
>>>>>> volunteer to be a proofreader.
>>>>> An appendix for a reference of these tasks seems like a good idea.
>>>> FYI, you may already have seen it but we have a bit of coverage for
>>>> the
>>>> common>
>>>> tasks in the following section of the manual:
>>>>     http://www.yoctoproject.org/docs/current/ref-manual/ref-
>manual.html#clo
>>>>     ser-look
>>> This section seems to be a more polished version of the mega manual
>>> Sections 5.3.4 to 5.3.11.
>> They should be identical. The mega manual is simply the other manuals
>> combined together...
>>
>>> It provides an overview to the build process, but its still at a very
>>> high level (few details).
>> Could you expand on the details are you looking for that you're not
>> finding there?
>I was looking for more detailed information because I was trying to troubl=
e
>shoot failures that occurred during the "do_fetch" of some source.
>The most common failure was the inability to access any of the servers tha=
t
>contained the source. This was probably due to those servers being
>temporarily down for maintenance. Simply restarting the bitbake fixed thos=
e
>problems.
>(A common failure that users should be told not to be concerned about. I d=
id
>read that somewhere, but I don't remember where.)
>
>The next problem was a recipe error effecting "do_install" of some recipe.=
 I
>troubleshot this and got a fix from the Angstrom people. while
>troubleshooting (doing lots of double Control-Cs), I believe that I hung t=
he
>"do_fetch" mechanism. (some "do_fetch" tasks were being executed in
>parallel with the broken "do_install"). After the "do_install" problem was
>fixed, "do_fetch" seemed to run, but didn't transfer any data (no network
>traffic), and it would eventually time out.
>
>That raised the question regarding the use of lock files. (Did my Control-=
Cs
>leave a Yocto lock file intact that needed to be cleaned up?
>Did "do_fetch" use any locking mechanism? How could I do a partial "clean"
>that would fix the problem without setting my progress back further than
>necessary?)
>
>During my search for info, I found e-mail discussions of  clean, cleanstat=
e, and
>cleanall.  My "do_fetch" failure was occurring at about step 6900 of 8100 =
build
>steps. With my internet connection, restarting would have set me back 48 h=
rs,
>with no guarantee that the restart would result in a fix. I was looking fo=
r ways
>to "clean" the condition without having to completely start over. Eventual=
ly, I
>gave up and did the cleanall... it did not fix the problem.
>Even though none of cleanxxx tasks worked for me in fixing the "do_fetch"
>hang, info about them should have been easier to find.
>
>I fixed the problem with a shotgun approach.
>I erased the entire Yocto build directory, rebooted my host build system, =
and
>power cycled my network router and DSL modem. This worked, but was
>probably more than I needed to do. (I now think that my "do_fetch" hang wa=
s
>do to not properly reinitializing a firewall port.)
>
>My searches also led me to the "do_fetchall" task, as I has just visited w=
ith a
>friend whose network connection was 10x better than mine. Had I know
>about fetchall, I would have used it during the visit.
>
>In general, the appendix should contain a description of the program logic=
 of
>the task, the task's intended use, and a discussion of common errors (and
>fixes) that can occur during execution of the task.
>
>The most probable readers of the appendix would be:
>* someone trying to troubleshoot a problem that is occuring during the tas=
k.
>* someone who saw an e-mail reference for a use for the task and wants to
>understand it better.
>
>Regards,
>Bob
>>
>>>> If we wanted to add an appendix to list them all (and it might be
>>>> worth us doing so) a good starting point would be the task
>>>> descriptions in
>>>>
>>>> documentation.conf:
>>>>     http://cgit.openembedded.org/openembedded-
>core/tree/meta/conf/documenta
>>>>     tion.conf
>>> This file at least provides one sentence on most tasks. (do_setscene
>>> is missing, maybe more).
>> do_setscene itself isn't a task that we have. Setscene equivalents
>> exist for all of the sstate-enabled tasks that we have i.e.
>> do_populate_sysroot_setscene is the setscene equivalent of
>> do_populate_sysroot. We should touch on it elsewhere as well, but FYI
>> we do have an explanation of the setscene process in the BitBake manual:
>>
>> http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-
>> manual.html#setscene
>>
>> Cheers,
>> Paul
>>
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

