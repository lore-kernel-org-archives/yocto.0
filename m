Return-Path: <marc.ferland@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 751EF4C800A6
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 15:03:59 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk2 with SMTP id 2so4386422qyk.14
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 13:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=hyXi++qLQI72Irt8Tq+G3nAwkM3fihaDj4npfGdK3x8=;
	b=wcEjbe4Rp3RiF58on6s1nu0g3xUD52wgUiJcx9bE9ShtLAObvv6wiXKYNIdM9f48is
	3mDW5wVGU83Z9GynZIcFktvEViGq4tE+A27bxhdhlgbV8ZXmBacxCh1BIFZaVT5AodzK
	tZKS6aVLJGVKC5TDMYG1uL99w2iJdnr8dC344=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=mKuN9a0ZiKwb4MAW1V6oYZO9VqLsjCc3OSx4jumCOdL+vfnEW4SWBGYLtDeuX9p9Rk
	d9bFJJIj5jwmmXOBNrSGXW213brjhzX0efL7PRzgDE9kQHrXDrBkDU2d6jtOIslUMenH
	5wtl3smwQHGZW75fgKR1WuIHxeZN56+QSVmY8=
MIME-Version: 1.0
Received: by 10.229.213.132 with SMTP id gw4mr2763874qcb.34.1305835439123;
	Thu, 19 May 2011 13:03:59 -0700 (PDT)
Received: by 10.229.191.130 with HTTP; Thu, 19 May 2011 13:03:59 -0700 (PDT)
In-Reply-To: <1305832167.2638.56.camel@elmorro>
References: <1305828031-10355-1-git-send-email-ferlandm@sonatest.com>
	<1305832167.2638.56.camel@elmorro>
Date: Thu, 19 May 2011 16:03:59 -0400
Message-ID: <BANLkTinwm1OnsNU5mAgJ2D_Nhg=U+nAM2Q@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Marc Ferland <ferlandm@sonatest.com>
Subject: Re: [PATCH] Add SMP support to crownbay.
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
X-List-Received-Date: Thu, 19 May 2011 20:03:59 -0000
Content-Type: multipart/alternative; boundary=0016363b85ec7bf12804a3a68119

--0016363b85ec7bf12804a3a68119
Content-Type: text/plain; charset=UTF-8

Signed-off-by: Marc Ferland <ferlandm@sonatest.com>

--0016363b85ec7bf12804a3a68119
Content-Type: text/html; charset=UTF-8

Signed-off-by: Marc Ferland &lt;<a href="mailto:ferlandm@sonatest.com">ferlandm@sonatest.com</a>&gt;<br><br>

--0016363b85ec7bf12804a3a68119--
