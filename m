Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9B47E00C97; Tue, 14 Jun 2016 16:52:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEDE4E00C82
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:52:21 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id k184so1989169wme.2
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 16:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=0x3pGGGS6ckQvM6Makn5aMUum85blOx5aozPfoqKcVc=;
	b=UfxR1Yz51tthy5I76UHIRoSxjbnGH8fWiyqyGUsiex5ljmNa5aFScrLdimVIcysmOL
	D5HfRxvMsPLLngj3+V/5URNNMLeZF/XRVzZqmRV66adc+zITnfUPvQPGqUQUsp/losfD
	txQ4kEiQ8EEia2Jv6FD9NmRUFnjV5On5mewCKYxa2tX4Tr7q2WEfNPqxRoJp6A3ja3qn
	Cal32fKFVEN7w/tCf6K+6HUEQpIjTYSb4GLWesgOEzpob1EkvSwVJrOFOfVbo09Cb+xP
	+BailQ+9mCf9Jw7neFuxXLaSUMvK128tNODkJ4NzyIwphPwwVJQQM3s63lbvlFeXgOlr
	anyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=0x3pGGGS6ckQvM6Makn5aMUum85blOx5aozPfoqKcVc=;
	b=YKMrOnAUWn//GzcsaabYPl6ntD7fZb42yucLPauAiSBXFCx5VpiZ7h9H5yfD/KFbT0
	ut399F7ItXb8UcOII5ak3VJ5vG5t0r5VnaV4qrf2UvdHXEenZOv+u0sH78Lz7uRWx7oP
	TtRS/f8WIOUX68f/v7svur4js+jbmjVF4upIZgq5YtLg9z8JlMYsUr8YFFcy1iupCojG
	2iV9p4eFU0ylbAwD0CeKPOdxDTFqYUkhLIQq7HxvRWpwtPsg5iR4BI++jj3kbYBtsqVw
	8XvQJwu5KNLstWZ+C/wyb187PiBcXtaH70irfFhCxZzHVcfbAB1TB9dPBlAxCrpRY0vY
	+QiA==
X-Gm-Message-State: ALyK8tKg7pP//xQSpLiPDWOOGXGILLAHnNA811cwtsydsx85jfZNtcfUIBh7U7udnUr99w==
X-Received: by 10.194.239.163 with SMTP id vt3mr8257278wjc.78.1465948340613;
	Tue, 14 Jun 2016 16:52:20 -0700 (PDT)
Received: from resin ([85.255.232.185])
	by smtp.gmail.com with ESMTPSA id q6sm7630034wjt.46.2016.06.14.16.52.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 16:52:19 -0700 (PDT)
Date: Wed, 15 Jun 2016 00:52:16 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160614235216.GB22479@resin>
References: <1464695939-115117-1-git-send-email-herve.jourdain@neuf.fr>
	<1464695939-115117-2-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1464695939-115117-2-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi.inc: KERNEL_OUTPUT has been removed in kernel.bbclass
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
X-List-Received-Date: Tue, 14 Jun 2016 23:52:22 -0000
X-Groupsio-MsgNum: 30524
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tjCHc7DPkfUGtrlw"
Content-Disposition: inline

--tjCHc7DPkfUGtrlw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, May 31, 2016 at 07:58:59PM +0800, Herve Jourdain wrote:
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 4799c74..6133b02 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -66,7 +66,9 @@ do_rpiboot_mkimage() {
>      if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
>          if test -n "${KERNEL_DEVICETREE}"; then
>              # Add RPi bootloader trailer to kernel image to enable DeviceTree support
> -            ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
> +            for type in ${KERNEL_IMAGETYPES} ; do
> +                ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type ${KERNEL_OUTPUT_DIR}/$type
> +            done
>          fi
>      fi
>  }
> @@ -76,7 +78,9 @@ do_bundle_initramfs_append() {
>          if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
>              if test -n "${KERNEL_DEVICETREE}"; then
>                  # Add RPi bootloader trailer to kernel image to enable DeviceTree support
> -                ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
> +                for type in ${KERNEL_IMAGETYPES} ; do
> +                    ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type.initramfs ${KERNEL_OUTPUT_DIR}/$type.initramfs
> +                done
>              fi
>          fi
>      fi
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--tjCHc7DPkfUGtrlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXYJiwAAoJEHO76Gt+erfPJfEP+wZDx2S76HLy2Jzlkk9Bl8DN
/5oDe2LYwhzw2xadTQpkrvDzosqGrJKC7cmL7AiZcNBsbqC51QVUBD3T5Jhsv1dW
5j0pmmRftGziQKz7i4upzYC7TnPo0qRza3UXZW5FliffAlfAKR7pIwGGIAxr5Q7s
v0rJvsbo/ld7FLpL+IR02RdSCJujVZzOcUmd2tK5jbXI4JwpdYZwXjvCEQ1ft2bO
mVupkNgvXfBcT9fgoCiGuHKCGaDCfXILIo+8q1Khp/+Xzhk3KKjwE1rPMzCWFEGJ
F2JUghmRMMH6PlElcbA9IdtWYNqTLAfb6IqT2musHKsCCA6jNYW0fJ8TyDyWQXRh
I5qVpCofIMyuhitSVkhP421K+RKTuf/BboTwqsFycrFs8UafX481gFO/RXuvfInc
rc0V+i/60GJRdswED5pWiJcYkOb9TV1UjXifeaF6wX81Lb7PbGIeBP2DuvC3073m
Ou8keuZuD30aqTsJmFcXyT/1o1FB32QRlBY1L50fElfAh3ge3T0QAmV6ZkIUrEzr
IyfkkUcJBbFStM688zaUceY1cfG3hQYuMPCgJkoIHHVYoG0t4UwPeoUVYC9JxsgA
roh/Hn6RSJOG0nY77EdpcvaHvkk6hl/6dIIRX/hB5f2YtaWkVIUyLtcLTv3ORCTj
1Gj9mj8HNM7o/47Th6DE
=GOdz
-----END PGP SIGNATURE-----

--tjCHc7DPkfUGtrlw--
