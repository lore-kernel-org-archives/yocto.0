Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D38EBE014F0
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 03:21:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Apr 2013 03:21:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,392,1363158000"; d="scan'208";a="315607712"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga002.fm.intel.com with ESMTP; 02 Apr 2013 03:21:23 -0700
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 2 Apr 2013 11:21:10 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.19]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.22]) with mapi id
	14.01.0355.002; Tue, 2 Apr 2013 11:21:10 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] RFC: templates in Hob 1.5
Thread-Index: AQHOL4vKx9NCCnnk4kKG+KRf0EREmQ==
Date: Tue, 2 Apr 2013 10:21:09 +0000
Message-ID: <CD806A84.2688D%belen.barros.pena@intel.com>
In-Reply-To: <CAHUNapTPKxYi-hcm2xv4xhQ1GAmkYm9ZpaAZQYsPoh_K_G0=0Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.1.130117
x-originating-ip: [10.252.56.59]
MIME-Version: 1.0
Subject: Re: RFC: templates in Hob 1.5
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
X-List-Received-Date: Tue, 02 Apr 2013 10:21:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1331F336A2BFB645A83AD32581C0D375@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks, Trevor! Looking at what others are doing regarding templates
sounds like a good starting point, of course. But it seems to me there is
more interesting stuff buried somewhere in your answer, so I hope it's ok
if I dig a little deeper.

I think I might have asked the wrong question. Let's forget about the word
"template" for a moment, and ask something a bit different: of the stuff
you select / configure when building an image with Hob, what would be
useful to save for reuse? Once we determine that, we can discuss how it
should be called ("template" could be the wrong word).

Thanks!

Belen

On 28/03/2013 21:34, "Trevor Woerner" <twoerner@gmail.com> wrote:

>On Thu, Mar 28, 2013 at 2:00 PM, Barros Pena, Belen
><belen.barros.pena@intel.com> wrote:
>> When we tried to define it properly, we realised that templates could
>>be a
>> few different things, and that we should find out which of them is the
>> most useful. This email is my attempt to gather your thoughts on this
>> templates business.
>>
>> I guess the key question to answer is: in your opinion, which parts of
>>the
>> configuration should be saved as part of a Hob template?
>
>If someone handed me something and said "this is my embedded Linux
>distribution's template" I would assume it would pertain to the "feel"
>of this distribution and not, for example, to the list of packages,
>machine, endianness, interfaces, or anything else processor-,
>installation-, or board-specific.
>
>Yocto creates distributions. So if Yocto/Hob has something called
>"templates" then a sensible question to ask is "what is in a Debian
>template?" or a Fedora template? or an openSUSE template? And how do
>they compare to each other?
>
>Each of these distributions (Debian, Fedora, openSUSE) can create
>images for x86, x86_64, ARM, and other targets, therefore the choice
>of hardware doesn't define a distribution's template. The person
>installing Fedora on one machine can choose which packages to install
>such that two people's installations could look entirely different
>from each other (e.g. one person might choose XFCE and the other use
>Gnome), therefore the list of packages doesn't define a distribution's
>template. Each of these can be installed on devices that have or don't
>have Ethernet ports, serial ports, various video output, and various
>input devices, therefore the choice of hardware doesn't define a
>distribution's template.
>
>The assumption is that if someone is comfortable using Fedora on one
>device/installation, they'll also be at home using Fedora on another.
>Therefore there is something templatizable about Fedora that doesn't
>rely on the specific hardware on which you're using it nor on which
>packages are installed. What that is, though, I'm not 100% sure.
>
>To be honest I am uncertain how one could have a "distribution
>template". The above is just my musing on this subject if we had to
>have something called a template :-)
>
>Seeing how poky is very debian-like, most images created with Yocto
>will feel like Debian more than anything else, won't they?

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


