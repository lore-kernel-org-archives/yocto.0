Return-Path: <prvs=3169b8c49f=G.Rajender@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5669F4C80215
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 00:26:30 -0500 (CDT)
X-AuditID: c0a8466b-b7b19ae000007f17-48-4e154383c605
Received: from POCITMSEXHUB02.LntUniverse.com ( [10.2.1.59])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	FE.EE.32535.383451E4; Thu,  7 Jul 2011 10:56:28 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB02.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Thu, 7 Jul 2011 10:56:27 +0530
From: G Rajender <G.Rajender@lnties.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] minimal yocto images not booting on Beagleboard-xM rev B
Thread-Index: Acw74l5K4ORxEju3RvGGf4nQNnzv3///1moAgAEvLDk=
Date: Thu, 7 Jul 2011 05:26:26 +0000
Message-ID: <9AAFA2F5BB120A448121E0997AE44388344820FE@POCITMSEXMB03.LntUniverse.com>
References: <9AAFA2F5BB120A448121E0997AE4438834482092@POCITMSEXMB03.LntUniverse.com>,
	<4E14906E.4050606@linux.intel.com>
In-Reply-To: <4E14906E.4050606@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.1.73]
MIME-Version: 1.0
X-Brightmail-Tracker: AAAAAA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: minimal yocto images not booting on Beagleboard-xM rev B
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
X-List-Received-Date: Thu, 07 Jul 2011 05:26:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Darren,

Thank you very much for your reply.
now i am confident that meta-beagleboard BSP images will work on Beagleboar=
d-xM rev B.
Can you please suggest the steps to follow on how to build from the git rep=
ository and execute on Beagleboard-xM rev B.
Thank you much for your valuable time spending on this. Looking for your ki=
nd response.

Thanks and regards,

Rajender.G


________________________________________
From: Darren Hart [dvhart@linux.intel.com]
Sent: Wednesday, July 06, 2011 10:12 PM
To: G Rajender
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] minimal yocto images not booting on Beagleboard-xM rev=
 B

On 07/06/2011 07:00 AM, G Rajender wrote:
> Hi,
>
>
>
> I am new to Yocto project and Beagleboard.
>
>
>
> I am using Beagleboard-xM rev B. I got the information about Yocto
> project by search. Yocto is a good open platform for Embedded developers
> for target specific architectures.
>
>
>
> I have started working on Yocto project to build a LTP (Linux Test
> Project) Test frame work for Beagleboard-xM rev B. I have downloaded the
> Yocto release 1.0.1 and Beagleboard-xM BSP from the Yocto website. I
> have installed the Yocto project poky build tool and demo image in my
> Host PC (Ubuntu 10.04)as per poky quick start guide.
>
>
>
> *Now I am trying to execute the meta-bsp (meta-beagleboard) binaries
> (built images) on beagleboard-xM rev B as per README. Hardware file. But
> the beagleboard-xM revision B is not booting with theses BSP images.*

Hi Rajender,

Welcome to the Yocto Project.

We just recently completed a major overhaul to the meta-yocto
beagleboard BSP, bringing it closer in line with the
meta-texasinstruments BSP. I have tested on a C4 and an xM Rev A. I have
reports of it working on rev B and not working on rev C, which we are
looking into.

For the best Yocto beagleboard support, I suggest building from the git
repository until the 1.1 release later this year.

--
Darren

>
> * *
>
> *Also I want add the Beagleboard BSP to the BBlayers of poky. I am
> unable to understand the procedure explained in BSP developer=92s guide.*
>
>
>
> *Can anyone suggest or share the experiences about above problems.*
>
>
>
> Thanks in advance and looking for your kind response.
>
>
>
>
>
> Thanks and regards,
>
>
>
> Rajender.G
>
>
>
>
>
>
>
>
>
>
>
>
>
> *Larsen & Toubro Limited
>
> www.larsentoubro.com
>
> *This Email may contain confidential or privileged information for the
> intended recipient (s) If you are not the intended recipient, please do
> not use or disseminate the information, notify the sender and delete it
> from your system.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

