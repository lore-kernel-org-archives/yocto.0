Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A366E00DC3; Tue, 12 Apr 2016 20:08:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDFD5E00CD8
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:08:42 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id v188so150270770wme.1
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Re+y+6HbI+i+xkAfHyjBTtPnLVPAv3uyRIdpMo3N8LA=;
	b=g+M73RHi+npUPLzFZQRTfjcivN4J0DO+SeJi3+af/0BI2hu8FCnruFgVB2G8YKf003
	oyqKJMXG5t35CzftV0DFqv2an2uJkXz+WAHrR4Uw2QKvd8aNI3GfvOLXW6HWgj2qBdDq
	HO5thr1LrVio0rNrh0Zx1sO4uutBKwD9WoXFqqDzZlxNNiDIKcnR8H7o+F7SePxScCIz
	MUpro307XVBOpbMmCcQ7DKDnb8DGl2a9VA921OIue5WH9Dwuzr01pdxiBF5tWhCa7dNl
	QyBI1qZhiZn3r4IomKXlnfKcdPcK+W6NLZuejD/Brv7+uHvwGfcqgq4Fds4SZaC29uOq
	/V8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Re+y+6HbI+i+xkAfHyjBTtPnLVPAv3uyRIdpMo3N8LA=;
	b=Xi5X38p/SKPMz7bDi253ptpTAeq6MuI9Q3roehxAfpP1QfsLW2HZxy4J0ZQpsoyLs+
	//af6cTrjZc0XYR+KgtoSIG41OW53dpHzp4aUMZieiMx7SA871cpMpHjDpuEfdEKgSmD
	OcnazHyk1WOJt0UkAu1fGPyFPxcyfgDXyp9KQNtYWUmGhEuavhDihMwqzQ0nSD3qzjep
	peFismQp0FH2T8VZXTv6cDdmWcr5ZmDsEehN0QY9mzpUpb5IIpvSCnCyaJydBxfCdXSo
	VCPwXgPGchymLOVsgLTfItlUxN/fB9f60nmgX+IXlaiQ7cVubzSs0EKjSYi7+2EIi6HI
	ToFg==
X-Gm-Message-State: AOPr4FXB7yovLbRuPyESYutJ3VwinHZBBgVkUhQOj1dEdVoVK8+V6reWs3Ub9/dtobfrrA==
X-Received: by 10.194.158.98 with SMTP id wt2mr6816653wjb.102.1460516922031;
	Tue, 12 Apr 2016 20:08:42 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	a1sm36099399wje.43.2016.04.12.20.08.41 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 20:08:41 -0700 (PDT)
Date: Wed, 13 Apr 2016 05:08:39 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160413030839.GG22139@resin>
References: <1459798261-14251-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1459798261-14251-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [meta-raspberrypi][PATCH v2 1/1] README: Mention all the supported machines
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
X-List-Received-Date: Wed, 13 Apr 2016 03:08:44 -0000
X-Groupsio-MsgNum: 29397
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="reI/iBAAp9kzkmX4"
Content-Disposition: inline

--reI/iBAAp9kzkmX4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 04, 2016 at 09:31:01PM +0200, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  README | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/README b/README
> index 536926b..cfd83b3 100644
> --- a/README
> +++ b/README
> @@ -73,7 +73,11 @@ revision: HEAD
>  a. source poky/oe-init-build-env rpi-build
>  b. Add needed layer to bblayers.conf:
>      - meta-raspberrypi
> -c. Set MACHINE to "raspberrypi"/"raspberrypi2" in local.conf
> +c. Set MACHINE in local.conf to one of the supported boards:
> +    - raspberrypi
> +    - raspberrypi0
> +    - raspberrypi2
> +    - raspberrypi3
>  d. bitbake rpi-hwup-image
>  e. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is used)
>  f. Boot your RPI.
> --
> 2.7.4
>

Merged to master.

--
Andrei Gherzan

--reI/iBAAp9kzkmX4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDbg3AAoJEHO76Gt+erfP2WMP/A05xiSWIgnkgOU4DCuu3eLA
qKteFkVz360fFQCJQnGsDXrWwroFB0QunJ/Ot/ZmdZExvVoAsOAFCDSXL/PyIRgQ
Q1Y6hbyR86wvDs2ypu1VXKbOZ4T3I/nlsb6XaELLIO6cUU7YAyjmysXhRH0xWemK
UlIe/YRIWANiMoSMWO2wZIM0ZAJ0pBCszw05Z5iiAyKc/97bETBiM7pSPteSG0Gn
WkSRfh+DcHoil3x2kkjO+uabKdIt8qWCRk4ti1CQMRLhqdHqsAsh4lFYxAI5Xznj
CQ2u63guiEgOiQCDilwO2BA7PPdf+ThXqRtiijGKZ4fVsSN4UEQ0T5/jngnVWHT1
XiykGY+/i0dGOXvfkGc3bpdKAIedzWWAu8EqedgdP2pn6VayWfd6nxcM/uHk7Bl/
gtMOZaQylHDyZxJT1u2fYpEH1Or/4XWUez19Y+S4hWeDZE4nvkHXNER2haiT5W2H
4bhPAh/wUJiEUvgji5WuwQ6QZBUYW2LBn1j8+fBBx+6PfKuCGoeA3+y7vYOvhmgG
pg/Ip661feKl0K71FfTNbOm51m5nMwcCfPBr4dJ3nsDpgMAE8eUwNfL+NM+DeWVf
+7mQNT9qPujj1B4w1PS1/ndBv+eh5rbZLalSDzPm9y+u6+M59j9ssR6Y/qzNQNEv
PByOoCR6ub5NTK6yl7j8
=fc6n
-----END PGP SIGNATURE-----

--reI/iBAAp9kzkmX4--
