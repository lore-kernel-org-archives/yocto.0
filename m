Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE8BEE00524; Tue, 21 Mar 2017 09:56:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB850E0030B
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:55:59 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id x124so4116247wmf.3
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=tsOtyuzdfOczlYfncbUiXBeM2HUfOfhPLBzZCbLPq4Y=;
	b=XVUPvf8D5C4Sbqoenqmb4unvoUyGeOglQc9DXHxLL/dcxNUhb/txJF/BMGTyBX8PJE
	Xch43OjOfx359yHHyN+dR0aCOxQqSmKUK1CW0mKp1i9Zu9PZy+jEGVufOStPYHaB5wdc
	Bdl/85vE4gGd6HSr/hKwTAUkE94J/uVpYeCFSXsKzd8jvsN9UVsoyYPJ5W+46nBjutLl
	YV7i3t4n0MVx1FbAxV05rbIblLSlMU7FCCJF1u+OYvwiHT4HJjDzL0YADbKIKyZW8RQW
	2DrEQZKomGXYVAzZRzLW3FRPhMZjdi1CjBOvyTrPlVS/UTBqDM9JEMZFTtnEiXcCUAGB
	VRGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=tsOtyuzdfOczlYfncbUiXBeM2HUfOfhPLBzZCbLPq4Y=;
	b=tbPpE2gnI+g4P7GVuw2RhxKrZTI6IPg5o9ZuAapOySPK+YLJs6uXWC3P9+J/XDP40S
	ME4FjaJohe2jsvbRtFUeEp9Nuo5Sg1lPYlCv++SqJQLPww1mSSws1wOHBnbsrNWEymGl
	hogf6mbfL2JC/Y936xZDjfAx7MJKSoMvjQbduAZQgtzDoNGzNIrr8dR7skt0satWpSEZ
	oLuBbbP9/a3bl93O7k0ghnn/LfAa1mrDwbBMcJbCLCH8fBbTZckmZYtvNmaZgJ4gRXM2
	vBgTLCXfbp5ZDtwKWBWV+c+3q0DIOls2J5V/EV5tUoQZYuauFgnh3Cd5c6sIgnZEiTmo
	tj0Q==
X-Gm-Message-State: AFeK/H2gnOdnp6aBEmOmoGiZctw7W5a0yL4K8tObXpwxY1xSsOE7fAASjSgnQQy8LSxNUQ==
X-Received: by 10.28.217.136 with SMTP id q130mr3596467wmg.132.1490115358690; 
	Tue, 21 Mar 2017 09:55:58 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	136sm18349290wmg.12.2017.03.21.09.55.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Mar 2017 09:55:58 -0700 (PDT)
Date: Tue, 21 Mar 2017 16:55:56 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170321165556.GF21801@carbonA>
References: <20170321161804.21347-1-andrei@gherzan.ro>
	<CAMKF1spXPtTy4Na+PKcKD1UjgRCAdqcX0eJwaV5ae18XwYUOgw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1spXPtTy4Na+PKcKD1UjgRCAdqcX0eJwaV5ae18XwYUOgw@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] omxplayer: Add dependency on coreutils-native
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
X-List-Received-Date: Tue, 21 Mar 2017 16:56:08 -0000
X-Groupsio-MsgNum: 35155
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/aVve/J9H4Wl5yVO"
Content-Disposition: inline

--/aVve/J9H4Wl5yVO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 21, 2017 at 09:48:52AM -0700, Khem Raj wrote:
> On Tue, Mar 21, 2017 at 9:18 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Internal ffmpeg configure uses pr which is provided by coreutils-native:
> > | ./configure: line 471: pr: command not found
>
> this should probably we added to OE-core allowed binaries whitelist.

Right. I'm fine either way. For now this fixes a racing issue so I
merged it to master.
--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--/aVve/J9H4Wl5yVO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljRWxsACgkQJrqo2vax
FPZd9BAAnO2r9FzeDsiHBnopU40kydRwb3fHRZ6DLA2kt9jEmaLNfvJyp9LH0/Wj
iEdu3+TCr4MIwi6j8wwrM+P599gBPWv3n4C9VoxYgQVg8InR98TfyPAu+nasX36M
1ZU0HxQ0gDPjHt5X1IK5/LyDHzD/mzZmEVlub7NzXcxyjZRaIYzc4zAd3oYdk65r
75mHREm0HnCR1mMA1acoKA2P0y9w8CkWgm7OSkBNf4NlnN1C/n9YyglLGDCjswFn
RMvCM7M0WMbosERWOk83mpKb20oWDzqfmtyf3IkpBtKR14XOjz6VyG1DJWStyvw8
76oxEi0JR9CHCI3UYvWXleDnCLqk34XpsMnBxo/7PpDcRshh6utF/QW8/03GyNsF
HhU853Vk/erScq8EKoeEhvPTbe9PfN1d30u08ncFCqFA9/ANA1N8QNCuuqFp35bp
wKs5IejVtq2WawkHRylL9YL3BrkAcgPLxg0Uh0dFlBh4ZjIbCUlWORRGEGKALJcY
H54u2FunZoQHQiWhYgfislmujM1HI20eLEoyTR5XBthFqVGkpf7luw8PGlFJo5zD
vN6y8I6z0zCrK+B4nERF/XAAe4xhsaHTIQk+tAHg7nDEUFqn17UwOgYXeHUOIM4B
ipnniVjwgivePahMzi2P8m95UlVJpiUTw2bp9k+9SRsgSd5/BPs=
=D1Rc
-----END PGP SIGNATURE-----

--/aVve/J9H4Wl5yVO--
