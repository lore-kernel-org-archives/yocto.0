Return-Path: <belen.barros.pena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E8E1E013A7
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 10:03:53 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Apr 2013 10:03:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,394,1363158000"; d="scan'208";a="279739314"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by azsmga001.ch.intel.com with ESMTP; 02 Apr 2013 10:03:52 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.19]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.99]) with mapi id
	14.01.0355.002; Tue, 2 Apr 2013 18:03:50 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] RFC: templates in Hob 1.5
Thread-Index: AQHOL8QLGCAoP3HlTkKDLNEidb2osQ==
Date: Tue, 2 Apr 2013 17:03:49 +0000
Message-ID: <CD80CC7F.26935%belen.barros.pena@intel.com>
In-Reply-To: <CAHUNapSKNX826DbtikAAf2bQEQMjiQyikdXC3oF1yTCQ75gbiw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.1.130117
x-originating-ip: [10.252.63.24]
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
X-List-Received-Date: Tue, 02 Apr 2013 17:03:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <42E91FF098766444BD77A981791A9706@intel.com>
Content-Transfer-Encoding: quoted-printable

On 02/04/2013 16:50, "Trevor Woerner" <twoerner@gmail.com> wrote:

>On Tue, Apr 2, 2013 at 6:21 AM, Barros Pena, Belen
><belen.barros.pena@intel.com> wrote:
>> But it seems to me there is
>> more interesting stuff buried somewhere in your answer, so I hope it's
>>ok
>> if I dig a little deeper.
>
>:-D
>
>> I think I might have asked the wrong question. Let's forget about the
>>word
>> "template" for a moment, and ask something a bit different: of the stuff
>> you select / configure when building an image with Hob, what would be
>> useful to save for reuse? Once we determine that, we can discuss how it
>> should be called ("template" could be the wrong word).
>
>When I use Hob to click on things here and there, I'm usually just
>playing around; just trying out some things. When I find some
>combination of things that I like, my instinct would be to
>compartmentalize that off into a layer: a particular grouping of
>packages would either be a DISTRO or an image, building something for
>a particular development board would be a BSP or a MACHINE (etc).
>
>In other words I think the "layer" concept completely captures
>whatever it is you're trying to capture with "templates".
>
>:-D
>
>If you're looking to integrate this functionality into Hob, maybe you
>need to look at some way of creating layers? Perhaps a user could save
>their package configuration as a DISTRO or in an image layer?

I like this answer much more :) Thanks, Trevor! This really helps.

Belen

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


