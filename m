Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A35EE006AD
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2012 14:29:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jul 2012 14:29:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="173888388"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jul 2012 14:29:35 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 5 Jul 2012 14:29:35 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.235]) with mapi id
	14.01.0355.002; Thu, 5 Jul 2012 14:29:35 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Some questions about the webhob design
Thread-Index: Ac1ZFOdFGM6SyguyTo+eIH9a2sio8AButnyAAAOjafA=
Date: Thu, 5 Jul 2012 21:29:35 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46A8C089@ORSMSX101.amr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
	<1652708.uFroLZqztD@helios>
In-Reply-To: <1652708.uFroLZqztD@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Some questions about the webhob design
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
X-List-Received-Date: Thu, 05 Jul 2012 21:29:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please see my comments/questions below...

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Thursday, July 05, 2012 3:01 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] Some questions about the webhob design

On Tuesday 03 July 2012 12:10:57 Xu, Dongxiao wrote:
> Today Jessica and PRC team had a discussion of the webhob tasks listed
> in the wiki page, and about the "Group" and "Project" concept, we
> still have some questions.

Let's be clear though from the below, we're talking about projects only.
 [JZ] Yeah, let's focus on project's configuration for this thread.

> Say user A and user B are privileged users, who have the right to
> customize images, while user C is normal user (Say a TME) and only "build=
ing image"
> is allowed.
>
> 1) If user A customized an image with certain configurations, and he
> told user C that the environment is ready, and user C can build his
> demo image there. However, before user C starts to build, user B
> changed some configurations, making the final output not the expected ver=
sion.

So firstly, in the design, any change to a project made by a user that occu=
rs while another user is also configuring a build on that same project shou=
ld be reflected in real-time in the other user's interface, and will be acc=
ompanied by a notification that a change has been made.


<JZ> Can we clarify some definition here, when we talk about project build =
configuration, are they the same as in current hob's saved template? So, if=
 a user configure a build for the project and want to preserve the changes,=
 he/she will achieve so through save template? And we only allow one build =
configuration per project? </JZ>


When more than one user is working on a project, it is expected that they w=
ould all be working towards the same goal. Creating separate projects for s=
eparate work efforts that may have different needs is intended to be easy.

<JZ> Agreed overall, but let's look at some particular cases to flesh out t=
he rule further.  Say we have a project webhobtesting. For user A he set th=
e package system as RPM, where user B wants to use deb.  So should we 1) cr=
eate 2 projects webhobtesting-rpm and webhobtesting-ipk; 2)one webhobtestin=
g project, but depends on who made the modification last, the package syste=
m will be set as the last user's preference? This will be what Dongxiao's t=
alking about in the original question.  After user A configure as RPM and t=
old TME to open the project and run the build.  In the meantime, user B swi=
tch it to deb.  So the TME's build output will not match what he'd expected=
 that user A has set it to.  Also, we can't expect that user A is also logi=
n to receive the notification that his configuration has been changed; 3) w=
e allow multiple configuration files against same project, which requires a=
 project level configuration management mechanism. </JZ>

 If a user does want to do some experimenting on a project in isolation, th=
e design provides for the ability to duplicate the project which can then b=
e modified privately without affecting the original project.

<JZ> So this means we will allow each individual user to create his/her own=
 sandbox which I agree.  Then we'll need to design the mechanism to disting=
uish the real project build configuration and user private ones. And the im=
plication of that </JZ>

It's also a similar situation to working with any other shared resource suc=
h as a source code repository or a shared document - some discipline is req=
uired, and there's a limit to how much the tool can enforce in terms of peo=
ple not messing up other people's work (other than providing a permissions =
framework, of course).

> 2) Another issue may be how to avoid global project changes happened
> together? For example user A and user B change the setting in the same
> time?

At the implementation level, with the usual database-level locking there mu=
st be a "winner" and a "loser" in this situation. The "winner" in our case =
should be whoever made the change last. As above there will be notification=
s shown to both users.

<JZ> But if we are really talking about concurrency here, isn't committing =
the change will be protected by a critical section and whoever got the lock=
 wins?</JZ>

> 3) If user A changes the global project setting, what's the impact to
> the user B who already kicked off a build based on the original setting?

Once the build has started it should be isolated from the configuration wit=
hin the interface, i.e. any subsequent changes should not affect it. Intern=
ally in the implementation I would recommend taking a lock on the project s=
ettings as soon as the user requests the build to start, which shortly afte=
rwards can be released once the build has actually started - but this is no=
t something that should be visible at a user level, except as a minor delay=
. In case user B goes back in to view the settings that are now different t=
o what is being used for the build, the system should be able to fairly eas=
ily show a note within the configuration screen that the settings shown hav=
e been changed since the currently executing build was started.

<JZ> Agreed </JZ>
Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

