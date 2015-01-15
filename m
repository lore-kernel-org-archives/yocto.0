Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47279E0083C; Thu, 15 Jan 2015 01:06:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp102.mer-nm.internl.net (smtp102.mer-nm.internl.net
	[217.149.192.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF0AE003E3
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 01:06:07 -0800 (PST)
Received: from amavisd-new (mailscanner07.wrt-nm.internl.net [217.149.192.117])
	by smtp102.mer-nm.internl.net (Postfix) with ESMTP id 8CB733F610
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 10:06:05 +0100 (CET)
Received: from smtp102.mer-nm.internl.net ([217.149.192.138])
	by amavisd-new (mailscanner07.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Thu, 15 Jan 2015 10:06:05 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp102.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 10:06:04 +0100 (CET)
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Thu, 15 Jan 2015 10:07:28 +0100
Message-ID: <54B782FA.9040109@topic.nl>
Date: Thu, 15 Jan 2015 10:06:02 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <11564A1C-1D09-4BDA-8CCB-3045DF82EFD2@jtang.org>	<20150114203610.GB4735@gmail.com>
	<B16CA82B-7834-419F-9E84-669E8F9B6779@jtang.org>
In-Reply-To: <B16CA82B-7834-419F-9E84-669E8F9B6779@jtang.org>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Re: [meta-raspberrypi] Why not enable hard floating point?
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
X-List-Received-Date: Thu, 15 Jan 2015 09:06:13 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 15-01-15 01:11, J. Tang wrote:
>
> On Jan 14, 2015, at 15:36 , Andrei Gherzan <andrei@gherzan.ro> wrote:
>
>> On Sat, Jan 10, 2015 at 10:38:50AM -0500, J. Tang wrote:
>>> The upstream meta-raspberrypi recipe builds an arm6 toolchain with only=
 soft floating point. As an experiment, I enabled hard floating point by se=
tting my DEFAULTTUNE to =E2=80=9Carmv6hf=E2=80=9D. My code still ran correc=
tly. Is there a reason why the meta-raspberrypi layer does not enable hard =
floating point?
>>>
>>
>> Well we played a little with this in the past. And we realised that, at =
that
>> time at least, switching to hf didn't add any performace improvements. D=
id you
>> test anything that proves the contrary?
>
> In my case, I was re-compiling MAME for the Raspberry Pi. The code has a =
dependency on hf. Furthermore, Rasbian is built with hf.

If the CPU has actual hard-float support, then enabling it should increase=
=20
floating point performance by an order of magnitude (e.g. 100x faster or so=
).

If you don't see any real world performance improvements, My guess would be=
=20
one of these cases:

-1- The compiler is already creating FPU instructions, based on other=20
properties of the target platform. The "hf" tune only changes the ABI, so t=
hat=20
floating point values are passed to/from libraries in normal registers inst=
ead=20
of FPU registers. This has very little impact on performance (unless you ha=
ve=20
some very badly designed libs). You can check if this is the case by examin=
ing=20
disassember output for a bit of FPU code, if you see instructions starting=
=20
with "F" in there, it's using the ARM VFP.

-2- The CPU doesn't actually have floating point support and the kernel is=
=20
emulating it for you. This allows the platform to run "hf" binaries, at a=20
minor performance cost compared to completely doing the emulation in user=20
space (libc).



Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert


TOPIC Embedded Systems
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: (+31) (0) 499 33 69 79
Telefax:  (+31) (0) 499 33 69 70
E-mail: mike.looijmans@topic.nl
Website: www.topic.nl

Please consider the environment before printing this e-mail

Topic zoekt gedreven (embedded) software specialisten!
http://topic.nl/vacatures/topic-zoekt-software-engineers/


