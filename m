Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E92EE0044A
	for <yocto@yoctoproject.org>; Sat,  7 Apr 2012 00:09:19 -0700 (PDT)
Received: by dajx4 with SMTP id x4so4032225daj.28
	for <yocto@yoctoproject.org>; Sat, 07 Apr 2012 00:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=GXjNqWglYZGSlaYMjun7/UhgUSK7jjJY4P6HRmfuAc0=;
	b=ObpmSuzIJEOuh+t0iMYz9kYQBeOJOLhaOoi6efy1FWaQy9xTyn5gJ8OGZSGKWDgMDV
	utzOCmX/dgS+VMArdk3RhaR8jR4lgm854vOZXAXNnVtQL2Mf0OwF1A6/ZIpDFGjhuRdy
	YU4BLfbSoznSBq7zkmcSGTUqvP7I1RXk6MJXnwA7pTWrDSQr4txXuO3+cNFd4wn4aNLp
	YngTfDvEQgjJpHxP6IMEEcY30p8xDtJhZD7pb1drvOU4kg9at0oY6ROOhmwzfT7WFd2K
	K0swjbeOH1udEsG14IA7VYyRCIAOsxAkOWKmHoAZpQxd0ca+t0Ej96YTA9GGhaoM0cws
	NLXw==
Received: by 10.68.190.225 with SMTP id gt1mr1929249pbc.76.1333782559181;
	Sat, 07 Apr 2012 00:09:19 -0700 (PDT)
Received: from [192.168.1.79] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id y3sm8450116pbh.59.2012.04.07.00.09.17
	(version=SSLv3 cipher=OTHER); Sat, 07 Apr 2012 00:09:18 -0700 (PDT)
Message-ID: <4F7FE81B.9050306@gmail.com>
Date: Sat, 07 Apr 2012 00:09:15 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120402 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <F3906846C0EDD246B5CF75E8EDA3C47E138A76C2@szxeml532-mbx.china.huawei.com>
In-Reply-To: <F3906846C0EDD246B5CF75E8EDA3C47E138A76C2@szxeml532-mbx.china.huawei.com>
X-Enigmail-Version: 1.4
Subject: Re: Can not run Qemu with "runqemu qemux86 " after successful build on the Open Suse 12.1
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
X-List-Received-Date: Sat, 07 Apr 2012 07:09:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 04/03/2012 11:32 PM, Ashish Pandey wrote:
> No protocol specified No protocol specified Could not initialize
> SDL(No available video device) - exiting

there are some GL packages that you might need IIRC for ubuntu and
fedora the runqemu script tries to inform about them but not for SuSE
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk9/6BsACgkQuwUzVZGdMxSwmwCeLHwHwob9aOJcuD6Wbe/sNXLS
qNgAn2JKY+8G2BJV2V7B5qYOKMVPVJkR
=xq4h
-----END PGP SIGNATURE-----

