Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe004.messaging.microsoft.com [216.32.181.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7524E002AB
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2012 12:52:33 -0700 (PDT)
Received: from mail20-ch1-R.bigfish.com (10.43.68.231) by
	CH1EHSOBE006.bigfish.com (10.43.70.56) with Microsoft SMTP Server id
	14.1.225.23; Mon, 6 Aug 2012 19:52:33 +0000
Received: from mail20-ch1 (localhost [127.0.0.1])	by mail20-ch1-R.bigfish.com
	(Postfix) with ESMTP id 5A379200217;
	Mon,  6 Aug 2012 19:52:33 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz98dI9371I1432I14ffIzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail20-ch1 (localhost.localdomain [127.0.0.1]) by mail20-ch1
	(MessageSwitch) id 1344282751550875_5095;
	Mon,  6 Aug 2012 19:52:31 +0000 (UTC)
Received: from CH1EHSMHS025.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.241])	by mail20-ch1.bigfish.com (Postfix) with ESMTP id
	8436B4E0048;	Mon,  6 Aug 2012 19:52:31 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS025.bigfish.com
	(10.43.70.25) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 6 Aug 2012 19:52:31 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Mon, 6 Aug 2012 14:52:30 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
Thread-Topic: [yocto] Method to use same sstate_cache across 32&64bit machines
Thread-Index: AQHNdA0DnXOBg14qZkSYn94Igh4yZQ==
Date: Mon, 6 Aug 2012 19:52:29 +0000
Message-ID: <CAEsOVNd1Gz1hEe9L8a46SNBEi6q2k8Kgnokt9T2kF=_OrnB6DQ@mail.gmail.com>
References: <36ED13F3654AE54CA763E6821D93A5711046A67E@szxeml534-mbx.china.huawei.com>
In-Reply-To: <36ED13F3654AE54CA763E6821D93A5711046A67E@szxeml534-mbx.china.huawei.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Method to use same sstate_cache across 32&64bit machines
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
X-List-Received-Date: Mon, 06 Aug 2012 19:52:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <34724FFE427539409F4DE8E918724ABA@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 6, 2012 at 8:58 AM, Venkata ramana gollamudi
<ramana.gollamudi@huawei.com> wrote:
> Hi All,
>
>
>
> Is there any method exists to use same sstate_cache across 32&64bit
> machines?
>
> Like can we generate 32bit sstate_cache for native packages on 64bit
> machine,
>
> so that same sstate_cache can be used across 32bit & 64bit (with 32bit ib
> support) machines, without a need to rebuild the native packages.

I know you can use the 'setarch' utility to trick your current shell
to think it's running on x86 instead of x86_64 and then it should
build 32-bit sstate-cache (and reuse 32-bit sstate-cache as well) on a
64-bit machine. I suspect there will be a few other issues that are
encountered (such as missing 32 bit libraries) but overall it's quite
doable. Can anyone comment if there is a better way here?

Taking things once step farther and running a setarch with a chroot
and I know things work quite well but that's a lot more involved as
you need a 32-bit chroot environment.

-M

-M=


