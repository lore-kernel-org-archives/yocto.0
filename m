Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 899AEF4BB6D
	for <webhook@archiver.kernel.org>; Tue, 24 Feb 2026 18:06:25 +0000 (UTC)
Received: from rusty.tulip.relay.mailchannels.net (rusty.tulip.relay.mailchannels.net [23.83.218.252])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.26711.1771956382604441288
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Feb 2026 10:06:23 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=DD1jeJuV;
 spf=pass (domain: rootcommit.com, ip: 23.83.218.252, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id CE0E8721961;
	Tue, 24 Feb 2026 18:06:21 +0000 (UTC)
Received: from de-fra-smtpout1.hostinger.io (100-101-111-158.trex-nlb.outbound.svc.cluster.local [100.101.111.158])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 200D3720AF3;
	Tue, 24 Feb 2026 18:06:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1771956380;
	b=MDk2ngEKFB5u1944iBQGJUXZ3qsZu8/b1aO9Cc/ftCLG/4fM2aIgOYN4HFOz9JuRvWr6kD
	4+EijL1dYQEWHNK4ABxEYPD4YXdXdxpJjUi8GpPidHHdaOBF0z5oqgmQf6ZXnpy3luCNwZ
	9+iKqORi3LzJoGFDnuVx++HGbW8LFSs0wm/mkUfp8ZpqkJ2jv7g5Oq9qQDPbY3djmaoEWj
	6NL10GFySEfY4FCoFT/iRzZUIvtrebOlPIqicaCGfYT06BioT08q3G1888Img35rQCbHcr
	deO3ha9J++EAl4CurdNJohY9Z/uubVrZM51plMPFXaIg7npYXL6fino+xAAPGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1771956380;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=1ur7hlnZUzPKCTtzySRVSfy5oApYYkGShE1OSwyKBvE=;
	b=S0kPgqtk6Mi3RrR9v8qI13lNwkkBSqPXBykahDW7Niyz52+iS6g+IcrdNSjd7DeAsRM56a
	uQqnIsDf4BHhMi0NN4DPJQ/8Hi17DNGsPqA5JFx2Z2hhiNSqzWzFNsSZaAAuBZGgQGi56/
	JMNUFxACCn4BKaBWcxjMJ/mmWvo/PIk2WoSSHfTGb7JYPNFrgVY8grriJ+l46ZnEjzONch
	4o0ltqH+LefKEAa9qEAEHvKQDP+YVa62SQyGk9knfsS75VTD0eysjp3NM0cwbaQm2Oo+X7
	QxOpo7EbZn685xfxPD4wpWr1H+5VdBs051RjZCODSQ/I47q1TaUp8npNRcFPJg==
ARC-Authentication-Results: i=1;
	rspamd-6fbd58c58b-vl7mn;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Desert-Illustrious: 30d2996c370a8bee_1771956381666_3791993040
X-MC-Loop-Signature: 1771956381666:3100315509
X-MC-Ingress-Time: 1771956381665
Received: from de-fra-smtpout1.hostinger.io (de-fra-smtpout1.hostinger.io
 [148.222.55.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.101.111.158 (trex/7.1.3);
	Tue, 24 Feb 2026 18:06:21 +0000
Received: from [10.84.4.233] (cust-west-par-46-193-12-2.cust.wifirst.net [46.193.12.2])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4fL5J90cJGz468j;
	Tue, 24 Feb 2026 18:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1771956377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1ur7hlnZUzPKCTtzySRVSfy5oApYYkGShE1OSwyKBvE=;
	b=DD1jeJuVwmiT8uA3QUAZXLfEGopVJeEGyJ2jqjMF90XmTsUazd3fXHECfkYixNkcRbhmWx
	Kp1NJjFtDn5KdrF9T1xDghRYZuStj/3jSXlh5zzrXh0jDnXMZuHST4zggb01BPXnWC0WY9
	+RsvOJFbY5npKiCu6Fy2u2/xev2d+Z9ZQecCWTpzkxja7J2XF+SDNqFV842gocwsBdyedv
	VDBXxy6u6miaC8i7rwqItLqWA1k0kLSE+DigeQh5y9TUY0QXRnwbxdrUoQgt6QNwSiZFHD
	gv0bne3n2YbK6mhyw4Z6zBZLLgYqzSGYPYQl7uEqNNEDtjdqUnvRDl0mextK6g==
Message-ID: <1ceab5c2-fbf9-4d26-b052-48058c1c260d@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, Vyacheslav Yurkov <uvv.mail@gmail.com>
Subject: Re: [yocto] FIT image verification not working on imx8mm
To: Francesco Valla <francesco@valla.it>, yocto@lists.yoctoproject.org
References: <caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com>
 <aZtpkyLqvFf2SPZr@bywater>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
In-Reply-To: <aZtpkyLqvFf2SPZr@bywater>
Content-Type: text/plain; charset=UTF-8; format=flowed
Date: Tue, 24 Feb 2026 18:06:17 +0000 (UTC)
X-CM-Envelope: MS4xfD/UpCziFY6ww4qzt/88SZO9QL6mJ3/WM7ZL7mZ+YffKTIjy4KfU/P/uWMlHixkO0tky4DkM8CvkmjAiu3SvMF5JrqJOesaM/vVowdbpyfrKjrXgEweL vVz0RWiRjTSH1kaPY34MhmFCTM5ivU2IiA+yvkqvrQoT7eJkUlrBIhIzSm0pW7ABY+ucGZjy87limVRBk0lc809ieWtcFUfqF5bF2W+lbcGhryeO5Wya3WTf ys5YYweYoLX+U0Jl6Qml3fu7wUn+CwoQRZuGt65F3wmoYqEbGRDtdOUSBJ57zG3zbCwp8p43atefyaGly9Qh7Q==
X-CM-Analysis: v=2.4 cv=etGNzZpX c=1 sm=1 tr=0 ts=699de899 a=aCas2rLEtQ6MzMN+o5vPfA==:117 a=aCas2rLEtQ6MzMN+o5vPfA==:17 a=IkcTkHD0fZMA:10 a=kTakKMPAAAAA:8 a=p0WdMEafAAAA:8 a=iGHA9ds3AAAA:8 a=mCOxdJenE2Qn9ZZ0WT4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uLSFYZeSjgb_eomtY0KL:22 a=nM-MV4yxpKKO9kiQg6Ot:22
X-AuthUser: michael.opdenacker@rootcommit.com
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Feb 2026 18:06:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66277

Hi Francesco

Thanks for having a look at this issue and the corresponding code, much=20
appreciated!

On 2/22/26 11:33 PM, Francesco Valla wrote:
> Hi Michael,
>
> On Sat, Feb 21, 2026 at 10:39:15AM +0000, Michael Opdenacker via lists.=
yoctoproject.org wrote:
>> Greetings,
>>
>> For a secure boot project on Toradex Verdin with imx8mm, I'm trying to
>> enable FIT image signature verification in U-Boot.
>>
>> Slava's "Generation of FIT images" presentation at the recent OE works=
hop
>> has been very useful:
>> https://pretalx.com/media/openembedded-workshop-2026-2025/submissions/=
R8KJQZ/resources/_LJtpFTR.pdf
>>
>> I generated a temporary local RSA 2048 key, and I'm using it to sign a=
 FIT
>> image.
>>
>> I also set the UBOOT_SIGN_KEYDIR, UBOOT_SIGN_KEYNAME and UBOOT_SIGN_EN=
ABLE
>> variables to add the public key to U-Boot's DTB.
>>
>> The signature indeed appears in the generated u-boot.dtb file, in a
>> "/signature" node:
>>
>>  =C2=A0 =C2=A0 signature {
>>
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 key-imx8mmsb {
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 required =3D "conf";
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 algo =3D "sha256,rsa2048";
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,r-squared =3D <0x56bb2a=
2b 0xc6b322cc 0x2f828666 0x75c8bc46
>> 0xd13093af 0xc2244c35 0xb6420649 0x478d7ed3 0xeb7a0399 0x3b1d49a9 0xc1=
06169d
>> 0x7328dbb4 0x2140c49b 0x111732a1 0xb3286fed 0x53937163 0x8c28f85c 0xe2=
72b1ee
>> 0x5e009a53 0x13883205 0xcda0fbc7 0xd7ed4e75 0x9ed065c1 0xb6ca1e69 0xf2=
c9dce2
>> 0xcf8ebf7b 0x59a72b94 0x501d2751 0x437e3355 0xcba6b07a 0x9b13feea 0x10=
32d715
>> 0xab3cdd83 0x319b6bb0 0xfc31ff93 0xb7fabbb6 0x79d5d0fa 0x9c0f76e0 0x35=
28c22e
>> 0xbbec6d6c 0x7981362f 0x528848a9 0xb57aa235 0x462ed577 0x4ccc8b9d 0xeb=
4ce969
>> 0x5fb085b3 0x3fced511 0xfd98edfe 0xf3a4ca51 0x1bb74370 0x3a11c748 0xbb=
d5be95
>> 0x946f8b3f 0x3d8c98b6 0x3b0e00a8 0xeca87fc6 0x7331981e 0xaaee80df 0x47=
6816f2
>> 0x509aaab1 0xa5f50e1a 0x474d0de8 0xc551ac97>;
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,modulus =3D <0xb3ade247=
 0x4b8d0aef 0x4581e5e9 0x6084f135
>> 0x778847c7 0xaf23976f 0x81b6eb84 0xa2406db4 0x2b89e624 0x81f913c9 0xd6=
ebef10
>> 0x3e30adee 0xbca06cbe 0x5693b23b 0xc6b211f1 0xfea7a90d 0x2767ca7c 0xaa=
8b2ddb
>> 0xcf8a63ea 0x66fe8c59 0x43b34a2f 0x720009d8 0xa2a61281 0x2f7fe049 0xfc=
3d10e5
>> 0x1b52409 0xdeb52a16 0xa4e5fa78 0x7116d181 0xc0c2f39e 0x24a626b4 0x7e5=
9438b
>> 0x6680b1f4 0xc4b1184c 0x8bb65f34 0x92038fd7 0x3901c347 0xc2095158 0x31=
59031a
>> 0xaa4bb76c 0xc53f2009 0x9f4941f8 0x736ca84a 0xd83bd011 0x3685d02c 0x6f=
4cb5e7
>> 0xd07e8566 0x173819f 0x8f41366d 0x8b0f82fd 0x54c01fc0 0xc216cbd5 0x2fc=
4a666
>> 0x426ff669 0x880428ca 0x7c7615c 0xcdc97895 0x8c936a3c 0xd6d7e82e 0x5bf=
63d9d
>> 0x9fcd83a2 0xb131015f 0xc530c031 0x8446f707>;
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,exponent =3D <0x00 0x10=
001>;
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,n0-inverse =3D <0x93653=
949>;
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,num-bits =3D <0x800>;
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 key-name-hint =3D "imx8mmsb=
";
>>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 };
>>  =C2=A0 =C2=A0 };
>>
>> I also compiled U-Boot with
>> |CONFIG_FIT_SIGNATURE=3Dy
>> |
>> However, when U-Boot loads the FIT image, it only checks the integrity=
 of
>> the sha256 hash of the FIT image parts:
>>  =C2=A0 =C2=A0Verifying Hash Integrity ... sha256+ OK
>>
>> No signature checking happens. I can also load an unsigned FIT image w=
hich
>> is accepted too. Indeed, when I open the generated "imx-boot" file (or
>> "flash.bin", linking to the same file) that is used to boot the board,=
 I can
>> see a DTB for my board, but it doesn't contain any "signature" node, u=
nlike
>> in "u-boot.dtb".
>>
>> What could I be missing? My layer, along with a kas file to generate t=
he
>> image, is available on https://gitlab.com/rootcommit/meta-imx8mm-secur=
eboot.
> (From what I can infer from the layer, since there are no explicit
> dependencies declared, you are using meta-toradex-nxp, which in turn is
> depending on meta-freescale. The idea/suggestion that follows starts
> from this assumption, if your setup is different I may be totally
> wrong.)

I believe that's correct, from the kas file in the layer.
>
> What is the value of the UBOOT_PROVIDES_BOOT_CONTAINER variable?
>
> If it is 1 (as it might be, as meta-freescale sets it to 1 for imx8m*
> SoCs if the bootloader is not u-boot-imx [0]), the imx-boot container
> is generated by U-Boot using binman, which however iis / should not be
> able to use the u-boot.dtb binary with the signature. The injection of
> the signature in fact happens on the u-boot.dtb binary only after this
> has been deployed [1], which in this case would be *after* the imx-boot
> blob has been generated.
Indeed UBOOT_PROVIDES_BOOT_CONTAINER=3D"1"
I'll study the corresponding code. Thanks again for your help!
Cheers
Michael.

