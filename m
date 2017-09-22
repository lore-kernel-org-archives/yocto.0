Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81864E00D00; Fri, 22 Sep 2017 12:10:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.63.252.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C00A7E00CF2
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 12:10:28 -0700 (PDT)
Received: from [2a01:79d:7376:8270:1041:68bf:d6ea:d6bc] (port=46572)
	by smtp.domeneshop.no with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
	(envelope-from <sveinse@seldal.com>) id 1dvTLG-0002rd-RY
	for yocto@yoctoproject.org; Fri, 22 Sep 2017 21:10:26 +0200
To: yocto@yoctoproject.org
References: <CC06751E-FB4C-46CE-8127-6344F8B00D96@comcast.net>
	<1502737813.26251.119.camel@genivi.org>
	<f6a1b7cc-f5fc-b891-bed5-3aa0f33632e1@topic.nl>
	<1502802952.2652.34.camel@gmail.com>
	<CAEjjReLSPdZB4UdgxFm5HHtqhuVtdcgSvYPqAm74h-t6Xr5HVg@mail.gmail.com>
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <026e73ec-4aaa-8047-6bbb-e11322ed0ba4@seldal.com>
Date: Fri, 22 Sep 2017 21:10:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAEjjReLSPdZB4UdgxFm5HHtqhuVtdcgSvYPqAm74h-t6Xr5HVg@mail.gmail.com>
Subject: Re: release management
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
X-List-Received-Date: Fri, 22 Sep 2017 19:10:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

I have also been slightly puzzled over the meticulousness and 
determinism of Yocto on recipe level, but the left-to-yourself thinking 
for the top-level meta-level and configuration management.

We have chosen to make a custom configuration management (CM) and 
lightweight build system on top of Yocto. Firstly, we have mixed SCM, 
mixing both git and hg, and the CM contains a manifest of the sources 
and can handle proper checkout (which repo does too for git).

Secondly, the CM provides a standardized unified location for setting 
configuration options and control of what artifacts to generate. This is 
then independent of what sub-system, like Yocto, is being run behind the 
scenes. Included in this is organization specific systems, such as 
central defining of system version and build numbers.

The CM also contains some postprocessors for Yocto. In the versions of 
Yocto we use, Yocto cannot generate artifacts for more than one MACHINE 
for each bitbake invocation. We must pack all these output artifacts 
into a common releasable end-user image and upload it to our PLM system. 
This part I have not been able to do (cleanly) from a recipe since it 
spans multiple MACHINES.

So our conclusion is that you need to know what Yocto is good at and 
what it can do, and perhaps rely on other systems where this is 
required. YMMV

Best regards,
Svein


On 19. aug. 2017 00:58, Chris Z. wrote:
> Hi,
> 
> Regarding submodule for layers. This is good when no one beside you use 
> it. Especially  with yocto layers. But when dev starts to use it. You or 
> other support team will be faced against wall of problems with basic 
> understanding of git submodules and index. But google starts to invest 
> some funds in submodules instead repo usage. So it can be a game changer 
> in favor of git submodules.
> 
>  From own experience (dev team of 80 persons) we decided to leave 
> submodules in favor of repo tool. But we had the same conclusion at 
> first. Why to use other tool were git provides submodules. Further 
> development and expansion of layers are pro the repo tool manifest file. 
> But that is from my own exp. And it was good change.
> 
> Br,
> Chris Z
> 
> 15.08.2017 15:16 "Joshua Watt" <jpewhacker@gmail.com 
> <mailto:jpewhacker@gmail.com>> napisał(a):
> 
>     On Tue, 2017-08-15 at 09:25 +0200, Mike Looijmans wrote:
>      > ﻿On 14-08-17 21:10, Gunnar Andersson wrote:
>      > >
>      > > Hey Russell
>      > >
>      > > I don't claim to be an authority on best practices but I will share
>      > > some
>      > > thoughts.
>      > >
>      > > On Sun, 2017-08-13 at 06:58 -0400, Russell Peterson wrote:
>      > > > Hello.
>      > > >
>      > > > As I learn more about yocto and more importantly gain practical
>      > > > experience
>      > > > with it I have started to think about my release structure.  Is
>      > > > there a
>      > > > “best practices” document or something like that that speaks to
>      > > > this?
>      > > > For example, how does everyone deal with “external” meta layer
>      > > > dependencies?  My software uses poky and meta-openembedded, of
>      > > > course.
>      > >
>      > > We simply use a parent project [1] that includes git submodules,
>      > > one per
>      > > yocto layer.  I'm of the opinion that if git (only) can be used,
>      > > why
>      > > introduce other tools?   But it requires you to learn and master
>      > > that
>      > > feature.
>      > >
>      >
>      > We arrived at exactly the same setup. One parent repository that
>      > contains the
>      > project-unique recipes, and submodules for the layers it needs.
>      >
>      > It's a lot better than attempting to script things. For one thing,
>      > git will
>      > tell you the state of the submodules.
>      >
>      > If I rembemer correctly, Android builds use a tool to manage the
>      > layer
>      > repositories. I didn't much like it though. And "yet another tool"...
> 
>     It's called "repo" https://code.google.com/archive/p/git-repo/
>     <https://code.google.com/archive/p/git-repo/>.
> 
>     In my experience git submodules work fine if you follow the core
>     workflow of adding new submodules and updating them to newer versions.
>     The workflows for deleting, renaming, changed upstream repostiory, etc.
>     for submodules is IHMO pretty bad. Pretty much every time I've tried
>     that it has resulted in a borked local repository that I either had to
>     manually go into the .git directory and fix, or just start over with a
>     fresh clone (perhaps I'm just bad at it or newer versions of git are
>     better?). Not to say you shouldn't use them, just be aware of some of
>     the catches so you can match the tool to your expected workflow.
> 
>     For my $0.02: We use git submodules to manage the multiple yocto trees
>     we are pulling in and also keep "parallel" layers for each with the
>     local changes we want to make in .bbappends, where possible (following
>     the strategy of no modifying the original). We do (particularly for
>     older versions of Yocto) make changes to the core since we have local
>     mirrors, but we follow a strict policy of getting changes upstreamed
>     first, and they trying to get upstream to backport to our version (if
>     it is still supported).
> 
>      >
>      >
>      > Kind regards,
>      >
>      > Mike Looijmans
>      > System Expert
>      >
>      > TOPIC Products
>      > Materiaalweg 4, NL-5681 RJ Best
>      > Postbus 440, NL-5680 AK Best
>      > Telefoon: +31 (0) 499 33 69 79
>     <tel:%2B31%20%280%29%20499%2033%2069%2079>
>      > E-mail: mike.looijmans@topicproducts.com
>     <mailto:mike.looijmans@topicproducts.com>
>      > Website: www.topicproducts.com <http://www.topicproducts.com>
>      >
>      > Please consider the environment before printing this e-mail
>      >
>      >
>      >
> 
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
> 
> 
> 

