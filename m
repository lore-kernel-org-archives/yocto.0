Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2845DE0087C; Wed, 10 Dec 2014 22:59:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp102.mer-nm.internl.net (smtp102.mer-nm.internl.net
	[217.149.192.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C4DE0082F
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 22:59:24 -0800 (PST)
Received: from amavisd-new (mailscanner02.wrt-nm.internl.net [217.149.192.114])
	by smtp102.mer-nm.internl.net (Postfix) with ESMTP id A0D553F503
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 07:59:23 +0100 (CET)
Received: from smtp102.mer-nm.internl.net ([217.149.192.138])
	by amavisd-new (mailscanner02.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Thu, 11 Dec 2014 07:59:23 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp102.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 07:59:23 +0100 (CET)
Received: from [192.168.80.45] (192.168.80.45) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.181.6;
	Thu, 11 Dec 2014 07:59:37 +0100
Message-ID: <548940CA.7040902@topic.nl>
Date: Thu, 11 Dec 2014 07:59:22 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <7B6FE55CD594D7478CED8A39DF3BFC0A5E6FA1D4@UT40SVCWEM001.atk.com>
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E6FA1D4@UT40SVCWEM001.atk.com>
X-Originating-IP: [192.168.80.45]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Re: External Linux Kernel Module
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
X-List-Received-Date: Thu, 11 Dec 2014 06:59:26 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 12/10/2014 06:42 AM, Moore, Thomas (FtWorth) wrote:
> Hello,
>
> I=E2=80=99m working on incorporating an external kernel module based on t=
he hello-mod
> skeleton recipe. Everything was going well until I added the following li=
ne to
> my machine configuration:
>
> MACHINE_EXTRA_RDEPENDS +=3D "kernel-module-hello=E2=80=9D
>
> Attempting to run =E2=80=9Cbitbake core-image-base=E2=80=9D then leads to=
 the following error:
>
> no package provides kernel-module-hello
>
> After digging through the .bbclass files in the meta folder, I=E2=80=99m =
beginning to
> think that the following comment in the hello-mod_0.1.bb file is no longe=
r true:
>
> # The inherit of module.bbclass will automatically name module packages w=
ith
>
> # "kernel-module-" prefix as required by the oe-core build environment.
>
> Adding the following lines to the end of hello-mod_0.1.bb allows the imag=
e to
> be successfully created:
>
> PROVIDES =3D "kernel-module-hello"
>
> RPROVIDES_${PN} =3D "kernel-module-hello"
>
> Has something been changed in module.bbclass? Is it even required to have=
 to
> have the =E2=80=9Ckernel-module-=E2=80=9C prefix?

I think that comment is outdated or something that someone wanted to implem=
ent=20
some day or so.

I've always just named my kernel module recipes "kernel-module-XXX.bb".




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


