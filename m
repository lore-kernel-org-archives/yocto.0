Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web08.963.1615909848477498799
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 08:50:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vivaldi.net header.s=default header.b=K9NASEzd;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 57E1CBD045;
	Tue, 16 Mar 2021 15:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 57E1CBD045
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615909846;
	bh=BtI3GEvYt5xeqk3HW3M1Uy8c00wkH0BzKngbRi++d7c=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=K9NASEzdoPwX67/tz1dEMvaRIe92RXG8zr6+WM/cEjGAvbUjQJpmIRb+0DjCgtZL8
	 2Y3GZpgEwK3x5+CIyfCgGfyhgO03C9yHY4TvZ2qhGXm5dG9B0fBhxlugZsuJoKA/6I
	 +TN62rOHaH7wRaqdH5uY1GU7TpAvKVzFLTcPuvpTh6BTz/CPymvwCmD1qpvnPlMA8g
	 J86NNwdeVqkWhjKvvF/a00YqYPh5Ng72WXqHUnrFjF6gzudrh/niPz3dSv1qQrLgKm
	 XT3FqbJ0X+aGJ0onhNWoYEtmHozO2krhl0R75qos1kiUQjZ3HJrEWCkLdltSk3FuMf
	 zbQRQtJdNdp3Q==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 74fZlPq-dUha; Tue, 16 Mar 2021 15:50:42 +0000 (UTC)
Date: Tue, 16 Mar 2021 11:50:42 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 40AEABD026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615909842;
	bh=BtI3GEvYt5xeqk3HW3M1Uy8c00wkH0BzKngbRi++d7c=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=sChSt2l/2N2ouyN7QtTakoRrnRhroYjmMwQ+hupglpwZK8ABKwIKFt9TWVwEKDjJw
	 7QcQVe8l58AkCxCmQG/EcW/9TtF1xPxcmUW9w46rdjo57umE+sURnx3AGwGGclP6WB
	 XFH3WCUznui2OBVq/jNcs0Vv/t5fkYHx/vr0VNHNX7pl3Lxh0ccTr9Qgfyzt1JsIPW
	 RL7JRV1sg+NTktx2G/2uQ2vjRg1dpeEHuka+F1z/AwDhzvdD9oeSw6HcuEIgs59aeh
	 DZAj8+Pw1dWExuhccVzAlX+uY6LwVil9ARFbckvyJdDTlg6wHo420OtufCfj+dqoco
	 RLFxWHhuUXysg==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: jchludzinski@vivaldi.net
Cc: Josef Holzmayr <jester@theyoctojester.info>, Nicolas Dechesne
 <nicolas.dechesne@linaro.org>, akuster <akuster808@gmail.com>, Yocto
 <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Building test code?
In-Reply-To: <166CDA589776C94C.8652@lists.yoctoproject.org>
References: <bdb239f7ebf89f1567d5fbd2530fa12c@vivaldi.net>
 <503454c9-ea3c-6ecb-bfdf-eb5fce6feeee@gmail.com>
 <247c426e3db4a7f031aad842303134f1@vivaldi.net>
 <CAP71WjwJmSVGGXCtfChNkoN3u-UjXXCmWbO_1tj2iF+aP2RHPQ@mail.gmail.com>
 <CAEt6NwpHM72t3KLzU=2kNApQxqqZN4FJOsUiZUV+WumDT2qjNg@mail.gmail.com>
 <166CDA589776C94C.8652@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <6b47dbaa6ee4a30b21120cf809dd7934@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

I'm 'bitbaking' now.

On 2021-03-16 10:53, jchludzinski via lists.yoctoproject.org wrote:
> Well, because time is of the essence, could you give me a little
> assist here and explain how I might build spidev-test using
> OpenEmbedded?
>=20
> THANKS for your help!
> ---John
>=20
>=20
> On 2021-03-16 05:58, Josef Holzmayr wrote:
>> Am Di., 16. M=C3=A4rz 2021 um 10:49 Uhr schrieb Nicolas Dechesne
>> <nicolas.dechesne@linaro.org>:
>>>=20
>>> On Tue, Mar 16, 2021 at 8:07 AM jchludzinski via
>>> lists.yoctoproject.org
>>> <jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
>>> >
>>> > It certainly appears to be BUT I'm not certain what I'm looking at?
>>> >
>>> > What is meta-openembedded?
>>> >
>>> > Is it a GIT repo that can be cloned and built?
>>>=20
>>> Short answer is yes. The whole Yocto Project / Open Embedded concept
>>> is based around 'layers. A layer is a repository that contains=20
>>> recipes
>>> (and/or machine/distro, ..). The Yocto Project releases include a
>>> couple of common/core layers, but there are plenty of layers out=20
>>> there
>>> which can be used
>>> I am sure there are quite a bit of documentation on this topic, but
>>> perhaps you might want to start with:
>>> https://docs.yoctoproject.org/overview-manual/yp-intro.html#the-yocto-=
project-layer-model
>>=20
>> Or grab a beer and start bingewatching
>> https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qs=
fyj
>>=20
>> </SCNR>
>>=20
>>>=20
>>>=20
>>> >
>>> >
>>> >
>>> > How do I use this to build spidev-test?
>>> >
>>> >
>>> > ---John
>>> >
>>> >
>>> > On 2021-03-15 19:54, akuster wrote:
>>> >
>>> > On 3/15/21 4:11 PM, jchludzinski via lists.yoctoproject.org wrote:
>>> >
>>> > I got a piece of code from github:
>>> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/t=
ree/tools/spi/spidev_test.c
>>> >
>>> > I'd like to add it somewhere under /*tools/testing*/ and build it th=
ere.
>>> >
>>> > Not sure if this is appropriate? If so, how do I go about this?
>>> >
>>> > If not, what's the best way to build this?
>>> >
>>> >
>>> > Is this what you are looking for?
>>> >  https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes=
-kernel/spidev-test/spidev-test.bb
>>> >
>>> > -armin
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>> >
>>>=20
>>>=20
>>>=20
>>=20
>>=20
>>=20
>=20
>=20
>=20
