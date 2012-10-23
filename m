Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe001.messaging.microsoft.com [213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8323FE00533
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:19:10 -0700 (PDT)
Received: from mail85-am1-R.bigfish.com (10.3.201.238) by
	AM1EHSOBE009.bigfish.com (10.3.204.29) with Microsoft SMTP Server id
	14.1.225.23; Tue, 23 Oct 2012 21:19:09 +0000
Received: from mail85-am1 (localhost [127.0.0.1])	by mail85-am1-R.bigfish.com
	(Postfix) with ESMTP id E88C2600E7;
	Tue, 23 Oct 2012 21:19:08 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz98dI9371Izz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i1155h)
Received: from mail85-am1 (localhost.localdomain [127.0.0.1]) by mail85-am1
	(MessageSwitch) id 1351027147170514_4645;
	Tue, 23 Oct 2012 21:19:07 +0000 (UTC)
Received: from AM1EHSMHS003.bigfish.com (unknown [10.3.201.251])	by
	mail85-am1.bigfish.com (Postfix) with ESMTP id 261D036005C;
	Tue, 23 Oct 2012 21:19:07 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS003.bigfish.com
	(10.3.207.103) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 23 Oct 2012 21:19:06 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.88]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0318.003; Tue, 23 Oct 2012 21:19:04 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Thread-Topic: [yocto] Performance improvements and machine build configuration
Thread-Index: AQHNsWQHEd26brwV0kWY2HoM7MGQ0A==
Date: Tue, 23 Oct 2012 21:19:04 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A71DEF4@039-SN1MPN1-002.039d.mgd.msft.net>
References: <D8FE0C54-F09B-40E0-BDDA-5C2AA31DC4C3@gmail.com>
In-Reply-To: <D8FE0C54-F09B-40E0-BDDA-5C2AA31DC4C3@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Performance improvements and machine build configuration
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
X-List-Received-Date: Tue, 23 Oct 2012 21:19:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <6EE0C0290B3FAD40A138CEC33EE3617C@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 23, 2012 at 1:45 PM, Elvis Dowson <elvis.dowson@gmail.com> wrot=
e:
> The only curious thing that I've noticed is that I don't see a large perf=
ormance improvement using a standard 3TB Seagate Barracuda 7200 RPM HDD, an=
d the two Intel Series 330 SSDs in a striped RAID0 configuration. The read =
(600MB/s) / write (838MB/s) figures are impressive, although I expected the=
 read performance to be higher than write performance, as is normally with =
a single SSD. I'm using the motherboard's hardware RAID support on a 6GB/s =
SATA 3 port.

You probably don't use much disk I/O with 16GB of memory for a build.

-M=


