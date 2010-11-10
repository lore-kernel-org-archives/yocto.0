Return-Path: <joaohf@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6342C4C80815
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 05:41:33 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxn22 with SMTP id 22so313355yxn.35
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 03:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=RnbbRxSJ/trvTFG6d70uW6vZN5Crzxv+clR3cXVHIQM=;
	b=tTkQ+UzU8VaXFMCd33t4phPxq4rIlc0VzMd3jypAYZKk08/2/wIJOpRaVVLaGPlxdl
	cdBUhQKl1rK7ex8UDSEIqqFisSWXPek+1lWE6Ea6wpLJwc7ERKtnkAogqyMKnkBewP4g
	GPLLKpQqOiPzXh5vyvum4Kt2Xwrb2LCqXLJkg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=ArF9INUx4eGp9ek1HyheWxzCXPX49v/n68Vl9RhjR4iKVqMKzwn7ZjxJInkeUx10A+
	IKLe0hfhiXgmMeEjjA9OoZRLN+QrDC8v6Pzmty3yVRglCvRkNosj9GqCAhggKxCBylB7
	tkhPqA1NwYwp7r4AzAzVyE5lGOJ6/KPDiFR9I=
MIME-Version: 1.0
Received: by 10.42.212.200 with SMTP id gt8mr5893961icb.504.1289389291680;
	Wed, 10 Nov 2010 03:41:31 -0800 (PST)
Received: by 10.42.176.73 with HTTP; Wed, 10 Nov 2010 03:41:31 -0800 (PST)
Date: Wed, 10 Nov 2010 09:41:31 -0200
Message-ID: <AANLkTimr0Vm+kdDzCiJ07nOTZLgJDDC+DvNNwpgZ72xz@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: two layers: hardware and distro.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Nov 2010 11:41:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am novice yocto user.

My target is create a BSP to my hardware+application. Is Yocto a
suitable project to do it?

I want to create two layers:

bsp-myhardware: linux kernel, firmware, specific hardware configuration
bsp-myapplication: linux distro with all software need. Ex: net-snmp,
lksctp (the target is telecom applications)

Currently yocto does not have many recipes that I need. No problem, I
can get from OE. We use kernel 2.6.22 and I presume that I need a
recipe to it and put inside bsp-myhardware, right?


Thanks.

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

