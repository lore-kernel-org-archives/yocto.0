Return-Path: <belen.barros.pena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FADEE0074A
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 04:02:09 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Feb 2012 04:02:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="111218177"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by azsmga001.ch.intel.com with ESMTP; 27 Feb 2012 04:02:07 -0800
Received: from irsmsx102.ger.corp.intel.com (163.33.3.155) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 27 Feb 2012 12:01:52 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.194]) with mapi id
	14.01.0355.002; Mon, 27 Feb 2012 12:01:52 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, William Mills
	<wmills@ti.com>
Thread-Topic: [yocto] Yocto Project Quick Start Feedback
Thread-Index: AQHM9UeWg1VEKub/bUywzAIpoFcxkg==
Date: Mon, 27 Feb 2012 12:01:51 +0000
Message-ID: <CB71180F.8503%belen.barros.pena@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB12379374D038A@ORSMSX102.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.254.193.227]
MIME-Version: 1.0
Cc: "Abbas, Mohamed" <mohamed.abbas@intel.com>,
	Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, "Perez-Gonzalez,
	Inaky" <inaky.perez-gonzalez@intel.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Re: Yocto Project Quick Start Feedback
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
X-List-Received-Date: Mon, 27 Feb 2012 12:02:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <3FD6422FE5D56A41AB0B57F75796107B@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi all,

Sorry to jump in. After reading the discussion I went to check the web
traffic data for the Quick Start page, thinking that it might give us some
useful information about how people are using the content and how to
improve it.=20

Unfortunately, it looks like the Google Analytics script is missing from
http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.
html, so no web traffic information is available.

Before making changes to the content, maybe we could add the Google
Analytics tracking script to the page and see what comes out of it. By
providing volume, the data could help us break the 'personal opinion
deadlock'.

What do you think?

Belen


On 24/02/2012 22:19, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
wrote:

>Bill,=20
>
>You are reading me wrong.  I actually like the idea.  It fits a Quick
>Start.  I was going to divert the expert reader anyway.  The reason I
>tried to paint the picture here was to see what others thought of the
>idea.=20
>
>Scott
>
>-----Original Message-----
>From: William Mills [mailto:wmills@ti.com]
>Sent: Friday, February 24, 2012 1:07 PM
>To: Rifenbark, Scott M
>Cc: Darren Hart; Yocto Project; Abbas, Mohamed; Purdie, Richard;
>Perez-Gonzalez, Inaky
>Subject: Re: [yocto] Yocto Project Quick Start Feedback
>
>On 02/24/2012 01:05 PM, Rifenbark, Scott M wrote:
>> The "movie" angle is interesting.  Picture this... the opening 1/2 page
>>sets up the packages for Ubuntu, downloads files, builds
>>core-image-sata, and runs qemu.  All this done without even telling
>>anyone what YP is.  Follow that by "what just happened... we just built
>>and ran an image using the Yocto Project.  Then the QS launches into the
>>"Welcome" stuff and flows on as normal.  That would be a unique
>>beginning for a technical manual.
>
>I sense some derision in your word "unique"?  Thats fine, your doing
>most of the work and you have to be happy with it.
>
>However I don't think it is unique.  Yes it would be a bad approuch to
>use in a reference manual but I have found a number of  intros/tutorials
>start this way and I always enjoy the approuch.  Perhaps the QS at only
>9 printed pages is too short to be structured this way.  The QS guide
>itself is just this "taste of the bigger picture" for the full doc set.
>
>As I said, just some thoughts.
>
>Bill
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


