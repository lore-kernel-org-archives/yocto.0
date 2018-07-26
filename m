Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BEF9E00CDD; Thu, 26 Jul 2018 12:45:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (max.oss.09[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C6A4E00CDD
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 12:45:24 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id t2-v6so2291080edr.5
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 12:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=GxL1U9nqJYVAnteRmhJdfdxT7nNFtkfHhYGzSKm1O30=;
	b=dAD9AMT6SJYWujweah9RgQBkimB0yZDpfJENWBYjTU+7DPbAoSSvOhamCsgmVWhAgS
	4bN+itkSknXWJWPxRky9gRpS6Mv562k8nJKda6h1TxTnBx8brN0uIA4tBqTWawzBdlA3
	mRTKgmrKVaFeXHGG4ZHpQeUtOv2E3aNJPJZJdT2XLm/h1mv8T8TqJE2GcINaXLBBgE3p
	1b96k7CqYOXwYqcgMVrcU67AUkC6MMmZIfEf4QCB/jhOVBBnc6K/MUh4s5MxAKhjDnVG
	5mOzZcsxZd1pWWQuWLrWlDiiSCAggvkhSG19jR7dWofOG4n67ToP3wBJwqh2Sl1mTphV
	+L+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=GxL1U9nqJYVAnteRmhJdfdxT7nNFtkfHhYGzSKm1O30=;
	b=mxPd+gPhfZQaOBlnmKQqcdvQEAnRV/p9BUODrWFSMK1EszAHEDoAOY+74dN27MlWEF
	RysyMzHXsNMutoxDB41Wo8YV8pk5vhb252yBGD+K2B/3X6kJSs/a5bnrNbyul3CStW+t
	W7ii7JkjzaF+vveNboxVuKtrvXgWSt1sYAVpbk/tnUgHar3s/lCUui3a/xK71NzIvfbL
	9kMJKuyD3kDaqGiqGHrb3QK5/eLtEiUtKbJ0UX7du+1xBF5iIJWxVitCCigUjf7d/ewo
	7DCDv65n2eFE7GKqM7k9BaJpvaeYfxWukzck/cz4oB/QMVVAiUEYQibQsmyeHgk03PDN
	CyHA==
X-Gm-Message-State: AOUpUlFF0urg4VYz3bxcdaZgvnXxYvevcJwRfLDhLedK3Mn+eAaRHHLJ
	GLPeV6vzgvREMRH5A0k2oQFQ60jD
X-Google-Smtp-Source: AAOMgpcB3s/1utJ9BvdRBOPglY+K+owCDQzaYfvkSKhdd5veyup+PhmcMI43NW7D21fobbkBb9sLgA==
X-Received: by 2002:a50:e718:: with SMTP id
	a24-v6mr4130678edn.278.1532634324167; 
	Thu, 26 Jul 2018 12:45:24 -0700 (PDT)
Received: from Saturn.local.all ([195.48.14.138])
	by smtp.gmail.com with ESMTPSA id
	j42-v6sm1263252eda.2.2018.07.26.12.45.23
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 26 Jul 2018 12:45:23 -0700 (PDT)
Message-ID: <1532634322.3175.3.camel@gmail.com>
From: Max Krummenacher <max.oss.09@gmail.com>
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>, yocto@yoctoproject.org
Date: Thu, 26 Jul 2018 21:45:22 +0200
In-Reply-To: <91623c72-a336-09d8-26e6-c2dd14355045@gmail.com>
References: <91623c72-a336-09d8-26e6-c2dd14355045@gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Subject: Re: How to force build of a blacklisted recipe?
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
X-List-Received-Date: Thu, 26 Jul 2018 19:45:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi

> I'm trying to build dvb-apps recipe which is blacklisted and was removed 
> from the newer openembedded releases, but it exist in the release I work 
> with
> 
> Now when I try to build the recipe I get this error:
> 
>  >ERROR: 
> /home/oealliancebuilder/openpli-oe-core/meta-openembedded/meta-multimedia/recipes-dvb/dvb-
> apps/dvb-apps_1.1.1.bb 
> was skipped: Recipe is blacklisted: Fails to build with RSS 
> http://errors.yoctoproject.org/Errors/Details/130603/ - the recipe will 
> be removed on 2017-09-01 unless the issue is fixed
> 
> But I want to tell openembedded to override the blacklisting and build 
> the recipe anyway so I can investigate and hopefully fix the recipe. How 
> can I do that ?

You could overwrite the assignment to PNBLACKLIST in conf/local.conf:

PNBLACKLIST[dvb-apps] = ""

However, if you anyway want to work on the recipe you could simply delete
the PNBLACKLIST line in the dvb-apps recipe.

Max

