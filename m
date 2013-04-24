Return-Path: <Diego.SantaCruz@spinetix.com>
Received: from smtp4.infomaniak.ch (smtp4.infomaniak.ch [84.16.68.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58E28E014F3
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 03:47:02 -0700 (PDT)
Received: from inmail.spinetix.com (inmail.spinetix.com [212.147.27.179])
	(authenticated bits=0)
	by smtp4.infomaniak.ch (8.14.5/8.14.5) with ESMTP id r3OAl0pG017071
	(version=TLSv1/SSLv3 cipher=RC4-MD5 bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 12:47:00 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Wed, 24 Apr 2013 12:46:59 +0200
Message-ID: <364D31930BDB974AB40E22C5C2E584ED011E6155@asterix.SPINETIX.local>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: About running old kernels with Yoctoo 1.2 or 1.3
thread-index: Ac5A2QvM9Y1gaJchQ2Gp0ScrtNM+SQ==
From: "Diego Santa Cruz" <Diego.SantaCruz@spinetix.com>
To: <yocto@yoctoproject.org>
Subject: About running old kernels with Yoctoo 1.2 or 1.3
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
X-List-Received-Date: Wed, 24 Apr 2013 10:47:02 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi there,

We are starting the development of a product based on TI DM814x SoC and
considering using Yocto to base our development on.

Unfortunately, TI does has only included support for this SoC on a =
derivative
of the 2.6.37 kernel and has not pushed the SoC specifics upstream to
mainline, so we are stuck to use that kernel as we cannot engage in =
porting
all the support to a newer kernel at this time.

I am new to Yocto, but as far as I got from the documentation versions =
1.2
and 1.3 use a 3.4 kernel as the supported kernel. Would Yocto work with =
a
2.6.37 kernel or are new features that have been introduced in newer =
kernel
version required to run Yocto 1.2 or 1.3?

Sincerely,

Diego

--
Diego Santa Cruz, PhD
Technology Architect
_________________________________
SpinetiX S.A.
Rue des Terreaux 17
1003, Lausanne, Switzerland
T +41 21 341 15 50
F +41 21 311 19 56
diego.santacruz@spinetix.com
http://www.spinetix.com
http://www.youtube.com/SpinetiXTeam
_________________________________




