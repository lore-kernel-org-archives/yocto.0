Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6777E00B37; Mon,  1 Feb 2016 20:48:33 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4169E00AAB
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 20:48:25 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 655A942F3C;
	Mon,  1 Feb 2016 23:48:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	czs3tAuIAKSogMath6m84hsRcgU=; b=HM/C34bTQz1VGxCSXC/Dk9V4dJ9nA0Ec
	ZS+viJqrY8xzy1YXoX4TjVUzc0XNC19oubd3/iUTVjhm4XZiQ/g3sCln7/DomxFF
	pwE5faIBavPArUP34VGYc11XZi1iT0EmGfmb/iRpheaY8tKiVqwxEcjjp3C3nkAr
	VEi59C8jzvE=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 5C81142F3B;
	Mon,  1 Feb 2016 23:48:23 -0500 (EST)
Received: from [10.41.136.109] (unknown [79.153.142.148])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 9BE2942F36;
	Mon,  1 Feb 2016 23:48:21 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <ED68D339-EFF1-4A96-B037-56F04ACBD020@nathan.to>
Date: Tue, 2 Feb 2016 05:48:21 +0100
Message-Id: <5AB091C9-E237-45E1-BD7D-FA5CA65B3199@nathan.to>
References: <f0bdfb388a6d44448446852d1ef2a8f2@serv030.corp.eldorado.org.br>
	<CAJTo0LbJj2MG8-mhyUYqdJVdtUAvrm_JmHm=-_oO-XN+X-NVxA@mail.gmail.com>
	<2ef4d1534eec41629c074c0ae55db0c9@serv030.corp.eldorado.org.br>
	<ED68D339-EFF1-4A96-B037-56F04ACBD020@nathan.to>
To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 304D8AD4-C968-11E5-B7FA-04C16BB36C07-96844961!pb-smtp0.pobox.com
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
X-List-Received-Date: Tue, 02 Feb 2016 04:48:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

As a follow up, I have just done this:

bitbake core-image-kernel-dev

And now I get the eth0 interface configured and active when I start the =
Yocto image.=20

I do not have to configure and start it manually.

Regards

Nathan

> On 1 Feb 2016, at 13:31, Nathan Sowatskey <nathan@nathan.to> wrote:
>=20
> Hi
>=20
> I think I am seeing something similar. I only have video in my =
kernel/drivers directory, which is to say that there is no net directory =
either.
>=20
> I have been using the Build Appliance to create a qemux86-64 =
core-image-full-cmdline machine. When I ran that without any -netdev =
arguments at all, on OSX, I was able to use -redir tcp:5555::22 to =
enable SSH from the host.
>=20
> At least, that did work a few times at least last week.
>=20
> Now, I have to manually edit the /etc/network/interfaces file to add =
iface eth0 init dhcp, and then manually ifup eth0.
>=20
> I am sure I did not have to do that with builds last week.
>=20
> Regards
>=20
> Nathan
>=20
>> On 29 Jan 2016, at 21:59, Alexandre Freire da Silva Osorio =
<alexandre.osorio@eldorado.org.br> wrote:
>>=20
>> You=E2=80=99re right, Ross. They=E2=80=99re present in =
modules-qemux86-64.tgz. The problem is that for some reason the drivers =
are not being copied to the root filesystem.
>>=20
>> For example, the expected =
lib/modules/3.14.36ltsi-yocto-standard/kernel/drivers/net/ directory is =
not created in the rootfs.
>>=20
>> Thanks.
>>=20
>> Alexandre
>>=20
>> From: Burton, Ross [mailto:ross.burton@intel.com]=20
>> Sent: sexta-feira, 29 de janeiro de 2016 18:52
>> To: Alexandre Freire da Silva Osorio =
<alexandre.osorio@eldorado.org.br>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] network drivers are not installed when MACHINE =
qemux86-64
>>=20
>>=20
>> On 29 January 2016 at 18:41, Alexandre Freire da Silva Osorio =
<alexandre.osorio@eldorado.org.br> wrote:
>> When I build a core-image-lsb image for MACHINE qemux86-64, the =
network drivers are not enabled. When building the same image for =
genericx86-64, this problem doesn=E2=80=99t occur and all the drivers =
are enabled.=20
>>=20
>> qemux86-64 certainly ships with network drivers for the qemu machine. =
 What drivers are you expecting to be present?
>>=20
>> Ross
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


