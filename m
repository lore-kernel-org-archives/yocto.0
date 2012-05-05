Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 771B5E01396
	for <yocto@yoctoproject.org>; Sat,  5 May 2012 12:39:34 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so6841300pbb.35
	for <yocto@yoctoproject.org>; Sat, 05 May 2012 12:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=/v7UQWXXwb/gcnqoYdMEsxI6EMcxvtqueDIfZJaHWWE=;
	b=Jhtzy2VGZ0HtPgrndPuJzf7gPGT3vyb6gszV3NB1aaULaHXu+elSigPT6kwSHN2sod
	1n929ucU4hjEU+kvI1Dqs8PUBMvM86aaZ0lized1OwaLCDWFv0SENjRGtD/gICUszIvf
	g7fQ2zMVR4vZX2NqMp2njT9u3wpNnY8ySaSrCGpm+00ZgmI3EFQ5zWh8baAQ1NX2T1Vq
	25duRdQTUYxev4oz5QIoIbngnB2qlAq+WRXGvnXHnbdlTXMMx7vzYBx8ZRLMs9oKIH1D
	gSzccELFN9WecR2ecrx11LQ0aZFyS4jHFRXBEOxMn9TCp1coxKoVAcX2ZldzTeNXcu6z
	ZUcQ==
Received: by 10.68.223.67 with SMTP id qs3mr30860559pbc.142.1336246774250;
	Sat, 05 May 2012 12:39:34 -0700 (PDT)
Received: from [192.168.1.104] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id nd6sm2607737pbc.63.2012.05.05.12.39.31
	(version=SSLv3 cipher=OTHER); Sat, 05 May 2012 12:39:32 -0700 (PDT)
Message-ID: <4FA581F0.50205@gmail.com>
Date: Sat, 05 May 2012 12:39:28 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <9EE240ED-602E-4E08-817E-1DA7D2831D5F@gmail.com>
In-Reply-To: <9EE240ED-602E-4E08-817E-1DA7D2831D5F@gmail.com>
X-Enigmail-Version: 1.4.1
Subject: Re: Using distcc with poky
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
X-List-Received-Date: Sat, 05 May 2012 19:39:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 05/05/2012 10:35 AM, Elvis Dowson wrote:
> Hi, Is it possible to tell poky to use distcc, to perform a
> distributed build across two ubuntu 12.04 machines on a netwrok?
> 

there is icecc have a look at meta/classes/icecc.bbclass

> Elvis
> 
> Sent from my iPhone 
> _______________________________________________ yocto mailing list 
> yocto@yoctoproject.org 
> https://lists.yoctoproject.org/listinfo/yocto

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk+lgfAACgkQuwUzVZGdMxT7tACgjXFdh/UwBY1bMhKrh4dkLTi8
1YYAn0jm6iW1Vkp/bjb0qgrt+4PGd2CY
=qwy5
-----END PGP SIGNATURE-----

