Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe001.messaging.microsoft.com [213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37F18E00527
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 09:09:18 -0800 (PST)
Received: from mail9-am1-R.bigfish.com (10.3.201.254) by
	AM1EHSOBE019.bigfish.com (10.3.207.141) with Microsoft SMTP Server id
	14.1.225.23; Mon, 14 Jan 2013 17:09:16 +0000
Received: from mail9-am1 (localhost [127.0.0.1])	by mail9-am1-R.bigfish.com
	(Postfix) with ESMTP id 40650C0809;
	Mon, 14 Jan 2013 17:09:16 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1ee6h1de0h1202h1e76h1d1ah1d2ahzzz2dh2a8h668h839h8e2h8e3h946hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bh15d0h162dh1631h1758hbe9i1155h)
Received: from mail9-am1 (localhost.localdomain [127.0.0.1]) by mail9-am1
	(MessageSwitch) id 1358183354677148_785; Mon, 14 Jan 2013 17:09:14 +0000
	(UTC)
Received: from AM1EHSMHS009.bigfish.com (unknown [10.3.201.246])	by
	mail9-am1.bigfish.com (Postfix) with ESMTP id 9F90348012A;
	Mon, 14 Jan 2013 17:09:14 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS009.bigfish.com
	(10.3.207.109) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 14 Jan 2013 17:09:14 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.77]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0318.003; Mon, 14 Jan 2013 17:09:13 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Thornburg, Christopher A" <christopher.a.thornburg@intel.com>
Thread-Topic: [yocto] Enabling shared state mirrors
Thread-Index: AQHN8nngQU3X6qFuh0+n8cYmfN11tw==
Date: Mon, 14 Jan 2013 17:09:12 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A833C64@039-SN1MPN1-001.039d.mgd.msft.net>
References: <752F65977A748344A01D69BF22DCDBAE3357F1D4@FMSMSX101.amr.corp.intel.com>
In-Reply-To: <752F65977A748344A01D69BF22DCDBAE3357F1D4@FMSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling shared state mirrors
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
X-List-Received-Date: Mon, 14 Jan 2013 17:09:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <838E3EAD4493204D9E7BE63BC08849A4@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 11, 2013 at 4:06 PM, Thornburg, Christopher A
<christopher.a.thornburg@intel.com> wrote:
> Struggling to get shared state mirrors to work. I can see files with the
> same file name (and therefore the same hash) in my mirror and, after a
> build, in my local sstate cache direcotry. Ala:
>
> /storage/yocto-cache/sstate-toolchain/Ubuntu-10.04/95/sstate-bzip2-native=
-i686-linux-1.0.6-r5-i686-2-95b6058a3f3f35386c8593e8447c59da_populate-lic.t=
gz.siginfo
>
> and
>
> <build
> dir>/sstate-cache/Ubuntu-10.04/95/sstate-bzip2-native-i686-linux-1.0.6-r5=
-i686-2-95b6058a3f3f35386c8593e8447c59da_populate-lic.tgz.siginfo
>
>
>
> bitbake-diffsigs confirms that the signatures match. I have the following=
 in
> my local.conf:
>
> SSTATE_MIRRORS ?=3D "\
>
> file://.* file:///storage/yocto-cache/sstate-toolchain/PATH \
>
> file://.* file:///storage/yocto-cache/sstate-kernel/PATH"
>
>
>
> =85and yet bitbake insists on rebuilding everything every time. I had thi=
s
> working yesterday, and today it fails again.
>
>
>
> Any suggestions?

Try running with bitbake -DDD and look for SState: messages. It will
tell you the command used to test for sstate on the mirror and if it
failed/passed.

-M=


