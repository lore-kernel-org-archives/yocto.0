Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ABA1E008EA; Wed,  1 Apr 2015 09:57:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54456E0056E
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 09:57:46 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 01 Apr 2015 09:57:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,504,1422950400"; d="scan'208";a="549664313"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
	by orsmga003.jf.intel.com with ESMTP; 01 Apr 2015 09:57:44 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.247]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.85]) with mapi id
	14.03.0224.002; Wed, 1 Apr 2015 17:57:43 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Anders Darander <anders@chargestorm.se>
Thread-Topic: [yocto] [RFC] Toaster integration with Jenkins
Thread-Index: AQHQbJz4lflEiBCd90ebp/VsW3Oi1Q==
Date: Wed, 1 Apr 2015 16:57:43 +0000
Message-ID: <D141DDC4.58791%belen.barros.pena@intel.com>
References: <D13F4AC9.58302%belen.barros.pena@intel.com>
	<20150331093911.GC19097@ad.chargestorm.se>
	<D1407F76.584DD%belen.barros.pena@intel.com>
	<20150401080301.GB18315@ad.chargestorm.se>
In-Reply-To: <20150401080301.GB18315@ad.chargestorm.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.8.150116
x-originating-ip: [10.237.224.80]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFC] Toaster integration with Jenkins
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
X-List-Received-Date: Wed, 01 Apr 2015 16:57:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <EAC360F37BBCDB4488A1204CCB27C047@intel.com>
Content-Transfer-Encoding: quoted-printable



On 01/04/2015 09:03, "Anders Darander" <anders@chargestorm.se> wrote:

>Hi,
>
>* Barros Pena, Belen <belen.barros.pena@intel.com> [150331 18:00]:
>> On 31/03/2015 10:39, "Anders Darander" <anders@chargestorm.se> wrote:
>
>> >I don't know if this is the right thread but a couple of other things
>> >that we really would need in order to fully be able to utilize this.
>
>> >1) Some way of getting the built git branch shown in toaster. (As we
>> >discussed on YPDD in D=FCsseldorf together with Axis). We're building
>> >master and release branches for the same machine and image.
>
>> If you mean the name of the branch, Toaster currently shows this in
>> several places. One of them is the configuration information for a
>> finished build, which displays a list of the layers used, and for each
>>of
>> them the branch name and the commit used. I've uploaded an screenshot
>>here
>
>> http://i.imgur.com/GPDwCh0.png
>
>Good to know.  Just one question, is it possible to get the branch
>information for one layer on the "All build" page?

Not right now, I'm afraid. Having said that, it is probably fairly easy to
add that information to the table.
=20
> To avoid having to go
>into each build to actually see what kind of build that was.
>
>For instance, we're having a master layer, that checks out other layers
>as submodules.
> Being able to direclty see which branch of the master all
>builds originate from would be extremely useful (or another option would
>be if the Jenkins job name could be shown, as that would provide more or
>less the same information for us).

This we could probably do, since builds connected to a Jenkins instance
will need to be identifiable somehow in Toaster.

>
>Hm, thinking more about that, being able to store the Jenkins job name
>and build number in the toaster database would likely be really useful.

Again, I'd say this is possible.

>That would allow Toaster to link back to the actual job and build in
>Jenkins. Those could be retrieved from the environmant variables
>BUILD_NUMBER and JOB_NAME in the Jenkins build.

This sounds like a handy feature.

>
>> >2) In the proposed bug, would toaser be able to recieve and handle
>> >toaster/build logs from different YP releases?
>
>> Yes, but you would need to create a Toaster project for each release.
>> Currently, for each Toaster project, you must select the YP release you
>> want to use. A project can only use a single release at any given time.
>
>I've just spent a couple of minutes looking for this (so excuse me if
>it's obvious).
>
>A Toaster project in this case, would that equal to different toaster
>instances and databases, or would they still be able to be shown
>together in the same "All builds" page?

Sorry, I should have explained better: in the same Toaster instance (and
database). Each Toaster instance can have n projects. Each project is
associated to a single release. So you can build on different releases
within the same Toaster instance by using different projects, and access
all the information through the 'all builds' page.

> If it's not the latter, it would
>be a nice feature for some upcoming release. (Though, it'll obviously
>make the implementation slightly harder as support for older YP releases
>would need to be kept).
>
>Cheers,
>Anders
>
>--=20
>Anders Darander
>ChargeStorm AB / eStorm AB


