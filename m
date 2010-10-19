Return-Path: <paul.anderson@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 580DE4C80815
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 17:14:30 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9JMDSdZ000915;
	Tue, 19 Oct 2010 15:13:28 -0700 (PDT)
Received: from ala-mail10.corp.ad.wrs.com ([147.11.57.155]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 19 Oct 2010 15:13:27 -0700
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 19 Oct 2010 15:12:30 -0700
Message-ID: <E1027E710AAD99438096D079C7648C625B7FE5@ala-mail10.corp.ad.wrs.com>
In-Reply-To: <1287526141.16386.15.camel@rex>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Yocto Linux Project Sync notes
Thread-Index: Actv2k6Hps3Fk79ZTb2x/b8flaINXQAAGWUQ
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
	<1287504271.26874.205.camel@elmorro> <4CBE1150.6090807@intel.com>
	<E1027E710AAD99438096D079C7648C625B7FDF@ala-mail10.corp.ad.wrs.com>
	<4CBE12E4.2070803@linux.intel.com> <1287526141.16386.15.camel@rex>
From: "Anderson, Paul" <paul.anderson@windriver.com>
To: "Richard Purdie" <rpurdie@linux.intel.com>,
	"Darren Hart" <dvhart@linux.intel.com>
X-OriginalArrivalTime: 19 Oct 2010 22:13:27.0925 (UTC)
	FILETIME=[DB13C250:01CB6FDA]
X-Mailman-Approved-At: Tue, 19 Oct 2010 17:31:11 -0500
Cc: "McCombe, Kevin" <kevin.mccombe@windriver.com>, "Ta,
	Lieu" <Lieu.Ta@windriver.com>, "Lock,
	Joshua" <joshua.lock@intel.com>, "Ashfield,
	Bruce" <Bruce.Ashfield@windriver.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 19 Oct 2010 22:14:30 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Spot on, Richard.

-pja=20

-----Original Message-----
From: Richard Purdie [mailto:rpurdie@linux.intel.com]=20
Sent: Tuesday, October 19, 2010 3:09 PM
To: Darren Hart
Cc: Anderson, Paul; Zanussi, Tom; Stewart, David C; McCombe, Kevin;
Wold, Saul; Zhang, Jessica; deVries, Alex; Polk, Jeffrey; Hatle, Mark;
Li, Susie; Lock, Joshua; Ashfield, Bruce; Ta, Lieu;
yocto@yoctoproject.org
Subject: Re: Yocto Linux Project Sync notes

On Tue, 2010-10-19 at 14:51 -0700, Darren Hart wrote:
> On 10/19/2010 02:48 PM, Anderson, Paul wrote:
> > I thought the plan was to do BOTH a QEMU demo and a demo on real=20
> > hardware? If that's not the plan, it should be the plan.
>=20
> There has been no discussion of a QEMU demo for the media network
demo.=20
> I've tested some components with QEMU, but we aren't currently=20
> planning on demo'ing this in QEMU.

I think Paul is talking about a different demo, one where we're just
able to boot all four qemu architectures alongside each other.

This should be possible with our release images, we just need someone to
own it and to bring a machine with it working on it (and have a backup
of the setup in case of filesystem corruption etc.).

Any volunteers?

Cheers,

Richard



