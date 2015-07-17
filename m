Return-Path: <krystian.gorny@wipotec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DFCFE009E5; Fri, 17 Jul 2015 06:55:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx03.wipotec.com (mx01.wipotec.com [212.43.72.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E932CE009C3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 06:55:43 -0700 (PDT)
Received: from mx03.wipotec.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 17463381F86;
	Fri, 17 Jul 2015 15:55:43 +0200 (CEST)
Received: from svr-exc-04.intern.wipotec.de (unknown [10.1.60.47])
	by mx03.wipotec.com (Postfix) with ESMTP id 11526381F81;
	Fri, 17 Jul 2015 15:55:43 +0200 (CEST)
Received: from SVR-EXC-03.intern.wipotec.de ([10.1.60.46]) by
	svr-exc-04.intern.wipotec.de ([10.1.60.47]) with mapi id 14.03.0158.001;
	Fri, 17 Jul 2015 15:55:42 +0200
From: Gorny Krystian <krystian.gorny@wipotec.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel header missing for specific Target
Thread-Index: AdDAjpu7EeGePRnvSAuGIjYslKm29P//60+A///aNXA=
Date: Fri, 17 Jul 2015 13:55:42 +0000
Message-ID: <10D57FBA9FD7C14FB49EE17590E1AF9453C901FD@svr-exc-03.intern.wipotec.de>
References: <10D57FBA9FD7C14FB49EE17590E1AF9453C901C3@svr-exc-03.intern.wipotec.de>
	<55A903ED.70906@windriver.com>
In-Reply-To: <55A903ED.70906@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.21.216]
x-olx-disclaimer: Done
MIME-Version: 1.0
Subject: Re: Kernel header missing for specific Target
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
X-List-Received-Date: Fri, 17 Jul 2015 13:55:47 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm using the fido branch. My iointerrupt.bb file looks as follow:


DESCRIPTION =3D "Simple IO-interrupt driver"
SECTION =3D "iointerrupt"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"
PR =3D "r0"

SRC_URI =3D "file://drv_iointerrupt.c"
S =3D "${WORKDIR}"
do_compile() {
             ${CC} drv_iointerrupt.c -o iointerrupt
}
do_install() {
             install -d ${D}${bindir}
             install -m 0755 iointerrupt ${D}${bindir}
}

Thanks,
Krystian

_____________________________________________________________________

Krystian Gorny
Research & Development

Wipotec GmbH
Adam-Hoffmann-Str. 26
67657 Kaiserslautern

T +49.631.34146-0
F +49.631.34146-8640
http://www.wipotec.com


_____________________________________________________________________

Weigh Cells | Weighing systems

See our solutions. Visit us at our events
http://www.wipotec.com/de/aktuelles/veranstaltungen/

_____________________________________________________________________

Legal information:
Wipotec Wiege- und Positioniersysteme GmbH
HRB 2317 Kaiserslautern, Management: T. D?ppre, U. Wagner

This e-mail may contain confidential and/or privileged information.
If you are not the intended recipient (or have received this e-mail in erro=
r)
please notify the sender immediately and delete this e-mail. Any unauthoriz=
ed
copying, disclosure or distribution of the material in this e-mail is stric=
tly
forbidden.

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
Sent: Friday, July 17, 2015 3:32 PM
To: Gorny Krystian; yocto@yoctoproject.org
Subject: Re: [yocto] Kernel header missing for specific Target

On 15-07-17 08:47 AM, Gorny Krystian wrote:
> Hi
>
> I try add to my core-image-rt image on a x86 arch my own IO driver. I
> have already my own recipe, for normal user space programs everything
> is working fine.
>
> For the kernel space driver Yocto is missing at do_comile task the
> asm/atomic.h header file. I have searched for the atomic.h file and
> found a lot of them in the ./build/tmp/work folder. Yocto should use
> one of them for the right hardware architecture right? Or is the a
> something else I have forget to do?

What Yocto branch are you using ?

atomic.h is placed in the right location by the kernel build, assuming that=
 your driver recipe has the proper dependencies.  Without seeing that recip=
e, it is hard to say more.

Cheers,

Bruce

>
> Many thanks
>
> Krystian
>
>
> _____________________________________________________________________
>
> *Krystian Gorny*
> Research & Development
>
> Wipotec GmbH
> Adam-Hoffmann-Str. 26
> 67657 Kaiserslautern
>
> T +49.631.34146-0
> F +49.631.34146-8640
> http://www.wipotec.com
>
>
>
> <http://www.wipotec.com>
>
> Legal information:
> Wipotec Wiege- und Positioniersysteme GmbH HRB 2317 Kaiserslautern,
> Management: T. D=FCppre, U. Wagner
>
> This e-mail may contain confidential and/or privileged information.
> If you are not the intended recipient (or have received this e-mail in
> error)
> please notify the sender immediately and delete this e-mail. Any
> unauthorized copying, disclosure or distribution of the material in
> this e-mail is strictly forbidden.
>
>



