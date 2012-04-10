Return-Path: <david.c.stewart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B521E00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 09:07:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2012 09:07:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151979168"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2012 09:07:09 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 10 Apr 2012 09:07:07 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.123]) with mapi id
	14.01.0355.002; Tue, 10 Apr 2012 09:07:07 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Thread-Topic: [yocto] Moving angstrom under the yocto banner
Thread-Index: AQHNDqUlRCeVvMdQd0Cca/O9pDQkyJaDpriAgBD2+4D//6iTMA==
Date: Tue, 10 Apr 2012 16:07:05 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D15151514CC@ORSMSX105.amr.corp.intel.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<CALZ2gZVhRwSbv86SDiFZY685c+R5P7tNSaK-Mf0204bAMLVOuA@mail.gmail.com>
	<93E9DB02-0484-40E7-9FF1-E82AF7305CEE@dominion.thruhere.net>
In-Reply-To: <93E9DB02-0484-40E7-9FF1-E82AF7305CEE@dominion.thruhere.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org list" <yocto@yoctoproject.org>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 10 Apr 2012 16:07:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

[Note, Koen is trying to get davest to respond quickly by trying a top post=
. Good work, Koen!]

>From: Koen Kooi [mailto:koen@dominion.thruhere.net]
>Sent: Tuesday, April 10, 2012 7:04 AM
>
>Dave,
>
>Coud summarize the discussion about this during bspfest, collab and the AB
>meeting please?

Evidently I created a firestorm of controversy with my previous stupid ques=
tions on this topic. At the risk of doing so again, will soldier on.  Offic=
ial minutes coming from Shane/Jefro in coming days.

I think we're all in agreement with the intent of the Yocto Project - to mi=
nimize or eliminate the redundant effort required currently in embedded Lin=
ux. This is why we have people slaving away to QA our release bits and fix =
bugs, for example.=20

With that intent clear, we're still trying to work out which parts of the p=
rojects are intended to be upstreams and which are there just as examples. =
There is some additional clarity we need in order to make this really clear=
, and I think RP took the action to work on this. (Some of the lack of clar=
ity is that there are still a lot of things called "poky" and go by fancy v=
ideo game character names, which might need to change).

In the AB meeting, we spent time talking about the use of the Yocto Project=
 (tm) logo and brand. We agreed to create a straw man spreadsheet of requir=
ements for this and will discuss over the next month. The analogy here is t=
o the CGL requirements form, only I'm hoping it's closer to maybe a dozen l=
ines to fill in rather than 200. :-)

Dave

>regards,
>
>Koen
>
>Op 30 mrt. 2012, om 21:00 heeft Osier-mixon, Jeffrey het volgende
>geschreven:
>
>> As I understand it - Poky is sort of a "reference distro" for the Yocto =
system.
>I think Angstrom would be an excellent addition as an alternative, and I'd=
 be
>happy to do anything needed on the community side to help.
>>
>> On Fri, Mar 30, 2012 at 11:44 AM, Koen Kooi
><koen@dominion.thruhere.net> wrote:
>> Hi,
>>
>> RP said I should raise this on the yocto lists, so here it is:
>>
>> The Angstrom core team would like to move angstrom under the yocto
>banner so we can formally claim to be 'yocto'.
>>
>> What is the process to make that happen? I suspect OSVs will need to kno=
w
>as well, since lately yocto is being defined as 'poky + 1 bsp layer' which=
 makes
>it impossible to provide any added value if you want to keep calling it 'y=
octo' to
>your customers.
>
>>
>> regards,
>>
>> Koen
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> Jeff Osier-Mixon http://jefro.net/blog
>> Yocto Project Community Manager @Intel http://yoctoproject.org
>>


