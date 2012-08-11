Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78E09E0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 10:23:09 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so4454571pbb.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 10:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=WQfOdEWHIuAfupUuSMeCpAtA45u+COdwVbXY1kbhUjQ=;
	b=m4koR6Zu3a13gG+xEKnoMWwO1iZJzNthrPeYWQ4hLNfFrGjBjKI8Ce7Hra3m9YSCHC
	JWpwuJ6NVLh/ctTvDtrTaFw9nnTSgBWloqTwzfVMy7Nyhj3tGWY6lnHMlbMmd7SEY1Oi
	MoSpCDy+8FprILDBa0kgeXWKzB+DTsCDszQ5w2dUHufC//76dzSADhgJ1Kpigx6MdmuU
	guh6jaiygGxFZ1x6S2zC5NLB3iR6exskMpBNPrWoNt8BLB+w1QQjaSwp8VS5ryFZdwRA
	yCzkAFa2f6rcA57hZebwiNyWi8ULu0MbqNME33dfGW2MOnSpKLLBdO5hu+VRw+u+TL7o
	w7YA==
Received: by 10.68.239.103 with SMTP id vr7mr7061229pbc.0.1344705789313;
	Sat, 11 Aug 2012 10:23:09 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id nr2sm1718778pbc.48.2012.08.11.10.23.07
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 11 Aug 2012 10:23:08 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
Date: Sat, 11 Aug 2012 21:23:03 +0400
Message-Id: <E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Sat, 11 Aug 2012 17:23:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,
                  I just noticed that libquadmath was disabled in the =
gcc-4.7.inc recipe.

EXTRA_OECONF_INITIAL =3D "--disable-libmudflap \
			--disable-libgomp \
			--disable-libssp \
			--disable-libquadmath \
			--with-system-zlib \
			--disable-lto \
			--disable-plugin \
			--enable-decimal-float=3Dno"

Isn't that required for powerpc targets, since it ends up using quads =
for floats?=20

Best regards,

Elvis Dowson=

