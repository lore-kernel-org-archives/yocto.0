Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CFCFE00A0A; Tue, 21 Mar 2017 09:34:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54519E00992
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:34:08 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id n11so16240610wma.1
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=pSkDDKhvLuAS0yW4mkjoFCnE5bViX6vXi1Y0KbUb7wg=;
	b=caZgA5EEKYfBLhnxbUaosVpfncE2HMiXHdNosEyl1sydV0XM2n5wxWnKgypghb4VgO
	pqYU69595b1w4dVvRM5j825wa5FYDWXFc+mvqSQ3a7bkfqQOFv4mr4BNTFLIr2ySbFs0
	p9dzcZX012/Zg2zeZ3dQon01BQgFpj2mRRUEmtxv3glcEjMl6QM1/9ZPWPAWHSPRzk/c
	CnnUdLpIO9iSirspjp29ysw+A7Yj1Whp3BpGMG2xb2Z7J5ehxCzsS6tHc/4DB2FQPJ6v
	K99btqptBaI//KjST/tnLD9yU/+pTK92dsX4BvizS0iCO2jN/aE3tRXekMDmYK+jBXB/
	dzvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=pSkDDKhvLuAS0yW4mkjoFCnE5bViX6vXi1Y0KbUb7wg=;
	b=IU6j9POfp/g0kosB28Ve+wYRt+t046NqPyqCUSjmdLENth8ZPY+xWj2/gV4HgmYkeQ
	4fLGiVZnhnibwGCuB1UI5CbQTyxXTXyWz1rvS1t+2CER72BoRGLofeHBwJHojS1VY18y
	Ljlqd7R0yNYFhHjN3B77eciBheI0JjVp6R08tjQVl/nC7FCxO1WIz7lPBbA+XSOsJ+JK
	DP+SCO5USdhIQlAIH2NZ0RuVgX+AWLURFNBvDs3SQJ0oI8ojI09tvk4fFTrSo8v5avjH
	7CbjD681HTUyZC8zPMApPoPrzNlwhqlg3/RAn9ukDXYBLmaLdQYaDJ9Itiglz5u3yZxO
	hUJg==
X-Gm-Message-State: AFeK/H3Gg8SvNiogpis3yaiOqd0B1Qe7GecUgu4g0lX2bozHART0G+stXgr49z7zJG1M/g==
X-Received: by 10.28.234.20 with SMTP id i20mr3574251wmh.91.1490114047955;
	Tue, 21 Mar 2017 09:34:07 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	i133sm18379521wmg.26.2017.03.21.09.34.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Mar 2017 09:34:07 -0700 (PDT)
Date: Tue, 21 Mar 2017 16:34:00 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170321163400.GA21801@carbonA>
References: <20170312101845.30663-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170312101845.30663-1-raj.khem@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Consolidated pull
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
X-List-Received-Date: Tue, 21 Mar 2017 16:34:11 -0000
X-Groupsio-MsgNum: 35149
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline

--/04w6evG8XlLl3ft
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Mar 12, 2017 at 03:18:45AM -0700, Khem Raj wrote:
> The following changes since commit c768a3d1aed8d16d08afe12fddb359914e0a203a:
>
>   linux-raspberrypi_dev: Fix build on rpi3 64bit (2017-02-16 20:53:18 +0100)
>
> are available in the git repository at:
>
>   https://github.com/kraj/meta-raspberrypi kraj/pu

Merged to master. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--/04w6evG8XlLl3ft
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljRVfgACgkQJrqo2vax
FPYIcg/9E9TYaOJtFJUknL8qL0DF3xLkxJu/Hv6EjpJdMw7L7CED7Y576t5+13Qk
8qyMwp1KlYwUXpSNG99H2RFiRdm/9uIGVG6gLPThuBwlGok1jWr31IYL+5caLXKh
fS0g2ooP5LXNAyB8z5W8xlEStuA26V0WQa+YHEQGkqTWU5820OALrVypHSfzJeHx
+iTh7b0alvR81/DObLeULGf8Np2FUTijM2RtTGmS7veErix0OooDmmuQTU0Uzaof
LCP6s8STfNun3yYLnaep+APQkUEwozllNP4wgMROMgqSF5lYsudpkiaSnPBwqTK6
L3WUQ7CnRatmuLjDoIYJaDB7wquORGNuSA/CMMGOBPHmIjoCpHxJXWZG4MD3ZicY
GFRZc0A78phv12IcpQRNN5R36wq1fr9A+9WTaSbMjRObm2cKsl3JnPVRakezt91l
+YstD3PcUBvXPif6cPI84gZDKeFpzNxYByvgjyB/iAeNjwqgKsBJWD1GAP8lQe5b
zfOy4SHXEucdPPKRzdRizdut7VRMM7B6Z8krLsqmtF5WuOg0qbZCr9rkuLn/axSe
wmhzAWPJ6aBOT9soK6f6fXDYldblFu6M1vhmcWDqTeB1dCJC29Zo7Q58Km6u4i8l
sNQzeicaqia3FDVgyzxTESELfpwezEILbxUr33iCJqyX67/xgs4=
=+WS2
-----END PGP SIGNATURE-----

--/04w6evG8XlLl3ft--
