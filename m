Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20EC44C800AC
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2011 15:51:18 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Apr 2011 13:51:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,221,1301900400"; d="scan'208";a="629441280"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 15 Apr 2011 13:51:17 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 15 Apr 2011 13:51:17 -0700
Received: from orsmsx508.amr.corp.intel.com ([10.22.226.46]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Fri, 15 Apr 2011 13:51:17 -0700
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 15 Apr 2011 13:51:15 -0700
Thread-Topic: Yocto Project Janitors Wiki
Thread-Index: Acv7reO2VSDcg2CiSsKiqfvM6J+83wAADm6A
Message-ID: <8F72E7245587B740B3CF41CCF57DAF3757B753B5EB@orsmsx508.amr.corp.intel.com>
References: <4DA88C6B.7000602@linux.intel.com>
	<8F72E7245587B740B3CF41CCF57DAF3757B753B50B@orsmsx508.amr.corp.intel.com>
	<4DA8A762.8080106@linux.intel.com>
	<8F72E7245587B740B3CF41CCF57DAF3757B753B5BA@orsmsx508.amr.corp.intel.com>
	<4DA8AE1D.1070006@linux.intel.com>
In-Reply-To: <4DA8AE1D.1070006@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto Project Janitors Wiki
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
X-List-Received-Date: Fri, 15 Apr 2011 20:51:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I think my descriptions are more confusing than my intent. Evidently I have=
 not had enough coffee yet today. I'll try to summarize more betterly:

- the text that starts "When adding tasks..." and ending with "..not a good=
 fit for this task list" would work better in the introductory section abov=
e the header "Tasks"

- I was looking for a TOC right under the header "Tasks" and missed the one=
 that already exists at the top of the page, user error on my part

Also:

- You can remove the "NOTE" - the page is a good addition to the site that =
needs no caveat

Thanks again for setting this up. I have had a page like this on my to-do l=
ist for a while.


-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Friday, April 15, 2011 1:44 PM
To: Osier-mixon, Jeffrey
Cc: Yocto Project; Rifenbark, Scott M
Subject: Re: Yocto Project Janitors Wiki

On 04/15/2011 01:24 PM, Osier-mixon, Jeffrey wrote:
> Maybe I'm the one who is confused. Looking at the contents of the
> Janitors page - I expected to see a list of existing things that need
> to be cleaned up.=20

Cleaned-up, improved, etc. The page currently contains 3 tasks/projects:

1) Document undocumented variables according to bbvars.py
2) Rewrite bbvars.py to use bitbake to find variables
3) Modify create-pull-request and send-pull-request to use
git-request-pull directly.

> The most visible thing on the page is the
> description of how to enter tasks, and I think I assumed that was all
> that was there.

I'm referring to how to add new tasks to this Janitors wiki itself... is
that not what you were thinking I meant?

> It might be best to put the tasks format above the
> list of actual tasks so it doesn't look like the main focus of the
> list.

The tasks format IS above the list of actual tasks... did you mean "be
best NOT to put..."?

> Might also be good to add an auto-generated TOC right under the
> Tasks header - I'll look up how to make the wiki do that.

As opposed to the TOC at the top of the page?

>=20
> Re submission guidelines - I'm working on a set of pages that show
> new participants how to submit code or documentation to the project.
> Part of these guidelines is details just like the "how to enter new
> tasks" description, so I may borrow that.

Perhaps the tasks themselves should be a Heading level (3 in this case).
That would make them stand out more and make them appear in the TOC.

--
Darren

>=20
> -----Original Message----- From: Darren Hart
> [mailto:dvhart@linux.intel.com] Sent: Friday, April 15, 2011 1:16 PM=20
> To: Osier-mixon, Jeffrey Cc: Yocto Project; Rifenbark, Scott M=20
> Subject: Re: Yocto Project Janitors Wiki
>=20
> On 04/15/2011 11:26 AM, Osier-mixon, Jeffrey wrote:
>> WOW fantastic, thanks for doing this.
>>=20
>> It occurs to me that the items you put there are really specific=20
>> submission guidelines,
>=20
> I'm not following you here. "Submission Guidelines" ?
>=20
> although that could be considered a janitorial
>> task in cleaning things up. I have it on my to-do list (soon
>> rather than someday) to create detailed participation guidelines,
>> and these should be a part of them. When I do that, maybe I'll move
>> these over and then create a link back, with "clean up existing
>> submissions" as part of the Janitor list. Does that make sense, or
>> am I misunderstanding your intent?
>=20
> .. ditto ..
>=20
> -- Darren
>=20
>>=20
>> -----Original Message----- From: Darren Hart=20
>> [mailto:dvhart@linux.intel.com] Sent: Friday, April 15, 2011 11:20=20
>> AM To: Yocto Project Cc: Rifenbark, Scott M; Osier-mixon, Jeffrey=20
>> Subject: RFC: Yocto Project Janitors Wiki
>>=20
>> I had a few too many tasks getting added to my Someday list and I=20
>> thought this was a good opportunity to create the Janitors Task=20
>> list. This is what I came up with:
>>=20
>> https://wiki.yoctoproject.org/wiki/Janitors
>>=20
>> Please have a look and provide your thoughts on the general
>> concept, the task format, etc.
>>=20
>> I've CC'd Scott as the Documentation tasks are really his, I was=20
>> just involved with writing the bbvars. We definitely need people
>> to do the research on those variables, but if they send patches, or
>> just text descriptions is really up to Scott - so that task may
>> need editing.
>>=20
>> Finally, if you like the idea and have some of your own Someday=20
>> tasks, please feel free to add them.
>>=20
>=20

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

