Return-Path: <paul.anderson@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8527D4C810D8
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 16:48:22 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9JLmLkc025156;
	Tue, 19 Oct 2010 14:48:21 -0700 (PDT)
Received: from ala-mail10.corp.ad.wrs.com ([147.11.57.155]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Oct 2010 14:48:21 -0700
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 19 Oct 2010 14:48:17 -0700
Message-ID: <E1027E710AAD99438096D079C7648C625B7FDF@ala-mail10.corp.ad.wrs.com>
In-Reply-To: <4CBE1150.6090807@intel.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Yocto Linux Project Sync notes
Thread-Index: Actv1xAgsZsZklHjTKqS+hOUOQmYEgAACkxw
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>	
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
	<1287504271.26874.205.camel@elmorro> <4CBE1150.6090807@intel.com>
From: "Anderson, Paul" <paul.anderson@windriver.com>
To: "Darren Hart" <darren.hart@intel.com>,
	"Zanussi, Tom" <tom.zanussi@intel.com>
X-OriginalArrivalTime: 19 Oct 2010 21:48:21.0311 (UTC)
	FILETIME=[5910B4F0:01CB6FD7]
X-Mailman-Approved-At: Tue, 19 Oct 2010 17:06:31 -0500
Cc: "Li, Susie" <susie.li@intel.com>, "Lock, Joshua" <joshua.lock@intel.com>,
	"McCombe, Kevin" <kevin.mccombe@windriver.com>, "Ta,
	Lieu" <Lieu.Ta@windriver.com>, yocto@yoctoproject.org, "Ashfield,
	Bruce" <Bruce.Ashfield@windriver.com>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Re: Yocto Linux Project Sync notes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 21:48:22 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I thought the plan was to do BOTH a QEMU demo and a demo on real
hardware? If that's not the plan, it should be the plan.

Regards,

-pja

-----Original Message-----
From: Darren Hart [mailto:darren.hart@intel.com]=20
Sent: Tuesday, October 19, 2010 2:45 PM
To: Zanussi, Tom
Cc: Stewart, David C; McCombe, Kevin; Wold, Saul; Zhang, Jessica;
deVries, Alex; Polk, Jeffrey; Hatle, Mark; Purdie, Richard; Li, Susie;
Lock, Joshua; Ashfield, Bruce; Ta, Lieu; Anderson, Paul;
'yocto@yoctoproject.org'
Subject: Re: Yocto Linux Project Sync notes

On 10/19/2010 09:04 AM, Zanussi, Tom wrote:
> On Tue, 2010-10-19 at 08:40 -0700, Stewart, David C wrote:
>
>>
>> * demo
>>
>> ** Alex will put the hardware bits together, Darren to write down the
description of what needs to come together and wiki-fy it. RP suggests
that maybe getting all the pieces running on one hardware might be a
good way to try it out just in case.
>>
>
> I can try getting everything running on one machine too - would it=20
> make sense to try that all on e.g. emenlow, or all on a laptop using=20
> qemu, or both?

Everything on One machine doesn't make a lot of sense to me, for two
reasons:

1) This is heavily network dependent, making sure the machines can find
eachother is a critical aspect of testing this.
2) Qemu does some magic with tun/tap devices, you have to configure
things to get multicast working between guests. I've tested the
mediatomb image in qemu, it works. We need to test on real hardware.
3) We don't an image that will install everything on the same machine,
and making one doesn't make a lot of sense to me.
4) Running a NAS to serve up media to itself doesn't test the networking
side of things as well.

I'd rather use 3 real devices (even if they are all emenlow or
blacksand) rather than qemu or all on one.

--
Darren

>
> Tom
>


--
Darren Hart
Embedded Linux Kernel

