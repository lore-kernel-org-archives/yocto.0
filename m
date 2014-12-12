Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9A15E00993; Thu, 11 Dec 2014 22:24:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp103.mer-nm.internl.net (smtp103.mer-nm.internl.net
	[217.149.192.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88932E00982
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 22:24:23 -0800 (PST)
Received: from amavisd-new (mailscanner04.wrt-nm.internl.net [217.149.192.127])
	by smtp103.mer-nm.internl.net (Postfix) with ESMTP id 91A8D3F8BB
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 07:24:20 +0100 (CET)
Received: from smtp103.mer-nm.internl.net ([217.149.192.139])
	by amavisd-new (mailscanner04.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Fri, 12 Dec 2014 07:24:20 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp103.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 07:24:19 +0100 (CET)
Received: from [192.168.80.45] (192.168.80.45) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.181.6;
	Fri, 12 Dec 2014 07:24:28 +0100
Message-ID: <548A8A0E.10407@topic.nl>
Date: Fri, 12 Dec 2014 07:24:14 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <95CF81BBD42FB348A182716C4D4310A805485ADE@G2W2533.americas.hpqcorp.net>	<FABD1EBC-088D-41C9-8CD0-F7D2D4493896@gmail.com>	<54893FCF.6010303@topic.nl>
	<5489F3A7.7030505@windriver.com>
In-Reply-To: <5489F3A7.7030505@windriver.com>
X-Originating-IP: [192.168.80.45]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Re: parallel build of multiple machine/os?
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
X-List-Received-Date: Fri, 12 Dec 2014 06:24:33 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 12/11/2014 08:42 PM, Mark Hatle wrote:
> On 12/11/14, 12:55 AM, Mike Looijmans wrote:
>> On 12/10/2014 08:00 PM, Khem Raj wrote:
>>>
>>>> On Dec 10, 2014, at 10:52 AM, Koehler, Yannick (HP Networking)
>>>> <yannick.koehler@hp.com> wrote:
>>>>
>>>> Can Yocto build for example in a single bitbake call an image for x86,
>>>> ppc, arm, others?  Or is the call to bitbake limited to a single
>>>> architecture?  And if so, how?
>>>>
>>>> I see that lots of *-native package are built, and I guess is that for
>>>> each machine/os those would be reused, as such, it appears it would be=
 a
>>>> benefit to be able to build multiple package version for different
>>>> architecture/distro/machine in a single invocation of bitbake.
>>>
>>> parallel multi-machine builds have been discussed but not thought of wo=
rth
>>> doing. you could however share
>>> lot of common packages among machines sequentially.
>>>
>>> [...]
>>
>> A more convincing use-case for multi-machine building is the emerging of
>> "hybrids". The little/big architecture that puts different versions of A=
RM
>> CPUs into a single machine is one example, the OMAPs with the DSP and PR=
Us are
>> another. Boards with FPGAs can have several CPU architectures running on=
 a
>> single board. One could imagine that one would want to build the softwar=
e for
>> all these subsystems in a single call, and that one bitbake process woul=
d be
>> managing that the build system gets properly used.
>>
>> Currently, these hybrids have to invoke bitbake for each subsystem, prob=
ably
>> needlessly regenerating binaries, and once more for the one image to fin=
d them
>> all and in darkness bind them...
>>
>
>  From a userspace perspective, this is more or less solved with the multi=
lib
> configurations.  Perhaps it would be possible to implement some kind of h=
ybrid
> kernel configuration using the same type of multilib setup.  (Note, this =
would
> be new work, it's not something we have today.)

The OMAP PRU and DSP each run their own bootloader/kernels (the PRU is just=
=20
bare metal code), and do not share code with the ARM that runs the rest. Fr=
om=20
the ARM's perspective, the DSP and PRU just need "firmware".

If I put a Microblaze into the FPGA of a Zynq, I have a system that can run=
=20
multiple kernels, on the built-in ARM CPUs and on the Microblaze(s). The AR=
M=20
is then responsible for bootstrapping the microblaze, but it ends there, as=
=20
the microblaze can run its own kernel and rootfs and applications, and they=
=20
don't need to understand each other's binaries.

One problem here is that the "firmware" for the microblaze would be a "imag=
e",=20
and images and in particular the rootfs, for reasons yet unknown to me, alw=
ays=20
get rebuilt even if nothing changed and the output would be the same.

I might succeed in spawning another bitbake from within the one that builds=
=20
the ARM system, but on a 8-core system this sub-bitbake would also try to r=
un=20
8 parallel processes, each potentially running 8 compiler threads. Some of=
=20
these compilers eat RAM like crazy, so this is not going to be productive. =
It=20
would be much better if the builds for the ARM and mircroblaze would share =
the=20
load. Probably a very challenging thing to do currently.



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


