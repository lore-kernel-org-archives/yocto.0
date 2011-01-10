Return-Path: <joaohf@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9228B4C8085F
	for <yocto@yoctoproject.org>; Mon, 10 Jan 2011 15:23:06 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so22542579iwn.35
	for <yocto@yoctoproject.org>; Mon, 10 Jan 2011 13:23:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=J/RlvetxFYb+pUie3z617kW6bizPKs4jfRmyZNKHK6E=;
	b=q1zjuer1BVo55VngWhpfjxaFyJ0QrbQOMi801H85874EXyATTTTbUoD9uZnrgHXfwN
	98oRsLiBZQReCQZCHxGKYZSr+XUH2YWyO6IAfKfvkU2SL3FuEz0x0QkYYsubM1uwTnr+
	U6JViAUZowljlP58Fc9HQovW8TA+OPwOLc2OU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=Ub6DH9o8ieA4kMo6Nm3uwO5Ro5utSALBPoJBuPoHHlav8rtDoAmVwRIbRJrUZOB+9u
	RMUvIw4HUaZ2KSG+593JKYDWJZmqJ2ODXez3+zX4e21wBUf6iDIQaDlHjjUmZsEfg3UJ
	klzX7zrY5X7DiADvucTcRs7aMSXsy1hZQDNHI=
MIME-Version: 1.0
Received: by 10.42.227.202 with SMTP id jb10mr4852589icb.475.1294694586123;
	Mon, 10 Jan 2011 13:23:06 -0800 (PST)
Received: by 10.42.176.8 with HTTP; Mon, 10 Jan 2011 13:23:06 -0800 (PST)
Date: Mon, 10 Jan 2011 19:23:06 -0200
Message-ID: <AANLkTim3HcAyatj9qChj0ub5pc6wZL3pobd66ZuwHrth@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: ntp client
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
X-List-Received-Date: Mon, 10 Jan 2011 21:23:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I searched in meta/* but did not found a ntp client like.

busybox have one but yocto don't compiles it, by default.

I can use a busybox.append or change busybox recipe.

In this cases, what is the best to do?

Thanks

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

