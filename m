Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F6F6E00524; Sun, 16 Apr 2017 15:36:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3176AE00349
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 15:36:34 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id w64so24411111wma.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 15:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=4Ay+h2ryODrN2uIw0YwF1quAZnjZqKRMj7FzxTatVMw=;
	b=giuvE83UtIVewFBaOLqXFEVeHUJZ0SwZQfvy/lOxAP0xWiRsqAic5QeYjKUUde59b0
	MOvwm/aIh2T1buCnOCFxhr26f38tLJok9N9RcKWMwuGRSnCL8qby1bnoykHsYvPUGvx1
	4S+u4Q4hImVM8bCQMFhTMNIC5qCniR+34r0XJsUVaFS+MzsDjQscqtQY1p1VFXhOMsCq
	yGBEztzZgAen69sqX75TKMuCRD9Il7W1tTRf/RGTfGxODkKPbw5l7+9dqO08JCAmlYH0
	fSbjXB84r5yL+s4lSbdEIQRG0uZOUwsguL/c3JhHbrNnZzViCkIJOIK2G8Qg7xSqBz4i
	Me2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=4Ay+h2ryODrN2uIw0YwF1quAZnjZqKRMj7FzxTatVMw=;
	b=YC3YAPKgyTx3OEvTywHGVM6OaAEGfbOCDWJv/hqk6tP8S199d9fgUL1YDZoDWeBOaT
	pOlVyP4yqXITp4tVl+DIVARMeODH6baZuLJ2pRQ0U7MUpnFNmxNAm8RSsdSKgjeHKWZz
	o9GjamQW/I1myhLUPdtpKCwy3Dr8y6hxLd/c++oD8KmL1ElQ/kpGaoT0Rql3yaTW3RKH
	/cX+8Z0PwA8VQBPmJWxj14+k66x6FLVNN3THLMwy4ulrVcmpKjhJ8OvgV7sDku9rLdwi
	1XsMuj04ZymL8ngd7ugcJQiowL4zTVBUeE12t/9vHd6eOm3P+HV/NPucPhqFwSRK6YQ7
	iD3g==
X-Gm-Message-State: AN3rC/79YhpGOd7L8sn8zZNa/u/VhxOQjzyo85JlB6KV0NJOw2tjj491
	FI7+tET5KBxrNA==
X-Received: by 10.28.47.23 with SMTP id v23mr6487147wmv.50.1492382193042;
	Sun, 16 Apr 2017 15:36:33 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	65sm11743713wri.68.2017.04.16.15.36.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 15:36:31 -0700 (PDT)
Date: Sun, 16 Apr 2017 23:36:23 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170416223623.GA16624@carbonA>
References: <20170414201313.3138-1-andrei@gherzan.ro>
	<20170414201313.3138-3-andrei@gherzan.ro>
	<CAMKF1srG2DFUZiRbJzRdgQxNcdtbTLAhGddmv_Lf5umGPw9f-A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srG2DFUZiRbJzRdgQxNcdtbTLAhGddmv_Lf5umGPw9f-A@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/7] firmware.inc: Bump to 20170405
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
X-List-Received-Date: Sun, 16 Apr 2017 22:36:39 -0000
X-Groupsio-MsgNum: 35579
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline

--0F1p//8PRICkK4MW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 14, 2017 at 04:43:16PM -0700, Khem Raj wrote:
> same :) see my series.
>

You were a little faster so you won.
--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--0F1p//8PRICkK4MW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljz8ecACgkQJrqo2vax
FPbn6Q//dFhbGsjb5DPj2hJWbktPo6cpZtp0dx/tQf7jzsN4CJjR11zgfQSGicwe
bd0JOdrCI98j4okmxZeZb8Nwh42/lOT1kKQ8szRlHyRyX39cZR3ihSMoW0g6lbIV
MguCllok9crVDTenMWG1wk5l1CXnn8g9JhUschISoWlAOkGl/k6dCmCdRCGbL0nO
CxyrshJ3sJ8elojuBl4qfLNsQ6tWnx/iZAhlngfK6qpyLbf4ehnFJMJCCNRmnujw
fPG9K0wJB0ZKXDsaQYP6ndTHjEEseeFVKU0zs7ulfDtrX7SAasGBPVo6YzLGjWE9
FEDCmq5yBUcW9arqy1m7HB+MmvzDt6CBBN1Ovtrjl2Sgm6HEeTceyUcTP5SXaqSP
fjnAUxQuXxO6F03m6+2NLQBTlhZcsmpi0oYtSg3e8XezvnadEJtoI56U50ccdJbK
buDxRDIhSYl7yqlVxI6w1IXqi3mMfAtTWrBKPuMK0l6c2MiDmLGirFRE/UxI6VvA
a9TpZtp23YYwhWQ5Y4Ny8Ldjn/gV+7dVFg7L8WJ/Fk6tM5wh6hwN9Zb+UIcSZeUN
47PGLvoijKAXJYEUe2Gwx09dtHXU5n1xu4+c3saKSkvHkkPE7r2F60PSOLoyFDqu
l7wBBoHNgXZaXV8s9Kdj0hGIB6OULB6Tqwfmt9o6+n4HIrpnExc=
=FW5f
-----END PGP SIGNATURE-----

--0F1p//8PRICkK4MW--
