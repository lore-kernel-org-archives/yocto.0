Return-Path: <prvs=6169f7b966=G.Rajender@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5462E4C80215
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 00:44:59 -0500 (CDT)
X-AuditID: c0a8466b-b7b19ae000007f17-d0-4e1547da61a7
Received: from POCITMSEXHUB02.LntUniverse.com ( [10.2.1.59])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	F6.C1.32535.AD7451E4; Thu,  7 Jul 2011 11:14:58 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB02.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Thu, 7 Jul 2011 11:14:58 +0530
From: G Rajender <G.Rajender@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: yocto Digest, Vol 10, Issue 6
Thread-Index: AQHMO/5sJRC7VWBuI0OD3lN1CI4/oJTgWRzZ
Date: Thu, 7 Jul 2011 05:44:57 +0000
Message-ID: <9AAFA2F5BB120A448121E0997AE443883448213C@POCITMSEXMB03.LntUniverse.com>
References: <mailman.1.1309971601.10703.yocto@yoctoproject.org>
In-Reply-To: <mailman.1.1309971601.10703.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.1.73]
MIME-Version: 1.0
X-Brightmail-Tracker: AAAAARiILoA=
Subject: Re: yocto Digest, Vol 10, Issue 6
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
X-List-Received-Date: Thu, 07 Jul 2011 05:45:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darren,

Thank you very much for your reply.
now i am confident that meta-beagleboard BSP images will work on Beagleboar=
d-xM rev B.
Because i am beginner to Linux and kernels. Can you please suggest the step=
s to follow on how to build from the git repository and execute on Beaglebo=
ard-xM rev B.
Thank you much for your valuable time spending on this. Looking for your ki=
nd response.

Thanks and regards,

Rajender.G
________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of yocto-request@yoctoproject.org [yocto-request@yoctoproject.org]
Sent: Wednesday, July 06, 2011 10:30 PM
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 10, Issue 6

Send yocto mailing list submissions to
        yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
        https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
        yocto-request@yoctoproject.org

You can reach the person managing the list at
        yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific
than "Re: Contents of yocto digest..."


Today's Topics:

   1. Re: minimal yocto images not booting on Beagleboard-xM rev B
      (Darren Hart)


----------------------------------------------------------------------

Message: 1
Date: Wed, 06 Jul 2011 09:42:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: G Rajender <G.Rajender@lnties.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] minimal yocto images not booting on
        Beagleboard-xM rev B
Message-ID: <4E14906E.4050606@linux.intel.com>
Content-Type: text/plain; charset=3Dwindows-1252



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
> unable to understand the procedure explained in BSP developer?s guide.*
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


------------------------------

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 10, Issue 6
************************************


Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

