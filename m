Return-Path: <joaohf@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC8F24C81021
	for <yocto@yoctoproject.org>; Wed, 12 Jan 2011 17:30:37 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1118795iwn.35
	for <yocto@yoctoproject.org>; Wed, 12 Jan 2011 15:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=IMr4vyvr6n1QP8+K+LlB1l/023I/gpPMy05ub1MFBJE=;
	b=lDrrildlO3zg3/vvxGEQhBBPMIFV6GTLTBHbR/taIZoeE9EdGPgZwYGG33FYxvbSTA
	33Onm3oOaWnElwnFKARJF/haJXV5+bktQq5IaM0io051C0wvs6NYZPxLcTTiZ5iZhjpV
	fz/JwZxqhmAbUbkW9axfmXeJ2X9o8F+pRYrEE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=T4R94EqnkGEIblIkLArWyb3Kmcu42Y7lRTCPns+ujmk9F/uRb1PDpD52X7WvEiJwIr
	CaxYVW6pwCcG5245ZV5jtU7Qf3/6wWlax4dKdsJkXkzdom+DZPJZd/neH44wuFrycDNb
	rBLn4Aq0teGmzQV+hZXpWC16LqYMa6UL/yae8=
MIME-Version: 1.0
Received: by 10.42.224.3 with SMTP id im3mr1741269icb.341.1294875037285; Wed,
	12 Jan 2011 15:30:37 -0800 (PST)
Received: by 10.42.176.8 with HTTP; Wed, 12 Jan 2011 15:30:37 -0800 (PST)
In-Reply-To: <4D2E0148.4010205@intel.com>
References: <AANLkTim3HcAyatj9qChj0ub5pc6wZL3pobd66ZuwHrth@mail.gmail.com>
	<4D2E0148.4010205@intel.com>
Date: Wed, 12 Jan 2011 21:30:37 -0200
Message-ID: <AANLkTim=_TNHOvwUfc9pTfvnQp8wuAkTZMORMRNE9cMZ@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Saul Wold <saul.wold@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: ntp client
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
X-List-Received-Date: Wed, 12 Jan 2011 23:30:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,


I have a layer and will try it.

If all thinks goes well, I submit a patch.

In OE I used openntpd. The busybox ntp client does not support a config fil=
e.


Thanks.

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

