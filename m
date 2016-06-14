Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D44FE00C9D; Tue, 14 Jun 2016 16:54:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6223AE00C70
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:54:26 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id r5so2015290wmr.0
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=3h7zDFAUhfjDFsrP4E6zeEp+Hr02SPbIUXpZAEvdGlA=;
	b=TJ9w2O9kqzVr5Qp7KdEQthjJblSjTymlvLlXeB79zRHbavH2KvVQqei5H5I2YU2Jl4
	kMxk5Pz33SqDohoDVafMbqF54ZghwL/UeAhYQUnuQQhceBG5GXtS7roN70HmV/wsUqrS
	NH9Apkg17gkuWvpZg7Sm4OauPTTLj2wCRTCZo13/4CpEM07R9kt/JpH3S4gKL2kcxxTQ
	X+vZpJFP785pRHy1lDGkMkTx/tWybsMqwXBd0rVRIwQk6vbQ8rl8SiOx9z/UDIVuJh0U
	Ke2FrANkzKwcesEjeC7JDxhAft6S4Ou80DnK72xZMlRjNrgWE5T/hCprpnhefFuGQXdk
	zcow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=3h7zDFAUhfjDFsrP4E6zeEp+Hr02SPbIUXpZAEvdGlA=;
	b=jaYykpHSL9NvdW0OphcIr40tWKX+3AdIU4BEhq7ICya26pq3O2gztLpm6UR9HynnVE
	yeIEYHP5PRCqWEqyIHMvhWdMHezqKmFqnVBakEINdX/VQUjsCBKevljrSyPMtAG/CA4p
	Ua3/X7APjYWzZ6cuLkVTxjmGSSLLv6Pe+SOBQ+Gqg37WzspKYudG+Pfh0SXstV4uIAHG
	0kyEEI2KjPdzbV9ukBfJ5OQhzZI41Tf8cbhOPTrzb2HSazxDm7V5OBLhFpbc122i0o9/
	pqJOtAYtbAXruLvEsqBMuilQCJh3gTgeP1MoesKZqfSso+tFDZsGicTNKWo7oNhY7DNP
	bEPg==
X-Gm-Message-State: ALyK8tI9bRFr+DaDviaf3LcGcZ/hYZyPzBTw0/GDAms7Mjm7bU3096WrNG8ys7WTN16i/Q==
X-Received: by 10.194.37.40 with SMTP id v8mr8255285wjj.161.1465948464262;
	Tue, 14 Jun 2016 16:54:24 -0700 (PDT)
Received: from resin ([85.255.232.185]) by smtp.gmail.com with ESMTPSA id
	kc2sm35357675wjb.5.2016.06.14.16.54.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 16:54:23 -0700 (PDT)
Date: Wed, 15 Jun 2016 00:54:12 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160614235412.GC22479@resin>
References: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1464641195-88380-1-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 0/5] Support for .dtbo files for dtb overlays, required by kernels 4.4.6+
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
X-List-Received-Date: Tue, 14 Jun 2016 23:54:47 -0000
X-Groupsio-MsgNum: 30525
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lCAWRPmW1mITcIfM"
Content-Disposition: inline

--lCAWRPmW1mITcIfM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 31, 2016 at 04:46:30AM +0800, Herve Jourdain wrote:
> v4: rebased
> For kernels 4.4.9+, the behavior for the device tree overlays loading has been modified on RaspberryPi.
> For overlays, it loads .dtbo files, not .dtb anymore.
> Also, it does not check for -overlay extension, so the name of the overlay that is placed in the "overlays" directory must be <overlay_name>.dtbo, instead of <overlay_name>-overlay.dtb.
>
> This patch addresses the issue for kernels 4.4+, while keeping the same behavior for older kernels.
> This patch must be used in conjunction with another patch to meta/recipes-kernel/linux-dtb.inc, which will allow the processing of .dtbo files for overlays, instead of only .dtb like before.
>

Is the poky patch merged? It doesn't seem it was.

--
Andrei Gherzan

--lCAWRPmW1mITcIfM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXYJkkAAoJEHO76Gt+erfPDD0P/1nIGU41EPV3kJ+u7G+ok/3f
hYPafWw10XtSzkMVv4c9oJKrmMHK+LcaKSZnHe0sukoFzDfLSvRIv2mbj7Qdhri2
ccFxv5F5aie+CCwqlELDTph+wnGaR0jHU5p/e6g0teyT1eNDoqX7bCxvwj9dBCyq
1Muno52InSbB4fEBvk9xP9JJ9J/7EflRnHxqEKWibH6h320j2fA1fRARCmpTERFA
4IknUKMWafYERS3qESaYL7NQmPbzrqyE+SnXwTxLMeQE23ye340IMJrylMSZ1B0k
1SVoTJlkpu461L9qeMcdgJPWb7TnmJ65l/EvivMZ6Jg98bzQ7aySWe+U2FhsrI8c
gGnxLnpnxgpndFQtJ7maGaUJgV6MpNe0uFJfIJyex654hlHTfiL1saEzjLu8I+ae
lTyOUPX0D4WxZaCPHtKH477ug72w2w6Xx5+9FqVjC02sahPhS7mzgxZDKFii6ddV
Ljsi3u38M+CGNF6eIIRxTP0UyYSzOja2Ab5JAsLTwx5Yc5QiRPEXy5j5wIC0TgYG
bMa/ZgB3PHYIwT4N7+BBAEG6FA5kxFRIgVrBmsre8uwArDsyWILfLSuqXfOl3/zu
+Tb7HgwNdWtKbXEKApUeUAMI0LA7edQsY5abMvxm83IMl+nAMV37MOJc2pCmzLsV
ua533t0U/Qv8cnmWoHHw
=Jdug
-----END PGP SIGNATURE-----

--lCAWRPmW1mITcIfM--
