Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAF2DC61DE2
	for <webhook@archiver.kernel.org>; Sat, 21 Feb 2026 10:39:25 +0000 (UTC)
Received: from rusty.tulip.relay.mailchannels.net (rusty.tulip.relay.mailchannels.net [23.83.218.252])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.17824.1771670359807235001
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Feb 2026 02:39:20 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=sfo9/Ds+;
 spf=pass (domain: rootcommit.com, ip: 23.83.218.252, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id B90CA161A5D;
	Sat, 21 Feb 2026 10:39:18 +0000 (UTC)
Received: from fr-int-smtpout21.hostinger.io (trex-green-0.trex.outbound.svc.cluster.local [100.101.107.79])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id C7C56161A83;
	Sat, 21 Feb 2026 10:39:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1771670358;
	b=qp/RGeUmM3NZmBxD0YTQ4AKxTDUwwY2Fp9zAQCwcRJNA/4B9j0Z+moQsRUTMtJLcR4FmmF
	/HEg0L34h8MWHC5CXPE92DBM/VHOkUO6XIvJX5QjQW0gIsBgoar9jglcaGpsyYjXGN3whl
	+TxGUI/TOWFIVVoXBg5wu7p5tCUm+iBPlb7fy6ks4llTkrucfWpsOiCZo+0idebV5Mz1m7
	PFNcPfwRjxo6f5ouR0UWk5qPN2TTQcXE/2jWBwN5MbgmgTvrxT3p6RQ+tbWYDxDeuChCyd
	TI68c1D5uzyc1rqGRfKc7tLsHcavdUMnFiq4WqHslVZPzCNy0k9keHblnQ2bjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1771670358;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=TFPq8lOAsM+RvOy51vk5Cm5hD+q+C823q8SWaMZ4OrE=;
	b=aWOfAaZ2L7MRAB5Ooa86dSIO9+M8Kk3FgPGSwmvIuBf4fAQI8QOX/VSVMJsr8fpk+cM4E/
	FNjLhf81vR3NNsN40MJh2r5XXQer5t3vpRJPVMBVglOjdAktIYlZdX9CkqF/isKRWzxarE
	22RVG2SLxJdKGgGkVlTUhvL3KAqxspi58wyvgwx70JfdPSyONRDB+1Bpg/7AdNTo7rmJKX
	FmzZWUmsaZ/noOobrskJ4FocqPUrcsL1dMla0IqBJcvy4Eyy/tjEXZlD7L05d8DLFAxEf/
	v5hMJARLKfaSfE8tEtc+VnByCgzrd0fiwPih+wqvSOYDNYV1VIlb7mxEOsvGqg==
ARC-Authentication-Results: i=1;
	rspamd-84c84ff4fc-chsn7;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Sponge-Shoe: 3f0ad8d9551547ef_1771670358530_3939298808
X-MC-Loop-Signature: 1771670358530:2911428265
X-MC-Ingress-Time: 1771670358530
Received: from fr-int-smtpout21.hostinger.io (fr-int-smtpout21.hostinger.io
 [148.222.54.33])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.101.107.79 (trex/7.1.3);
	Sat, 21 Feb 2026 10:39:18 +0000
Received: from [IPV6:2001:861:4450:d360:c3d1:24fc:1e42:9e73] (unknown [IPv6:2001:861:4450:d360:c3d1:24fc:1e42:9e73])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4fJ3Wl72rlz1xmn;
	Sat, 21 Feb 2026 10:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1771670356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=TFPq8lOAsM+RvOy51vk5Cm5hD+q+C823q8SWaMZ4OrE=;
	b=sfo9/Ds+Tfd/d5DmKhKfrSK7SeITDaHunvK56SueFqAtJjDdq4tdwtQAzWZwjaA3w9pRCM
	Buom3awT3qnIe/DyiPpJq+uFtVIPxjcSSJ2iVlFcVA6r9joG174TfOKgA87v7Lw0p7ufIo
	3ClkeOVshCsDuSHVQGrOzWLxtIMlEyPQ48NGacwcq0zk8DcGpmGSF89LLSNHMtLLeizD53
	K/30LbTAmrYBsK4VvsNVCh+lph7nrvEwKXaijANJoasS1NuU7VNtcWN7+uyMnw7ak9eg9K
	KhRM4j9ZFn7ZbJmRXNax25kfTuZBk7Sdf+NFkklAr75LYQG+b7F0COjvGKSFXg==
Content-Type: multipart/alternative;
 boundary="------------eVFQBuaRIgxKaQyClIz9P6MR"
Message-ID: <caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: yocto@lists.yoctoproject.org
Cc: michael.opdenacker@rootcommit.com, Vyacheslav Yurkov <uvv.mail@gmail.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: FIT image verification not working on imx8mm
Date: Sat, 21 Feb 2026 10:39:15 +0000 (UTC)
X-CM-Envelope: MS4xfCtSaEdOlWFH/FHQK4mhI5HyRb6t5ecCL2XxTTjlyfHLdZQYv2xur9yA0FlxaUZybTNKHftC5zU58WXeqWeUYjpP6f6PL9BNoX9Rrf/+hbk97m7nLKTm YIIMu9z3L/2/fm5K9A7dTKMTHi7kZiJtfV9wjGdao/Fs9JaJC7VqQ5GbTrWxZkkBZ6H/aoqLo1ldEQ1pFyaE61CzJgjD64r07Yb2DQjOQCIwEXcoQCGe6XW4 XSUVSamDwzT2yGFEBX2eU3Kchsg2MM8C+/sPAkIxPkwkT9FUeQ6nJOLUEGvb46T7oHPmC9zi+YSIv6kiRDXpPXzQwz8qzQTZlnXoNOW1obfyaq3rtxttBGkR JS1Mq3IZTDOtP6MaF1BiImN8ET/hsg6nOkq853rF6mNYS8+uBmw=
X-CM-Analysis: v=2.4 cv=ZbRPNdVA c=1 sm=1 tr=0 ts=69998b54 a=uvsM8SzWdq4CJYj1D6cArg==:617 a=xqWC_Br6kY4A:10 a=r77TgQKjGQsHNAKrUKIA:9 a=kTakKMPAAAAA:8 a=p0WdMEafAAAA:8 a=d70CFdQeAAAA:8 a=X0gUKvPOGXxIKdBLU4MA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=VBpSxuctG8jqL1t6Dl0A:9 a=qV0H66vn9MNSTG1Y:21 a=_W_S_7VecoQA:10 a=uLSFYZeSjgb_eomtY0KL:22 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 Feb 2026 10:39:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66262

This is a multi-part message in MIME format.
--------------eVFQBuaRIgxKaQyClIz9P6MR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Greetings,

For a secure boot project on Toradex Verdin with imx8mm, I'm trying to=20
enable FIT image signature verification in U-Boot.

Slava's "Generation of FIT images" presentation at the recent OE=20
workshop has been very useful:
https://pretalx.com/media/openembedded-workshop-2026-2025/submissions/R8K=
JQZ/resources/_LJtpFTR.pdf

I generated a temporary local RSA 2048 key, and I'm using it to sign a=20
FIT image.

I also set the UBOOT_SIGN_KEYDIR, UBOOT_SIGN_KEYNAME and=20
UBOOT_SIGN_ENABLE variables to add the public key to U-Boot's DTB.

The signature indeed appears in the generated u-boot.dtb file, in a=20
"/signature" node:

 =C2=A0 =C2=A0 signature {

 =C2=A0 =C2=A0 =C2=A0 =C2=A0 key-imx8mmsb {
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 required =3D "conf";
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 algo =3D "sha256,rsa2048";
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,r-squared =3D <0x56bb2a2b =
0xc6b322cc 0x2f828666=20
0x75c8bc46 0xd13093af 0xc2244c35 0xb6420649 0x478d7ed3 0xeb7a0399=20
0x3b1d49a9 0xc106169d 0x7328dbb4 0x2140c49b 0x111732a1 0xb3286fed=20
0x53937163 0x8c28f85c 0xe272b1ee 0x5e009a53 0x13883205 0xcda0fbc7=20
0xd7ed4e75 0x9ed065c1 0xb6ca1e69 0xf2c9dce2 0xcf8ebf7b 0x59a72b94=20
0x501d2751 0x437e3355 0xcba6b07a 0x9b13feea 0x1032d715 0xab3cdd83=20
0x319b6bb0 0xfc31ff93 0xb7fabbb6 0x79d5d0fa 0x9c0f76e0 0x3528c22e=20
0xbbec6d6c 0x7981362f 0x528848a9 0xb57aa235 0x462ed577 0x4ccc8b9d=20
0xeb4ce969 0x5fb085b3 0x3fced511 0xfd98edfe 0xf3a4ca51 0x1bb74370=20
0x3a11c748 0xbbd5be95 0x946f8b3f 0x3d8c98b6 0x3b0e00a8 0xeca87fc6=20
0x7331981e 0xaaee80df 0x476816f2 0x509aaab1 0xa5f50e1a 0x474d0de8=20
0xc551ac97>;
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,modulus =3D <0xb3ade247 0x=
4b8d0aef 0x4581e5e9 0x6084f135=20
0x778847c7 0xaf23976f 0x81b6eb84 0xa2406db4 0x2b89e624 0x81f913c9=20
0xd6ebef10 0x3e30adee 0xbca06cbe 0x5693b23b 0xc6b211f1 0xfea7a90d=20
0x2767ca7c 0xaa8b2ddb 0xcf8a63ea 0x66fe8c59 0x43b34a2f 0x720009d8=20
0xa2a61281 0x2f7fe049 0xfc3d10e5 0x1b52409 0xdeb52a16 0xa4e5fa78=20
0x7116d181 0xc0c2f39e 0x24a626b4 0x7e59438b 0x6680b1f4 0xc4b1184c=20
0x8bb65f34 0x92038fd7 0x3901c347 0xc2095158 0x3159031a 0xaa4bb76c=20
0xc53f2009 0x9f4941f8 0x736ca84a 0xd83bd011 0x3685d02c 0x6f4cb5e7=20
0xd07e8566 0x173819f 0x8f41366d 0x8b0f82fd 0x54c01fc0 0xc216cbd5=20
0x2fc4a666 0x426ff669 0x880428ca 0x7c7615c 0xcdc97895 0x8c936a3c=20
0xd6d7e82e 0x5bf63d9d 0x9fcd83a2 0xb131015f 0xc530c031 0x8446f707>;
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,exponent =3D <0x00 0x10001=
>;
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,n0-inverse =3D <0x93653949=
>;
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,num-bits =3D <0x800>;
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 key-name-hint =3D "imx8mmsb";
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 };
 =C2=A0 =C2=A0 };

I also compiled U-Boot with
|CONFIG_FIT_SIGNATURE=3Dy
|
However, when U-Boot loads the FIT image, it only checks the integrity=20
of the sha256 hash of the FIT image parts:
 =C2=A0 =C2=A0Verifying Hash Integrity ... sha256+ OK

No signature checking happens. I can also load an unsigned FIT image=20
which is accepted too. Indeed, when I open the generated "imx-boot" file=20
(or "flash.bin", linking to the same file) that is used to boot the=20
board, I can see a DTB for my board, but it doesn't contain any=20
"signature" node, unlike in "u-boot.dtb".

What could I be missing? My layer, along with a kas file to generate the=20
image, is available on=20
https://gitlab.com/rootcommit/meta-imx8mm-secureboot. I'm using the=20
Toradex Easy Installer (Tezi) to flash the image on eMMC. My layer is=20
relies on the "master" branches of the required layers, but I have the=20
same problem on Scarthgap too.

Any suggestions are appreciated.
Thanks in advance
Michael.

--=20
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com

--------------eVFQBuaRIgxKaQyClIz9P6MR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Greetings,</p>
    <p>For a secure boot project on Toradex Verdin with imx8mm, I'm
      trying to enable FIT image signature verification in U-Boot.</p>
    <p>Slava's "Generation of FIT images" presentation at the recent OE
      workshop has been very useful:<br>
      <a data-from-md=3D""
title=3D"https://pretalx.com/media/openembedded-workshop-2026-2025/submis=
sions/R8KJQZ/resources/_LJtpFTR.pdf"
href=3D"https://pretalx.com/media/openembedded-workshop-2026-2025/submiss=
ions/R8KJQZ/resources/_LJtpFTR.pdf"
        class=3D"moz-txt-link-freetext">https://pretalx.com/media/openemb=
edded-workshop-2026-2025/submissions/R8KJQZ/resources/_LJtpFTR.pdf</a></p=
>
    <p>I generated a temporary local RSA 2048 key, and I'm using it to
      sign a FIT image.=C2=A0<br>
      <br>
      I also set the UBOOT_SIGN_KEYDIR, UBOOT_SIGN_KEYNAME and
      UBOOT_SIGN_ENABLE variables to add the public key to U-Boot's DTB.<=
/p>
    <p>The signature indeed appears in the generated u-boot.dtb file, in
      a "/signature" node:<br>
      <br>
      =C2=A0 =C2=A0 signature {<br>
      <br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 key-imx8mmsb {<br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 required =3D "conf";<br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 algo =3D "sha256,rsa2048"=
;<br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,r-squared =3D &lt;0x5=
6bb2a2b 0xc6b322cc 0x2f828666
      0x75c8bc46 0xd13093af 0xc2244c35 0xb6420649 0x478d7ed3 0xeb7a0399
      0x3b1d49a9 0xc106169d 0x7328dbb4 0x2140c49b 0x111732a1 0xb3286fed
      0x53937163 0x8c28f85c 0xe272b1ee 0x5e009a53 0x13883205 0xcda0fbc7
      0xd7ed4e75 0x9ed065c1 0xb6ca1e69 0xf2c9dce2 0xcf8ebf7b 0x59a72b94
      0x501d2751 0x437e3355 0xcba6b07a 0x9b13feea 0x1032d715 0xab3cdd83
      0x319b6bb0 0xfc31ff93 0xb7fabbb6 0x79d5d0fa 0x9c0f76e0 0x3528c22e
      0xbbec6d6c 0x7981362f 0x528848a9 0xb57aa235 0x462ed577 0x4ccc8b9d
      0xeb4ce969 0x5fb085b3 0x3fced511 0xfd98edfe 0xf3a4ca51 0x1bb74370
      0x3a11c748 0xbbd5be95 0x946f8b3f 0x3d8c98b6 0x3b0e00a8 0xeca87fc6
      0x7331981e 0xaaee80df 0x476816f2 0x509aaab1 0xa5f50e1a 0x474d0de8
      0xc551ac97&gt;;<br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,modulus =3D &lt;0xb3a=
de247 0x4b8d0aef 0x4581e5e9
      0x6084f135 0x778847c7 0xaf23976f 0x81b6eb84 0xa2406db4 0x2b89e624
      0x81f913c9 0xd6ebef10 0x3e30adee 0xbca06cbe 0x5693b23b 0xc6b211f1
      0xfea7a90d 0x2767ca7c 0xaa8b2ddb 0xcf8a63ea 0x66fe8c59 0x43b34a2f
      0x720009d8 0xa2a61281 0x2f7fe049 0xfc3d10e5 0x1b52409 0xdeb52a16
      0xa4e5fa78 0x7116d181 0xc0c2f39e 0x24a626b4 0x7e59438b 0x6680b1f4
      0xc4b1184c 0x8bb65f34 0x92038fd7 0x3901c347 0xc2095158 0x3159031a
      0xaa4bb76c 0xc53f2009 0x9f4941f8 0x736ca84a 0xd83bd011 0x3685d02c
      0x6f4cb5e7 0xd07e8566 0x173819f 0x8f41366d 0x8b0f82fd 0x54c01fc0
      0xc216cbd5 0x2fc4a666 0x426ff669 0x880428ca 0x7c7615c 0xcdc97895
      0x8c936a3c 0xd6d7e82e 0x5bf63d9d 0x9fcd83a2 0xb131015f 0xc530c031
      0x8446f707&gt;;<br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,exponent =3D &lt;0x00=
 0x10001&gt;;<br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,n0-inverse =3D &lt;0x=
93653949&gt;;<br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rsa,num-bits =3D &lt;0x80=
0&gt;;<br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 key-name-hint =3D "imx8mm=
sb";<br>
      =C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
      =C2=A0 =C2=A0 };<br>
    </p>
    <p>I also compiled U-Boot with<br>
      <code><span class=3D"hljs-attr">CONFIG_FIT_SIGNATURE</span><span
          class=3D"">=3Dy<br>
        </span></code><br>
      However, when U-Boot loads the FIT image, it only checks the
      integrity of the sha256 hash of the FIT image parts:<br>
      =C2=A0 =C2=A0Verifying Hash Integrity ... sha256+ OK</p>
    <p>No signature checking happens. I can also load an unsigned FIT
      image which is accepted too. Indeed, when I open the generated
      "imx-boot" file (or "flash.bin", linking to the same file) that is
      used to boot the board, I can see a DTB for my board, but it
      doesn't contain any "signature" node, unlike in "u-boot.dtb".<br>
      <br>
      What could I be missing? My layer, along with a kas file to
      generate the image, is available on
      <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.com/rootc=
ommit/meta-imx8mm-secureboot">https://gitlab.com/rootcommit/meta-imx8mm-s=
ecureboot</a>. I'm using
      the Toradex Easy Installer (Tezi) to flash the image on eMMC. My
      layer is relies on the "master" branches of the required layers,
      but I have the same problem on Scarthgap too.<br>
      <br>
      Any suggestions are appreciated.<br>
      Thanks in advance<br>
      Michael.</p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Root Commit
Embedded Linux Training and Consulting
<a class=3D"moz-txt-link-freetext" href=3D"https://rootcommit.com">https:=
//rootcommit.com</a></pre>
  </body>
</html>

--------------eVFQBuaRIgxKaQyClIz9P6MR--

