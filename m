Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60DE3E009B2; Tue, 21 Mar 2017 09:41:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83684E00961
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:41:32 -0700 (PDT)
Received: by mail-wr0-f182.google.com with SMTP id l37so115720930wrc.1
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=KtUdRLgU79DCRC0xbnQ9eU1+m7atbuRwjmy7PcqpATM=;
	b=Cb84jyghNk6DZ+lEJaxuTA1CXzdjwQBHUpqh4ecmv3/pUEhv0CjLrHL9QhXHCD+Hkk
	M+9G5HmWrI4uSZ6bux5XIOR84Yt/uFLYLTLlLKCYDuL2SZHZaZLksNGMmwFIGqF497Jc
	sQuiriV7pwoKUPas1ZqDwjuawIBcCFP+MOoCnIqWmIJDg/ZMtqZklI5OQ/hUwCNKiuv0
	xsnFtLS2TiGehDMmSiesN4laJj+kN+5DZ9/hDHUTDMYlCLMPJEwC2OmzadjskRXpSXLD
	qHG5ExDT1xhBgkWU/E1Z6mYRFaO2K7u2JbyC5eUoOJeIFeG9wjzGKvyZ4kbgaiIGzHXi
	kC6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=KtUdRLgU79DCRC0xbnQ9eU1+m7atbuRwjmy7PcqpATM=;
	b=SR13DKKQf1XoRhCQqE824SEURbEHGXp0HwSDwigmyxmD4MR1sYrROxplvuVy1xq6U+
	EUcUk4PkVi6CsuoQpBGnDkE4wxdejQZ1wZPSxwbj6Q/vgbmITeRB34XxRBTiP1GXKl37
	b3I6e7lWXtU2b12g/N4SIwtYwRghJbI3SKfRrs+lRaAJTtPhCr08f7MuvxUd+ol5Vwx0
	R9sstvtQIiMzQDLN9yPVB8rW0/PnEN5rpAETrCPyCYsXrLqNtS2oBkAhu76k1hUBop1x
	Y7waCjKMP6oUX/HcKVeuvIPbaJzEcpWiowWH+58NYrAygxcKNYhsrmUql64CIo42EHEh
	fydA==
X-Gm-Message-State: AFeK/H1osCrJjmelIXysfkTE4XqDjpLwXeQ77x+kLYhpYnzO95S6NtaONZrN23x9GZZJHg==
X-Received: by 10.223.172.137 with SMTP id o9mr33978363wrc.66.1490114491741;
	Tue, 21 Mar 2017 09:41:31 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	o26sm14024174wmi.18.2017.03.21.09.41.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Mar 2017 09:41:31 -0700 (PDT)
Date: Tue, 21 Mar 2017 16:41:29 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20170321164129.GD21801@carbonA>
References: <1487245741-13739-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1487245741-13739-1-git-send-email-schnitzeltony@googlemail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] xserver-xf86-config: remove evdev configuration
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
X-List-Received-Date: Tue, 21 Mar 2017 16:41:35 -0000
X-Groupsio-MsgNum: 35152
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="M38YqGLZlgb6RLPS"
Content-Disposition: inline

--M38YqGLZlgb6RLPS
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 16, 2017 at 12:49:01PM +0100, Andreas M=FCller wrote:
> xorg-xserver recommends xf86-input-libinput since oe-core's commit
>
> | commit 2d005faff6341a81a2afae28860101ba9db51ae8
> | Author: Jussi Kukkonen <jussi.kukkonen@intel.com>
> | Date:   Wed Oct 26 11:37:38 2016 +0300
> |
> |    conf: Use xf86-input-libinput by default
> | ...
>
> As nice side effect warnings for missing evdev in Xorg.0.log are gone.
>
> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>

Merged to master as part if Khem's PR.
--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--M38YqGLZlgb6RLPS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljRV7kACgkQJrqo2vax
FPbzuA/+J393XMxJYOMUGOVad9VCZ2oujcsNvewmo1e3FkjLLNeKLhQva1/oGsOg
+xasAFXXZvEQM24NTIMJIcS1hOfczIT9kg/Kg12D+GW1Ud61HpvylDoT0SEo6GQY
PfhNsKQb6sSuhhP7HbjQA8JdnQ5cjIc7Y/0JJ6qF/7lI6qS2vPEScCOzlIPR6dLj
kAsEBR2giqw+k9sJwUHPafIL6q8+VVu3vaG6aIAXAc3EoZudds9BxNViW32GjNdT
txK5TooBSFKudWMFo05XY31yzIKqd2GkILFrMOx4tNdV6GeliSvr9+I7Jb6bRoZG
Wu4BLPoPgwR1MWa0slW200RBpZw+geJP7QK34AzCFVz0q+W6E4/t3L1Ut3Nap0z7
smg2y8dd818Bn/fOnlyxrM3xj9k5ASMhBA8fe69zeZEtlSZCthVJrFsoV1gBDvfm
K8tauRykkrSVZHlwHgOxA9slK5ztOAk1hhQPg+kh5gAUx9JIi7zE+VVN6xl8HxZn
HsK+1dlAlLrPLmZYrwFuEHI3kBz36k9WJmCt8UzLlyYyLcNbjUHle8TcmY0NhQJh
ukdP4rQBbcjI/IzdpywfJIJGYt6Gbl1Xw0EDGdgrPbQTFqHiDpGJzlBDv6A8adcu
6R/k4njxtGuNkq2EBO8nQxfyRDIXwPxEJ/r7RZo2JJG5hw+9wdY=
=Joxk
-----END PGP SIGNATURE-----

--M38YqGLZlgb6RLPS--
