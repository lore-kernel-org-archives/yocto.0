Return-Path: <dlazzari@leapfrog.com>
Received: from mx3.leapfrog.com (mx3.leapfrog.com [63.114.26.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77A27E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 15:32:45 -0700 (PDT)
Received: from mx3.leapfrog.com (localhost [127.0.0.1])
	by localhost.leapfrog.com (Postfix) with ESMTP id B59515FA6
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 15:32:33 -0700 (PDT)
Received: from NAEXCHHT01.na.leapfrog.com (unknown [10.15.6.13])
	by mx3.leapfrog.com (Postfix) with ESMTP id 94B695EE1
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 15:32:33 -0700 (PDT)
Received: from NAEMCASHT01.na.leapfrog.com (10.16.4.161) by
	NAEXCHHT01.na.leapfrog.com (10.15.6.13) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 30 Mar 2012 15:32:40 -0700
Received: from NAEMMAIL01.na.leapfrog.com ([fe80::252e:28a6:3d8f:6991]) by
	NAEMCASHT01.na.leapfrog.com ([::1]) with mapi id 14.01.0355.002;
	Fri, 30 Mar 2012 15:32:40 -0700
From: Daniel Lazzari <dlazzari@leapfrog.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Moving angstrom under the yocto banner
Thread-Index: Ac0OxP6R1yER04oUTqeF9XmX9rVozw==
Date: Fri, 30 Mar 2012 22:32:39 +0000
Message-ID: <E7A9054A5ACABE48B0E540E46E862B0F04273D0E@NAEMMAIL01.na.leapfrog.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.100.2.5]
MIME-Version: 1.0
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 22:32:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I just thought I'd chime in on this discussion as someone who is outside of=
 both groups. It's been difficult to explain to our teams internally the wh=
ole Yocto Project vs. Angstrom-core terminology, and since everyone here is=
 familiar with Linux and distros, we decided to put it in those terms. Note=
 that not coming from these groups, there's a good chance we've been explai=
ning it all wrong, in which case, feel free to correct and clarify and I'd =
be happy to change our internal explanations.

We see bitbake/oe-core as Debian based Linux, Poky and Angstrom as distros =
(like Ubuntu and Debian), and the Yocto Project as something like Canonical=
. The Yocto Project regularly contributes to bitbake and oe-core, but also =
maintains layers and products on top of that, like meta-yocto and the Eclip=
se ADT plugin, all of which constitutes the Poky distro. The Yocto Project =
then has regular releases of stable snapshots, much like you have Ubuntu 10=
.04, 10.10, etc.

That said, I personally feel (this is not necessarily representative of my =
co-workers or company) that Angstrom, as a distro, should be allowed to use=
 the Yocto Project name and have the Yocto Project post information about A=
ngstrom on their Projects page, if Angstrom can stick to a regular release =
schedule that meets the same quality requirements that Poky does. I think t=
hat would ensure that the Yocto Project trademark maintains a quality image=
 while helping users whose projects align better with the Angstrom distro t=
han with Poky know that there are other oe-core distros out there.

Daniel Lazzari Jr.
Firmware Engineer, LeapFrog
dlazzari@leapfrog.com

