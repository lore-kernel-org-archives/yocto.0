Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD315E00791; Mon, 24 Oct 2016 04:41:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34356E00510
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 04:41:28 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id c78so99437545wme.0
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 04:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=OpWDO6AAhjQcHhsxUYgaLtCR0E8IPzLwJ23TYyX5WtA=;
	b=KV1X49KPEgyihuowsqPoSXAlmqy5ybHqwxDnjYD4Vd4zUMw5HC9Al1AetYk4b8tQSH
	HvZiL3d6DZ0AvdoRYKCxUDjER3l3vxqOii90jQX82aVsH04CLqy7aipPLrL7HTNLn0q2
	3GZnB0gAly/Y2NJqD4d816oQX19RR5qoLwdmjWGGrF5N70hUg8PtRW2qr+HMHPKnMKp5
	WocKXyW5vry7RaSFMTizXvocWYwhN6+QGWRbxrj8eNyWHFZKOuO4C0oADodzQuA8Cn/d
	Nh2AEIqWPclQ1rkhYxb68crHdxYVWE5qgkup6u9wiNnU5Ju2jHJrUYrKh1iFkt7ceEwt
	0zzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=OpWDO6AAhjQcHhsxUYgaLtCR0E8IPzLwJ23TYyX5WtA=;
	b=hAz4pnysWeGMK5IZBpvDYD/4zgqmrafRFgPs24DFclFhXsOr2Ve/bm0H1oWEgZl9Ej
	nVvmZMomdrpzgmCDQbed6uLUqMHniojpOhTUVM2I/cUPrwi5zu9tLBQJS2HaQ5uH+61q
	ncYdWTd6IpGwmjN8l+bQUF6Bfxi9oKlxYvZmR51goiWEobNQZtz25M8nUOTW2L86XxqJ
	UpFSBtJjox9AU13bzeWr7O3mlictYh6YFa0+iFIs1Ca5tnwobhadj0oO5zpiDvEwi8yN
	0sQZCDFfzXiBrE0n3sa5y42L79gOJpimIZDXZz4AGmzvDzIVfiLGdZWWdb9qmJxUzBmJ
	uFJw==
X-Gm-Message-State: AA6/9RnWdf6sLzddQ8Go69YA34z4B9k+iPRBeS5JvaZBVsSw5yhHKvK/jTOvL9j1Fej43A==
X-Received: by 10.28.167.214 with SMTP id q205mr14400734wme.21.1477309287852; 
	Mon, 24 Oct 2016 04:41:27 -0700 (PDT)
Received: from carbonA (cpc96912-walt25-2-0-cust904.13-2.cable.virginm.net.
	[82.24.143.137])
	by smtp.gmail.com with ESMTPSA id y3sm18862656wjg.3.2016.10.24.04.41.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Oct 2016 04:41:26 -0700 (PDT)
Date: Mon, 24 Oct 2016 12:41:18 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Leon Anavi <leon.anavi@konsulko.com>
Message-ID: <20161024114103.GA20840@carbonA>
References: <faf2e645-8a30-5ad3-df46-31ebe0f365a8@konsulko.com>
MIME-Version: 1.0
In-Reply-To: <faf2e645-8a30-5ad3-df46-31ebe0f365a8@konsulko.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Andrei Gherzan <andrei@resin.io>
Subject: Re: [meta-raspberrypi] Branch Krogoth
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
X-List-Received-Date: Mon, 24 Oct 2016 11:41:31 -0000
X-Groupsio-MsgNum: 32598
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hOcCNbCCxyk/YU74"
Content-Disposition: inline

--hOcCNbCCxyk/YU74
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 24, 2016 at 11:57:50AM +0300, Leon Anavi wrote:
> Hi Andrei,
>
> It was pleasure meeting you during Embedded Linux Conference Europe. Thank
> you for creating branch krogoth at meta-raspberrypi. Last week I have
> updated and tested Automotive Grade Linux (AGL) and now its ports for
> Raspberry Pi 2 and 3 use this branch.
>
> Thanks, Leon
>
> --
> Leon Anavi
> Software Engineer
> konsulko.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

That sounds great. Thanks for the update.

--
Andrei Gherzan

--hOcCNbCCxyk/YU74
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYDfNeAAoJEHO76Gt+erfPBtcQAKdUaj1Z5nFVluF1/8cmBSc4
Mbk1AjukjUuZOpKs1qzPmmZKRu0eUqzC+fLHEodxUVMAHuWU6HlzYLUk2jqbe+Iz
smcNlXyzlIqoq/+0c7Z4MDGHBFu3qmKf40xVuxM8sykCqCk9ApcbPJn8RAq6QNEE
ZmIuOsWD+OoBK6Tc9BJsSlgk8Yc+WXe26Vi6fVK9JMya9ElPF0rBN3dnF0IZ1XnB
tM+qvyUmp3kdsL+agUiNeAQpPTC508b1BDuAwmyq5KC4CM09FBDmQpnZLOJHxIIc
r4OctVQgIaL3a9mcpW07C9vsM20/GxHw+y5c9YWVVLOADRIFT4eRZUABZ2n8Zos7
lFTuXTyFuVFpXmbmxAjHc5734wtSYbuz2K/TBQ9k11jMGo1w0uiyFJ6BK6EhVjTf
UsxIk5bSs3LmIYs17BH/ELOEg/RO+qneQYGQ6Dspkl/ibw/KecAgRKari9tnRUmh
EB0wmJSiNpHe8r/13kOq0IF7mxhSgAd5z/9n8pn0vjt/DhQh0QDZEFqagP73ChQ4
zhQ3JDNzfP+ZQmnSDTPyB+DBDfG9QvT5fEUnsvPpn8p1ClXRbF2pYdxUiiP2Lgfj
NakuAIKWjCZi1kTa4rmai3NlauBbnvcmEZG4w2nbxiTTVWPN/+d266eEXJQSgqeO
NSPMrKoIZWnQPAaeD4Zm
=GOvf
-----END PGP SIGNATURE-----

--hOcCNbCCxyk/YU74--
