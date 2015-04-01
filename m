Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53D4AE006E9; Tue, 31 Mar 2015 19:19:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83DCFE0056E
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 19:19:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 31 Mar 2015 19:18:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,503,1422950400"; d="scan'208";a="701192678"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga002.fm.intel.com with ESMTP; 31 Mar 2015 19:18:52 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Tue, 31 Mar 2015 19:18:51 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.47]) by
	ORSMSX160.amr.corp.intel.com ([10.22.226.43]) with mapi id
	14.03.0224.002; Tue, 31 Mar 2015 19:18:51 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] [PATCH] nightly-weston.conf: Run regular build tests
	for no-X11 case
Thread-Index: AQHQaWyNpiGKdJgVIU642C0s7w/TIp01PCmAgAI1YYA=
Date: Wed, 1 Apr 2015 02:18:51 +0000
Message-ID: <D140A369.4D5DA%tracy.graydon@intel.com>
References: <1427506388-12271-1-git-send-email-tracy.graydon@intel.com>
	<2229665.NuhmzlEpj1@peggleto-mobl.ger.corp.intel.com>
	<CAJTo0LbKL=H-+OyXiLBvVrT9Sm7UzVvuTv5wd5TEQ=R5h2XJBA@mail.gmail.com>
In-Reply-To: <CAJTo0LbKL=H-+OyXiLBvVrT9Sm7UzVvuTv5wd5TEQ=R5h2XJBA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.8.150116
x-originating-ip: [10.254.108.248]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] nightly-weston.conf: Run regular build tests for no-X11 case
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
X-List-Received-Date: Wed, 01 Apr 2015 02:19:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B5D60B3B1E5BC24EBEB78665A1158FD7@intel.com>
Content-Transfer-Encoding: quoted-printable

Just following up on this. What images do we wish to do this for?

Tracy



From: <Burton>, Ross <ross.burton@intel.com<mailto:ross.burton@intel.com>>
Date: Monday, March 30, 2015 at 2:35 AM
To: Paul Eggleton <paul.eggleton@linux.intel.com<mailto:paul.eggleton@linux=
.intel.com>>
Cc: Tracy Graydon <tracy.graydon@intel.com<mailto:tracy.graydon@intel.com>>=
, "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctoproje=
ct.org<mailto:yocto@yoctoproject.org>>
Subject: Re: [yocto] [PATCH] nightly-weston.conf: Run regular build tests f=
or no-X11 case


On 28 March 2015 at 15:33, Paul Eggleton <paul.eggleton@linux.intel.com<mai=
lto:paul.eggleton@linux.intel.com>> wrote:
When I wrote the bug I was thinking more of systems with no graphics
at all rather than with Weston replacing X11 - not that we shouldn't be
testing Weston though I guess.

I guess there's value in both.  I for one certainly want to see the non-X11=
 but still GL-enabled codepaths exerised for the Mesa/GTK+/GStreamer stacks=
.

Ross

