Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 083B7E01372
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 02:24:32 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Feb 2012 02:24:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115388755"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by fmsmga001.fm.intel.com with ESMTP; 08 Feb 2012 02:24:31 -0800
Received: from irsmsx102.ger.corp.intel.com (163.33.3.155) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 8 Feb 2012 10:23:07 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.194]) with mapi id
	14.01.0355.002; Wed, 8 Feb 2012 10:23:06 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Joshua Lock <josh@linux.intel.com>
Thread-Topic: [yocto] RFC: Hob 1.2 design
Thread-Index: AQHM5kulEORhW2hRwEWGTPgji6fKMA==
Date: Wed, 8 Feb 2012 10:23:06 +0000
Message-ID: <CB57FD70.768C%belen.barros.pena@intel.com>
In-Reply-To: <4F314E7F.7060108@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.254.196.27]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Hob 1.2 design
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
X-List-Received-Date: Wed, 08 Feb 2012 10:24:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F3795F23114E7A4D81E8BD654B1408E4@intel.com>
Content-Transfer-Encoding: quoted-printable

Just to clarify: videos show relevant functionality to a specific design
piece. The fact that a video does not show something it doesn't mean the
functionality has gone away. If I showed everything on each video they
would be very very long (and very very boring) videos.  I hope this
explains.=20

Given the time constraints we have, the little design documentation I am
producing is incomplete. Therefore, it is very important that if you have
any questions, doubts, thoughts, feedback, general comments etc about the
Hob UI, you get in touch with me. Even if the question sounds very small
or trivial: that's what I am here for.

Cheers

Belen



On 07/02/2012 16:17, "Joshua Lock" <josh@linux.intel.com> wrote:

>Hi Belen,
>
>Thanks for clarifying.
>
>Shane - I noticed at least one bug has been closed because the second
>video didn't show the features (#1804) - seems like this isn't what was
>intended by features 'disappearing' in the latest video.
>
>http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1804
>
>Cheers,
>Joshua
>
>On 07/02/12 03:23, Barros Pena, Belen wrote:
>> Hi Joshua,
>>
>> Additional package details appear on clicking the package name using an
>> information bubble. The bubble is also dismissed on click using a
>>'close'
>> button. This functionality is shown on the first video (not on the
>>second
>> one: I skipped it to keep it short).
>>
>> Cheers
>>
>> Belen
>>
>> On 06/02/2012 21:32, "Joshua Lock"<josh@linux.intel.com>  wrote:
>>
>>> On 31/01/12 17:39, Wang, Shane wrote:
>>>> Hi, all,
>>>>
>>>> Belen has a new video for Hob2 workflow and design.
>>>>
>>>> https://wiki.yoctoproject.org/wiki/File:Hob1.2-screencast2.mov
>>>
>>> It just came to my attention through another channel that the
>>> description column of the packages table is no longer present.
>>>
>>> There had been some discussion about how to show relevant description
>>> information in that column, so I'm surprised to see it go.
>>>
>>> Belen, I assume from a design perspective this field was removed as it
>>> didn't show anything particularly useful? If we have useful data to
>>> include in that field is there a more appropriate way to integrate it
>>> into the UI? Perhaps a tooltip? Or an information overlay as has been
>>> used in other areas of the design?
>>>
>>> I'm concerned that if we give the user a list of packages without any
>>> more information we aren't making it easy for them to build an OS image
>>> without already understanding exactly all of the components they need -
>>> thoughts?
>>>
>>> Cheers,
>>> Joshua
>>> --
>>> Joshua Lock
>>>          Yocto Project "Johannes factotum"
>>>          Intel Open Source Technology Centre
>>
>
>--=20
>Joshua Lock
>         Yocto Project "Johannes factotum"
>         Intel Open Source Technology Centre

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


