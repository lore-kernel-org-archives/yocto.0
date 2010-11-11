Return-Path: <joaohf@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82B1F4C80044
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 15:39:57 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm10 with SMTP id 10so1423970fxm.35
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 13:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=tIUBwnng2x6u+Zv8UyTzXzbJ8mvhl90WRVIxsCGGOrI=;
	b=sHzY2KrnuGa67ZH2KD5k7RSeIQ46Qu7jaWW3EYHSb109ApeIxBx+hwUVSxwcrmxR5U
	YdiOFiKFF01GgbtCkqXOWM7JXU+NejNF/77PPC+Gugtechh8u7e92yMw/POs9YWjoW4+
	2+bxZH2L8fPn1GCtfL57JLRF2y3WWy/617Lf0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=xhyq+2rbxqsY/mvolo6XA1YfT7S4tlsDgcxfJj/OvYeRRE7W5xdajZRcyabMk6hVBs
	BsroBpnq6XKra5Tw8urCk06oJMFwP1jY1gyHjFH08n1IxpWIljcAjjbFjYWBPeXQLGPl
	onp+4JehqV+g81KdPlSvJu8qRR0AqXNtc03D8=
MIME-Version: 1.0
Received: by 10.223.86.194 with SMTP id t2mr677059fal.40.1289511596260; Thu,
	11 Nov 2010 13:39:56 -0800 (PST)
Received: by 10.223.106.19 with HTTP; Thu, 11 Nov 2010 13:39:56 -0800 (PST)
In-Reply-To: <1289489889.2453.1.camel@scimitar>
References: <AANLkTi=7yQCQB4=bKYuW3DTx4-psGZPDKkQeum+qdw3=@mail.gmail.com>
	<1289489889.2453.1.camel@scimitar>
Date: Thu, 11 Nov 2010 19:39:56 -0200
Message-ID: <AANLkTikGO44ZDPWewrzfamnvOhsu1PGfRLuiGnfMLb_J@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: BSPs and duplicate files
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
X-List-Received-Date: Thu, 11 Nov 2010 21:39:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi

> You can include files from the core metadata by using a path relative to
> the meta/ directory, such as:
>
> require recipes-kernel/linux/linux.inc
>


Works


Thanks
--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

