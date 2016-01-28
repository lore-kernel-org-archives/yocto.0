Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23B16E008F5; Thu, 28 Jan 2016 12:27:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED348E00803
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 12:27:06 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id t15so21994733igr.0
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 12:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=XFHZbIPolqOfINX6TJ95Oi1Zjj3vopef+eS7GTZiQd4=;
	b=tSrGdi2bnZt40Kl0JAsCzVGnoc6Y3oeN8UXZty2sHpviv/2mO24gE4yZuWkH6KGek8
	Uo5DE8g/F+aBLeCJvuM4coa2gKASFMnynVpXpKSGoaDfIgVCeqaBC0vrJ64Ga9VeUNRE
	weh8BAJjMzijZ4Ge5Q2j4TsyngrwSt++KfkVprR+ZtP5JGTw4kd4KXjdb64LcL5eKY6F
	Fyk4sOgaC7nIv2z00S+4fekjODQ28z8uiTeYOtMHx349iWy9RNhYO0NcRlrlZSeAZZMW
	kxmPj3LvKA2ZVuxdFPJJxF17apGZWoaBI8JtZLFihyxoZZkxxMIMZ4wBHOmuDW6nALYj
	/trg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=XFHZbIPolqOfINX6TJ95Oi1Zjj3vopef+eS7GTZiQd4=;
	b=SPEGi72JJNsA7wwV4bkQKRsnURj1hSO0YU6Dg4N1OHW1641WgAMIkp0S/s5TaYjZcN
	FvwcqhnWnqRqRjJ6/OhbZBDYmAeej+j+msn+EU2u0LcLsfJQQ/lf5e5mFAzQU1Mk1toF
	cpvXjHGkkltn4tR7JISYqWgWgou863lDSxX+46mwcVaP4fp0LP5T+7kf4mG+dIRB/Z7l
	dc8Dmlyc+dnB/1JIlOQbTD0JWoGqzWpF68pTeAh/cuOz4muRE6ktwyJPnD9EI1NzsXMV
	HRfiXHPCCc9Z3lEe/rYeHe8dweYT6Q+UwyYu0ckpMh3lbaEjGd2VLPQ9Hu+jlcWPQ++l
	KUgQ==
X-Gm-Message-State: AG10YOTKYhtbmwQ6ZUASijZM8f+JXiFAXdeTKUN8uCVT5WMVEabrCLBxP7Wk30jElg0cAg==
X-Received: by 10.50.28.20 with SMTP id x20mr5774458igg.87.1454012826020;
	Thu, 28 Jan 2016 12:27:06 -0800 (PST)
Received: from [172.19.131.151] ([12.130.117.59])
	by smtp.gmail.com with ESMTPSA id z84sm46544ioi.39.2016.01.28.12.27.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 28 Jan 2016 12:27:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <56AA16FD.1040406@mlbassoc.com>
Date: Thu, 28 Jan 2016 15:26:54 -0500
Message-Id: <A4152445-62F1-40F9-8D2E-CE934C58B059@gmail.com>
References: <56AA16FD.1040406@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: Diagnosing mishandled dependencies
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Jan 2016 20:27:10 -0000
X-Groupsio-MsgNum: 28145
Content-Type: multipart/signed;
	boundary="Apple-Mail=_55156E98-120D-414C-8D38-CAAA838FBA4D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_55156E98-120D-414C-8D38-CAAA838FBA4D
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> On Jan 28, 2016, at 8:26 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> 
> I have an image recipe which depends on another package/recipe.
> When I change one of the files included by that recipe (a script
> that gets packaged and is mentioned in SRC_URI), I expect it to
> be rebuilt and in turn the image be rebuilt (I invoke 'bitbake IMAGE')
> Most of the time, this works fine, but today it seems to not cooperate.
> 
> What's the best way to understand (diagnose) what's going on and
> why things don't behave the way I expect?

git bisect

> 
> Thanks
> 
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_55156E98-120D-414C-8D38-CAAA838FBA4D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaqeZYACgkQuwUzVZGdMxRq5wCfSEf2L3rHoDCJ3MPjS7xpplPq
i4EAn3QJiax00XmfuIDG3TnTyCT8bHYS
=ONk0
-----END PGP SIGNATURE-----

--Apple-Mail=_55156E98-120D-414C-8D38-CAAA838FBA4D--
