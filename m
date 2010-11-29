Return-Path: <joaohf@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 53C244C80FA4
	for <yocto@yoctoproject.org>; Sun, 28 Nov 2010 18:05:07 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn10 with SMTP id 10so110410iwn.35
	for <yocto@yoctoproject.org>; Sun, 28 Nov 2010 16:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=vwwUiR3JO/P1ZzTnfI57OcdzCS4hVHKoQ9UDm9rWXro=;
	b=mk/jfSA0vxzmsErzHf9imkYFNJKMwf2+Hnd8dzgeBaqnqV78TYo34SiX9/cWTn34A6
	c5izjIvK3sMnOukMqhFPY7yxVd3qp/fUd6P1fgIMTFNzf6SWNoVEEIam8bkeH/wDxxgH
	QLYa/58tD8AHmjHkccLLgpHsd1qRMcrFJAe+I=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=a57/UuwjXGK9AqqcLev78AWnMxxR69J8DkaJBnrVV420tYhMCDdS8ucsMZUceLFguO
	WJZzqiUCpNd7rkEDkdIv1Jpme6LNGMzOI7reKOD6ucaPYYpINhlD+bdvZvT18G8Rs1So
	Mn4OTk26Cyki0uy9hYHKS52jOo1isVyCRoMK8=
MIME-Version: 1.0
Received: by 10.42.73.70 with SMTP id r6mr1451653icj.227.1290989106647; Sun,
	28 Nov 2010 16:05:06 -0800 (PST)
Received: by 10.42.239.66 with HTTP; Sun, 28 Nov 2010 16:05:06 -0800 (PST)
Date: Sun, 28 Nov 2010 22:05:06 -0200
Message-ID: <AANLkTi=E1t3i_oQVeUDZFbECoiuyEXLO8PsB3ceDAcF3@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: submitting two recipes.
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
X-List-Received-Date: Mon, 29 Nov 2010 00:05:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I have two recipes net-snmp and lksctp. I want to see it in yocto.
What is the way? Submit a patch to poky mail list or yocto bugtrack?

Thanks.
--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

