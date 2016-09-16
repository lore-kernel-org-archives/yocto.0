Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 035DCE00CA1; Fri, 16 Sep 2016 10:29:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73481E00C9A
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 10:29:14 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id b184so4730097wma.3
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 10:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=4N5/81o4E0kmcJ55MU34rDwx6U8iJ9mh0z+naUPPmas=;
	b=NailBuE5881hzVNrLyU5A7UTrD0TMhC7i7Xl8tgL41/K/yyBLUFAJRKYVWF5v3lpMq
	e3sK7KQq6BaojtIliqwje4QG5upkySjRReZ57jwOZkMheswigVtXzk4HyW/BfJbOF5bK
	z+OXy9Ir8BLWvzGMRcM8Xjq/UNt1OZj8HGIZItSMuSQEeZhwJaOToNKqmTM+1+Gb17ZJ
	egI5CPESZ5XWRSXTPxjZJYuX6KdJAY9gHN/OYNfR6kATeDXR7B0NAoiZysNfx4oxsFjl
	lvajW3W9SUDFkqi4lHIsK8DUoFQKUKwkiDT76cVjwdbAXlNf9O86z6ikokL0d8KjzsAt
	FfMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=4N5/81o4E0kmcJ55MU34rDwx6U8iJ9mh0z+naUPPmas=;
	b=WllbKZqv4na1v9p4OA4UcNA3qQ20cjIW+4bak6ucA8FPRzXrvBnxarlLYv7nYVl0zs
	+8ltx5Eth9hMU7PZsjIA34lpFzKAB90OOZ+cTfjEGkNgtS/tabR3B6AM3WPJa9+IrM0J
	L+BsG0AdTW5YTjDF+bLP9WTlsau2AUJm3JYCPmq8nBT9yLUNcfmFXgr4tPref425XPiy
	/baw/VMRYpYGCQB/i64GiS8sYPtQQQbH4e+eYcnzf9q3yqDVzVK9YCBjCrYFJ7LoXvJe
	pV9J+wSdCL5nBe/vJxsDS3+oE10wkmvUaBlfdJnk3wjoNhs7R92ytfMwtppfh4nHo0gy
	nmzw==
X-Gm-Message-State: AE9vXwOl3gsxiXPug6Fuf/4woCMcWI/990hYJfngL95MkG3z/UXhHRwcOQVyN5xXyPylcw==
X-Received: by 10.194.135.147 with SMTP id ps19mr13699740wjb.6.1474046954058; 
	Fri, 16 Sep 2016 10:29:14 -0700 (PDT)
Received: from resin (host86-158-8-21.range86-158.btcentralplus.com.
	[86.158.8.21]) by smtp.gmail.com with ESMTPSA id
	z17sm8308105wmz.23.2016.09.16.10.29.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Sep 2016 10:29:13 -0700 (PDT)
Date: Fri, 16 Sep 2016 18:28:59 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160916172859.GA27043@resin>
References: <20160913020611.9265-1-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20160913020611.9265-1-net147@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: remove redundant IMAGEDATESTAMP
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
X-List-Received-Date: Fri, 16 Sep 2016 17:29:18 -0000
X-Groupsio-MsgNum: 31979
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 13, 2016 at 12:06:11PM +1000, Jonathan Liu wrote:
> The IMAGE_NAME variable already contains the date and time so it is
> redundant to also include the date again with IMAGEDATESTAMP
> when writing to image-version-info in the boot partition.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index 57cefea..388398b 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -71,10 +71,6 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>  # Additional files and/or directories to be copied into the vfat partition from the IMAGE_ROOTFS.
>  FATPAYLOAD ?= ""
>
> -IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
> -IMAGE_CMD_rpi-sdimg[vardepsexclude] += "IMAGEDATESTAMP"
> -IMAGE_CMD_rpi-sdimg[vardepsexclude] += "DATETIME"
> -
>  IMAGE_CMD_rpi-sdimg () {
>
>  	# Align partitions
> @@ -143,8 +139,8 @@ IMAGE_CMD_rpi-sdimg () {
>  	fi
>
>  	# Add stamp file
> -	echo "${IMAGE_NAME}-${IMAGEDATESTAMP}" > ${WORKDIR}/image-version-info
> -	mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}//image-version-info ::
> +	echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
> +	mcopy -i ${WORKDIR}/boot.img -v ${WORKDIR}/image-version-info ::
>

I like this. Merged to master.

--
Andrei Gherzan

--fdj2RfSjLxBAspz7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX3CvbAAoJEHO76Gt+erfPw2YP/jYGteogHQDQcbk+kbJyGaHv
cH3Oyi+bosNda2qGQQRI9V0jUhAZJr5uvL07DrfZmzhpXugqZafXeakvufg4SL2w
XC26X8fX49qNFKZws4sAkgEmucyQWcG/251CuYNFK8AzpMLNlB9DI/AnV6Q4RzBr
V1PaO0cxCymTesGBrsMhTTiD0zcDiIyZ4zszFqXx+iN7tbi8eFUxZvA0lbcRsSe/
3l0ntkohT2A826cnL/8BKLkAFZ2FuwzFDujq/zrx6elL2PywoMpxvr40vKErwy0I
/tkvv0+P2YR30RJVL16tLFc2KyHfzJDX4AuW7DfZs8HpAtS1UkrRJh1f1PnTg+k1
B4WBkhsNbFubuCCtie0t8sAKT3F/WOSZDk1XbIlhbstQt5MFDYgjH9pE6swDMWnr
BGcsyMov9jlCURVhH4odM8qROt3v/825Jy/XQNXR2jtbjqQehk91aLiZRpBZnLEM
DZVGi+gLxVsEeitPe8cejoIQ1I7ESfU1Y+JnVGCXB33gMVO6csXqJS+CqirGvzLM
tfeZjPfC7aPOyj8ZZkStQonB9nZ4/ICdlzYItunS/gNPDvqX9NJYOsiS0CJyXRB6
O6wHBDKcR+mjmkYTIb+BqgeTA1zNnvQim+fQFED7BPMZSOx89qXg7tOA1w9njgcZ
AIQZOMPLIUN55bd4JyCL
=h7g5
-----END PGP SIGNATURE-----

--fdj2RfSjLxBAspz7--
