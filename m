Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web11.28.1615906439692752017
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 07:54:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vivaldi.net header.s=default header.b=s8x/jodt;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 673C4BD02C;
	Tue, 16 Mar 2021 14:53:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 673C4BD02C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615906436;
	bh=2e6JUCz2PYDk1qtYhB/GeDpGJeMFzDSg4Ly1gWwwPAs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=s8x/jodtNfL+30nfmKRKtdCq9MEkBhTLbek4zhP2ThOVKQs5Trcd/nqwXh9s/zbB9
	 lk3TPurEcAYdSlBZm4BI7d4qtIUdGVXhH81aCT46wuyi3bnt0hRbY8KHYzrt8r9RMT
	 FSUdt38Z9OI7riSZIuFG57pzUnU8j7xcsS6cqhdkTL0QJUMdRAE1TBerikViHU4Zw2
	 ni8nmR/zQE4oGlwyMKEtbXuoqZgK1moMcSyMXAWs+84qPWldFnfOX6/75PcTbQSRDE
	 ZAi9Fypyd0+0970WsssmAcL7ipmiQncPVI37bKBBiOCuSp2QSVAZ3u5AGlPp7dUp6m
	 hM/lxsS2Ub4xQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aOOfGTwBvVfw; Tue, 16 Mar 2021 14:53:52 +0000 (UTC)
Date: Tue, 16 Mar 2021 10:53:52 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 4FF3FBD00D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615906432;
	bh=2e6JUCz2PYDk1qtYhB/GeDpGJeMFzDSg4Ly1gWwwPAs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=kH/4GpJCuFRiYbIzxFofodzgvrUkcNExQ+SbdeKiSGfWrTSqjowl9K8nlTZiSIVKP
	 Hic41AmvdUpQofM/L6uRlwT8W/9IJkuQUuGdlq6XS/ML6fs7HA+vsPqoRBX5MzMpZ6
	 NqffzvmAcdEfj+k1MPPs3huqxeVJcEhDBq7hcMr2Kf+BT84vRpB7NbyJ0dyXawmG1g
	 i+Fd6YpEWIxPN6y6y8wQ9/HvuJD3OEHa/fElZwZkLFIRD1fUQ4WdefZjdnhizNDwNS
	 4Z9pd5/qzuxnniSiKSAQ3BfF5orqlaF6ml4bFElM6nbLXPK9Uz6M6dyeWOTZ6EHpdH
	 BRlB2gKZpmblQ==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>, akuster
 <akuster808@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Building test code?
In-Reply-To: <CAEt6NwpHM72t3KLzU=2kNApQxqqZN4FJOsUiZUV+WumDT2qjNg@mail.gmail.com>
References: <bdb239f7ebf89f1567d5fbd2530fa12c@vivaldi.net>
 <503454c9-ea3c-6ecb-bfdf-eb5fce6feeee@gmail.com>
 <247c426e3db4a7f031aad842303134f1@vivaldi.net>
 <CAP71WjwJmSVGGXCtfChNkoN3u-UjXXCmWbO_1tj2iF+aP2RHPQ@mail.gmail.com>
 <CAEt6NwpHM72t3KLzU=2kNApQxqqZN4FJOsUiZUV+WumDT2qjNg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <10f436d4d4f9993ed8496bc502e16dc8@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Well, because time is of the essence, could you give me a little assist=20
here and explain how I might build spidev-test using OpenEmbedded?

THANKS for your help!
---John


On 2021-03-16 05:58, Josef Holzmayr wrote:
> Am Di., 16. M=C3=A4rz 2021 um 10:49 Uhr schrieb Nicolas Dechesne
> <nicolas.dechesne@linaro.org>:
>>=20
>> On Tue, Mar 16, 2021 at 8:07 AM jchludzinski via
>> lists.yoctoproject.org
>> <jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
>> >
>> > It certainly appears to be BUT I'm not certain what I'm looking at?
>> >
>> > What is meta-openembedded?
>> >
>> > Is it a GIT repo that can be cloned and built?
>>=20
>> Short answer is yes. The whole Yocto Project / Open Embedded concept
>> is based around 'layers. A layer is a repository that contains recipes
>> (and/or machine/distro, ..). The Yocto Project releases include a
>> couple of common/core layers, but there are plenty of layers out there
>> which can be used
>> I am sure there are quite a bit of documentation on this topic, but
>> perhaps you might want to start with:
>> https://docs.yoctoproject.org/overview-manual/yp-intro.html#the-yocto-p=
roject-layer-model
>=20
> Or grab a beer and start bingewatching
> https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsf=
yj
>=20
> </SCNR>
>=20
>>=20
>>=20
>> >
>> >
>> >
>> > How do I use this to build spidev-test?
>> >
>> >
>> > ---John
>> >
>> >
>> > On 2021-03-15 19:54, akuster wrote:
>> >
>> > On 3/15/21 4:11 PM, jchludzinski via lists.yoctoproject.org wrote:
>> >
>> > I got a piece of code from github:
>> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/tools/spi/spidev_test.c
>> >
>> > I'd like to add it somewhere under /*tools/testing*/ and build it the=
re.
>> >
>> > Not sure if this is appropriate? If so, how do I go about this?
>> >
>> > If not, what's the best way to build this?
>> >
>> >
>> > Is this what you are looking for?
>> >  https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-=
kernel/spidev-test/spidev-test.bb
>> >
>> > -armin
>> >
>> >
>> >
>> >
>> >
>> >
>> >
>> >
>> >
>> >
>>=20
>>=20
>>=20
>=20
>=20
>=20
