Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86ED8E00A0A; Fri, 21 Apr 2017 09:03:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1637CE0074B
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:03:14 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id 6so8527137wra.1
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=VHnL4xURylXxFyyXLvToygl8Oh3kzZMQuzzS/HAKAaw=;
	b=nnPDUEIkYgE5AOqAUGSiy6o9oBI/FTyxL0Wu96EsgK0ZquXN7YyBKvV5PXeCMW6ppz
	qwEwK701blbP2/ot47o/qrktKn4cDuTcw1CufWsUKy8wTWVQVadPW5s7S4FLv1A8yM4B
	bn5PnqDSoJWRaAjSsYKj4/mlxhkyAEVRfEqIAZ04pCbSZlcHUC/M4vEujrKfoYIUa95Q
	QIU2rWrNWTl0haWg22Eb7UFoHF0SP+ZzJuI+510dKHt0e4gSgg+eOmu+fywJ+Iwfu329
	gA1Sij9UUtuizoZ0GfWYmJxGDmg+wrrbjmr+UxyRdzBawVFNe0vcgRPnv5jFD+p+n7ig
	bKYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=VHnL4xURylXxFyyXLvToygl8Oh3kzZMQuzzS/HAKAaw=;
	b=KbqsrZaMYxTUNvCEAISHuBSQo8PfYPfdzvSKk0Zv0fNhiZEfHJqKJLnocSjfwwrW2y
	D64QGkmSewvbyN5micKfVrEbsfOVh5iwhkXPA5Nlj+Oi77QGWNNlSlKsyXJ5HHWPhaSd
	V5CtVg2sL6SuTzgnCZMXjXpTbiz1EL5+rRxETaZwS1sAIZKtpUu2eXiTHI7hUVJ10+ef
	LR55cOxkOYRzh11u0vm5tJVxgvh67D3Oc2mxQgzH1b1L8pGQe23SuPleRQyfbqbiBzB3
	obb1m3n1iSaXJC1/HyqCcK/TVfRuaDbPENjZkVLi5JUDT1TCf4/UKptHyndRakAsTU8C
	GEcw==
X-Gm-Message-State: AN3rC/6JwB2k8vrT/QA2zIfBwyvwlRap7thPvwff/Cq9baanE7pCs4Ft
	WWPA2yV5DfEwpE598bU=
X-Received: by 10.223.132.225 with SMTP id 88mr14558719wrg.114.1492790593604; 
	Fri, 21 Apr 2017 09:03:13 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	w126sm2780547wmb.25.2017.04.21.09.03.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Apr 2017 09:03:12 -0700 (PDT)
Date: Fri, 21 Apr 2017 17:03:08 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20170421160308.GA32138@carbonA>
References: <20170420171816.23407-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20170420171816.23407-1-andrei@gherzan.ro>
User-Agent: Mutt/1.8.0 (2017-02-23)
Subject: Re: [meta-raspberrypi][PATCH 1/3] raspberrypi2.conf: Make SERIAL_CONSOLE overwritable
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
X-List-Received-Date: Fri, 21 Apr 2017 16:03:18 -0000
X-Groupsio-MsgNum: 35720
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline

--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 20, 2017 at 06:18:14PM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/raspberrypi2.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
> index 9b4c02a..a17289c 100644
> --- a/conf/machine/raspberrypi2.conf
> +++ b/conf/machine/raspberrypi2.conf
> @@ -7,7 +7,7 @@ DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
>  require conf/machine/include/tune-cortexa7.inc
>  include conf/machine/include/rpi-base.inc
>
> -SERIAL_CONSOLE = "115200 ttyAMA0"
> +SERIAL_CONSOLE ?= "115200 ttyAMA0"
>
>  UBOOT_MACHINE = "rpi_2_config"
>  VC4_CMA_SIZE ?= "cma-256"
> --
> 2.12.2
>

Entire patch set merged to master and morty.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--7AUc2qLy4jB3hD7Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj6LTgACgkQJrqo2vax
FPbY/Q//d8zdALArAia/ulStejt7tAeSF6+Bcr8JQPV04yMCzXXHZC3HrJyGF/Eh
HK64sJZtyh6+309375xOLraQyIp3ZFiRY84Mpk6RvDF25sNJXO7B5EhaHO5yu9R+
RDKwJnYRRP24su0X43PQYtK4qzMA1s4x/23OYimsuDhHqkblpHSy9MecfFI7nmXR
tLnW5NBCN6dQLXLWgmVhN01AiNWL7fWsxYILs3/rHzIFC723sGT2SRMMnWQi/Vo2
yEA1oBiiV228NBmPcBDTAYaO5U0wWYeD1GZ07M7X7y7LA3htMOmX1rMzWZLYJxHQ
F4nj0ZqxOKaxLF6eTLdFc5u/aX9x50CyaGGbAIo85LQdJj7vJWvv9YrnNmQ1258s
OAiVx/ZaUrhtCumauRUj158LijAf8R1dD+C9YuzPdvO9jMaPrC+WKSziWyJ8UiVY
x+iiipNq6hHs3TbrXZEA71ndDgQ98wzjyPESrRU3srV4Ybv4XfmpXyR32a5wnAVG
2Gs7wSHdwXVz5XbmXUodiANMK1SEUCxyMxhegA1vQN1yPsp1G6sg+6NHObLW5kTZ
XeZVWoz5DWx8JWTIsg2DfLIgwrv7Xauw35JZicFmxNvgpYE50+bsDt5BjUcxVdBi
dSa/WO3qdjR9n2Wa5BHN/0KYvr9LiMzu822gb7TLvtxO5X3KBBg=
=XIdH
-----END PGP SIGNATURE-----

--7AUc2qLy4jB3hD7Z--
