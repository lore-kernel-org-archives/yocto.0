Return-Path: <ruud.den.bekker@cordis.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19A11E00558; Mon, 23 Jun 2014 04:21:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from cordis.nl (smtp.cordis.nl [212.61.137.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 964E7E00547
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 04:21:52 -0700 (PDT)
MIME-Version: 1.0
x-mimeole: Produced By Microsoft Exchange V6.5
Date: Mon, 23 Jun 2014 13:20:39 +0200
Message-ID: <21598C768CAB7B46B75C18783A59ACEE271D29@cordissvr01.Cordis.local>
In-Reply-To: <53A699C1.4040405@dynamicdevices.co.uk>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [yocto] Yocto Labs
Thread-Index: Ac+N98oIACWdzJMcTeiWT9rUzKwkzAA2vBKA
References: <53A62476.2080008@gmail.com>
	<53A699C1.4040405@dynamicdevices.co.uk>
From: "Ruud den Bekker" <ruud.den.bekker@cordis.nl>
To: "Yocto Mailing List" <yocto@yoctoproject.org>
Subject: Re: Yocto Labs
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
X-List-Received-Date: Mon, 23 Jun 2014 11:21:56 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Arun,

The link mentioned by Alex,is really a good starting point.
I was completely unaware of yocto until 5 weeks ago and started=20
using this URL.

In the meantime, I have achieved:
- running an ARM kernel + RFS + Mono running in Qemu using NFS (to be
reached from any other PC)
- running an ARM kernel + RFS + Mono running using NFS running on an ARM
development board.
- added 2 custom drivers to the yocto build environment (source code in
a local tarball for now)

The kernel (2.6.37) is being build separately from the yocto generated
RFS.
(since the board manufacturer does not support the V3.x kernel for it)

I have two NFS trees, one with soft float routines and one with
hard float routines (using ARM hardware) that both work on the board.

I had some problems building with hard float of which the cause is
still unknown.

Major issues that I encountered were:
- adapting our x86 mono build environment to ARM (some compiler issues)
- a corrupted U-boot on my development board
- getting qemu to run with NFS properly
- difference between ttyO0 and ttyAMA0 for physical board and Qemu!
- how to convert a make project to an automake project (for the drivers)

So it takes a bit of time, depending on what you need to do and your
level of experience.

The ONE thing that I did not find was how to setup my environment for=20
ARM hard float so I can build test applications for the board.
Turned out to be also no big deal once everything else was up and
running.

FYI: my development environment: Ubuntu-14.04 in Vmware Player on a
Window 7 machine.

Best regards,

Ruud



-----Original Message-----
From: yocto-bounces@yoctoproject.org
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Alex J Lennon
Sent: Sunday, June 22, 2014 10:54 AM
To: Arun Kumar; Yocto Mailing List
Subject: Re: [yocto] Yocto Labs


On 22/06/2014 01:33, Arun Kumar wrote:
> Hi,
>
>     I am new to Yocto project and have been following the=20
> documentation for familiarity.
> I am looking for hands on lab sessions for the yocto project.
> I am unable to find the same on INTERNET, all i find is conference=20
> videos and presentation.
>
> If anyone can share links to online tutorial videos / pdfs it would be

> really useful.
> content like creating and deploying own recipe files, layers. The=20
> Documentation describes these tasks at a very abstract level, an=20
> little more advanced version of the same would be appreciated.
> Thanks in advance...

Might be of some use Arun,

https://wiki.yoctoproject.org/wiki/Building_your_own_recipes_from_first_
principles

Regards,

Alex

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

