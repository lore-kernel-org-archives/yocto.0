Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70B97E009A7
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 06:10:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Mar 2014 06:08:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,685,1389772800"; d="scan'208";a="475625913"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 06:08:31 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 19 Mar 2014 06:08:31 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.45]) by
	ORSMSX159.amr.corp.intel.com ([169.254.11.44]) with mapi id
	14.03.0123.003; Wed, 19 Mar 2014 06:08:30 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: oe-selftest documentation
Thread-Index: Ac9DcFJ8mXowjRFWRXy+1IRNJLXz1gAA29og
Date: Wed, 19 Mar 2014 13:08:30 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F8501E@ORSMSX101.amr.corp.intel.com>
References: <33115ABC4887814E8A92A08FBC93416B0A213411@IRSMSX103.ger.corp.intel.com>
In-Reply-To: <33115ABC4887814E8A92A08FBC93416B0A213411@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: oe-selftest documentation
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
X-List-Received-Date: Wed, 19 Mar 2014 13:10:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Stoicescu, CorneliuX
>Sent: Wednesday, March 19, 2014 5:50 AM
>To: yocto@yoctoproject.org
>Cc: Purdie, Richard; Eggleton, Paul
>Subject: [yocto] oe-selftest documentation
>
>Hello,
>
>We have oe-selftest already integrated in poky but we lack in documentatio=
n:
>https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4740
>
>Here is what I am thinking about what could be done and I would like opini=
ons
>on what should be done:
>1) We can do a wiki entry to describe in detail how to use oe-selftest and=
 give
>examples. The problem here is that as oe-selftest changes this entry might
>become outdated and even if we update it then older Yocto releases users
>will not be able to use it anymore.

You can solve the "out-dated" problem by having sections in the wiki specif=
ic to various releases.

>2) We can have a manual entry derived from the wiki entry. Scott can use t=
he
>wiki entry as a reference, if we decide to have one, to create the manual
>entry. The advantage of this is that we will have valid and up to date
>information for each Yocto release.

If you have a manual entry for the feature then it will be correct for that=
 release of the YP.  The wiki then becomes a spot for detailed information =
that would need to be common across all releases of the manual (e.g. concep=
ts, basic information that does not change from release to release, etc.). =
 Note that that information could just as well be in the manual thus elimin=
ating the need for the wiki entry.

>3) We can introduce comments in the script to explain what and why it does
>what it does(at the moment we have some though)

This is a good idea regardless of what you do.  You should self-document th=
e script with comments.  It would help me out as well.

>4) We can introduce comments in test modules or a DESCRIPTION field to
>document the test steps, especially for more complex tests(we have no such
>comments at the moment).

This is a good idea also regardless of what you do.  The more in-line expla=
nation the better.

>
>I would opt for 2) and 3) as I believe they give the most value with the l=
east
>amount of time needed for creation and maintenance.
>
>If anyone has any more ideas please add your thoughts.
>
>Regards,
>Corneliu
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

