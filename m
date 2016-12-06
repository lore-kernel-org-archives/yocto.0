Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3834EE0093B; Tue,  6 Dec 2016 10:57:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8075E0086E
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 10:57:20 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id a20so23397245wme.2
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 10:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=J8VqT8NE9gM8+vF4PPZWcpQU50GjEenX04Y1ezDQFX0=;
	b=v0owvpLbb45p354ekOsdlDtv+tMydBS8yU/9hOBL5akZo35uVgEf/ITYvkDwvmK0t3
	9cRPuNjANy+mtulR2rlYgFpaJmG9i9ac4JF0Svwab0EQF24w2gHnuS7eVGrXuKVAXLXl
	sm5tGMtCD5r1pDHfwxe86tN/5YUaVF0n7rHhbqdVByn86214Mncs7d3bupi7YPKV8+SX
	WeHPPKbwHPiChX11qwqAICRV7H3jBarN7wIcxt3TruinSl74lN/lOXBwZFfAWHxfsJ49
	nun0KM2IRiBJr2qG0AwcfpC6kDq0vy1vVFiDbTJwx4QF8ynuusBklO7jup4mSbYT76qY
	uIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=J8VqT8NE9gM8+vF4PPZWcpQU50GjEenX04Y1ezDQFX0=;
	b=Hl42EADJc5FL1sRKw+hfLtk/HeThhc5xhyPD9EZDlHs90Z1mfwtT5X/uWOoj9M9MEg
	c2DKhc+Xxye3FuuMN9O2KCGBPAj8oKGVScE9o6Wvw6uZZuwTDvlv0LtOLSBUMIs/62Db
	KOPDByQW+kYwjrlDPbVg7IMsXM8Kqpo7YhRLXDN6pWRy2vTlnogYOgrAhD5HjMtOPXSM
	FE+GWi9A35R2gsfms//ACCGp95Ua/vQwo2P5czhfxxgp7frd/0SNO/T/qM1nUNKnf8ss
	AAl5if0gMyaZH+H6yiFKQvFGMXHIScc7qsFU/EvYhzSBHOAWl0Ck4KtrQHCnY6H4PvN7
	GDhA==
X-Gm-Message-State: AKaTC03U0mIJNldpYOXd3mRVFzOYaVD2zuA4janBGGsodQYtvEie1sGpSfwnSFfJmp9b2g==
X-Received: by 10.28.57.193 with SMTP id g184mr51764wma.122.1481050639418;
	Tue, 06 Dec 2016 10:57:19 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	cl6sm27211700wjc.10.2016.12.06.10.57.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 10:57:18 -0800 (PST)
Date: Tue, 6 Dec 2016 18:57:17 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Frank Meerkoetter <meerkoetter@googlemail.com>
Message-ID: <20161206185717.GL1636@carbonA>
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
X-List-Received-Date: Tue, 06 Dec 2016 18:57:21 -0000
X-Groupsio-MsgNum: 33331
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7l042bGvurpep9Wg"
Content-Disposition: inline

--7l042bGvurpep9Wg
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

I had to change the git log a little. Please make sure you submit other
patches using the format described here:
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

Thanks for you contribution.

--
Andrei Gherzan

--7l042bGvurpep9Wg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRwoNAAoJEHO76Gt+erfP5BAP/1OsCpCkGlI3B+Cxp9d16aWn
gMBfLEuqnKOKt9KulFxEKqFzOqAZuA8YOUe+6VRu/LG0fMC/7dUQCXS86O5s8r5a
nBUn/kB3LV+JBTZlhSOvxVajYHzjB826L9ah5dsudf88FmrmtaWkJUHHcZ6yaF8d
8D4m/E7AdRrOBbG9Fg8PbViSlkEB+OdjEkv2Lsf6rF4iFjUuhtzoiJS/LHeVsVte
qgb6VCjqDmviKfZquYPj7pWmoJ+MjiahO9qNhbFV7qXIQZ6yuB7kCpnxqBv+u6L5
Ll0au+02ij8ot5htwylC7avx10er0V2irB1HUBaIXtIq7IZ+3izF8axIlhIYTM/Z
+kYnCbUkHuDiWEDVEqzKxS7/O5YtrN0UBLiUzIM+oNrirqGQ8hjhnARKFoQtM9QI
v9Hs4qDKeZiUmWao4ySFQ2BuVEcqitPcHx+RuiV7Fhssx148xgYbvm/bprSGceUX
N7g6C4qXZ0l/S9UPeAE+iU72JvwHssptLJ5Td0oXj3Dbs0eSOVUUIYGCAKnYjwaP
kzJRjP+9RGoGhe54QfU3f0zq9/pofQpC+oypnDoqBFJIVAQzSK+wp/LmIiEgq+Hl
lhPoa7oeO4O2MJA2cXx+DZS/cgskG7k+BByVrnpG7OcpMJNFfTO7Zdg1x9jYC0Ui
3t/+vWNBR/Vx89CyN+4i
=EniM
-----END PGP SIGNATURE-----

--7l042bGvurpep9Wg--
