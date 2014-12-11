Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34B3BE00874; Wed, 10 Dec 2014 22:55:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp102.mer-nm.internl.net (smtp102.mer-nm.internl.net
	[217.149.192.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71F3DE0080C
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 22:55:15 -0800 (PST)
Received: from amavisd-new (mailscanner05.wrt-nm.internl.net [217.149.192.128])
	by smtp102.mer-nm.internl.net (Postfix) with ESMTP id 5120E3F503
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 07:55:13 +0100 (CET)
Received: from smtp102.mer-nm.internl.net ([217.149.192.138])
	by amavisd-new (mailscanner05.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Thu, 11 Dec 2014 07:55:12 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp102.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 07:55:12 +0100 (CET)
Received: from [192.168.80.45] (192.168.80.45) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.181.6;
	Thu, 11 Dec 2014 07:55:26 +0100
Message-ID: <54893FCF.6010303@topic.nl>
Date: Thu, 11 Dec 2014 07:55:11 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <95CF81BBD42FB348A182716C4D4310A805485ADE@G2W2533.americas.hpqcorp.net>
	<FABD1EBC-088D-41C9-8CD0-F7D2D4493896@gmail.com>
In-Reply-To: <FABD1EBC-088D-41C9-8CD0-F7D2D4493896@gmail.com>
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
X-List-Received-Date: Thu, 11 Dec 2014 06:55:33 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 12/10/2014 08:00 PM, Khem Raj wrote:
>
>> On Dec 10, 2014, at 10:52 AM, Koehler, Yannick (HP Networking) <yannick.=
koehler@hp.com> wrote:
>>
>> Can Yocto build for example in a single bitbake call an image for x86, p=
pc, arm, others?  Or is the call to bitbake limited to a single architectur=
e?  And if so, how?
>>
>> I see that lots of *-native package are built, and I guess is that for e=
ach machine/os those would be reused, as such, it appears it would be a ben=
efit to be able to build multiple package version for different architectur=
e/distro/machine in a single invocation of bitbake.
>
> parallel multi-machine builds have been discussed but not thought of wort=
h doing. you could however share
> lot of common packages among machines sequentially.
>
> [...]

A more convincing use-case for multi-machine building is the emerging of=20
"hybrids". The little/big architecture that puts different versions of ARM=
=20
CPUs into a single machine is one example, the OMAPs with the DSP and PRUs =
are=20
another. Boards with FPGAs can have several CPU architectures running on a=
=20
single board. One could imagine that one would want to build the software f=
or=20
all these subsystems in a single call, and that one bitbake process would b=
e=20
managing that the build system gets properly used.

Currently, these hybrids have to invoke bitbake for each subsystem, probabl=
y=20
needlessly regenerating binaries, and once more for the one image to find t=
hem=20
all and in darkness bind them...


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


