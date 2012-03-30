Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CDE8E006C7
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 04:26:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Mar 2012 04:26:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147832893"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2012 04:26:40 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.40]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.225]) with mapi id
	14.01.0355.002; Fri, 30 Mar 2012 12:26:16 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Deleting layers in Hob
Thread-Index: AQHNDmfrPz0YgkOEskKQXE703F6Xkw==
Date: Fri, 30 Mar 2012 11:26:15 +0000
Message-ID: <CB9B56AE.BE8E%belen.barros.pena@intel.com>
In-Reply-To: <CAMKF1spx3rzKqcTMbiW0pxv58OrDEpAPAieV3q2EWUK5T7gnMA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.14.0.111121
x-originating-ip: [10.254.199.101]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Giulia Piu <giulia@closertag.com>
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
X-List-Received-Date: Fri, 30 Mar 2012 11:26:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <62C03DD087CE504C94C5991295D35786@intel.com>
Content-Transfer-Encoding: quoted-printable

Well: I don't know. Does anybody have an answer?

Belen

On 30/03/2012 07:32, "Khem Raj" <raj.khem@gmail.com> wrote:

>On Thu, Mar 29, 2012 at 4:05 AM, Barros Pena, Belen
><belen.barros.pena@intel.com> wrote:
>> Do we have enough information to make a decision about the meta-yocto
>> layer? I don't understand all the technical details, but I am inclined
>>to
>> make it non-deletable in Hob (i.e. it is not possible to delete this
>>layer
>> in Hob).
>>
>> What do you think?
>
>bad idea. Unless you intend to shackle hob to yocto. Is that the
>intention ?

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


