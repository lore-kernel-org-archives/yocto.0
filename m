Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9E3BE0093B; Tue,  6 Dec 2016 10:54:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D2D5E0086E
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 10:54:07 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id u144so23219679wmu.0
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 10:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=xH8PcBs520RpQsxCf1OAHFpg1/4y7KVxQiROE3tMj8M=;
	b=Ts0LqfWLeUl520qjHZKqt7YSPrEV4B6PUaEuME87oYFa/ZcAV43dAbaifyq1N2zhw8
	xw/ch7lP08rMKKMimBEYpP22/azNj4k/l3UkAQFqnZaPnXofF2/7twqoSR9/AljQ0DZj
	G/JUvOFe3lK76WN/0M9PSeC+MixLMLXWVNQZXa+hRe6oQ9VVC6WuW6K6vLTqvZl4iyMR
	EEywqsoj+x6uHsVmZ+4UpmUthArt+x6qN+JAcEJ7jZd/OzSEJo+iB477szXy/5B+Sw0i
	+oYyGIN+dtV8CBBf618u8NJnI/P5ki/6DANYufHOJ+yuIYBXu0hQpwF9CaIdWoI5icaA
	i7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=xH8PcBs520RpQsxCf1OAHFpg1/4y7KVxQiROE3tMj8M=;
	b=by++FxhfL/4932NknW0nRtbbWsww8wKpmfpz8Fvr257agEwC37wPnKUgD0Vyl6s05i
	8riBGsqEh/XISMM+zWbDHK+XTH7RijInBYk8h2YDrK5NZG81ICFPy+deElkmIqo2RtuL
	9BI2rO5gdvpsKP8cxbPtWEs5YQoMPXNbsM8D78ROlmPoANVOOWWnq+lD4rCM6qAqYsJE
	ayckq6RY7JMSWvPdhKHpEfI2QarONZWNqEA88eAQ+hAoBKCYm8TXR795pL0NEoGdwsi/
	7dKwYvpLjzV+maMkJOGk6lOaU3e2Rn6J4z1DPbljwPcQbsWmEYVRHhZBPdx6+mZ/Y9Xz
	TDug==
X-Gm-Message-State: AKaTC00SGcpbHM17oaSSx7WIQGxAMYLk22z0k2lwWGUnJp0ZoiPBikxtg3fsgzcZai/JFg==
X-Received: by 10.28.51.211 with SMTP id z202mr9342wmz.125.1481050446023;
	Tue, 06 Dec 2016 10:54:06 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	f76sm5425009wmd.15.2016.12.06.10.54.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 10:54:05 -0800 (PST)
Date: Tue, 6 Dec 2016 18:54:03 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Frank Meerkoetter <meerkoetter@googlemail.com>
Message-ID: <20161206185403.GK1636@carbonA>
References: <1480361865-9547-1-git-send-email-frank@meerkoetter.org>
MIME-Version: 1.0
In-Reply-To: <1480361865-9547-1-git-send-email-frank@meerkoetter.org>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org, Frank Meerkoetter <frank@meerkoetter.org>
Subject: Re: [meta-raspberrypi][PATCH] Do not rely on DISTRO_TYPE to enable/disable kernel debug
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
X-List-Received-Date: Tue, 06 Dec 2016 18:54:10 -0000
X-Groupsio-MsgNum: 33330
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vk/v8fjDPiDepTtA"
Content-Disposition: inline

--vk/v8fjDPiDepTtA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 28, 2016 at 08:37:45PM +0100, Frank Meerkoetter wrote:
> DISTRO_TYPE doesn't seem to be set anywhere in OE/poky. This causes
> CMDLINE_DEBUG to default to "debug" which is very noisy. This is
> especially true when building a systemd based system, as systemd
> also looks at the kernel commandline to set the debug level.
> Such a system is nearly unuseable from the serial console due
> to the amount of data logged by systemd.
> ---
>  recipes-kernel/linux/linux-rpi.inc | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
> index 95a9530..53383b0 100644
> --- a/recipes-kernel/linux/linux-rpi.inc
> +++ b/recipes-kernel/linux/linux-rpi.inc
> @@ -13,9 +13,9 @@ ARM_KEEP_OABI ?= "1"
>  # Quirk for udev greater or equal 141
>  UDEV_GE_141 ?= "1"
>
> -# Set the verbosity of kernel messages during runtime
> -# You can define CMDLINE_DEBUG in your local.conf or distro.conf to override this behaviour
> -CMDLINE_DEBUG ?= '${@base_conditional("DISTRO_TYPE", "release", "quiet", "debug", d)}'
> +# You can define CMDLINE_DEBUG as "debug" in your local.conf or distro.conf
> +# to enable kernel debugging.
> +CMDLINE_DEBUG ?= ""
>  CMDLINE_append = " ${CMDLINE_DEBUG}"
>
>  KERNEL_INITRAMFS ?= '${@base_conditional("INITRAMFS_IMAGE_BUNDLE", "1", "1", "", d)}'
> --

I like this. Let's merge it. Master it is.

--
Andrei Gherzan

--vk/v8fjDPiDepTtA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRwlCAAoJEHO76Gt+erfP/GEQAL0G2xY6TLFajaKCPp18CQWG
XHcxa5GSHd3FrRrj37aUtXR6LXOa7fHPfCw6UzS/xgR4RheZllc5hZ+r6oP4xWOY
lYfhLn2sVMmC9xL8F6R08hwLXiKxMPdueD+Fr//JPXdHJISTBfy0HZIAPx9S0A7c
x/u3YLa7MGQL4SbBIQUFdIVhnhNsA4sutLoWbI30z8OHEX0k6DXFnzA+c1V7j9TI
Z7CTt8AB5QAbpSKHDrg6lcJm4ceZS8pch+ve2KeQNdATMDl72LEyK47U5JzFJfOj
9bZHpnqYvqrQIbQlgOUctQpy9FkE5RxsOaHAReTSYzmocz2D9ZlyIgnVWcwuMycL
kjsy5wUw+Xl4ggYV3yOqLosi0QcqHtkPsUjEiVY46HsYBuv+BqlxCe5VX1/oDe3e
PDbg1Qc8Rfn/V1zu8p+jy4EA3s9RSNoTQtW4XKIaQXWQ4lY73bF1ax8nBulwBY1N
MuGBFSnQtrbqTGjy5loK+ZqedmlB27W0/G9hIS1my72IgrBSYrp/vbgQrwBhENXp
dTvTys1r9yrtunqLYbPbeqtXo0BFrkwWzIFToTHKGPL7Wvh5HimS1w1piF0gooE0
iJFIqIl2BEEyqbgj+KvCxUiPwnwvcZIrPMILylNQ7SaQM1Xq7C6gBhfolh8P8XOB
DlP1eJL1Ue/dI+5k8AjR
=O92n
-----END PGP SIGNATURE-----

--vk/v8fjDPiDepTtA--
