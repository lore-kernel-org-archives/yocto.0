Return-Path: <paul.anderson@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C69214C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 17:12:29 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9JMCROj000804;
	Tue, 19 Oct 2010 15:12:27 -0700 (PDT)
Received: from ala-mail10.corp.ad.wrs.com ([147.11.57.155]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Oct 2010 15:12:27 -0700
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 19 Oct 2010 15:11:51 -0700
Message-ID: <E1027E710AAD99438096D079C7648C625B7FE4@ala-mail10.corp.ad.wrs.com>
In-Reply-To: <4CBE12E4.2070803@linux.intel.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Yocto Linux Project Sync notes
Thread-Index: Actv2Blc4FmaTMzmRWiJGg+QP2XPoAAAmmIA
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>	
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
	<1287504271.26874.205.camel@elmorro> <4CBE1150.6090807@intel.com>
	<E1027E710AAD99438096D079C7648C625B7FDF@ala-mail10.corp.ad.wrs.com>
	<4CBE12E4.2070803@linux.intel.com>
From: "Anderson, Paul" <paul.anderson@windriver.com>
To: "Darren Hart" <dvhart@linux.intel.com>
X-OriginalArrivalTime: 19 Oct 2010 22:12:27.0662 (UTC)
	FILETIME=[B7285AE0:01CB6FDA]
X-Mailman-Approved-At: Tue, 19 Oct 2010 17:31:11 -0500
Cc: "McCombe, Kevin" <kevin.mccombe@windriver.com>, "Ta,
	Lieu" <Lieu.Ta@windriver.com>, "Lock,
	Joshua" <joshua.lock@intel.com>, "Ashfield,
	Bruce" <Bruce.Ashfield@windriver.com>, "Purdie,
	Richard" <richard.purdie@intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 19 Oct 2010 22:12:30 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Got it. At a top level the requirement is showing stuff running on real
hardware (all archs) as well as within QEMU (all archs). As far as what
is shown on what, that's another matter.

Regards,

-pja

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Tuesday, October 19, 2010 2:52 PM
To: Anderson, Paul
Cc: Zanussi, Tom; Stewart, David C; McCombe, Kevin; Wold, Saul; Zhang,
Jessica; deVries, Alex; Polk, Jeffrey; Hatle, Mark; Purdie, Richard; Li,
Susie; Lock, Joshua; Ashfield, Bruce; Ta, Lieu; yocto@yoctoproject.org
Subject: Re: Yocto Linux Project Sync notes

On 10/19/2010 02:48 PM, Anderson, Paul wrote:
> I thought the plan was to do BOTH a QEMU demo and a demo on real=20
> hardware? If that's not the plan, it should be the plan.

There has been no discussion of a QEMU demo for the media network demo.=20
I've tested some components with QEMU, but we aren't currently planning
on demo'ing this in QEMU.

--
Darren Hart
Embedded Linux Kernel

