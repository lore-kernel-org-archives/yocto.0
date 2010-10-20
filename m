Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 906AF4C80121
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 03:21:08 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Oct 2010 01:21:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,354,1283756400"; d="scan'208";a="338229754"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 20 Oct 2010 01:21:07 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 20 Oct 2010 16:20:51 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 20 Oct 2010 16:20:50 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, "Garman, Scott A"
	<scott.a.garman@intel.com>
Date: Wed, 20 Oct 2010 16:20:48 +0800
Thread-Topic: [yocto] New issue with git fetcher?
Thread-Index: Actvqt7fc1SWAfeFT4OM9bs/ND/5OQAhJkIA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504CF2575F98@shsmsx502.ccr.corp.intel.com>
References: <4CBCEC3C.5090003@intel.com>  <4CBCEDC4.3020709@intel.com>
	<1287492926.1720.1342.camel@rex> <1287505758.1720.1673.camel@rex>
In-Reply-To: <1287505758.1720.1673.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New issue with git fetcher?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 08:21:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Wednesday, October 20, 2010 12:29 AM
>
>On Tue, 2010-10-19 at 13:55 +0100, Richard Purdie wrote:
>> I've pushed some more invasive changes to the fetcher in the Poky master
>> branch. I'd appreciate the teams help in finding out if these work or
>> not, with both existing builds and with totally fresh from scratch
>> builds.
>>
>> If they prove not to have major issues we're likely to merge these into
>> the release branch as what is there is going to bite people and look
>> rather bad.
>
>There were some issues that Tom and Joshua were seeing which I debugged
>and found that we weren't adding in new branches in the fetching code.
>
>I was able to reproduce and then have added a patch to the git fetcher
>which ensures these things are cloned correctly and any new branches are
>created. I talked with Bruce to confirm my diagnosis and the solution.
>
>This fix makes an awful lot of sense and explains various issues we've
>been chasing for a while with the fetcher bugs so I'm very pleased to
>have this fix checked in.
>
>Could people continue to test the code and report any problems...
>

I tried "bitbake poky-image-sdk -c fetchall" both with an existing source d=
irectory
and with a fresh new download. Everything works fine.=20

Thanks
Kevin

