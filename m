Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95E9EE00D26; Thu, 21 Apr 2016 12:08:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 256A6E00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:08:13 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id 127so5512669wmz.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=yarVhMYApgBzz8qzRE7G+b4Hq+o9HHWFpPCILAYTQ2w=;
	b=mfUySkIfxsAsIB93mCjAqvCm4hqDPjo4B4aUuIz8C/5Y1THr69yfSzolptfu2/w/6e
	fj/A2D/AxuvCIrHwpKTM4lUtiqUQpqkYWOyrYM8FeLZKCyNpxeHIJCB2JNUy9JPxFu1w
	BMUhf6RVAmjaq/C8RTOFRwxfjzv8Dmj8QrmE6Q4dosk0wjw2PZGMJ9zRASlTyX3uERQ/
	c+j0GgPFBfnBHeAL/o/TZak0xRPFY/5nF0VOu99A1agDYBBVAzphGPsZFART6o+5lIhV
	HCfbRHqFqr320OLltcR97IVJTZHRwuiCJSskNY96I8pc86Jf8eeHanBmMWZ6fHt2krmT
	GrlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=yarVhMYApgBzz8qzRE7G+b4Hq+o9HHWFpPCILAYTQ2w=;
	b=bdyQrmHU2+7kvFVH7PPULuvWrRnnxOXyim3TrsdtKv5nIhfxzUZGuSlqC/3JbCHnfE
	BrQIBsqwC9LOSmk4bvID6ZR1VJwazxqA1iQFcwdmlBDoGX6yiwLFohopCkZPBO3oawtZ
	RNRfnN09U9txZgsxIDN3cCle+ekPbNNPtlQvtFC7MLLzKpa6TTOlomQh7QAcqrwDMKPr
	vLklSLuEbXOBCkY2hDznQpBRur7y0j0G55R32bYgoAKVSE1TWmknptdjW/EzfrvtN/ej
	D/dUZOXQmMU+EQfC6N1Iv4DmqXQdzEiKmDyx7pmvfJ2cATLZ2wNyilXrPi4Tu3ZTmgnu
	xolw==
X-Gm-Message-State: AOPr4FUHVmrilWKzPaJXEVMik4lE+U5zam1EBkMJzKsBoYh7Xz8vpUrb6ruMuBspNWJTqQ==
X-Received: by 10.28.227.130 with SMTP id a124mr17770942wmh.2.1461265692274;
	Thu, 21 Apr 2016 12:08:12 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	c144sm16297239wmd.0.2016.04.21.12.08.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Apr 2016 12:08:10 -0700 (PDT)
Date: Thu, 21 Apr 2016 21:08:04 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160421190804.GA29750@resin>
References: <1460769651-5168-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1460769651-5168-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] omxplayer: Bump revision
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
X-List-Received-Date: Thu, 21 Apr 2016 19:08:17 -0000
X-Groupsio-MsgNum: 29564
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Apr 16, 2016 at 11:20:51AM +1000, Jonathan Liu wrote:
> Fixes linking error due to missing vchostif library dependency.
> Rebased patches and removed patches already merged upstream.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>

Merged to master.

--
Andrei Gherzan

--J2SCkAp4GZ/dPZZf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGSUUAAoJEHO76Gt+erfP02gP/ApEmaVYaRyUs/Vyb8aw8z2w
lrNScqUTVTn2yR3CdfSL/gQhUk9FSRvgoqxMdiQxxW6nVC6r3GJ9WjfqqlZnhFQJ
ESe5KUbY1V6KFznwM/DFhONgPaKGfIN4y5CpDjCGKQzkyUCTrzpjRqHa9mQQQmJT
BhR8mApw7nbcIACtKTZXD7uZ8gdMhWVj0Z1j3rwxwgfmJWfQXKwLuT3x5QaTQgFN
Rvec4xc3H37pjPA+a28zIc/zDtzDb594b/3ZGXuLJEmAipoP1FUvfwve7RYN2LqM
jhEVGYHxGZInS+tHjWzA7/kk6VNFmwEdKy8/FxsvtS672KX1IE5mv1BNhgAwOJin
SdLo5GieTNb1QwbeWxPK1Vv2d5SR8v+7EhVwUkKMZ8+ytx6w3B/o6qiOK02VFJ6V
UbUSId0dJim0GwlRDJJKwHOFU+r/xFdLqFAzC9DxRGj+SyHZS7PTde0i3h6S7yJ6
Xm3VA6yBCps2mudg1Wr0COmYbhU/hPTpbZ5/OCT7UKgggzDudsTOmLGTtIhDmybu
411E741RRz7IWlB352GuuSVVJmZxd+0IxkBBjoAL3L/HthimjYTrON5RYnmmrIMy
PM0jFJzRToi/Us225KAABEBJMuNcRcuLQA1WGd8UdLkUjeW6SDANTXhO2aBJmf+B
MEtFaSIoxY4J7lPQNfBs
=xuba
-----END PGP SIGNATURE-----

--J2SCkAp4GZ/dPZZf--
