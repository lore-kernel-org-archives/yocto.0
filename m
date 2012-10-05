Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F34EE012F0
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 09:01:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Oct 2012 09:01:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,541,1344236400"; d="scan'208";a="202114808"
Received: from fmsmsx103.amr.corp.intel.com ([10.19.9.34])
	by orsmga001.jf.intel.com with ESMTP; 05 Oct 2012 09:01:28 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.19.9.52) by
	FMSMSX103.amr.corp.intel.com (10.19.9.34) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 5 Oct 2012 09:01:28 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.213]) by
	FMSMSX101.amr.corp.intel.com ([169.254.1.150]) with mapi id
	14.01.0355.002; Fri, 5 Oct 2012 09:01:27 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Andrea Galbusera <gizero@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto Project 1.3 beta feedback
Thread-Index: AQHNoxAoLylU4zmlo0ancOQTVVncZJeq3dyg
Date: Fri, 5 Oct 2012 16:01:27 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A751FA@FMSMSX151.amr.corp.intel.com>
References: <CAC+thW1SSxgO4e5=my01WKcVb77q1BbDzjAQh16=aq28We46fw@mail.gmail.com>
In-Reply-To: <CAC+thW1SSxgO4e5=my01WKcVb77q1BbDzjAQh16=aq28We46fw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Yocto Project 1.3 beta feedback
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
X-List-Received-Date: Fri, 05 Oct 2012 16:01:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Andrea,=20

Thanks for the detailed feedback on the YP documentation.  Agree that it is=
 difficult to meet the needs of the wide group of users and that it is diff=
icult to have the released documentation match that of the "latest" from th=
e website.  The "latest" documentation is always under development and I fe=
ar will never match the released documentation.  One radical scheme to cons=
ider is releasing a separate tarball for documentation that a user could do=
wnload and then insert into their poky repository on the local system.  Thi=
s would in a sense de-couple the docs and the released poky tarball.  Proba=
bly not a popular idea among the team but an out-of-the-box one nonetheless=
. =20

We will continue to try and improve specific workflows based on specific ta=
rget audience needs.  Feedback such as this helps.=20

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Andrea Galbusera
Sent: Friday, October 05, 2012 8:43 AM
To: yocto@yoctoproject.org
Subject: [yocto] Yocto Project 1.3 beta feedback

Below you can find my answers to the Yocto Project 1.3 beta testing survey.

Regards,
Andrea


Experience survey of using Yocto 1.3

Q: Which architecture did you choose to build?

A: qemuppc, beagleboard

Q: How easily were you able to build an image and boot an image?

A: Quite easily. I also took some time for reviewing the QS guide
which looks adequate to me either for newbies or users coming from
different build systems.

Q: Is there any surprise to you in the process of doing this Beta
testing? If so, would you please describe
it and tell us how you expected it to work?

A: Not really a surprise (already knew about that), but a very
pleasant experience was knotty2. It results cleaner than its
"forever-scrolling" parent.

Q: How do you like our HOB interface? Please provide us with your
thoughts and suggestions on HOB
interface and functionality.

A: I like the hob design. It actually does not support yet a few
workflows that I consider much important for my work: i.e. adding new
recipes, supporting kernel development (mainly configuration,
patching). I understand not every user does require them and hence I
don't consider myself as the actual hob's average target user. Anyway
I appreciate the project is working on more intuitive tools like HOB
and I look forward to see if similar effort will also bring us webhob
experience in the future. People doing mainly package integration
would benefit the best from HOB, since they need not to dig into the
build system's details.

Q: Was it easy to find the support you needed to build and boot an image?

A: Procedures for the official emulated target are well documented and
clear enough for the task required by this beta testing. Support for
deploying and booting on reference real-hardware target is a little
bit lacking but a lot of resources and documentation are already
available online and I agree on not duplicating reference material.

Q: Which Bugzilla reports did you submit?

A: None till now. Still investigating on some oddities and discussing
with the team on IRC. Also hit bug #3135, which is already fixed in
master now.

Q: Did you try anything else with Yocto 1.3?

A: Building an SDK and investigating procedures to deploy toolchains,
SDKs and ADTs is one of my primary goals. I built toolchains for the
arm architecture and tested the environment to build a simple C
source. Relocatable SDK is a good improvement in term of flexibility
when deploying for application developers. The beta snapshot does
bring bug #3135, but it's already fixed in master.

Q: What would you like to have in Yocto Project for future releases?

A: Documentation as a whole IMHO should and must improve a bit to make
it more useful for reference. At the design level, I see the team is
working very well, by keeping the documentation in a single place:
this grants us consistency and its really a good point. I still see
some confusion between online documentation, documentation source you
can build from master and the "latest" online documentation which is
often referenced on the mailing list. However I know that keeping all
the docs up-to-date and consistent is not an easy job.
Needs with respect to documentation do largely depend on the user's
perspective. For instance, if your goal is writing new recipes for
your own layers, you'll ask for a good variables reference and, maybe,
a reasonable checklist with best conventions for keeping metadata
consistent. This is also required if you want to contribute back with
high degree of confidence that your patches will be considered and
reviewed. If, on the other hand, your are more involved in kernel
configuration and customization, your hope is to keep your work as
much as possible integrated with the build system: this will grant you
a closer develop-deploy-test flow by using the same tools will be used
for production. Such a workflow does have documentation but I
personally believe this is a point we can improve a lot.
Yocto Project users do belong to a very heterogeneous base: I see a
great challenge in keeping docs usable by differently focused people!
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

