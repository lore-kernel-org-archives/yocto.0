Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE001.bigfish.com (va3ehsobe001.messaging.microsoft.com
	[216.32.180.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62C3C4C800A3
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 12:46:54 -0500 (CDT)
Received: from mail61-va3-R.bigfish.com (10.7.14.241) by
	VA3EHSOBE001.bigfish.com (10.7.40.21) with Microsoft SMTP Server id
	14.1.225.22; Tue, 19 Jul 2011 17:46:53 +0000
Received: from mail61-va3 (localhost.localdomain [127.0.0.1])	by
	mail61-va3-R.bigfish.com (Postfix) with ESMTP id 623D41B8347;
	Tue, 19 Jul 2011 17:46:53 +0000 (UTC)
X-SpamScore: -8
X-BigFish: VS-8(zz9371M98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail61-va3 (localhost.localdomain [127.0.0.1]) by mail61-va3
	(MessageSwitch) id 1311097600787751_14827;
	Tue, 19 Jul 2011 17:46:40 +0000 (UTC)
Received: from VA3EHSMHS029.bigfish.com (unknown [10.7.14.242])	by
	mail61-va3.bigfish.com (Postfix) with ESMTP id 6D924D6804F;
	Tue, 19 Jul 2011 17:46:40 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS029.bigfish.com
	(10.7.99.39) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Tue, 19 Jul 2011 17:46:39 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.56]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0289.008; Tue, 19 Jul 2011 12:46:38 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Joshua Lock <josh@linux.intel.com>
Thread-Topic: [yocto] pseudo issue on CentOS5
Thread-Index: AQHMQzV7PVcKPn8YX02CK8aui+9v7Q==
Date: Tue, 19 Jul 2011 17:46:37 +0000
Message-ID: <CAEsOVNcnVJn=ZfKU=KGnx2yP-g=QfHYkSD-5g4qP3scT_Bzmvw@mail.gmail.com>
References: <CAEsOVNdmyZSK2rv2+2zAQXpf8Txz_3=v62NZ85pO-D7esChwCQ@mail.gmail.com>
	<1311095211.2115.6.camel@scimitar>
In-Reply-To: <1311095211.2115.6.camel@scimitar>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pseudo issue on CentOS5
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jul 2011 17:46:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <663C21FE27AF524888EDFD8414757E36@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 19, 2011 at 12:06 PM, Joshua Lock <josh@linux.intel.com> wrote:
> You can use 'objdump -T' for this, i.e. (from my F15 box):
> joshual@scimitar:~
> $ objdump -T /lib/libc.so.6 | grep realpath
> 416c3f00 g =A0 =A0DF .text =A000000041 (GLIBC_2.0) =A0realpath
> 415e60e0 g =A0 =A0DF .text =A000000478 =A0GLIBC_2.3 =A0 realpath
> 4169a330 g =A0 =A0DF .text =A000000037 =A0GLIBC_2.4 =A0 __realpath_chk

Bug updated with:

[mattsm@busy poky (master)]$ cat /etc/issue
CentOS release 5.6 (Final)
Kernel \r on an \m

[mattsm@busy poky (master)]$ objdump -T /lib/libc.so.6  | grep realpath
009cca90 g    DF .text	0000003f (GLIBC_2.0)  realpath
008f75c0 g    DF .text	000004c1  GLIBC_2.3   realpath
009a8030 g    DF .text	00000038  GLIBC_2.4   __realpath_chk=


