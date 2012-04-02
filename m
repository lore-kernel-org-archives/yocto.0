Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BEA7E01304
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2012 03:49:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Apr 2012 03:49:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="127741371"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 02 Apr 2012 03:49:00 -0700
Received: from irsmsx102.ger.corp.intel.com (163.33.3.155) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 2 Apr 2012 11:48:24 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.40]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.39]) with mapi id
	14.01.0355.002; Mon, 2 Apr 2012 11:48:23 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Deleting layers in Hob
Thread-Index: AQHNEL4g6m9zjfo1gUu18Ps+kSU/Uw==
Date: Mon, 2 Apr 2012 10:48:23 +0000
Message-ID: <CB9F4216.C18B%belen.barros.pena@intel.com>
In-Reply-To: <2875706.c2lxvPnLMP@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.254.233.84]
MIME-Version: 1.0
Cc: Giulia Piu <giulia@closertag.com>
Subject: Re: Deleting layers in Hob
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
X-List-Received-Date: Mon, 02 Apr 2012 10:49:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D7ABC26D2002694AA51A561EFFF77EE5@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks, Paul. What happens if the DISTRO is set to empty? Will the image
build?

Belen

On 30/03/2012 13:19, "Paul Eggleton" <paul.eggleton@linux.intel.com> wrote:

>On Friday 30 March 2012 11:26:15 Barros Pena, Belen wrote:
>> On 30/03/2012 07:32, "Khem Raj" <raj.khem@gmail.com> wrote:
>> >On Thu, Mar 29, 2012 at 4:05 AM, Barros Pena, Belen
>> ><belen.barros.pena@intel.com> wrote:
>> >> Do we have enough information to make a decision about the meta-yocto
>> >> layer? I don't understand all the technical details, but I am
>>inclined
>> >> to make it non-deletable in Hob (i.e. it is not possible to delete
>>this
>> >> layer in Hob).
>> >>=20
>> >> What do you think?
>> >
>> >bad idea. Unless you intend to shackle hob to yocto. Is that the
>> >intention ?
>>
>> Well: I don't know. Does anybody have an answer?
>
>We don't want to tie hob to meta-yocto, no. The solution to this problem
>is to=20
>have Hob understand when removing a layer is removing the DISTRO
>selection=20
>that a user currently has made and warning them about it; if they respond
>in=20
>affirmative then DISTRO can be set to empty (or we can allow them to
>select an=20
>alternative, perhaps - something for the designers to consider).
>Fortunately=20
>since DISTRO points directly to a file in conf/distro/ the detection part
>is=20
>pretty easy to implement.
>
>Cheers,
>Paul
>
>--=20
>
>Paul Eggleton
>Intel Open Source Technology Centre

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


