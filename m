Return-Path: <joaohf@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id A85A14C80815
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 09:19:15 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm10 with SMTP id 10so1039189fxm.35
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 07:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=/AGISVcb+o4akuhqO2v3h3nWnWsql3ZlrsnQBMd1u7Y=;
	b=D28Fwg+z+b1sscdRnbwkJObO4C+fBe1T9ssRTa5YqjXWVaTYM0/3huneQ85eTH6SrY
	VXqGx0Iq5SiTZSknhzrAHjTgS17JLh+jnygOQvk+arFOl2NjFkCotLb6yJ9Abytdt4T2
	+WtrlCtdPxcd2OdY1Y1KVzZGuW77B+8YVsYqU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=eMDL/wBUTXjNhSo19nyEe/DaUyQAdMXjXBJq+i1bzBwAQc9mCy0/SWuCVn40dD6ToS
	bzc6PNa+1OS3ygtE3UGJc4MhZocu+IdTSagFniPXWoa2VDlG6NKOfpD1ZV+GBbuJ1EyI
	enRVhbqn2DNBBqIJzgrdsFwTqpQ0Yl9RzrU98=
MIME-Version: 1.0
Received: by 10.223.86.194 with SMTP id t2mr270655fal.40.1289488754357; Thu,
	11 Nov 2010 07:19:14 -0800 (PST)
Received: by 10.223.106.19 with HTTP; Thu, 11 Nov 2010 07:19:14 -0800 (PST)
Date: Thu, 11 Nov 2010 13:19:14 -0200
Message-ID: <AANLkTi=7yQCQB4=bKYuW3DTx4-psGZPDKkQeum+qdw3=@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: BSPs and duplicate files
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
X-List-Received-Date: Thu, 11 Nov 2010 15:19:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Two questions:

With some BSPs, like

meta
meta-myhardware
meta-mydistro

I need to create a conf/checksums.ini for every BSP or append it to
meta/conf/checksums.ini ? In other others, checksums.ini is per BSP or
unique?

In my meta-myhardware I have a kernel too:

meta-myhardware/recipes-kernel/linux/linux.inc
meta-myhardware/recipes-kernel/linux/linux_2.6.22.bb

The file meta-myhardware/recipes-kernel/linux/linux.inc is the some of
meta/recipes-kernel/linux/linux.inc. Is any way to use a unique file
instead of duplicate it?

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

