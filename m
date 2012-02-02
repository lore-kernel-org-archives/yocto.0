Return-Path: <belen.barros.pena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5255BE00594
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 02:37:38 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Feb 2012 02:37:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102362816"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by azsmga001.ch.intel.com with ESMTP; 02 Feb 2012 02:36:45 -0800
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 2 Feb 2012 10:36:16 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.165]) with mapi id
	14.01.0355.002; Thu, 2 Feb 2012 10:36:15 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Hob 1.2 design
Thread-Index: AQHM4ZZ8cmNZ+QhP2E2sZucRJX0/sA==
Date: Thu, 2 Feb 2012 10:36:14 +0000
Message-ID: <CB5016D4.6DDD%belen.barros.pena@intel.com>
In-Reply-To: <CDED78A957032E45B3239CDDA7642D150841696F@ORSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.252.22.131]
MIME-Version: 1.0
Subject: Re: Hob 1.2 design
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
X-List-Received-Date: Thu, 02 Feb 2012 10:37:38 -0000
Content-Language: en-US
Content-ID: <340A54AF6A9E69478DB1A3B180D50CC4@intel.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"

You are right, Dave. "Deploy image" and "Write to storage" are the same thi=
ng. I meant to use "Write to storage" everywhere (it seemed a more accurate=
 description), but a "Deploy" slipped through!

Thanks for the nice feedback.

Belen

From: "Stewart, David C" <david.c.stewart@intel.com<mailto:david.c.stewart@=
intel.com>>
Date: Wed, 1 Feb 2012 03:15:55 +0000
To: "Wang, Shane" <shane.wang@intel.com<mailto:shane.wang@intel.com>>, "yoc=
to@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctoproject.org=
<mailto:yocto@yoctoproject.org>>
Subject: Re: [yocto] Hob 1.2 design

Belen =96 nice work!  This just gets better all the time.  I really like th=
e enhancements to the work flow.

Quick question =96 around 6:40 in the video, once you successfully build th=
ere is a =93Deploy Image=94 button. Then at 7:44 there is a =93Write to Sto=
rage=94 button. Are these both doing the same thing?

Thank you for making something so functional and so beautiful.

Dave

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Wang, Shane
Sent: Wednesday, February 01, 2012 9:39 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] RFC: Hob 1.2 design

Hi, all,

Belen has a new video for Hob2 workflow and design.

https://wiki.yoctoproject.org/wiki/File:Hob1.2-screencast2.mov

Please comment.

Thanks.
--
Shane
_______________________________________________ yocto mailing list yocto@yo=
ctoproject.org<mailto:yocto@yoctoproject.org> https://lists.yoctoproject.or=
g/listinfo/yocto
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


