Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6692DE00524; Tue, 21 Mar 2017 09:58:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C17EBE0030B
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:58:08 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id n11so4132540wma.0
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ht9WPuMOjQUMSUURls4Idxy9fmKkqdKOHAl6XksaStU=;
	b=RGERADhRwR+eFVFpSlAnkNDd0xT4RgpHBWG0dm5PqukIti7Xzgvgm5sP0TsU6n/RXu
	sZe5+M80oZxhMpiDcMfxfzOJbq4m9e4qERKE0TVc7I5Gv6b1ZTbt43Tcps5PsXlOpZ2m
	Ag0GW/VBbHd23cReryQhoyEoRuFP+pa/+oNCrPWI7ooDcZDJSyiMzNTSxuCaVJERD3DM
	8ewiHjM4IyU2/SVe6G8pOvURtzvDpM/4mE6FpHM4Fsr6wA3H0VdT3Z8LZ0FldygNMQ/l
	z6q2GH1GdmFpWPfQKCs+JXRK/hlj9ZeKeQRKmpITWsoTlKcKtXeoPTZ1iZdzvsLHXkXi
	0G4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ht9WPuMOjQUMSUURls4Idxy9fmKkqdKOHAl6XksaStU=;
	b=LHkDHw6wfuze683yuhRMZL9ir5ExX8viL8llVTyB+pOIBKZS1uPnxvTCILfj6M0jGV
	Kood0qu1wF3IjIBNJ6sOS+8VqS7MJHl0RLsVU2qAH5nMw+JVJJhBLWKUmZnsV9NmcwzQ
	vDavcOgydfITU5Pnblw2V0YkP3xqDy7CUNvD7+/siJLXSahI69GJaXG8OUkgsgA09Hvw
	Zn8BDkshPJlOhYEjCamdDJ3hX5vcfGnXGUjnLvnJ/76HPUfGlNXANmnuaDetV3cXeJAP
	bvkCKYJ4lGqHhjY2Mj8I2K9UWSY2SJEp/GgS716z5gb+YE+R4+Z42/5ZYFwIiImtU5ER
	XGeA==
X-Gm-Message-State: AFeK/H3Td3S56nN8sotiBxHjoLbLE7l3MW+gD1qong33L8X1INkcKou0l/429VNoii41Qg==
X-Received: by 10.28.96.65 with SMTP id u62mr3527948wmb.88.1490115487705;
	Tue, 21 Mar 2017 09:58:07 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	e72sm18370107wma.5.2017.03.21.09.58.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Mar 2017 09:58:07 -0700 (PDT)
Date: Tue, 21 Mar 2017 16:58:05 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170321165805.GG21801@carbonA>
References: <d75a5d99-f1c8-f106-8264-50d03a5f5e2a@mlbassoc.com>
	<7b993ea1-ffde-c3a7-b125-63c857808013@mlbassoc.com>
	<88cac78b-712a-5d79-7f83-4d5d3269d093@gmail.com>
MIME-Version: 1.0
In-Reply-To: <88cac78b-712a-5d79-7f83-4d5d3269d093@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] WiFi on rpi3?
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
X-List-Received-Date: Tue, 21 Mar 2017 16:58:10 -0000
X-Groupsio-MsgNum: 35156
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fCcDWlUEdh43YKr8"
Content-Disposition: inline

--fCcDWlUEdh43YKr8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 16, 2017 at 06:09:02PM -0800, Khem Raj wrote:
>
>
> On 1/20/17 3:52 AM, Gary Thomas wrote:
> > On 2017-01-20 12:30, Gary Thomas wrote:
> >> Can someone give me pointers to get the onboard WiFi on the
> >> RaspberryPi3 going?  What kernel settings/hoops I need to do,
> >> what packages I might need, etc?
> >>
> >> Thanks
> >>
> >
> > Actually, I've found that with an older kernel (4.1.21) the WiFi
> > device is discovered, but with the newer kernels (4.4.x and 4.9.x)
> > it's not.
> >
> > Any clues?
> >
>
> Please try out the patch I posted to ml
>
> https://lists.yoctoproject.org/pipermail/yocto/2017-February/034624.html
>
> or from my gh fork.
>
> https://github.com/kraj/meta-raspberrypi/commit/6ce6e57782c23fd21ad47286ac8b809ce989ea78
>
> and let us know.
>
> Cheers
> -Khem
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Available now in master too.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--fCcDWlUEdh43YKr8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljRW5wACgkQJrqo2vax
FPaZ1g/8CEQddgEndEqD23gBtciVpi45sPrTGZelmJnGa3OW1qAqgcAnJ6mdveuO
mQcd1P3FjM5XRUMn+5+xCFWYhEvLx4Fuoo34c48c3FGT3FkupygOWUvu9JXluf3z
efRbM1RAx5DrPqaVhP//Qs8k/m9kXdqTmHxowh8LMMq4IiQcb9RLy+UHntMzoVgN
ltz1GCJatsuF0ax0xPRL4qo89YkkjAxt/EPxnL03TTUflP6JTEw7ffRCJf9H8Ia/
4ZdMwTLToo0ASIRljRrHYXKbnd5xcJjmR49yW/kVx3FXhv0HO6lBmeR4b0XAgVoz
iIrmOlFL2SWDy1j8L2T2oUw2od80ouRuLguPkUJST4xS9cds1P8gmFmAg26iW6ql
r9aBzns5/MDcA6hw+zqr/qFev6BocsAIRZRKU6jIyo62mZ5tDM0sCvPCWiZNfMDq
emmVKvyOXxbmLf7oLa326dxYqVxVkymBOnqPvDBzXYdjwiwhH6i5tULJBDsr0UnU
UGujiVPUDUVPqzXPUcczHL+ojzUQhQu5D+bN54tTQ+kGTMj2ixnv6WpZ9U535WF4
220EN65QgyfeJCPXwguRay1qI1gphpNQPi1NzYYCHmICd+BCBoMb8HBy2tlvEEf2
QgW37deWCFBQBcvcrrKxuGEUaRC9YT6/ymAijx2wXyD6EI/X2fQ=
=svPo
-----END PGP SIGNATURE-----

--fCcDWlUEdh43YKr8--
