Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EDFCE00C4D; Tue, 12 Apr 2016 19:20:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC4D7E00B9E
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:20:39 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id v188so149160816wme.1
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=4Adpe/IoNVG12o0YomIIF7gf71QrocOOhRgxaMMoKec=;
	b=AeC7ydQQEpJlvyoww5Y+wrCtw8gBd2I0/KJrMeaCqqrCdZnJ8VNiCM0aWDrqNnEaQH
	M2/ewjyvax3Cu1CK6OhQhTnFPCmMjsquxqkiDhNkR9FpOVfGhKXgH21/iZ4UHYLObmS9
	DVwQ+LBTJWt14z+JWSW5OLV5Oyvnb5w8rQ9wEBP8pI7ZjTJRuP6KBD9K3ifizYHKUHIK
	GQbM/d/NZsDbylZfLkPTWqR2ySPwP1XNoHxhGlLDb5O7ADPzFhjSTJs+fk5vxpf8erIO
	7fXTqxGqG1mrKZizUx7lr//FE4nmiGVFVlvUzJ0Ya1wJfObcBJj/n/Hy30JhtDTrR1PV
	DLdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=4Adpe/IoNVG12o0YomIIF7gf71QrocOOhRgxaMMoKec=;
	b=bFaZGTT7jl1A+fxSHqyI8zbLOeLGcUBRnEW4qPztgNSKL0YQayhx7nwiB7mkMMdWpc
	VwLUSQs9LRKtc+ekdxziBHmDRg1TRsth4tJzNwqopsAvExBu6kzeIjmQNCHEYo8hbjAG
	+U2+jTmwz1Nn2nEtzblkGDi7Tn496KfeR/NJQqET2hwFhjcp7i8sqYd+M6sxZMqDbulF
	wn92FGo6l+pvE9betohtWfL8+KVOW5MCHdMvPYI/aDZiqvyD99Rlo0rEhkHhm3EpARgZ
	mqhMP6oD1XM393kJ/lXCprjaa7CR5irT42l6WcJaDTkhMjPsv9vg9rUAFKeca2XPU2oV
	umDA==
X-Gm-Message-State: AOPr4FU0lEDIYRcBPJ127eTl3X+APJq1DfPxoMBwwhi1X34gZ/73B7pBe7V5q5VycYtp1w==
X-Received: by 10.194.216.227 with SMTP id ot3mr7351341wjc.69.1460514038758;
	Tue, 12 Apr 2016 19:20:38 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192])
	by smtp.gmail.com with ESMTPSA id r2sm22533350wjm.8.2016.04.12.19.20.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 19:20:38 -0700 (PDT)
Date: Wed, 13 Apr 2016 04:20:36 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20160413022036.GC22139@resin>
References: <1460411685-12573-1-git-send-email-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1460411685-12573-1-git-send-email-twoerner@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 1/2] raspberrypi3: serial console
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
X-List-Received-Date: Wed, 13 Apr 2016 02:20:43 -0000
X-Groupsio-MsgNum: 29393
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZwgA9U+XZDXt4+m+"
Content-Disposition: inline

--ZwgA9U+XZDXt4+m+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 11, 2016 at 05:54:44PM -0400, Trevor Woerner wrote:
> The serial console on the Raspberry Pi 3 is located at /dev/ttyS0 and not
> /dev/ttyAMA0.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/raspberrypi3.conf | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
> index 1b73f2f..cb6056e 100644
> --- a/conf/machine/raspberrypi3.conf
> +++ b/conf/machine/raspberrypi3.conf
> @@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
>  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
>
>  include conf/machine/raspberrypi2.conf
> +
> +SERIAL_CONSOLE = "115200 ttyS0"

As this seems not to be unified anymore, would it make sense to remove
it from rpi-base.inc and define it in every machine conf?

--
Andrei Gherzan

--ZwgA9U+XZDXt4+m+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDazzAAoJEHO76Gt+erfPKkwP/iDYUYM3hVBhGn8KcvWb20/1
4kwjfSS3uIb/3cB1+0ClLyi6i/DoqEQ80Immv4NIQfkw//Ga0Tmlu/zK4fIE4yM0
CIIi4jIpyeKLHMX1HIjmko9HGiOnGGjwuup+xIAnuzg0yb+P1V0AVnNxAmCwVFk8
YAmUHgCVpd4bMRhzCUOH9A3Ehsc+E4njjUqq9U4VQqgmg42WmVeaaUswIOz0AE0Q
jXLb1FsL8fuudP7LOgSOaL0HGJg1UWNXA7NBLR218WYw5kLP49W7NRmJg2h4i6oN
LvYHOBXP8tL4ULMhiZ5uY6jOmUiE/L55/9HBIMRSWJjAmxKegqSDLV6tm7INaSIv
YpBg6UEbFIHYN/csPhxSbYkHOi1aIOigHkGptWR9MyTbrsohbFmuvy2giYInKlZ/
i4rH01dXntwfuJPOeDYzjiyD+SIAI3Kww/gENojJ/zeGhlS+LRBlWpLNwBYvHhKT
VfG7F2yPXCS3uAhgOfIo4EK//7erT9ix2b4Q/JamyA/7ZGNQrP0mI6bc1s80emsj
5lGMMgHPg9EDD2M7nPi5MQPi0BW0ocotoQuH5FP5ewZSHbn9sMLSNn0CKacy7OVm
ayXqEYHHx1KBjCny3FhF7zafgrIup97l8AMSVZLY6jQsVLqaBKjr9ik/89TkGJ/m
leatKIqdAnXoGebU8+Rp
=658C
-----END PGP SIGNATURE-----

--ZwgA9U+XZDXt4+m+--
