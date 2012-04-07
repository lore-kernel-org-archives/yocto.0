Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D039E0044A
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 22:07:13 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so4114436pbb.35
	for <yocto@yoctoproject.org>; Fri, 06 Apr 2012 22:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=BzUxYffzGeaw4vuNDhSAdhyTlY6NwFXm0h/BuWO5wn4=;
	b=nRJoIC6zC8T4tCHVywnG16/UXwL/QV5yAv6/GOpCbRiiG4rJViX0Y5E6LjhFDdJl3l
	0gqHsaQI4u5ZonGIGyiB5s9Z3CK5jFGxupu4H0XKPMGFmupEHkARDBRThTk1CGhmnFlA
	Eav3ttGDFVkDgUHIIsnk6OTYGyLoVMkrUy1AdMuI2M0/OyRiZB506Cqq4NWFYLCVRxat
	Tp8HVp+yfXgvBJ+n79yY2trqCsVyDz5Asmdxh4fEax1d4Y7515ur7qcPXC9nSz/Zl6Bk
	RRUVKrkElzuprqMz/mN1bcZp7mWofyhR9Djoq3hR290oYv/rMr5/6D3NBcNMqhFQOUA9
	MCDA==
Received: by 10.68.192.38 with SMTP id hd6mr698220pbc.160.1333775232852;
	Fri, 06 Apr 2012 22:07:12 -0700 (PDT)
Received: from [192.168.1.79] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id qo2sm6519721pbb.15.2012.04.06.22.07.10
	(version=SSLv3 cipher=OTHER); Fri, 06 Apr 2012 22:07:11 -0700 (PDT)
Message-ID: <4F7FCB7C.6090502@gmail.com>
Date: Fri, 06 Apr 2012 22:07:08 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120402 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+Z6RkV2jDnxE+DpNJmFj8NCGAnFrCWoDfOdh7MmE908qMx2EA@mail.gmail.com>
In-Reply-To: <CA+Z6RkV2jDnxE+DpNJmFj8NCGAnFrCWoDfOdh7MmE908qMx2EA@mail.gmail.com>
X-Enigmail-Version: 1.4
Subject: Re: Unable to find recipe for glibc-2.11.1
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
X-List-Received-Date: Sat, 07 Apr 2012 05:07:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 03/26/2012 01:42 AM, Navani Srivastava wrote:
> Hi,
> 
> I am looking for recipe of glibc-2.11.1 version. I googled for it 
> but no success. Can anyone please suggest me the link from where i 
> can download the same?

you can look at 2.10.1 recipes from classic OE and port it over. btw
system C library is core part of system. I wonder why you need 2.11.1
specifically
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk9/y3wACgkQuwUzVZGdMxRpYACeIs57ceetqDxpQNbAk84AH5La
KfkAn1RpC7HqVfYj/95JHIjGUt0Hazx/
=jBNP
-----END PGP SIGNATURE-----

