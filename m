Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3EF0E00307
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 03:52:55 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Feb 2012 03:52:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="105871391"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2012 03:52:53 -0800
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	irsmsx601.ger.corp.intel.com (163.33.7.164) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 3 Feb 2012 11:52:24 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.32]) with mapi id
	14.01.0355.002; Fri, 3 Feb 2012 11:52:24 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Hob 1.2 design - visuals
Thread-Index: AQHM4mpKH7n4uL9PK0uI6YGnf/riFQ==
Date: Fri, 3 Feb 2012 11:52:23 +0000
Message-ID: <CB5167DE.6F4D%belen.barros.pena@intel.com>
In-Reply-To: <4F2AFDE9.6030505@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.252.5.69]
MIME-Version: 1.0
Cc: "Metthey, Mikael" <mikael.metthey@intel.com>
Subject: Re: Hob 1.2 design - visuals
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
X-List-Received-Date: Fri, 03 Feb 2012 11:52:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <54C31F02BC226541BA06A36E87CBD7D2@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Joshua,

Thanks for the feedback. I don't have definite answers to your questions:
I think they should come out of a discussion between design and dev teams.

My first stab to some answers below.

> 1) where the visual design differentiates from the toolkit (Gtk+) is the
> intention that we should use the toolkit provided widgets or create our
> own to more closely match the visual design?
> (for example the tabs for notebook pages in the 'Building Packages'
>screen).

I have no experience with GTK, but I would hope that standard widgets can
be themed. So the idea would be using toolkit widgets themed to match the
visual style. Is this assumption incorrect?

If no toolkit widget exist for a certain UI control, we have to either
replace it with a toolkit widget or create our own, but I really hope this
is the exception rather than the rule.



> 2) When implementing Hob v1 I tried to follow the GNOME HIG[1] to ensure
> the app would fit in with the common Linux desktop environments. Should
> v2 continue that trend? Where the visual design might differ with the
> HIG which should be preferred?
> (i.e. the button being flush with the bottom of the window in the Image
> Configuration screen is what first struck me here).

Nothing in the design should blatantly contradict the GNOME HIG: in
general they are good design practice and we wouldn't ignore them without
a reason to do so. If there are any exceptions (like the primary action
button one) we could look at them on a case by case basis. I don't think
leaving 12 pixels between the bottom of the window edge and the button
will make or break the interface. What's important is that the location
and spacing of those 'primary action' buttons are consistent across the
whole Hob. If we feel we shouldn't break the 12px rule, I am sure Mikael
will agree that the button effect is not that important, and that we can
lift it up to fit the spacing GNOME rules.

> 3) where the visual design uses various colours I assume the intention
> is to use the colours from the operating systems theme? This is slightly
> more difficult programatically than hard-coding colours but leads to (in
> my opinion) a much more pleasing visual experience.
> (i.e. tooltip and button colours)

Yes, using the colours from the OS theme is probably the best thing to do.

> Finally, I notice that the titlebar calls it HOB, instead of Hob - was
> that intentional? Hob was always mean as a name, not an acronym.

It's a typo: sorry about that. It should say Hob of course.

Belen


On 02/02/2012 21:19, "Joshua Lock" <josh@linux.intel.com> wrote:


>I really like the look Mikael has created here.
>
>A couple of related questions, this could just be mis-calibrated
>expectation from visual design on my part so please don't take them as
>criticism - merely an attempt to clarify:
>
>1) where the visual design differentiates from the toolkit (Gtk+) is the
>intention that we should use the toolkit provided widgets or create our
>own to more closely match the visual design?
>(for example the tabs for notebook pages in the 'Building Packages'
>screen).
>
>2) When implementing Hob v1 I tried to follow the GNOME HIG[1] to ensure
>the app would fit in with the common Linux desktop environments. Should
>v2 continue that trend? Where the visual design might differ with the
>HIG which should be preferred?
>(i.e. the button being flush with the bottom of the window in the Image
>Configuration screen is what first struck me here).
>
>3) where the visual design uses various colours I assume the intention
>is to use the colours from the operating systems theme? This is slightly
>more difficult programatically than hard-coding colours but leads to (in
>my opinion) a much more pleasing visual experience.
>(i.e. tooltip and button colours)
>
>Finally, I notice that the titlebar calls it HOB, instead of Hob - was
>that intentional? Hob was always mean as a name, not an acronym.
>
>I'm probably confusing visual design for a spec but it's been a while
>since I worked with the design team and my engineers mind is very literal.
>
>This is looking really good!
>
>Cheers,
>Joshua
>
>1. http://developer.gnome.org/hig-book/3.0/
>
>On 02/02/12 09:24, Barros Pena, Belen wrote:
>> Mikael, our visual designer, has been working full speed on Hob 1.2. His
>> work is now in the wiki too:
>>
>> https://wiki.yoctoproject.org/wiki/File:Hob_1.2_screens_inventory.pdf
>>
>>
>> Belen
>>
>> On 02/02/2012 16:58, "Barros Pena, Belen"<belen.barros.pena@intel.com>
>> wrote:
>>
>>> I've uploaded a document detailing the design of the Settings dialogue
>>> for Hob 1.2 at
>>>
>>>=20
>>>https://wiki.yoctoproject.org/wiki/File:Settings-dialogue-design-spec-v1
>>>.0
>>> .pdf
>>>
>>> Sorry it's a boring document instead of a video: it seemed the only way
>>> to provide the necessary level of detail
>>>
>>> Let me know if you have any questions or comments.
>>>
>>> Belen
>>> ---------------------------------------------------------------------
>>> Intel Corporation (UK) Limited
>>> Registered No. 1134945 (England)
>>> Registered Office: Pipers Way, Swindon SN3 1RJ
>>> VAT No: 860 2173 47
>>>
>>> This e-mail and any attachments may contain confidential material for
>>> the sole use of the intended recipient(s). Any review or distribution
>>> by others is strictly prohibited. If you are not the intended
>>> recipient, please contact the sender and delete all copies.
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> ---------------------------------------------------------------------
>> Intel Corporation (UK) Limited
>> Registered No. 1134945 (England)
>> Registered Office: Pipers Way, Swindon SN3 1RJ
>> VAT No: 860 2173 47
>>
>> This e-mail and any attachments may contain confidential material for
>> the sole use of the intended recipient(s). Any review or distribution
>> by others is strictly prohibited. If you are not the intended
>> recipient, please contact the sender and delete all copies.
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
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


