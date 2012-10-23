Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18315E00348
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:38:02 -0700 (PDT)
Received: from mail250-ch1-R.bigfish.com (10.43.68.252) by
	CH1EHSOBE005.bigfish.com (10.43.70.55) with Microsoft SMTP Server id
	14.1.225.23; Tue, 23 Oct 2012 21:38:01 +0000
Received: from mail250-ch1 (localhost [127.0.0.1])	by
	mail250-ch1-R.bigfish.com (Postfix) with ESMTP id 410831640059;
	Tue, 23 Oct 2012 21:38:01 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i1155h)
Received: from mail250-ch1 (localhost.localdomain [127.0.0.1]) by mail250-ch1
	(MessageSwitch) id 135102828041635_18125;
	Tue, 23 Oct 2012 21:38:00 +0000 (UTC)
Received: from CH1EHSMHS039.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.230])	by mail250-ch1.bigfish.com (Postfix) with ESMTP id
	087A53C0049;	Tue, 23 Oct 2012 21:38:00 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS039.bigfish.com
	(10.43.69.248) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 23 Oct 2012 21:38:00 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.88]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0318.003; Tue, 23 Oct 2012 21:37:59 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Ross Burton <ross.burton@intel.com>
Thread-Topic: [yocto] Performance improvements and machine build configuration
Thread-Index: AQHNsWQHEd26brwV0kWY2HoM7MGQ0JfHZtsAgAADmoA=
Date: Tue, 23 Oct 2012 21:37:59 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A71DF3B@039-SN1MPN1-002.039d.mgd.msft.net>
References: <D8FE0C54-F09B-40E0-BDDA-5C2AA31DC4C3@gmail.com>
	<70CC66F5C30A414DADDA6973E4CA391A71DEF4@039-SN1MPN1-002.039d.mgd.msft.net>
	<0D8519A6089349458734E822A3CBF611@intel.com>
In-Reply-To: <0D8519A6089349458734E822A3CBF611@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 23 Oct 2012 21:38:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <75088F17B5526E499BE8AEA91BCD730C@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 23, 2012 at 4:24 PM, Ross Burton <ross.burton@intel.com> wrote:
> On Tuesday, 23 October 2012 at 22:19, McClintock Matthew-B29882 wrote:
>> On Tue, Oct 23, 2012 at 1:45 PM, Elvis Dowson <elvis.dowson@gmail.com (m=
ailto:elvis.dowson@gmail.com)> wrote:
>> > The only curious thing that I've noticed is that I don't see a large p=
erformance improvement using a standard 3TB Seagate Barracuda 7200 RPM HDD,=
 and the two Intel Series 330 SSDs in a striped RAID0 configuration. The re=
ad (600MB/s) / write (838MB/s) figures are impressive, although I expected =
the read performance to be higher than write performance, as is normally wi=
th a single SSD. I'm using the motherboard's hardware RAID support on a 6GB=
/s SATA 3 port.
>>
>>
>>
>> You probably don't use much disk I/O with 16GB of memory for a build.
> My machine has 16G of RAM, and after a good build will have 12G of "cache=
" (according to /proc), but the disk activity light was frantic.  I can onl=
y imagine it would be more frantic with less RAM to act as an over-sized di=
sk cache.

Frantic but was it actually limiting the build time? It would seem not
according to Elvis observations.

-M=


