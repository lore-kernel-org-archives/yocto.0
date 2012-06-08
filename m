Return-Path: <belen.barros.pena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DE60E006D9
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2012 07:30:08 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Jun 2012 07:30:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="153543051"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by azsmga001.ch.intel.com with ESMTP; 08 Jun 2012 07:30:07 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.248]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.246]) with mapi id
	14.01.0355.002; Fri, 8 Jun 2012 15:28:56 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Wang, Shane"
	<shane.wang@intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>, "Damian,
	Alexandru" <alexandru.damian@intel.com>
Thread-Topic: [yocto] Hob implementation: vanilla or branded?
Thread-Index: AQHNRYMIe09U2GkNeEag8CUtTLG3kw==
Date: Fri, 8 Jun 2012 14:28:55 +0000
Message-ID: <CBF7C947.109A2%belen.barros.pena@intel.com>
In-Reply-To: <CAJTo0LbxOrohWtdcxAz3+X0fH84BVEHup9CjxX8WOy276AVT9Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.37.254]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Lock,
	Joshua" <joshua.lock@intel.com>
Subject: Re: Hob implementation: vanilla or branded?
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
X-List-Received-Date: Fri, 08 Jun 2012 14:30:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8D81F68E6777EE4495765D157DBF61FC@intel.com>
Content-Transfer-Encoding: quoted-printable

Vanilla 5 - branded 0 :)

Shane, Dongxiao and Alex: from an implementation point of view, I guess
this means eliminating any hardcoded UI-related values (button colours and
styles, for example). Joshua: if you have a rough idea of the things that
will need to be changed from the work you did before the 1.2 release,
please let us know. I think we should keep the existing icons, though.
What do you think?

Shane: will I log this in bugzilla so that you can assign it a milestone
and an owner?

Thanks

Belen

On 31/05/2012 20:01, "Burton, Ross" <ross.burton@intel.com> wrote:

>Hi Belen,
>
>On 31 May 2012 17:55, Barros Pena, Belen <belen.barros.pena@intel.com>
>wrote:
>> As part of the Hob work for the 1.3 release it looks like we need to
>>make
>> a visual design and implementation decision: do we want a 'vanilla' or a
>> 'branded' look for Hob? Sorry if the choice of words is not the best.
>> Neither 'vanilla' nor 'branded' are meant in any negative way.
>
>Vanilla, definitely.  Aside from sticking out like a sore thumb on the
>user's desktop, a "branded" interface in something like GTK+ is
>normally trickier to implement.
>
>Ross

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


