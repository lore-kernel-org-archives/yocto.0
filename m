Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20CECE0030F
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 06:42:18 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Feb 2012 06:42:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103564079"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by orsmga001.jf.intel.com with ESMTP; 03 Feb 2012 06:42:16 -0800
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 3 Feb 2012 14:42:15 +0000
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.99]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.46]) with mapi id
	14.01.0355.002; Fri, 3 Feb 2012 14:42:15 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Joshua Lock <josh@linux.intel.com>
Thread-Topic: [yocto] Hob 1.2 design - Settings dialogue
Thread-Index: AQHM4oIE9BVEzUnPNkOolHsPnmQH1A==
Date: Fri, 3 Feb 2012 14:42:14 +0000
Message-ID: <CB5185EC.703D%belen.barros.pena@intel.com>
In-Reply-To: <4F2B057D.6000905@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.254.53.57]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob 1.2 design - Settings dialogue
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
X-List-Received-Date: Fri, 03 Feb 2012 14:42:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <58918F7FF6D8AF4480AEB10DAC422E47@intel.com>
Content-Transfer-Encoding: quoted-printable

Your verbose mode it's pretty helpful (as it happens with most verbose
modes), so please don't turn it off.

Answers below.

Belen

On 02/02/2012 21:51, "Joshua Lock" <josh@linux.intel.com> wrote:

>Hi Belen,
>
>Sorry this is so long, I don't know how to turn off my verbose switch.
>
>On page 4 you mention Shane's intention to have proxy settings in the UI
>- I just want to point out that this is usually an OS level
>configuration and we should be wary about how we implement it.
>I'd suggest we go so far as to just have a "Change system proxy
>settings" button which launches the OS's network configuration settings.
>
>Of course, this opens us up to potential issues around supporting the
>multitude of available network configuration tools on Linux but I'd
>suggest we start with a lowest common denominator approach and have the
>program behave intelligently.
>
>Explicitly we can detect whether the binary gnome-control-center and the
>so file /usr/lib64/control-center-1/panels/libnetwork.so exist (being
>clever about that path, too) and if so we can execute:
>
>"gnome-control-center display network"
>
>Which will display the network configuration (and therefore proxy)
>settings for stock Fedora and Ubuntu desktops.

You guys are the experts. You tell me how you want it to work and I'll
design the UI for it! :)

>
>
>I understand why the Machines option might be more useful as a list
>widget (p5), rather than a combo box, but feel that this is devalued at
>least slightly by the fact that the list of available Machines isn't
>static and therefore it's not unlikely a user would have to scroll that
>list.

Yes, the list will scroll at some point. I am not too worried about it
though, since I don't think that changing the image types will be
something users will do very often. I might be wrong though.


>One suggestion might be to favour machines with a higher layer priority
>by listing them higher in the list?

I don=B9t know how the layer priorities work. Who sets those priorities? Are
they aligned with user's priorities? If they are, yes, we should use the
layer priorities to determine the order of that list of machines.

>
>Although the next page, 5, mentions that the machine list is a combo
>box. Is that the case?

It is the case in the Image configuration screen, where users, before
building an image, select their machine using a combo box. This screen is
different from the Settings dialogue, where you set some BibBake output
and system variables (the image output types between them). This document
in the wiki=20

http://wiki.yoctoproject.org/wiki/File:Hob_1.2_screens_inventory.pdf

might help making sense of the different screens.

>
>Love the package format selection pieces!
>
>For the two parallel threads buttons we should recommend a default value
>and set a maximum based on the number of CPU cores - I think there's
>been a lot of discussion about this but I'm not certain what the
>recommendation which came out of it was.

That would be really useful. Is it easy to accurately determine how many
cores are supported by the CPU of the machine running Hob?

>
>For the directories on page 13 would it make sense to have a reset
>button to more easily get back to the defaults?

Yes, this probably makes sense. I'll add that to the document next week.

>
>That's all folks,
>Joshua
>
>
>On 02/02/12 08:58, Barros Pena, Belen wrote:
>> I've uploaded a document detailing the design of the Settings dialogue
>>for Hob 1.2 at
>>
>>=20
>>https://wiki.yoctoproject.org/wiki/File:Settings-dialogue-design-spec-v1.
>>0.pdf
>>
>> Sorry it's a boring document instead of a video: it seemed the only way
>>to provide the necessary level of detail
>>
>> Let me know if you have any questions or comments.
>>
>> Belen
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


