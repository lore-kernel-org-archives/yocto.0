Return-Path: <julie.n.fleischer@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36DDC4C800B0
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 13:25:47 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 May 2011 11:25:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,238,1304319600"; 
   d="scan'208";a="4773653"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 19 May 2011 11:25:46 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 19 May 2011 11:25:46 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.114]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.240]) with mapi id
	14.01.0289.001; Thu, 19 May 2011 11:25:46 -0700
From: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Results from Yocto 1.0.1 Go/No-Go meeting:  No-Go
Thread-Index: AQHMFkmTrPJyB5IGQUiQ3cO1D30ydpSU4LaAgAAEhwD//5H4UA==
Date: Thu, 19 May 2011 18:25:45 +0000
Message-ID: <68002A430AC0584FB0A5391B435E93A902AC06@ORSMSX101.amr.corp.intel.com>
References: <68002A430AC0584FB0A5391B435E93A902AAE3@ORSMSX101.amr.corp.intel.com>
	<4DD55643.1090507@intel.com> <4DD55A10.3080800@intel.com>
In-Reply-To: <4DD55A10.3080800@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Subject: Re: Results from Yocto 1.0.1 Go/No-Go meeting: No-Go
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
X-List-Received-Date: Thu, 19 May 2011 18:25:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Elizabeth Flanagan
>Sent: Thursday, May 19, 2011 10:58 AM
>To: yocto@yoctoproject.org
>Subject: Re: [yocto] Results from Yocto 1.0.1 Go/No-Go meeting: No-Go
>
>
>
>On 05/19/2011 10:41 AM, Saul Wold wrote:
>> Investigation is complete.
>>
>> This issue is related to how libzypp constructs a header file in
>bitbake
>> using PACKAGE_EXTRA_ARCHS. In 1.0.1 the PACKAGE_EXTRA_ARCHS was
>> cumulative list defined in both crownbay*.conf and tune-atom.inc.  In
>> 1.1 this was changed to just be set once in the tune-atom.inc.
>>
>> Because it was a cumulative list, it included x86 twice in 1.0.1 and
>> only once and correctly 1.1.
>>
>> So the fix is in the crownbay BSP, and does not affect the core 1.0.1
>> base as we currently have it.  This means no respin or re-test is
>> required of the existing bit.
>>
>> ** Is this sufficient information to change to a "GO", pending the
>> beagleboard testing at this point? **
>>
>> Sau!
>>
>>
>
>I would like to just spin a nightly-external once the beagleboard patch
>gets in, to verify the fix. If the fix gets in
>today, I can have it done before our weekly 1.1-preM1 build.

Sounds great!  If Beth is able to create the Beagleboard image for testing =
and Jiajun is able to test before Tuesday, we could have another go/no-go d=
iscussion during the Technical Team meeting to (hopefully) be able to relea=
se 1.0.1 early next week.

I will add that to the Tuesday agenda.

- Julie=20

>---------------
>Elizabeth Flanagan
>Yocto Project
>Release Engineer
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

