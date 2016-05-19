Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30C1BE00E7A; Thu, 19 May 2016 08:44:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2300DE00BFF
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:44:51 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id r12so22076166wme.0
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=zx4Tm0KHccUkwIORlrh8ixOQeFrS7hia7vRy/c30Db8=;
	b=ck4LnJSnTmq+64dZMUo054yH0Zpc9YLrHugbZvAUvEMaZgJL8y/WI05Pntyhsogdqh
	Jj7qHmY3LqjOU5sC1j9cBFGrohwtRBIbuXtPDWEdbWduaWvZqCqNVmeAi/ZW0sMJrNXQ
	t8yyJp0khP9I6GmFNzsL98A4U+ogMEgcXR8gJEwBRMTRr7OGlDu0w84j6ogRFW51TXUo
	0kxPQCDu3Fm0W5a8N3atiR8J27FNfRxiCsyGGmEIqdKQNWxhWsSKTw0+DkeNuTP4KmqT
	rN7JMYl9qjZ/aXXbJI5NWEpltW+iiMyg9kKdDF4SeWzdg9UiZ0h2jp1XKox2VnUukSru
	hl6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=zx4Tm0KHccUkwIORlrh8ixOQeFrS7hia7vRy/c30Db8=;
	b=cK2QX31VrZzO/mN9DBtyf4AvkqvLximKZtAm1q4LHWcaVK63dltqQtMSYYKBxRq7M1
	U6XwpJIZvbsiezwuCsuhi9n6XqnvlO20ADyKZIOnUe+ezE7R/TJXWLVLUcZBLtHy9Nat
	JafVRbXMOCcufBCN4l8tvFck6RcLmN8XjR5TXX1sYAyjo4nmMqfBmQB9ybQlhN9cgSzY
	kiMY22tnbmoVV6O3Bez00uWFv/3qMxRz+bIjAMCfDAGz8ki3xaJblC82XVWH94u+bRya
	V2/ieEpDzxhX8FsQnDtIVBxA/DxpGuhkeWOFG7HmBHl2JT3EvY80TJVHOoi3xd1LpJoD
	i/IQ==
X-Gm-Message-State: AOPr4FWr4Qh1z8Guy0Du89EROgVqOca/4vNbbCKx4d1Tb7DHbXwkioClgyzC7Ewjp3qKqg==
X-Received: by 10.28.153.80 with SMTP id b77mr3444704wme.71.1463672690234;
	Thu, 19 May 2016 08:44:50 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	az2sm15056818wjc.6.2016.05.19.08.44.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 08:44:49 -0700 (PDT)
Date: Thu, 19 May 2016 17:44:47 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160519154447.GF9848@resin.home>
References: <1463118184-2174-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1463118184-2174-1-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-rpi: Enable kconf options to enable initramfs support
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
X-List-Received-Date: Thu, 19 May 2016 15:44:53 -0000
X-Groupsio-MsgNum: 30082
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uTRFFR9qmiCqR05s"
Content-Disposition: inline

--uTRFFR9qmiCqR05s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 12, 2016 at 10:43:03PM -0700, Khem Raj wrote:
> Additionally add few few file systems e.g. squashfs, overlayfs
> to support booting with initramfs
>
> Drop checking for target triplet to set EABI, rpi probaly should
> not have any legacy into OABI world.
>

Merged both to master. Thanks.

--
Andrei Gherzan

--uTRFFR9qmiCqR05s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPd9nAAoJEHO76Gt+erfPs90P/jywz/W+uAU2LWXjx942QLzv
qWGFVR99YpKSr1yt6ZJoN6yQx0vrg/ZGrU4B/Imx+WW9fkYUW6HMl9vKa7CAinuR
hmgNOFLlG1FJ5zWG6F2U3pDcW9d8dk7O1mtnjA+uo0LyyICotphQgHawcZhE6toZ
7R7PTXcSGqMWdUiXDWEldXwqKMUv78OjBKG5Xfc65ichF5rLJtbVcibnGbJDetmb
/1IISoeqJxVHIuZAq6gtsZuUsTPkSPehkMDrXRG8pz6UCxL8ho7hMQBNwOC/STF+
sOoh1oaRge+BTZUpKQqsht3/vfOhTmD2cV5ORRfiZyHPDT70zTgjayarHjrW4XZu
UM1NGL4Foj40cnsfR7EX/wVACWkLGIgb1HAWoZe7kOh6VWBq166ty7NRma3eVxYy
9jku+i5JsNaMcUTL+IOkNTTrJ1/VSMsrq0SaPf6ZXdJJYG+VlHptHGg96OG52x5l
HO1Va3RQpMtWmW/FeEPZtfwMfwZpYdNZ/24yc3js8UIYMtOZUCLUDzUulc9J5oKp
JRHT00nS9lN4n/6OPuhzModVtR844t1tjodg15XgRYpL1H7/ZhERRb3MscKd1OLJ
fu1GARQNWXKqLOUSUKaIfdgnMpSOMgrvpeY5+58F+ERbyunMHJskj+gP/8Q97RBg
imNWI0n5Vr2kO49yzdpk
=MlJu
-----END PGP SIGNATURE-----

--uTRFFR9qmiCqR05s--
