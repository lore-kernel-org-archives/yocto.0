Return-Path: <prvs=81695b4d0c=G.Rajender@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id C237D4C80215
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 00:37:39 -0500 (CDT)
X-AuditID: c0a8466b-b7b19ae000007f17-e1-4e154621ab53
Received: from POCITMSEXHUB01.LntUniverse.com ( [10.2.1.58])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	C9.E0.32535.126451E4; Thu,  7 Jul 2011 11:07:37 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB01.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Thu, 7 Jul 2011 11:07:36 +0530
From: G Rajender <G.Rajender@lnties.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [yocto] minimal yocto images not booting on Beagleboard-xM rev B
Thread-Index: Acw74l5K4ORxEju3RvGGf4nQNnzv3///qlyAgAFd4bk=
Date: Thu, 7 Jul 2011 05:37:36 +0000
Message-ID: <9AAFA2F5BB120A448121E0997AE4438834482109@POCITMSEXMB03.LntUniverse.com>
References: <9AAFA2F5BB120A448121E0997AE4438834482092@POCITMSEXMB03.LntUniverse.com>,
	<4E146B79.3060908@mlbassoc.com>
In-Reply-To: <4E146B79.3060908@mlbassoc.com>
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
X-List-Received-Date: Thu, 07 Jul 2011 05:37:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Gary,

Thank you very much for your reply.

I have followed the steps given in README.hardware. I have copied all the r=
equired images to SD card, inserted in to SD/MMC slot of Beagleboard-xM rev=
 B, connected the serial cable to minicom on Host PC (Ubuntu 10.04) and giv=
en power to the board. But on minicom i am not getting any bootup messages =
and echos etc...

Can you please suggest the steps to follow on how to execute meta-beagleboa=
rd BSP pre-built binaries on Beagleboard-xM rev B.

Thank you much for your valuable time spending on this. Looking for your ki=
nd response.


Thanks and regards,

Rajender.G

________________________________________
From: Gary Thomas [gary@mlbassoc.com]
Sent: Wednesday, July 06, 2011 7:34 PM
To: G Rajender
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] minimal yocto images not booting on Beagleboard-xM rev=
 B

On 07/06/2011 08:00 AM, G Rajender wrote:
> Hi,
>
> I am new to Yocto project and Beagleboard.
>
> I am using Beagleboard-xM rev B. I got the information about Yocto projec=
t by search. Yocto is a good open platform for Embedded developers for targ=
et specific architectures.
>
> I have started working on Yocto project to build a LTP (Linux Test Projec=
t) Test frame work for Beagleboard-xM rev B. I have downloaded the Yocto re=
lease 1.0.1 and Beagleboard-xM
> BSP from the Yocto website. I have installed the Yocto project poky build=
 tool and demo image in my Host PC (Ubuntu 10.04)as per poky quick start gu=
ide.
>
> *Now I am trying to execute the meta-bsp (meta-beagleboard) binaries (bui=
lt images) on beagleboard-xM rev B as per README. Hardware file. But the be=
agleboard-xM revision B is not
> booting with theses BSP images.*

What does "not booting" mean?  What errors are you getting?

>
> **
>
> *Also I want add the Beagleboard BSP to the BBlayers of poky. I am unable=
 to understand the procedure explained in BSP developer=92s guide.*
>
> *Can anyone suggest or share the experiences about above problems.*
>
> Thanks in advance and looking for your kind response.
>
> Thanks and regards,
>
> Rajender.G

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

