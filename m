Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33049E013EB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 23:18:17 -0700 (PDT)
Received: by dadz8 with SMTP id z8so4133018dad.35
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 23:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=UtjYsLcCPZGMDfLILmF1pW5GwH/W1WbWq8/WAyfiPxM=;
	b=U9UbZv3Az1kLfgdorJQtHIqWOf3cJ8ELt68iWoWPTSN/Bs79PiiYmbi+6Aan3E3Pou
	6eW9Disy6ijZC03OkBksue9aFvbL6mFq5VtABmamGoH9lKm65+KFIYJHoJEhiadc7Vs/
	eFZOWstA3KZsvfm82RYT9LSOEFD080Hsz4N5CbZU2DycYgM5aCOgeB9qbrEQOJzFeyW7
	WLssT4fJ32Qe6enyW4FDd6YLN7LpwFVZj0wf9iEULwKuDkcfgKdCFEz4xQDkCJ7sS9uq
	yEJdfvJsS5CXweiSCNkA4PSApkBuc97V92hcc1/iSu0b9k1dadP4giGCm+u/7wTWC0OJ
	xzww==
Received: by 10.68.226.168 with SMTP id rt8mr16902028pbc.23.1339741096892;
	Thu, 14 Jun 2012 23:18:16 -0700 (PDT)
Received: from [192.168.1.71] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id ip5sm12161910pbc.3.2012.06.14.23.18.15
	(version=SSLv3 cipher=OTHER); Thu, 14 Jun 2012 23:18:16 -0700 (PDT)
Message-ID: <4FDAD3AB.3000605@gmail.com>
Date: Thu, 14 Jun 2012 23:18:19 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAN57a28DC3Xge0Sk8JH5fEji1q6nmxcDKxmbxTUfMPXKVU+Yeg@mail.gmail.com>
In-Reply-To: <CAN57a28DC3Xge0Sk8JH5fEji1q6nmxcDKxmbxTUfMPXKVU+Yeg@mail.gmail.com>
X-Enigmail-Version: 1.4.2
Subject: Re: Setting architecture of only DEB files (arm vs armel)
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
X-List-Received-Date: Fri, 15 Jun 2012 06:18:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 6/14/2012 5:17 PM, Tyler Jones wrote:
> I am compiling a distro for my hardware using DEBs for my package 
> management. In meta/classes/package_deb.bbclass I need DPKG_ARCH =
> "armel" instead of TARGET_ARCH (which is "arm"). When I run dpkg on
> my device armel is the architecture, not arm, but yocto wants my
> TARGET_ARCH to be set to "arm". Is there a non hackish way to do
> this from my BSP layer or config file?
> 
> The dpkg error I get is: package architecture (arm) does not match
> system (armel)
> 

set DPKG_ARCH = "armel" in your local.conf

> -Tyler Jones
> 
> 
> 
> 
> _______________________________________________ yocto mailing list 
> yocto@yoctoproject.org 
> https://lists.yoctoproject.org/listinfo/yocto

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (MingW32)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk/a06sACgkQuwUzVZGdMxRBvgCeJAinKceaUDI8gQHPbvzGiOSt
tuQAnRDOpYZvovXfg6UHji6it4YehqvR
=7G4e
-----END PGP SIGNATURE-----

