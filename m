Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C788E00480; Wed, 18 Jan 2017 08:08:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C0D8E0030B
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:08:37 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id c85so5129056wmi.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=0mqebKnn88yKWC0dgfdFMZagnTuwBy2OKmXUTuyaPlE=;
	b=wEpJ4jKr8yg2t+WOCfWM6syDUxyK8tm73EGPHjPl/eDW/xZzDfwlHQvJi3CiZGhqQH
	omJ5HFM9wfA2Y78qJymY/o+fUzs3wgKnlnImTSyggHfn/6bIc8coBSWxz8DF+/kUCTQN
	dt6+41s7W76YXamzakDX8XAlSswvhL6mcAUeWXrRnuymrrpsRsWQkHxIv8ifGQMMX0b4
	eJtMrBXieL6naz+/XohECe2LhoV1KOk70YLBk5m2s1wvSDWE2gX59E0y41ElToIlxoSW
	kUzkBG88/J8V8o5dxyLFDPd7xSxPm+Jgpo+AOBqCouGXkIODppvU6r+cim+AS3qyUOj5
	/w6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=0mqebKnn88yKWC0dgfdFMZagnTuwBy2OKmXUTuyaPlE=;
	b=HFeYYqZ7gjqFTtunWZLqSoRsl00BG1Rs8SyjoVr2Pv7nWWVy4OXnn92y4S8CrsMiyJ
	HAGE7KMnfAh3gUTbh/YVoAiRwEZ8DYFzi6jEPH6P1sksUk7930yiVDARIiOhY+fgxM7z
	fiQSVz49NFV+89C1Rf3LLQaYzJxk3doCuun9GF4JX3dBJoplh1G5qFwee8hs3XSrp6AO
	x42Y69VhahvjXxNMUgGQIFuful3vcqFs6AYdlMWJA1QPuNSeF76TLHs8PyteRiQfs9YO
	9plNOrMn6tLcz8Nync+OdsUdg39WpodxrwgkrginTs49DQmczgqWtxcVwA/zXHvaWuRk
	5eQA==
X-Gm-Message-State: AIkVDXKH6vD3JyjbZjRI222kXhWBiYoJrg2x1pd/trzx8JMuKcIq9x9y69QI9RSaGXeqPA==
X-Received: by 10.223.174.73 with SMTP id u9mr3319745wrd.159.1484755715053;
	Wed, 18 Jan 2017 08:08:35 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	v143sm32112762wmv.4.2017.01.18.08.08.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 08:08:34 -0800 (PST)
Date: Wed, 18 Jan 2017 16:08:31 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20170118160831.GC14533@carbonA>
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/2] Drop kernel versions 4.7 and 4.8
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
X-List-Received-Date: Wed, 18 Jan 2017 16:08:41 -0000
X-Groupsio-MsgNum: 33910
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qOrJKOH36bD5yhNe"
Content-Disposition: inline

--qOrJKOH36bD5yhNe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 16, 2017 at 07:26:55AM +0000, Paul Barker wrote:
> As discussed recently on the list, we can just keep LTS versions now
> that v4.9 is available.
>
> I'm sending these so anyone who still needs v4.7 or v4.8 can shout
> 'stop!' before we remove them.
>
> Paul Barker (2):
>   linux-raspberrypi: Drop v4.7
>   linux-raspberrypi: Drop v4.8
>
>  .../0001-fix-dtbo-rules.patch                      | 44 ----------------------
>  recipes-kernel/linux/linux-raspberrypi_4.7.bb      |  9 -----
>  recipes-kernel/linux/linux-raspberrypi_4.8.bb      |  8 ----
>  3 files changed, 61 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.7.bb
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master.

--
Andrei Gherzan

--qOrJKOH36bD5yhNe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlh/kv4ACgkQc7voa356
t88U+RAAm46vPIjJWu1iDRVAQioOl17FVvjK0nNJ/+G2NAzSTEe+R+y6vYde/gDo
NqGC90BPBOwineURG2NQZjgVzl481wtt8AIFyLaYZBkkvD29v8gmEm4be6og0aHl
2e3lDG82dlmwr0EgMtMorg7IRy4xxjA3UZDBJBjl81o3yjP5CmhbHOWl+EN1pD9m
KigsN/MO2iglPEoXVVvoph0BSA6sLrBGJ2H82Fqv8+43/Gf5jEwWmtQQZjO0WoOY
B8vbBJuEtJgGNHHJ9YkjOHsiVsnNqhtDYxzy50NmJYYrXEWOQLKzC0lGOkrpQm8G
mHMRCS51VAWs0w4IuxvtREljegn1+czTyeqnf/f9ruWIpz1+rRyk7/UmX/Iqi3Wu
w5ZbaPgotbLrHf5+RPkbCechKqmJIh8kXffIoevclvT6tDzZPl5/lU9SHiLwvWGf
OAhXAp+oLVccZMai8kT0+5iBBW0AJQRfCuDNkyu4pvLajUdN2uTO7nq8zZrFk7EP
rz5DIL/Q1QhTAgMIN1KFa1p66mns1USX2lS0ymxHAvUOK/gEU6qvPTTsM0UQV/xA
h9pV9hxAS6am/xSnt3qTOqh9BFjlyM73du7g6B5BzX5yEZBkKTn0SAQvmqZqdA82
62qz6ArzTDBqexPmcaWF7eCk/7FcDtajgvEhowgKxAIAbTw1kCY=
=h+gf
-----END PGP SIGNATURE-----

--qOrJKOH36bD5yhNe--
