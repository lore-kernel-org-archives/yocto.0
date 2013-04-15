Return-Path: <Krishna.Dwivedi@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [180.151.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 718C6E01498
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 05:21:59 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id E203E36B44;
	Mon, 15 Apr 2013 17:51:40 +0530 (IST)
Received: from GUREXHT02.ASIAN.AD.ARICENT.COM (gurexht02.asian.ad.aricent.com
	[10.203.171.138])
	by jaguar.aricent.com (Postfix) with ESMTP id CA84036B53;
	Mon, 15 Apr 2013 17:51:40 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.130]) by
	GUREXHT02.ASIAN.AD.ARICENT.COM ([10.203.171.138]) with mapi;
	Mon, 15 Apr 2013 17:51:41 +0530
From: Krishna Dwivedi <Krishna.Dwivedi@aricent.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 15 Apr 2013 17:51:39 +0530
Thread-Topic: [yocto] Arguement list too big error in bitbake meta-toolchain
	for MIPS architechture-Gentle Reminder
Thread-Index: Ac45zDAeWsi4MKN5TLyyjHux4UfLbAAB0lvw
Message-ID: <B60DC3E72D20B040854608D81E44050F64F451AB07@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<alpine.DEB.2.02.1304150722160.22880@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304150722160.22880@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Arguement list too big error in bitbake meta-toolchain for MIPS architechture-Gentle Reminder
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
X-List-Received-Date: Mon, 15 Apr 2013 12:22:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

I am trying on fedora 18 and I am continuously running into this issue.

Regards,
Krishna

-----Original Message-----
From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
Sent: Monday, April 15, 2013 4:57 PM
To: Krishna Dwivedi
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Arguement list too big error in bitbake meta-toolchain=
 for MIPS architechture-Gentle Reminder

On Mon, 15 Apr 2013, Krishna Dwivedi wrote:

> Hi All,
>
> I am trying to build recipe meta-toolchain for MIPS architecture but
> running into errors. Can anyone please let me know, if I am missing
> anything here or what could be root cause of this and how can I fix
> it. I have followed these steps:
>
> 1)In  WORKDIR/build/conf/local.conf-I selected MACHINE ?=3D "qemumips" fo=
r mips architechture.
>
> 2)source oe-init-build-env.

> 3)bitbake meta-toolchain.
>
> In third step,I am running into these errors:
>
> NOTE: recipe nativesdk-gettext-0.18.2-r0: task do_configure: Started
>
> ERROR: Error executing a python function in
> /home/netlogic/yocto/poky/meta/recipes-core/eglibc/eglibc-locale_2.17.bb:
>
> CalledProcessError: Command 'cp
> -al/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-l
> ocale/2.17-r0/packages-sp
> lit/*/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc
> -locale/2.17-r0/sstate-buil d-package//packages-split' returned
> non-zero exit status 126 with output /bin/sh: /bin/cp:
> Argument list too long

... snip ...

  i just did the above on my ubuntu system -- qemumips and "bitbake meta-to=
olchain" -- and i can see that step running right now among 4 running tasks=
:

0: nativesdk-gettext-0.18.2-r0 do_configure (pid 6695)

  man, sure seems to be taking a while, while other tasks complete and are =
replaced by new tasks.  oh, wait, it just completed, replaced by:

2: nativesdk-gettext-0.18.2-r0 do_compile (pid 12727)

so the configure step seems to have succeeded. in other words, works for me=
. and:

$ ls -l /bin/sh
lrwxrwxrwx 1 root root 4 May 22  2012 /bin/sh -> bash $

rday

--

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D




=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

