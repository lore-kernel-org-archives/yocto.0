Return-Path: <belen.barros.pena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5845FE01366
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 02:30:20 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Feb 2012 02:30:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="106836309"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by orsmga002.jf.intel.com with ESMTP; 06 Feb 2012 02:30:18 -0800
Received: from irsmsx103.ger.corp.intel.com (163.33.3.157) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 6 Feb 2012 10:29:34 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.221]) with mapi id
	14.01.0355.002; Mon, 6 Feb 2012 10:29:33 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "Wang, Shane" <shane.wang@intel.com>, 
	"Xu, Dongxiao" <dongxiao.xu@intel.com>
Thread-Topic: [yocto] Hob 1.2 design - visuals
Thread-Index: AQHM5Lo3WDLvCq+gp023M78WkbVScw==
Date: Mon, 6 Feb 2012 10:29:34 +0000
Message-ID: <CB555A2C.72A3%belen.barros.pena@intel.com>
In-Reply-To: <4F2C2837.8040606@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.252.18.204]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Metthey,
	Mikael" <mikael.metthey@intel.com>
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
X-List-Received-Date: Mon, 06 Feb 2012 10:30:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <97E1505DE640E34BA884037169C64D33@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi all,

It looks like there are some design implementation principles laid out on
the email below. Just to summarise:

1. Implement the Hob design with the toolkit provided widgets and OS theme
and review which things we might want to enhance later. I understand this
excludes icons: we will use the ones provided by the visual design.

2. Make sure that all action buttons in windows and dialogues follow up
the spacing GNOME rules set by the Human Interface Guidelines at
http://developer.gnome.org/hig-book/3.0/index.html.en

3. Inherit colour scheme from applied OS theme in host computer

Shane, Dongxiao: if you have any comments about the above, please let us
know.

Cheers

Belen

On 03/02/2012 18:32, "Joshua Lock" <josh@linux.intel.com> wrote:

>On 03/02/12 03:52, Barros Pena, Belen wrote:
>> Hi Joshua,
>>
>> Thanks for the feedback. I don't have definite answers to your
>>questions:
>> I think they should come out of a discussion between design and dev
>>teams.
>
>I agree.
>
>> My first stab to some answers below.
>>
>>> 1) where the visual design differentiates from the toolkit (Gtk+) is
>>>the
>>> intention that we should use the toolkit provided widgets or create our
>>> own to more closely match the visual design?
>>> (for example the tabs for notebook pages in the 'Building Packages'
>>> screen).
>>
>> I have no experience with GTK, but I would hope that standard widgets
>>can
>> be themed. So the idea would be using toolkit widgets themed to match
>>the
>> visual style. Is this assumption incorrect?
>
>The widgets can indeed be themed, but in the favour of visual
>consistency across the system I usually try to avoid it unless there's a
>compelling reason to do so.
>
>Perhaps we can address differences between visual design and toolkit on
>a case-by-case basis? Implement with the toolkit provided widgets and OS
>theme and review which things we might want to enhance later?
>
>> If no toolkit widget exist for a certain UI control, we have to either
>> replace it with a toolkit widget or create our own, but I really hope
>>this
>> is the exception rather than the rule.
>
>Oh yes, I don't think that's the case for Hob. It was the exception for
>some work I did on Moblin but certainly not the rule, in fact that
>widget is part of the standard toolkit now.
>
>>> 2) When implementing Hob v1 I tried to follow the GNOME HIG[1] to
>>>ensure
>>> the app would fit in with the common Linux desktop environments. Should
>>> v2 continue that trend? Where the visual design might differ with the
>>> HIG which should be preferred?
>>> (i.e. the button being flush with the bottom of the window in the Image
>>> Configuration screen is what first struck me here).
>>
>> Nothing in the design should blatantly contradict the GNOME HIG: in
>> general they are good design practice and we wouldn't ignore them
>>without
>> a reason to do so. If there are any exceptions (like the primary action
>> button one) we could look at them on a case by case basis. I don't think
>> leaving 12 pixels between the bottom of the window edge and the button
>> will make or break the interface. What's important is that the location
>> and spacing of those 'primary action' buttons are consistent across the
>> whole Hob. If we feel we shouldn't break the 12px rule, I am sure Mikael
>> will agree that the button effect is not that important, and that we can
>> lift it up to fit the spacing GNOME rules.
>
>This is great to read. I was hoping to elicit such a response and just
>wanted to make sure engineering and design are on the same page here. It
>feels like we are?
>
>I understand that 12px won't make or break the interface but I'm
>definitely pro consistent UI across the whole OS where possible. I
>expect I'm preaching to the choir here, so I'll leave it at that.
>
>>> 3) where the visual design uses various colours I assume the intention
>>> is to use the colours from the operating systems theme? This is
>>>slightly
>>> more difficult programatically than hard-coding colours but leads to
>>>(in
>>> my opinion) a much more pleasing visual experience.
>>> (i.e. tooltip and button colours)
>>
>> Yes, using the colours from the OS theme is probably the best thing to
>>do.
>
>Awesome! I'd go so far as to say it's definitely the best thing to do. I
>didn't manage it with Hob 1 and had some ugly screenshots sent my way
>from poor users who dared to use a different theme than me.
>
>>> Finally, I notice that the titlebar calls it HOB, instead of Hob - was
>>> that intentional? Hob was always mean as a name, not an acronym.
>>
>> It's a typo: sorry about that. It should say Hob of course.
>
>No need to apologise. Just wanted to make sure.
>
>Thanks for your response,
>Joshua
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


