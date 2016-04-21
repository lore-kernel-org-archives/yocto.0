Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B597E00C65; Thu, 21 Apr 2016 10:55:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B41FFE00C65
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:55:37 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id u206so144920175wme.1
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=IFRfgCgYnWXK71vbJPCG6JGmlpPojyUiqz7bRybvCM4=;
	b=fLTyl/alrYzOz/lzVG+p12oZxt1AOwfDaySO/UfGuXCjBoWRwlYU6ThT9klbGd+atJ
	hOmwGbndKjq+Dc61f4adH/V8rreQQhSyX0Pm2ludw0tAkl3ocoCTuh8EsBl3AEeH/S0n
	je9JaAppnRHR44nXiYZB6b6m9EpQnFAKcW0sMJVSQNK2NpcWTUdEubYfWEpcKJu/0LXW
	VuYFYkYqNqpnL6LoXtCGmWbtgw0aZaoDHq+6w1MRnIjePKl4yeqAXVdZA2NM+g9cyaxF
	++SLXPr+95hE5jjOxz6w4HOtRSON25xEvPJq82FLj4Px1iM3648pyDRziwdNPK0TEQIA
	0V7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=IFRfgCgYnWXK71vbJPCG6JGmlpPojyUiqz7bRybvCM4=;
	b=ivoD1yZfbrhfOjQv+CnTwKosfXbluGStee5LjQY4KkTrqZczMfOZ3gzaa8Qzxlz+HR
	L1xafHGo5IUwGs4viv4un64TzEtUL5nYR+44LfhMtN3NQLBDYwxHMPtkHxHWNz2apuVk
	4dzFM4fDpwAIYuu6b5mGydwONW5ywIAUUUPkYuAMlqBnuUH78bH220GyM7/d3e9b4yyG
	gije6hxFX0rIZgVnOjnnthJ5LT11+m4gQAuS7SdC2N2orzRqXh0QGQUsqgG9XmnmpU2Q
	BXHhFAqLN9dm3gy0VwB4500t5bqfVJgIFGYmD5x8lvm+QUkDlX3pBmuln7gc5UUsNC28
	mMnA==
X-Gm-Message-State: AOPr4FUtrMXLzHKMjqTjqi0P8GyuIx0CCzldhPXwir/9eLExJKPfGFJ2zF+aYk4KPoQIBg==
X-Received: by 10.28.128.143 with SMTP id b137mr3021381wmd.57.1461261336620;
	Thu, 21 Apr 2016 10:55:36 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	kj9sm3976047wjb.14.2016.04.21.10.55.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Apr 2016 10:55:35 -0700 (PDT)
Date: Thu, 21 Apr 2016 19:55:33 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Theodor Gherzan <theodor@gherzan.ro>
Message-ID: <20160421175533.GS1588@resin>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
	<1461259933-1661-5-git-send-email-theodor@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1461259933-1661-5-git-send-email-theodor@gherzan.ro>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 5/5] README: Document new variable configuration
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
X-List-Received-Date: Thu, 21 Apr 2016 17:55:40 -0000
X-Groupsio-MsgNum: 29561
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HywJcj55HbA57jnN"
Content-Disposition: inline

--HywJcj55HbA57jnN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 21, 2016 at 06:32:13PM +0100, Theodor Gherzan wrote:
> From: Theodor Gherzan <theodor@resin.io>
>
> Signed-off-by: Theodor Gherzan <theodor@resin.io>
> ---
>  README | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/README b/README
> index 536926b..cbc7a92 100644
> --- a/README
> +++ b/README
> @@ -233,6 +233,10 @@ the modelname should be added as a MACHINE_FEATURES in local.conf like below:
>  List of currently supported models:
>      - pitft22
>
> +3.O. Enable UART
> +===============
> +Set this variable to enable UART:
> +ENABLE_UART = "1"

Based on the explaination about enable_uart this is not quite right.
Cause on rpi1, rpi2 and cm it will get enabled without this variable by
default. So this needs a little additional information.

>
>  4. Extra apps
>  =============
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--HywJcj55HbA57jnN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGRQVAAoJEHO76Gt+erfPLOgP/1Ce00FEjDddDTWRqsJDMO+g
VYqzDl8xu+q5Am2GILnuXNtuA3UECdDx2pkOqaHuK6ftNovGE+TCMpuQhcsKGNvF
cKj58Hw9YouzFhOVuE0xjgt9iBdsPvluhXZyigX9+CG88YAyN58yMD3IDuryO5up
bHNbb3N6sf5G5SLkxlLM4jr1JtaPdonAQTSxWvkIrT4anfxCwj/5xct3SGjA8glw
DrVLxaUqq8YKkImVZuxp47IYP6E5kxRXaj9PkTOSNRU97GbvAVXodRFZM/pViqAd
MSvw2myk6q5ih/4abGGvQdknQH1MFOTR7p7ZPARu6GIJwHQjGnOGMPggUkZqeEI0
hUvSeF/buh2oXoizQom4Fu23xCqrWqDQ1FSZ0xc5t0vuizt4cZl3naVEV1NmdUJS
CoNQPrkSAVz2+W219dWwsLRRa7njBhzeQ7Gs9ATNftE6iDzrzETQYTAUA0e4Htto
uoVEbNeWH2JzW1cDtTNOr12/obK/mQ7xrKiyT3J0LJt4tbqbogK1bkMuA6qWmHjk
hxnSSi2axMnmPh0a/imWJxoT62G4T1O1/YgxYNyETcGEP+VZxxgl2Y9QJFTsgl12
r7QMP6dAnxIs1+aaQ7Ik9hg6rrW5U95Xs03wIBugTbCZlZxRi2X9HQsccvl2sk4f
H4GtjJh1M6r/7UkL5m5/
=uuLi
-----END PGP SIGNATURE-----

--HywJcj55HbA57jnN--
