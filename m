Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E50CE013EB
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 02:35:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Jun 2012 02:35:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="157970560"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 15 Jun 2012 02:35:27 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 15 Jun 2012 10:33:19 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.185]) with mapi id
	14.01.0355.002; Fri, 15 Jun 2012 10:33:19 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] live image types and qemu machines
Thread-Index: AQHNStlQ57Boc8qmFUu91F44Z5Ue6Jb7HhaA
Date: Fri, 15 Jun 2012 09:33:18 +0000
Message-ID: <CC00BF10.1129B%belen.barros.pena@intel.com>
In-Reply-To: <4FDA53DC.8090002@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.35.249]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: live image types and qemu machines
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
X-List-Received-Date: Fri, 15 Jun 2012 09:35:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <44AFE32003600F4EAD4CC95C6875FB3B@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks Darren and Liming.

It sounds like we should keep things as they are, and that we'll need a
screen that gives you options to both run and deploy an image when you
have built for qemu selecting image types ext2 or ext3 and live.

Belen



On 14/06/2012 22:13, "Darren Hart" <dvhart@linux.intel.com> wrote:

>
>
>On 06/14/2012 08:09 AM, Barros Pena, Belen wrote:
>> Hi all,
>>=20
>> The current Hob allows you to build images for a qemu machine selecting
>> 'live' as your image type. To me (with my pitiful knowledge) this
>>doesn't
>> make much sense: would I want to deploy an image built for a
>> virtualisation environment in a real piece of hardware?
>>=20
>> So here goes a question: should we allow Hob users, who are mainly
>>people
>> new to the Yocto project, to select the 'live' image type when building
>> images for qemu machines?
>>=20
>
>In my opinion: YES. The reason is that this allows you to test the live
>image format and the boot mechanism on virtualized hardware. This is a
>valuable development tool.
>
>--
>Darren
>
>> This might sound like a silly question, but it has a pretty big impact
>>on
>> the Settings dialog and on the number of variations we need to create
>>for
>> our 'Image details' screen, which appears after the build finishes and
>> displays logical next steps (like run the image or deploy your image to
>> external storage).
>>=20
>> Any help with this would be much appreciated.
>>=20
>> Thanks!
>>=20
>> Belen
>>=20
>>=20
>>=20
>>=20
>> ---------------------------------------------------------------------
>> Intel Corporation (UK) Limited
>> Registered No. 1134945 (England)
>> Registered Office: Pipers Way, Swindon SN3 1RJ
>> VAT No: 860 2173 47
>>=20
>> This e-mail and any attachments may contain confidential material for
>> the sole use of the intended recipient(s). Any review or distribution
>> by others is strictly prohibited. If you are not the intended
>> recipient, please contact the sender and delete all copies.
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>
>--=20
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Linux Kernel
>
>
>
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


