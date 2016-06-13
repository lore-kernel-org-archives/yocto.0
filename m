Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CC57E00E9A; Mon, 13 Jun 2016 04:34:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A77AE00E7D
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 04:34:00 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id m124so14103017wme.3
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 04:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Ov42oggjoGBwtVwWMo9RuAMMwSqIGbbpXH8/3dRTTQ4=;
	b=fsAgz0iiYhMX+tcRqyRT5+vVl5H0OHpiH0K9g+n2+YnF+Pz4kk2L7k9TmEQCO1TTo5
	gzwCgf1HDKgLaK3IEkVAJMHsnpFLKIxHv14Fo1sIXTqCTZkY/Lv/wLoxK5UWP7B2TP44
	SGr4oLI0icQ+NVTimlVNKpEVameN2RMTrrXRdN+EOayJx75GzTJzflg90u5bw6Qt3YdO
	GfMcL+F5WQsg3LluF8jp0dNpQ28nFFoAT9tv89Zd2aGBI3Jk2nOhD3pAEs4L+GPCLMqD
	tCbbV9Rto/FhtfOSQ55JVc14/SID+4tjyrYbyDn6gF4htIb/bEEKbnxf15sxIYYl65z7
	4I6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Ov42oggjoGBwtVwWMo9RuAMMwSqIGbbpXH8/3dRTTQ4=;
	b=PYbY/+tRNNREVJEfH/yxVuvyk3lEnCfLRJsjaz9LDxW7axtAUfVh7VZJsEB2kqAw40
	tf6mJXNwAGxt/QHIz8am+xOts11LvJMuNhQuXXSxzIfT5kZOlpIazl9J3IH2+ou3ikzI
	ypRcnY0dvk1uxe/59MLZIpwjtk/Z1SbF6qYtvSS631ApEwohzkUJ40PKXBbtG8NT8Nvs
	DtTGPhW5H7kr9YODKkz+nisABWxkJN+RvN45t7PMCY8mzs7uiqhZ30zmB6++6BqZbRaN
	fM+lhBxuX2ovAuuebFeTXyn4ASXq7ULARJIr1hC0uL5j0MCqk7CsT0TTcQ2m1om5e22A
	cxuw==
X-Gm-Message-State: ALyK8tLXpNiRZgipMhecT/aP20uccP3rR3MWUqsLpTqDi1uYdaBAb6tAoEjRzJcwnAgfZg==
X-Received: by 10.28.37.195 with SMTP id l186mr684839wml.23.1465817639664;
	Mon, 13 Jun 2016 04:33:59 -0700 (PDT)
Received: from resin.lan (179.154.125.91.dyn.plus.net. [91.125.154.179])
	by smtp.gmail.com with ESMTPSA id
	m123sm4646597wmm.1.2016.06.13.04.33.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 Jun 2016 04:33:59 -0700 (PDT)
Date: Mon, 13 Jun 2016 12:33:56 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160613113356.GB425@resin.lan>
References: <20160604153852.23464-1-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20160604153852.23464-1-net147@gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-rpi: ensure config file is closed
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
X-List-Received-Date: Mon, 13 Jun 2016 11:34:21 -0000
X-Groupsio-MsgNum: 30475
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MfFXiAuoTsnnDAfZ"
Content-Disposition: inline

--MfFXiAuoTsnnDAfZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Sun, Jun 05, 2016 at 01:38:52AM +1000, Jonathan Liu wrote:
> Avoids warnings like this with python3:
>
>     WARNING: .../meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_3.18.bb: <string>:16: ResourceWarning: unclosed file <_io.TextIOWrapper name='.../meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig' mode='r' encoding='UTF-8'>
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-kernel/linux/linux-rpi.inc | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
> index 1755685..4b65fc2 100644
> --- a/recipes-kernel/linux/linux-rpi.inc
> +++ b/recipes-kernel/linux/linux-rpi.inc
> @@ -133,4 +133,6 @@ python () {
>      if 'CONFIG_KERNEL_LZO=y\n' in configfile.readlines():
>          depends = d.getVar('DEPENDS', False)
>          d.setVar('DEPENDS', depends + ' lzop-native')
> +
> +    configfile.close()
>  }
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thank you.

--
Andrei Gherzan

--MfFXiAuoTsnnDAfZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXXpojAAoJEHO76Gt+erfPwSIQAIO0GzA+2Hpao1BSBB48kMle
cjNAzrQFVWu4AHu4q4W5MBKlxHQbbBneXiXohR0KLU13Qf8HMrbLSMjPSyTHkuVe
HhQ9q6AUzeGwTVZlOzY8wtlpRn/L7cc1nlz1CLs9srdTYN/WUfF6aSBo6JmaPrBG
KG/ZTe4G+hgL5SNfLVb2G+DRihX43Z2DjAgpHEmfq3shAfoZ1MqOp5P1FNmcXgTs
sfB7KRkpXkQVTOBr80vmlBmDK0lRfjBBMpZVZeIM2dJvlWXghUdWCbwp/xz5wOSx
lEa7VmNgPyGpm9ibTczWLRY1MLBFoeHysnZRM67HSxsXpmdEsBPUVLsXwRmTMr5r
hKUDNinzmOYjJrmyoM0L6L7r6bFmQlZ7jYyfQL9dvFB122pXW24moV/nsvqp7a77
Co22x0fsSXs3jjQ3XH2Wc00C73VNNfgJGl+rrInVaDCJaWnt69bm6YMI3vtPMMjP
87neJUYqwZfjkfepqidYh0c1xib5R8jYzWqQDqG/fJfqNBAZSTxRd6BjUVeTjJS4
9qRTRt2Uk614d4vkT6oYwEztZ6P8rOXTQYht4MsXatPGg78qJZaTP9vuTFLagVoj
4dSc3AP9AZyhsto6/lkx5UN65fI5IWjBiJfYHo2/xDPewEzrOn511+5FZDvqN8Pz
wv0ZIm1PEGoVU1umAj1Y
=fEo0
-----END PGP SIGNATURE-----

--MfFXiAuoTsnnDAfZ--
