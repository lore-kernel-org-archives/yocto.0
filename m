Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCCBDE00B45; Tue,  2 Feb 2016 01:26:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.72.237.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA0DBE00AAB
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 01:26:13 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id D0F673A14D;
	Tue,  2 Feb 2016 04:26:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	JFhUo1aRPJt19KG03/gpzqgcCEg=; b=s36Db9KTRpaD2wpqndIb5cJAvQZp0r7h
	P7toFcnwTBientSz0E4i9LjqCvQ9r44uAi5+MOducMOWCpM+DQ+9h9ylqbZ7L6GI
	rAzrB/8tM0z1lw8Mdg19ze+THI7QqUCvvxPlHG5lE2CqHijk1QlcLwUmjCx9kvRL
	HkqekSKm0Gc=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id C984F3A14C;
	Tue,  2 Feb 2016 04:26:11 -0500 (EST)
Received: from [10.41.136.109] (unknown [79.153.142.148])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id E98A83A14B;
	Tue,  2 Feb 2016 04:26:10 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <CAMKF1so3icMJHEUL-AGCuNkNZis+8DThkQ085yfqCdxDRzcDWw@mail.gmail.com>
Date: Tue, 2 Feb 2016 10:25:49 +0100
Message-Id: <E4E26B4A-FDDB-4A9B-81DB-37643A849A3F@nathan.to>
References: <f0bdfb388a6d44448446852d1ef2a8f2@serv030.corp.eldorado.org.br>
	<CAJTo0LbJj2MG8-mhyUYqdJVdtUAvrm_JmHm=-_oO-XN+X-NVxA@mail.gmail.com>
	<2ef4d1534eec41629c074c0ae55db0c9@serv030.corp.eldorado.org.br>
	<ED68D339-EFF1-4A96-B037-56F04ACBD020@nathan.to>
	<5AB091C9-E237-45E1-BD7D-FA5CA65B3199@nathan.to>
	<CAMKF1so3icMJHEUL-AGCuNkNZis+8DThkQ085yfqCdxDRzcDWw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: FF736DB2-C98E-11E5-A6C9-04C16BB36C07-96844961!pb-smtp0.pobox.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: network drivers are not installed when MACHINE qemux86-64
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
X-List-Received-Date: Tue, 02 Feb 2016 09:26:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Khem

Thanks for following up. I am very new to Yocto, so I am probably =
missing some context around your question.

For example, I don=E2=80=99t know what the =E2=80=9Crelevant kernel =
modules=E2=80=9D would be, and I don=E2=80=99t know where =
MACHINE_EXTRA_RECOMMENDS is defined.

I don=E2=80=99t see the MACHINE_EXTRA_RECOMMENDS variable in any file in =
build/conf, nor in the environment variables.

Regards

Nathan

> On 2 Feb 2016, at 06:05, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Mon, Feb 1, 2016 at 8:48 PM, Nathan Sowatskey <nathan@nathan.to> =
wrote:
>> As a follow up, I have just done this:
>>=20
>> bitbake core-image-kernel-dev
>>=20
>> And now I get the eth0 interface configured and active when I start =
the Yocto image.
>>=20
>> I do not have to configure and start it manually.
>=20
> Can you check if relevant kernel modules are listed in =
MACHINE_EXTRA_RRECOMMENDS
>=20
>>=20
>> Regards
>>=20
>> Nathan
>>=20
>>> On 1 Feb 2016, at 13:31, Nathan Sowatskey <nathan@nathan.to> wrote:
>>>=20
>>> Hi
>>>=20
>>> I think I am seeing something similar. I only have video in my =
kernel/drivers directory, which is to say that there is no net directory =
either.
>>>=20
>>> I have been using the Build Appliance to create a qemux86-64 =
core-image-full-cmdline machine. When I ran that without any -netdev =
arguments at all, on OSX, I was able to use -redir tcp:5555::22 to =
enable SSH from the host.
>>>=20
>>> At least, that did work a few times at least last week.
>>>=20
>>> Now, I have to manually edit the /etc/network/interfaces file to add =
iface eth0 init dhcp, and then manually ifup eth0.
>>>=20
>>> I am sure I did not have to do that with builds last week.
>>>=20
>>> Regards
>>>=20
>>> Nathan
>>>=20
>>>> On 29 Jan 2016, at 21:59, Alexandre Freire da Silva Osorio =
<alexandre.osorio@eldorado.org.br> wrote:
>>>>=20
>>>> You=E2=80=99re right, Ross. They=E2=80=99re present in =
modules-qemux86-64.tgz. The problem is that for some reason the drivers =
are not being copied to the root filesystem.
>>>>=20
>>>> For example, the expected =
lib/modules/3.14.36ltsi-yocto-standard/kernel/drivers/net/ directory is =
not created in the rootfs.
>>>>=20
>>>> Thanks.
>>>>=20
>>>> Alexandre
>>>>=20
>>>> From: Burton, Ross [mailto:ross.burton@intel.com]
>>>> Sent: sexta-feira, 29 de janeiro de 2016 18:52
>>>> To: Alexandre Freire da Silva Osorio =
<alexandre.osorio@eldorado.org.br>
>>>> Cc: yocto@yoctoproject.org
>>>> Subject: Re: [yocto] network drivers are not installed when MACHINE =
qemux86-64
>>>>=20
>>>>=20
>>>> On 29 January 2016 at 18:41, Alexandre Freire da Silva Osorio =
<alexandre.osorio@eldorado.org.br> wrote:
>>>> When I build a core-image-lsb image for MACHINE qemux86-64, the =
network drivers are not enabled. When building the same image for =
genericx86-64, this problem doesn=E2=80=99t occur and all the drivers =
are enabled.
>>>>=20
>>>> qemux86-64 certainly ships with network drivers for the qemu =
machine.  What drivers are you expecting to be present?
>>>>=20
>>>> Ross
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>=20
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


