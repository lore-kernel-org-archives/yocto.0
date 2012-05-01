Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0F9FE01374
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 07:49:12 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so1664552pbb.35
	for <yocto@yoctoproject.org>; Tue, 01 May 2012 07:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=WQtapCvywywsw0b/b0fw3TZNrj/3WOaeeYNGlkvyinE=;
	b=Io6MK+bK+Fyl9zA0AookDBer3XGjY8G07NemsXtb3tTagTvqqmOMfuBSA98YTdoUxn
	WRglTsibTbeQw8kwZT8fwV4Ob97c7tG26qAgvEOPV3RlynknjGSo2rIYkByXtgZIhucS
	pF9D++NdWJzsds4i9k/1By8hrMI79MMkC3RPOfGQnV7dSmaxC8K3sWVKJaROkKGR5FB6
	j1l+A6Aue0Ys6IK0bRS/Iick42otMg1dFT4H33lgAXfwxucer1Kxpzq7LxSx4jMS1Iea
	pnc7bW5ASkqRywjupUYh7kX61mSt62mjeTsas2PUVNHOylOQKusD+PZ6pHN61qPy5Tt9
	uPZQ==
Received: by 10.68.226.99 with SMTP id rr3mr57531291pbc.48.1335883752746;
	Tue, 01 May 2012 07:49:12 -0700 (PDT)
Received: from [192.168.1.104] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id nv2sm9831289pbb.6.2012.05.01.07.49.10
	(version=SSLv3 cipher=OTHER); Tue, 01 May 2012 07:49:11 -0700 (PDT)
Message-ID: <4F9FF7E2.7010308@gmail.com>
Date: Tue, 01 May 2012 07:49:06 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120411 Thunderbird/11.0.1
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
In-Reply-To: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: bsp experiences
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
X-List-Received-Date: Tue, 01 May 2012 14:49:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 05/01/2012 07:21 AM, Frans Meulenbroeks wrote:
> Dear all,
> 
> In this email I'd like to share my experiences wrt creating a new
> bsp. I hope this is useful for someone (e.g. for updating the doc).
> Feel free to point out the n00bish errors I made, or where I could
> have improved.
> 
> Aim was to bring my current board (powerpc mpc8313e based) onto
> yocto 1.2 This board is already working under oe classic.
> 
> I started fetching poky-denzil-7.0. Tested by building
> core-image-minimal. No problems here.
> 
> Then I wanted to add my own bsp. Decided to use the bsp-guide as a
> starter.
> 
> Tried to use yocto-bsp with the standard 7.0 setup (where there is
> a poky-denzil-7.0-build dir adjacent to the soruce dir). yocto-bsp
> when invoked complained with: IOError: [Errno 2] No such file or
> directory: 
> '/home/frans/poky-denzil-7.0/scripts/../build/conf/bblayers.conf'
> 

Did you use the environment script (oe-init-build-env) to initialize
your build env ?

> I resolved this for now by making
> /home/frans/poky-denzil-7.0/build/ a symlink to
> /home/frans/poky-denzil-7.0-build Not sure if that is the desired
> solution but anyway this allowed me to move forward
> 
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk+f9+IACgkQuwUzVZGdMxQfOACeJ/ED83N3MWpssJ9Akspk6qVw
CDEAnibX0Spq7ckffJI3Lh9adZS+Tzc1
=Kdko
-----END PGP SIGNATURE-----

