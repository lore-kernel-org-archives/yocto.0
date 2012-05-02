Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FD84E00723
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 14:14:14 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2113012pbb.35
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 14:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=/+zrVXVrKfCztITvCDlWkEo6SgMYprAwXV5GDGkC8Bk=;
	b=D5mI6XbLv6zB1rOKk5PzawDPkIOVghXFSYewPaxWNA60cTXmjRVQwYTc84G/Bu60vx
	53e7HK7yWFzsO5sIWO7xLRrq5L11XC2c1GjAlEWu46sni1lx2xMt/FMS9W2G96BPKQCU
	9zJqbtlRFkyATtTF+kvcobb0lqFxzgGi1aSVApEooILzGlOwNI8Pg67WX5iVnHeWIzdz
	lNwRCm2SbW9pU9D5VCVugw9aLP/C4IGrREKSdR0waZi82FfnGp36tJpbdcyct+SiqHMF
	uhe6Up4ScpQ7oigt0k8gJlNP20KzWYV3/jcb6UNXpSzRC63baO70QBOHx1jUvvxk5ycu
	9kvg==
Received: by 10.68.219.34 with SMTP id pl2mr1007545pbc.56.1335993254400;
	Wed, 02 May 2012 14:14:14 -0700 (PDT)
Received: from [172.23.3.173] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id tx9sm2999331pbc.10.2012.05.02.14.14.11
	(version=SSLv3 cipher=OTHER); Wed, 02 May 2012 14:14:12 -0700 (PDT)
Message-ID: <4FA1A3A1.90905@gmail.com>
Date: Wed, 02 May 2012 14:14:09 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120411 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <25705145-EBDA-4027-8291-AAF4F3F28775@gmail.com>
In-Reply-To: <25705145-EBDA-4027-8291-AAF4F3F28775@gmail.com>
X-Enigmail-Version: 1.4.1
Subject: Re: Xilinx FPGA development board meta repositories
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
X-List-Received-Date: Wed, 02 May 2012 21:14:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 05/02/2012 07:53 AM, Elvis Dowson wrote:
> Hi, Are there any Yocto meta repositories for Xilinx FPGAs
> (Virtex-5, Spartan-6, etc) and their corresponding FPGA development
> boards (ML-507, SP-601, etc)
> 

there is a list of available layers maintained here

http://www.openembedded.org/wiki/LayerIndex


> Best regards,
> 
> Elvis Dowson _______________________________________________ yocto
> mailing list yocto@yoctoproject.org 
> https://lists.yoctoproject.org/listinfo/yocto

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk+ho6EACgkQuwUzVZGdMxRgbwCeMKfkqnXWO7frMcLimeYxPDTT
VBYAn2kWxm+NR6tPpqPw6aM34gIOPhVr
=de3c
-----END PGP SIGNATURE-----

