Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDEA04C811C5
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 01:11:08 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Dec 2010 23:11:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,218,1291622400"; d="scan'208";a="639666025"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 22 Dec 2010 23:11:07 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 23 Dec 2010 15:10:48 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 23 Dec 2010 15:10:48 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 23 Dec 2010 15:10:47 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 23 Dec 2010 15:10:43 +0800
Thread-Topic: [yocto] Master stability and the autobuilder.
Thread-Index: AcuiGwbrH81g8cS+RCesIiUgFxHEAwAU7O9Q
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F6A4933@shsmsx502.ccr.corp.intel.com>
References: <4D126637.4080805@intel.com>
In-Reply-To: <4D126637.4080805@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Master stability and the autobuilder.
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
X-List-Received-Date: Thu, 23 Dec 2010 07:11:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Elizabeth Flanagan
>Sent: Thursday, December 23, 2010 4:57 AM
>
>All,
>
>In preparation for the M3 milestone, I've been taking notes on what our
>build and release process is and where the pain points are over the
>course of the M2 milestone. A few things I've noted that are concerning:

Beth, thanks for sharing your observations and suggestions which are great.

>
>1. We have a really long build cycle. It takes a good 40 hours before
>contamination of master is recognized and a further 40 hours *at the
>very minimum* before it can be verified as corrected.
>
>2. We are very resource constrained. Because the build loop is so long,
>our two build slaves are essentially in use 24/7. This will be
>alleviated soon with a new build slave, but not until after the new year.
>
>3. There was an issue in M2 (which I'm not totally filled in on yet, I'm
>going to be pinging people for details) which caused some kernel issues
>around the M2 branch for ppc and arm. I haven't seen (and I've been
>swamped with email recently, so I may have missed it) any resolution on
>this in master.
>
>4. People are relying on the autobuilder to do their builds or to verify
>their code.

I think this is not true. Current guideline for distro team is to make incr=
emental
builds for all archs and make a full build for one arch before sending out =
the
pull request, which however can't promise catching all potential issues. Th=
en
Saul's distro/{master,stage} is another trampoline stage to further filter =
out
issues before slipping into the master.=20

If this guideline is broken somehow, then we should reemphasize it.

>
>My main goal in M3 and on, is the stability of master. If we were less
>resource constrained, I could allow the autobuilder to be a global
>community resource where people could just queue up their various
>builds. That, unfortunately, is not the case for now. What this means is
>that I have to ask people for a few things.
>
>1. I'll be cleaning up the poky autobuilder config within the git repo
>and making it very developer specific so that you should be able to run
>a script and have the autobuilder set up to run incremental and fulls
>(and an optional swabber target) on your own machine and have it work
>right out of the box. Once my pull for the new autobuilder comes
>through, please, set up your own local autobuilder instance. This should
>be by the EOD today. I'll be somewhat available through the holidays to
>assist people with local machine setups, but it should be fairly
>straightforward.

that's really cool. Could you also provide some rough data how long it may
take for the various build targets you'll suggest to run in local machine? =
That
data would be useful to check out which ones are feasible to ensure both
quality and also development efficiency...

>
>2. Please, make certain that your code builds on your local buildbot
>before submitting a pull request. As the project grows, maintaining the
>stability of master will become more and more important and the limited
>resources of our maintainers and our infrastructure will become more and
>more stretched.

Agree, we'll look into that after you send out new autobuilder script and t=
hen
we can discuss which targets are mandatory for the pull request.

>
>3. I've dropped this recently, due to limited time, but I'm going to
>start sending out more and more broken build emails. Please, do not
>ignore these. Act on them. If you're think you may be responsible for
>something that is broken, let people know that you recognize the
>breakage and what you're planning on doing to fix it.
>
>4. Until we know that master is stable (right now I know of 3 or 4
>issues, email forthcoming), the autobuilder will be tasked with a very
>limited number of buildsets. I'll be generating a milestone type build
>off of master to get some quicker response (20 hours verses 38), and
>incremental versions of milestone and sanity testing. We will still be
>running nightly (although you can't see it on the autobuilder right now)
>and distro-testing but until master is stable, those have got to be the
>priorities on the autobuilder.
>

Thanks
Kevin

