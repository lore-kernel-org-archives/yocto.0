Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92528E005B3
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 08:19:46 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jul 2013 08:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1028,1363158000"; d="scan'208";a="367477622"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga002.fm.intel.com with ESMTP; 09 Jul 2013 08:19:45 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 9 Jul 2013 16:19:44 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.91]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.147]) with mapi id
	14.03.0123.003; Tue, 9 Jul 2013 16:19:43 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] naming .bb files
Thread-Index: AQHOfLe9qOqpcNibyUm3D3F9nwKgCg==
Date: Tue, 9 Jul 2013 15:19:43 +0000
Message-ID: <CE01E628.2DA0C%belen.barros.pena@intel.com>
In-Reply-To: <CC9FA643-3294-4292-885F-75FE73E00065@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.2.130206
x-originating-ip: [10.252.57.67]
MIME-Version: 1.0
Subject: Re: naming .bb files
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
X-List-Received-Date: Tue, 09 Jul 2013 15:19:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A3B8FC7D90C2414DBC19E035C0F86EDA@intel.com>
Content-Transfer-Encoding: quoted-printable



On 09/07/2013 14:47, "Khem Raj" <raj.khem@gmail.com> wrote:

>
>On Jul 9, 2013, at 6:45 AM, "Barros Pena, Belen"
><belen.barros.pena@intel.com> wrote:
>
>> On 09/07/2013 11:35, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>> =

>>> On 9 July 2013 11:27, Barros Pena, Belen <belen.barros.pena@intel.com>
>>> wrote:
>>>> Thanks Ross!
>>>> =

>>>> I've tried a .bb file name with capital letters and Hob is not liking
>>>>it
>>>> at all. So it looks like uppercase might also be a problem.
>>>> =

>>> =

>>> This is from memory and a month or so back but I think the problem
>>> with capital letters is that opkg rejects .ipk files with capital
>>> letters. I didn't have any problems with it when producing .deb files.
>> =

>> It sounds like the safe thing for Hob to do is to reject uppercase
>>letters
>> in .bb file names (just in case).
>
>not only names but also in PR string if it has letters in it.

Noted, thanks!

>
>> =

>> =

>> Thanks! =

>> =

>> =

>>> =

>>> --
>>> Paul Barker
>>> =

>>> Email: paul@paulbarker.me.uk
>>> http://www.paulbarker.me.uk
>> =

>> ---------------------------------------------------------------------
>> Intel Corporation (UK) Limited
>> Registered No. 1134945 (England)
>> Registered Office: Pipers Way, Swindon SN3 1RJ
>> VAT No: 860 2173 47
>> =

>> This e-mail and any attachments may contain confidential material for
>> the sole use of the intended recipient(s). Any review or distribution
>> by others is strictly prohibited. If you are not the intended
>> recipient, please contact the sender and delete all copies.
>> =

>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


